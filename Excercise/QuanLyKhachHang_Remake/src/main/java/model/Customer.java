package model;

public class Customer {

    private String cusName;
    private String cusDob;
    private String cusAddress;
    private String cusAvatar;

    public Customer(String cusName, String cusDob, String cusAddress, String cusAvatar) {
        super();
        this.cusName = cusName;
        this.cusDob = cusDob;
        this.cusAddress = cusAddress;
        this.cusAvatar = cusAvatar;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getCusDob() {
        return cusDob;
    }

    public void setCusDob(String cusDob) {
        this.cusDob = cusDob;
    }

    public String getCusAddress() {
        return cusAddress;
    }

    public void setCusAddress(String cusAddress) {
        this.cusAddress = cusAddress;
    }

    public String getCusAvatar() {
        return cusAvatar;
    }

    public void setCusAvatar(String cusAvatar) {
        this.cusAvatar = cusAvatar;
    }

    @Override
    public String toString() {
        return "Khách hàng {" +
                " Tên ='" + cusName + '\'' +
                ", Ngày sinh ='" + cusDob + '\'' +
                ", Địa chỉ ='" + cusAddress + '\'' +
                ", Ảnh ='" + cusAvatar + '\'' +
                '}';
    }
}
