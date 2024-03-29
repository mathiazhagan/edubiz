package model;
// Generated Jan 13, 2012 7:18:48 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * UserRecord generated by hbm2java
 */
public class UserRecord  implements java.io.Serializable {


     private String emailId;
     private String userType;
     private String status;
     private Integer newMsg;
     private Integer newForum;
     private Date lastLogin;
     private Set<InternalMsg> internalMsgsForReceiver = new HashSet<InternalMsg>(0);
     private Set<InternalMsg> internalMsgsForSender = new HashSet<InternalMsg>(0);
     private Set<UserDetails> userDetailses = new HashSet<UserDetails>(0);

    public UserRecord() {
    }

	
    public UserRecord(String emailId, String userType, String status, Date lastLogin) {
        this.emailId = emailId;
        this.userType = userType;
        this.status = status;
        this.lastLogin = lastLogin;
    }
    public UserRecord(String emailId, String userType, String status, Integer newMsg, Integer newForum, Date lastLogin, Set<InternalMsg> internalMsgsForReceiver, Set<InternalMsg> internalMsgsForSender, Set<UserDetails> userDetailses) {
       this.emailId = emailId;
       this.userType = userType;
       this.status = status;
       this.newMsg = newMsg;
       this.newForum = newForum;
       this.lastLogin = lastLogin;
       this.internalMsgsForReceiver = internalMsgsForReceiver;
       this.internalMsgsForSender = internalMsgsForSender;
       this.userDetailses = userDetailses;
    }
   
    public String getEmailId() {
        return this.emailId;
    }
    
    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }
    public String getUserType() {
        return this.userType;
    }
    
    public void setUserType(String userType) {
        this.userType = userType;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }
    public Integer getNewMsg() {
        return this.newMsg;
    }
    
    public void setNewMsg(Integer newMsg) {
        this.newMsg = newMsg;
    }
    public Integer getNewForum() {
        return this.newForum;
    }
    
    public void setNewForum(Integer newForum) {
        this.newForum = newForum;
    }
    public Date getLastLogin() {
        return this.lastLogin;
    }
    
    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }
    public Set<InternalMsg> getInternalMsgsForReceiver() {
        return this.internalMsgsForReceiver;
    }
    
    public void setInternalMsgsForReceiver(Set<InternalMsg> internalMsgsForReceiver) {
        this.internalMsgsForReceiver = internalMsgsForReceiver;
    }
    public Set<InternalMsg> getInternalMsgsForSender() {
        return this.internalMsgsForSender;
    }
    
    public void setInternalMsgsForSender(Set<InternalMsg> internalMsgsForSender) {
        this.internalMsgsForSender = internalMsgsForSender;
    }
    public Set<UserDetails> getUserDetailses() {
        return this.userDetailses;
    }
    
    public void setUserDetailses(Set<UserDetails> userDetailses) {
        this.userDetailses = userDetailses;
    }




}


