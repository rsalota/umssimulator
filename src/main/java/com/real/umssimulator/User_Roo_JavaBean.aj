// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.real.umssimulator;

import com.real.umssimulator.User;
import java.util.Date;

privileged aspect User_Roo_JavaBean {
    
    public String User.getService_id() {
        return this.service_id;
    }
    
    public void User.setService_id(String service_id) {
        this.service_id = service_id;
    }
    
    public String User.getTransaction_id() {
        return this.transaction_id;
    }
    
    public void User.setTransaction_id(String transaction_id) {
        this.transaction_id = transaction_id;
    }
    
    public Date User.getEffective_date() {
        return this.effective_date;
    }
    
    public void User.setEffective_date(Date effective_date) {
        this.effective_date = effective_date;
    }
    
    public Date User.getCreate_date() {
        return this.create_date;
    }
    
    public void User.setCreate_date(Date create_date) {
        this.create_date = create_date;
    }
    
    public String User.getReason() {
        return this.reason;
    }
    
    public void User.setReason(String reason) {
        this.reason = reason;
    }
    
    public Date User.getExpiry_date() {
        return this.expiry_date;
    }
    
    public void User.setExpiry_date(Date expiry_date) {
        this.expiry_date = expiry_date;
    }
    
    public String User.getGuid() {
        return this.guid;
    }
    
    public void User.setGuid(String guid) {
        this.guid = guid;
    }
    
}
