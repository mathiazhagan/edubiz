/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import com.opensymphony.xwork2.ActionSupport;
import model.*;
/**
 *
 * @author Administrator
 */
public class activation  extends ActionSupport{
     private String mail;
     private spDAO myDao;
     private int confcode;
     private Emailfunction sendMail;
     private String subject;
     private String content;
     private String name;

    @Override
    public void validate(){
        UserDetails userdetails = (UserDetails)getMyDao().getDbsession().get(UserDetails.class, mail);
        if(confcode != userdetails.getConfcode()){
            addActionError("account not activated, try again later.");
        }
        setName(userdetails.getFirstName());
    }

    @Override
    public String execute() throws Exception {
    
            
            UserRecord user=(UserRecord)myDao.getDbsession().get(UserRecord.class, mail);            
            user.setStatus(userStatus.Active.toString());
            getMyDao().getDbsession().update(user);
            addActionMessage("\t\t\t\t          Now Your Registration Successfully Verified");
                subject="Activation Success";
                  content="Dear " + getName() + ",\t\t"+mail+"\n" +"... <br>Welcome to EduBiz. <br>\n" +" \nNow Your EduBiz Registration is Activated & Verified <br>\n"+" Thanks & Regards <br>\n    " +" EduBiz Team<br>\n";
     
        
             sendMail.test(mail, subject, content);
                
             return "success";
            }
     
     
    /**
     * @return the mail
     */
    public String getMail() {
        return mail;
    }

    /**
     * @param mail the mail to set
     */
    public void setMail(String mail) {
        this.mail = mail;
    }

    /**
     * @return the myDao
     */
    public spDAO getMyDao() {
        return myDao;
    }

    /**
     * @param myDao the myDao to set
     */
    public void setMyDao(spDAO myDao) {
        this.myDao = myDao;
    }

    /**
     * @return the confcode
     */
    public int getConfcode() {
        return confcode;
    }

    /**
     * @param confcode the confcode to set
     */
    public void setConfcode(int confcode) {
        this.confcode = confcode;
    }
    
    /**
     * @return the sendMail
     */
    public Emailfunction getSendMail() {
        return sendMail;
    }

    /**
     * @param sendMail the sendMail to set
     */
    public void setSendMail(Emailfunction sendMail) {
        this.sendMail = sendMail;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }
    
}
