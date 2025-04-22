package com.dineout.code.billing;

import java.io.Serializable;

public class DishPrice implements Serializable {
    String dishName;
    String price;
    String estimatedTime;
    String type;

    public DishPrice() {
    }

    public String getDishName() {
        return dishName;
    }

    public void setDishName(String dishName) {
        this.dishName = dishName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getEstimatedTime() {
        return estimatedTime;
    }

    public void setEstimatedTime(String estimatedTime) {
        this.estimatedTime = estimatedTime;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public DishPrice(String dishName, String price, String estimatedTime, String type) {
        this.dishName = dishName;
        this.price = price;
        this.estimatedTime = estimatedTime;
        this.type = type;
    }
}

