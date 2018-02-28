package login;

import java.util.Date;


/**
 * Created by jal on 2018/2/28 0028.
 */
public class User {
    private String name;
    private String password;
    private int valid;
    private String email;
    private String phone;
    private Date time_stamp;
    private int id;
    private String role;

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public int getValid() {
        return valid;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setValid(int valid) {
        this.valid = valid;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setTime_stamp(Date time_stamp) {
        this.time_stamp = time_stamp;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Date getTime_stamp() {
        return time_stamp;
    }

    public int getId() {
        return id;
    }

    public String getRole() {
        return role;
    }

    public User(){
        super();

    }

    public User(String name, String password, int valid, String email, String phone, Date time_stamp, int id) {
        this.name = name;
        this.password = password;
        this.valid = valid;
        this.email = email;
        this.phone = phone;
        this.time_stamp = time_stamp;
        this.id = id;
    }

    @Override
    public String toString() {
        return "User [name=" + name + ", password=" + password + ", valid="
                + valid + ", email=" + email + ", phone=" + phone
                + ", time_stamp=" + time_stamp + ", id=" + id + "]";
    }
}
