package com.toleey.smartorderingsystem.pojo;

import java.sql.Timestamp;

public class Order {

  private long id;
  private long userId;
  private long fetchMealCode;
  private java.sql.Timestamp createdTime;
  private java.sql.Timestamp updateTime;
  private double price;
  private long status;

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public long getUserId() {
    return userId;
  }

  public void setUserId(long userId) {
    this.userId = userId;
  }

  public long getFetchMealCode() {
    return fetchMealCode;
  }

  public void setFetchMealCode(long fetchMealCode) {
    this.fetchMealCode = fetchMealCode;
  }

  public Timestamp getCreatedTime() {
    return createdTime;
  }

  public void setCreatedTime(Timestamp createdTime) {
    this.createdTime = createdTime;
  }

  public Timestamp getUpdateTime() {
    return updateTime;
  }

  public void setUpdateTime(Timestamp updateTime) {
    this.updateTime = updateTime;
  }

  public double getPrice() {
    return price;
  }

  public void setPrice(double price) {
    this.price = price;
  }

  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }

  @Override
  public String toString() {
    return "Order{" +
            "id=" + id +
            ", userId=" + userId +
            ", fetchMealCode=" + fetchMealCode +
            ", createdTime=" + createdTime +
            ", updateTime=" + updateTime +
            ", price=" + price +
            ", status=" + status +
            '}';
  }
}
