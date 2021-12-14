package com.toleey.smartorderingsystem.pojo;

public class Store {

  private long id;

  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  @Override
  public String toString() {
    return "Store{" +
            "id=" + id +
            '}';
  }
}
