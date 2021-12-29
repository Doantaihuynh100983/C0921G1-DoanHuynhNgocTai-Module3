package repository;

import bean.Customer;
import bean.CustomerType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private static final String GET_ALL_CUSTOMER = "select * from customer ctm left join customer_type ctmt " +
                                                                 "on ctm.customer_type_id = ctmt.customer_type_id";
    private static final String GET_ALL_CUSTOMER_TYPE = "select * from customer_type";
    private static final String INSERT_CUSTOMER = "insert into customer (customer_name," +
                 "customer_birthday,customer_gender,customer_id_card,customer_phone,customer_email,customer_address , customer_type_id ) values (?,?,?,?,?,?,?,?)";
    private static final  String SELECT_CUSTOMER_ID = "select * from customer_type where customer_type_id = ?";
    Connection conn = new DBConnect().DBConnect();
    PreparedStatement ps = null;
    ResultSet rs = null;

    @Override
    public List<Customer> getAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        try {
            ps = conn.prepareStatement(GET_ALL_CUSTOMER);
            rs = ps.executeQuery();
            while (rs.next()) {
                customerList.add(new Customer(
                        rs.getString("customer_name"),
                        rs.getDate("customer_birthday"),
                        rs.getBoolean("customer_gender"),
                        rs.getInt("customer_id_card"),
                        rs.getInt("customer_phone"),
                        rs.getString("customer_email"),
                        rs.getString("customer_address"),
                        new CustomerType(rs.getInt("customer_type_id"),
                                rs.getString("customer_type_name"))));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public List<CustomerType> getAllCustomerType() {
        List<CustomerType> customerTypeList = new ArrayList<>();
        try {
            ps = conn.prepareStatement(GET_ALL_CUSTOMER_TYPE);
            rs = ps.executeQuery();
            while (rs.next()){
                customerTypeList.add(new CustomerType(rs.getInt("customer_type_id"),
                        rs.getString("customer_type_name")));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return customerTypeList;
    }

    @Override
    public void inserCustomer(Customer customer) {
            try {
                ps = conn.prepareStatement(INSERT_CUSTOMER);

                ps.setString(1,customer.getCustomerName());
                ps.setDate(2, (java.sql.Date) customer.getCustomerBirthday());
                ps.setBoolean(3,customer.isCustomerGender());
                ps.setInt(4,customer.getCustomerIdCard());
                ps.setInt(5,customer.getCustomerPhone());
                ps.setString(6,customer.getCustomerEmail());
                ps.setString(7,customer.getCustomerAddress());
                ps.setInt(8,new CustomerType().getCustomerTypeId());
                ps.executeUpdate();

            }catch (Exception e){
                e.printStackTrace();
            }
    }

    @Override
    public CustomerType customerType(int id) {
            try {
                    ps = conn.prepareStatement(SELECT_CUSTOMER_ID);
                    ps.setInt(1,id);
                    rs = ps.executeQuery();
                    while (rs.next()){
                        return new CustomerType(rs.getInt("customer_type_id"),
                                rs.getString("customer_type_name"));
                    }
            }catch (Exception e){
                e.printStackTrace();
            }
        return null;
    }


//    public static void main(String[] args) {
//        CustomerRepository customerRepository = new CustomerRepository();
//        List<CustomerType> customerList = customerRepository.getAllCustomerType();
//        for (CustomerType c : customerList) {
//            System.out.println(c);
//        }
//    }
}
