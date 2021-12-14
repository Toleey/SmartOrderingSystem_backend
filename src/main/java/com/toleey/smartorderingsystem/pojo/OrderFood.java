package com.toleey.smartorderingsystem.pojo;

public class OrderFood {

  private long id;
  private long orderId;
  private long foodId;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public long getOrderId() {
    return orderId;
  }

  public void setOrderId(long orderId) {
    this.orderId = orderId;
  }

  public long getFoodId() {
    return foodId;
  }

  public void setFoodId(long foodId) {
    this.foodId = foodId;
  }

  @Override
  public String toString() {
    return "OrderFood{" +
            "id=" + id +
            ", orderId=" + orderId +
            ", foodId=" + foodId +
            '}';
  }
}
