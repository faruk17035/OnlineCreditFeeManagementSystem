package com.Faruk.entity;

public class StudentYear {

    private Integer id;
    private String name;

    public StudentYear(Integer id, String name) {
        this.id = id;
        this.name = name;
    }

    public StudentYear() {
    }

    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
   
}
