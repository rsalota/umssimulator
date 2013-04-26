// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.real.umssimulator;

import com.real.umssimulator.MockResponse;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MockResponse_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MockResponse.entityManager;
    
    public static final EntityManager MockResponse.entityManager() {
        EntityManager em = new MockResponse().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MockResponse.countMockResponses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MockResponse o", Long.class).getSingleResult();
    }
    
    public static List<MockResponse> MockResponse.findAllMockResponses() {
        return entityManager().createQuery("SELECT o FROM MockResponse o", MockResponse.class).getResultList();
    }
    
    public static MockResponse MockResponse.findMockResponse(Long id) {
        if (id == null) return null;
        return entityManager().find(MockResponse.class, id);
    }
    
    public static List<MockResponse> MockResponse.findMockResponseEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MockResponse o", MockResponse.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MockResponse.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MockResponse.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MockResponse attached = MockResponse.findMockResponse(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MockResponse.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MockResponse.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MockResponse MockResponse.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MockResponse merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}