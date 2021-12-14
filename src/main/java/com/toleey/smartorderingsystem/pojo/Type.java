package com.toleey.smartorderingsystem.pojo;

public class Type {

  private long id;
  private String title;
  private String img;

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

  public String getImg() {
    return img;
  }

  public void setImg(String img) {
    this.img = img;
  }

  @Override
  public String toString() {
    return "Type{" +
            "id=" + id +
            ", title='" + title + '\'' +
            ", img='" + img + '\'' +
            '}';
  }
}
