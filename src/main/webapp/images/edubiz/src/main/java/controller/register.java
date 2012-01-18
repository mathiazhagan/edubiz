/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package images.edubiz.src.main.java.controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.EmailValidator;
import java.util.Date;
import java.util.Random;
import model.*;

/**
 *
 * @author Administrator
 */
public class register extends ActionSupport {

    private String firstName;
    private String lastName;
    private String collegeName;
    private String year;
    private String gender;
    private String dept;
    private String mail;
    private String mobile;
    private String address;
    private String city;
    private Emailfunction sendMail;
    private String subject;
    private String content;
    private spDAO myDao;
    private int confcode;
    private String status;

    @Override
    public void validate() {
        try {
            UserRecord user = null;

            if (!mail.isEmpty()) {
                user = (UserRecord) getMyDao().getDbsession().get(UserRecord.class, mail);
                if (user != null) {
                    addFieldError("mail", "Email id Already Registered");
                }
            }
            
            if (collegeName == null || collegeName.equals("Please select")) {
                addFieldError("collegeName", "Please Select a Collage Name");
            }

            if (dept == null || dept.equals("Please select")) {
                addFieldError("dept", "Please Select a department");
            }
            if (gender == null || gender.equals("Please select")) {
                addFieldError("gender", "Please Select gender");
            }
            if (year == null || year.equals("Please select")) {
                addFieldError("year", "Please Select Year");
            }

        } catch (Exception e) {
            addActionError("server problem try again later or contact admin@edubiz.org");
        }
    }

    @Override
    public String execute() throws Exception {
        try {
            Random rand = new Random();
            setConfcode(rand.nextInt());
            Date date = new Date();
            UserRecord user = new UserRecord(mail, userType.Student.toString(), userStatus.NotActive.toString(), date);                    
            getMyDao().getDbsession().save(user);
            user = (UserRecord) getMyDao().getDbsession().get(UserRecord.class,mail);
            UserDetails userDetails = new UserDetails(mail,user, firstName, city, mobile, collegeName);
            userDetails.setLastName(lastName);
            userDetails.setAddress(address);
            userDetails.setDept(dept);
            userDetails.setSex(gender);
            userDetails.setYaer(year);
            userDetails.setConfcode(confcode);
            getMyDao().getDbsession().save(userDetails);
            setSubject("Welcome to Edubiz");
            setContent("Dear\t" + getFirstName() + ",\t\tWelcome to Edubiz <br>" + "<br/><br/>Your Registered   mail id is:\t\t" + getMail() + "\n <br><br>  " + "\n <p>Thanks for registering with us.  \n " + "<br/>Please ask your friends if they have received this mail.\n" + "If they haven't received this mail please ask them to re-register.</p><br><br>\n"
                    + "Please Click the following link to verify  your registration<br> "
                    + "http://edubiz.org/activation.action?mail=" + mail + "&confcode=" + confcode
                    + "<br/> \nThanks & Regards <br> \n   " + " EduBiz Team<br>\n");

            sendMail.test(mail, subject, content);
            addActionMessage("Thanks for Registering with us. You will receive a confirmation mail soon");
            return "success";

        } catch (Exception e) {

            addActionError("Error \t" + e.getMessage());
            //e.printStackTrace();
            return "error";
        }
    }

   

    /**
     * @return the year
     */
    public String getYear() {
        return year;
    }

    /**
     * @param year the year to set
     */
    public void setYear(String year) {
        this.year = year;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the dept
     */
    public String getDept() {
        return dept;
    }

    /**
     * @param dept the dept to set
     */
    public void setDept(String dept) {
        this.dept = dept;
    }

    /**
     * @return the mail
     */
    @EmailValidator(message = "please enter a valid email id")
    @RequiredStringValidator(message = "please enter email id")
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
     * @return the mobile
     */
    @RequiredStringValidator(message = "please enter mobile no")
    public String getMobile() {
        return mobile;
    }

    /**
     * @param mobile the mobile to set
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    /**
     * @return the address
     */
    @RequiredStringValidator(message = "please enter address")
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the city
     */
    @RequiredStringValidator(message = "please enter city")
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
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
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the firstname
     */
    @RequiredStringValidator(message = "please enter firstname")
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstname the firstname to set
     */
    public void setFirstName(String firstname) {
        this.firstName = firstname;
    }

    /**
     * @return the lastname
     */
    @RequiredStringValidator(message = "please enter lastname")
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastname the lastname to set
     */
    public void setLastName(String lastname) {
        this.lastName = lastname;
    }

    /**
     * @return the collegeName
     */
    public String getCollegeName() {
        return collegeName;
    }

    /**
     * @param collegeName the collegeName to set
     */
    public void setCollegeName(String collegeName) {
        this.collegeName = collegeName;
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
}
