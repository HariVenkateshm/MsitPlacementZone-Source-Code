package msitplacement;
// Generated Jun 8, 2017 11:22:38 AM by Hibernate Tools 4.3.1



/**
 * Mentor generated by hbm2java
 */
public class Mentor  implements java.io.Serializable {


     private String name;
     private String email;
     private String password;
     private String phonenumber;

    public Mentor() {
    }

	
    public Mentor(String name) {
        this.name = name;
    }
    public Mentor(String name, String email, String password, String phonenumber) {
       this.name = name;
       this.email = email;
       this.password = password;
       this.phonenumber = phonenumber;
    }
   
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getPhonenumber() {
        return this.phonenumber;
    }
    
    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }




}


