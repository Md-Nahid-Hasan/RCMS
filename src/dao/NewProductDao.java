/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import model.NewProduct;
import java.util.ArrayList;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Md Nahid Hasan
 */
public class NewProductDao {

    public static void save(NewProduct newProduct) {
        String query = "insert into newproduct (name,category,price) values('" + newProduct.getName() + "','" + newProduct.getCategory() + "','" + newProduct.getPrice() + "')";
        DbOperations.setDataOrDelete(query, "New Product Added Successfully!");
    }

    public static ArrayList<NewProduct> getAllRecords() {
        ArrayList<NewProduct> arrayList = new ArrayList<>();
        try {
            ResultSet rs = DbOperations.getData("select *from newproduct");
            while (rs.next()) {
                NewProduct newProduct = new NewProduct();
                newProduct.setId(rs.getInt("id"));
                newProduct.setName(rs.getString("name"));
                newProduct.setCategory(rs.getString("category"));
                newProduct.setPrice(rs.getString("price"));
                arrayList.add(newProduct);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }

        return arrayList;
    }

    public static void update(NewProduct newProduct) {
        String query = "update newproduct set name='" + newProduct.getName() + "',category='" + newProduct.getCategory() + "',price='" + newProduct.getPrice() + "' where id='" + newProduct.getId() + "'";
        DbOperations.setDataOrDelete(query, "Product Updated Successfully!");
    }

    public static void delete(String id) {
        String query = "delete from newproduct where id='" + id + "'";
        DbOperations.setDataOrDelete(query, "Product Deleted Successfully!");
    }

    public static ArrayList<NewProduct> getAllRecordsByCategory(String category) {
        ArrayList<NewProduct> arrayList = new ArrayList<>();
        try {
            ResultSet rs = DbOperations.getData("select *from newproduct where category = '" + category + "'");
            while (rs.next()) {
                NewProduct newProduct = new NewProduct();
                newProduct.setName(rs.getString("name"));
                arrayList.add(newProduct);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return arrayList;
    }
    public static ArrayList<NewProduct> filterProductByname(String name,String category) {
        ArrayList<NewProduct> arrayList = new ArrayList<>();
        try {
            ResultSet rs = DbOperations.getData("select *from newproduct where name like '%"+name+"%' and category = '" + category + "'");
            while (rs.next()) {
                NewProduct newProduct = new NewProduct();
                newProduct.setName(rs.getString("name"));
                arrayList.add(newProduct);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return arrayList;
    }
    
    public static NewProduct getProductByname(String name) {
        NewProduct newProduct = new NewProduct();
        try {
            ResultSet rs = DbOperations.getData("select *from newproduct where name ='"+name+"'");
            while (rs.next()) {
                newProduct.setName(rs.getString(2));
                newProduct.setCategory(rs.getString(3));
                newProduct.setPrice(rs.getString(4));
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        return newProduct;
    }
}
