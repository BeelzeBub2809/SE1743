/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nguye
 */
public class Account {
    private String id;
    private  String username;
    private  String password;
    private String email;
    private String permission;

    public Account() {
    }

    public Account(String id, String username, String password, String email, String permission) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.permission = permission;
    }

    public String getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getPermission() {
        return permission;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPermission(String permission) {
        this.permission = permission;
    }
    
}
