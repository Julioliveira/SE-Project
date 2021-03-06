package com.springapp.mvc.enteties;

import javax.persistence.*;
import java.util.Date;
import java.util.List;


@Entity(name = "user")
public class User {

    @Id
    @GeneratedValue
    Long id;
    @Column(name="first_name")
    String firstName;
    @Column(name="last_name")
    String lastName;
    @Column(name="email")
    String email;
    @Column(name="gender")
    String gender;
    @Column(name="password")
    String password;

    @OneToMany(mappedBy = "user")
    private List<Connection> connections;
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object other){
        User user1 = (User) this;
        User user2  = (User) other;
        return user1.getEmail().equals(user2.getEmail());
    }

}
