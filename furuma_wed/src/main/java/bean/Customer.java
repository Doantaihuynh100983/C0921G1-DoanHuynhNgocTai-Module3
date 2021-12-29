package bean;

import java.util.Date;

public class Customer {
    private int customerId;
    private CustomerType customerType;
    private String customerName;
    private Date customerBirthday;
    private boolean customerGender;
    private int customerIdCard;
    private int customerPhone;
    private String customerEmail;
    private String customerAddress;

    public Customer() {
    }

    public Customer( String customerName, Date customerBirthday,
                    boolean customerGender,
                    int customerIdCard, int customerPhone,
                    String customerEmail, String customerAddress ,
                    CustomerType customerType) {
        this.customerType = customerType;
        this.customerName = customerName;
        this.customerBirthday = customerBirthday;
        this.customerGender = customerGender;
        this.customerIdCard = customerIdCard;
        this.customerPhone = customerPhone;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
    }


    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public CustomerType getCustomerType() {
        return customerType;
    }

    public void setCustomerType(CustomerType customerType) {
        this.customerType = customerType;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public Date getCustomerBirthday() {
        return customerBirthday;
    }

    public void setCustomerBirthday(Date customerBirthday) {
        this.customerBirthday = customerBirthday;
    }

    public boolean isCustomerGender() {
        return customerGender;
    }

    public void setCustomerGender(boolean customerGender) {
        this.customerGender = customerGender;
    }

    public int getCustomerIdCard() {
        return customerIdCard;
    }

    public void setCustomerIdCard(int customerIdCard) {
        this.customerIdCard = customerIdCard;
    }

    public int getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(int customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", customerType=" + customerType +
                ", customerName='" + customerName + '\'' +
                ", customerBirthday=" + customerBirthday +
                ", customerGender=" + customerGender +
                ", customerIdCard=" + customerIdCard +
                ", customerPhone=" + customerPhone +
                ", customerEmail='" + customerEmail + '\'' +
                ", customerAddress='" + customerAddress + '\'' +
                '}';
    }
}
