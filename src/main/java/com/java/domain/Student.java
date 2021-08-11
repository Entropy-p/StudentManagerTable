package com.java.domain;

public class Student {
    private Integer sno;
    private String sname;
    private String addr;
    private String phone;
    private String sex;
    private String remark;

    public Student() {
    }

    public Student(Integer sno, String sname, String addr, String phone, String sex, String remark) {
        this.sno = sno;
        this.sname = sname;
        this.addr = addr;
        this.phone = phone;
        this.sex = sex;
        this.remark = remark;
    }

    public Integer getSno() {
        return sno;
    }

    public void setSno(Integer sno) {
        this.sno = sno;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Student{" +
                "sno=" + sno +
                ", sname='" + sname + '\'' +
                ", addr='" + addr + '\'' +
                ", phone='" + phone + '\'' +
                ", sex='" + sex + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
