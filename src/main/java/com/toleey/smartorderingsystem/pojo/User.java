package com.toleey.smartorderingsystem.pojo;


public class User {

  private long id;
  private String name;
  private String gender;
  private String phone;
  private String birthday;
  private String avator;
  private String poiints;
  private String level;
  private String discount;
  private String debit;
  private long address;
  private long order;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public String getBirthday() {
    return birthday;
  }

  public void setBirthday(String birthday) {
    this.birthday = birthday;
  }

  public String getAvator() {
    return avator;
  }

  public void setAvator(String avator) {
    this.avator = avator;
  }

  public String getPoiints() {
    return poiints;
  }

  public void setPoiints(String poiints) {
    this.poiints = poiints;
  }

  public String getLevel() {
    return level;
  }

  public void setLevel(String level) {
    this.level = level;
  }

  public String getDiscount() {
    return discount;
  }

  public void setDiscount(String discount) {
    this.discount = discount;
  }

  public String getDebit() {
    return debit;
  }

  public void setDebit(String debit) {
    this.debit = debit;
  }

  public long getAddress() {
    return address;
  }

  public void setAddress(long address) {
    this.address = address;
  }

  public long getOrder() {
    return order;
  }

  public void setOrder(long order) {
    this.order = order;
  }

  @Override
  public String toString() {
    return "User{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", gender='" + gender + '\'' +
            ", phone='" + phone + '\'' +
            ", birthday='" + birthday + '\'' +
            ", avator='" + avator + '\'' +
            ", poiints='" + poiints + '\'' +
            ", level='" + level + '\'' +
            ", discount='" + discount + '\'' +
            ", debit='" + debit + '\'' +
            ", address=" + address +
            ", order=" + order +
            '}';
  }
}
