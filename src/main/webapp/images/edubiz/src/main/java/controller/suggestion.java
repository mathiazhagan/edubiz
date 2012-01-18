/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package images.edubiz.src.main.java.controller;

import com.opensymphony.xwork2.ActionSupport;
import model.Feedback;

/**
 *
 * @author Administrator
 */
public class suggestion extends ActionSupport {
      private String email;
     private String feedback;
     private spDAO myDao;
     private String name;
    @Override
    public String execute() throws Exception
    {
        Feedback fback=new Feedback(name,email, feedback);
        myDao.getDbsession().saveOrUpdate(fback);
        addActionMessage("Thanks for your Suggesstions");
        this.name=null;
        this.email=null;
        this.feedback=null;
        return "success";
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
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
     * @return the feedback
     */
    public String getFeedback() {
        return feedback;
    }

    /**
     * @param feedback the feedback to set
     */
    public void setFeedback(String feedback) {
        this.feedback = feedback;
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
