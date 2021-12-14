package com.toleey.smartorderingsystem.pojo;

public class Item {

  private long id;
  private String title;
  private String desc;
  private long price;
  private String img;
  private long typeId;
  private long num;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getDesc() {
    return desc;
  }

  public void setDesc(String desc) {
    this.desc = desc;
  }

  public long getPrice() {
    return price;
  }

  public void setPrice(long price) {
    this.price = price;
  }

  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }

  public long getTypeId() {
    return typeId;
  }

  public void setTypeId(long typeId) {
    this.typeId = typeId;
  }

  public long getNum() {
    return num;
  }

  public void setNum(long num) {
    this.num = num;
  }

  @Override
  public String toString() {
    return "Item{" +
            "id=" + id +
            ", title='" + title + '\'' +
            ", desc='" + desc + '\'' +
            ", price=" + price +
            ", img='" + img + '\'' +
            ", typeId=" + typeId +
            ", num=" + num +
            '}';
  }
}
