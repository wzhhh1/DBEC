package com.example.DBEC.entity;

public class UserList {
    private int user;
    private String address;
    private int age;
    private String gender;
    private Double consume_total;
    private int consume_amount;
    private Double consume_max;

    public int getUser() {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Double getConsume_total() {
        return consume_total;
    }

    public void setConsume_total(Double consume_total) {
        this.consume_total = consume_total;
    }

    public int getConsume_amount() {
        return consume_amount;
    }

    public void setConsume_amount(int consume_amount) {
        this.consume_amount = consume_amount;
    }

    public Double getConsume_max() {
        return consume_max;
    }

    public void setConsume_max(Double consume_max) {
        this.consume_max = consume_max;
    }
}
