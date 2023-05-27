/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package dao;

import javax.swing.JOptionPane;

/**
 *
 * @author Md Nahid Hasan
 */
public class Tables {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        try {
            String userTable = "create table user(id int AUTO_INCREMENT primary key,name varchar(100),email varchar (100),mobileNumber varchar(11),address varchar(200),password varchar(200),securityQuestion varchar(150),answer varchar(100),status varchar(10),UNIQUE(email))";
            String adminDetails = "insert into user(name,email ,mobileNumber ,address ,password ,securityQuestion ,answer ,status) values ('admin','admin@gmail.com','01620753042','Mirpur-1216','admin','What is yout favorite color?','White','true')";
            String categoryTable = "create table category (id int AUTO_INCREMENT primary key, name varchar (100))";
            String productTable = "create table newProduct (id int AUTO_INCREMENT primary key, name varchar (100),category varchar(200),price varchar(200))";
            String billTable = "create table bill (id int primary key, name varchar (100),mobileNumber varchar(200), email varchar(100),date varchar (100),total varchar(200),createdBy varchar(200))";
            DbOperations.setDataOrDelete(userTable, "User Table Has Been Created Successfully!");
            DbOperations.setDataOrDelete(adminDetails, "Admin Details Added Successfully!");
            DbOperations.setDataOrDelete(categoryTable, "Category Table Created Successfully!");
            DbOperations.setDataOrDelete(productTable, "New Product Table Created Successfully!");
            DbOperations.setDataOrDelete(billTable, "Bill Table Created Successfully!");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }

}
