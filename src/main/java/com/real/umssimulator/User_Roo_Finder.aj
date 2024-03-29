// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.real.umssimulator;

import com.real.umssimulator.User;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect User_Roo_Finder {
    
    public static TypedQuery<User> User.findUsersByGuidEquals(String guid) {
        if (guid == null || guid.length() == 0) throw new IllegalArgumentException("The guid argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.guid = :guid", User.class);
        q.setParameter("guid", guid);
        return q;
    }
    
    public static TypedQuery<User> User.findUsersByTransaction_idEquals(String transaction_id) {
        if (transaction_id == null || transaction_id.length() == 0) throw new IllegalArgumentException("The transaction_id argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.transaction_id = :transaction_id", User.class);
        q.setParameter("transaction_id", transaction_id);
        return q;
    }
    
}
