package com.WEB_NAM.model;

import java.sql.Date;

public class User {
    private int uid;
    private String uname;
    private String password;
    private String fullname;
    private Date dob;
    private String email;
    private String uimage;
    private int access;

    public User() {
    }
    public User(String uname, String password) {
        this.uname = uname;
        this.password = password;
    }

    public User(String uname, String password, String fullname, Date dob, String email) {

        this.uname = uname;
        this.password = password;
        this.fullname = fullname;
        this.dob = dob;
        this.email = email;
    }

    public User(int uid, String uname, String password, String fullname, Date dob, String email, String uimage,int access) {

        this.uid = uid;
        this.uname = uname;
        this.password = password;
        this.fullname = fullname;
        this.dob = dob;
        this.email = email;
        this.uimage = uimage;
        this.access = access;
    }

    public int getAccess() {
        return access;
    }

    public void setAccess(int access) {
        this.access = access;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUimage() {
        return uimage;
    }

    public void setUimage(String uimage) {
        this.uimage = uimage;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", password='" + password + '\'' +
                ", fullname='" + fullname + '\'' +
                ", dob=" + dob +
                ", email='" + email + '\'' +
                ", uimage='" + uimage + '\'' +
                '}';
    }
}

