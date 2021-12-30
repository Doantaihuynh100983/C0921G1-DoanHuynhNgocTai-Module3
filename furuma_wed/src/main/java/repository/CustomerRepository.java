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
    private static final String GET_ALL_CUSTOMER = "select * from customer ctm left join customer_type ctmt on ctm.customer_type_id = ctmt.customer_type_id where flag_delete = 1";
    private static final String GET_ALL_CUSTOMER_TYPE = "select * from customer_type";
    private static final String INSERT_CUSTOMER = "insert into customer (customer_name," +
            "customer_birthday,customer_gender,customer_id_card,customer_phone,customer_email,customer_address , customer_type_id ) values (?,?,?,?,?,?,?,?)";
    private static final String SELECT_CUSTOMER_ID = "select * from customer_type where customer_type_id = ?";
    private static final String SELECT_CUSTOMER_BY_ID = "select * from customer ctm join customer_type ctmt on ctm.customer_type_id = ctm.customer_type_id where customer_id = ?";
    private static final String UPDATE_CUSTOMER_BY_ID = "UPDATE customer SET   customer_name = ? ,customer_birthday = ? ,customer_gender = ? ,customer_id_card = ?,customer_phone = ?," +
            "customer_email = ? ,customer_address = ? ,customer_type_id = ? WHERE customer_id = ?";
    private static final  String DELETE_CUSTOMER ="UPDATE customer SET flag_delete = 0  WHERE customer_id= ?";
    private static final String SEARCH_CUSTOMER ="select * from customer ctm left join customer_type ctmt on ctm.customer_type_id = ctmt.customer_type_id where customer_name like ?";
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
                        rs.getInt("customer_id"),
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
            while (rs.next()) {
                customerTypeList.add(new CustomerType(rs.getInt("customer_type_id"),
                        rs.getString("customer_type_name")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customerTypeList;
    }

    @Override
    public void inserCustomer(Customer customer) {
        try {
            ps = conn.prepareStatement(INSERT_CUSTOMER);

            ps.setString(1, customer.getCustomerName());
            ps.setDate(2, (java.sql.Date) customer.getCustomerBirthday());
            ps.setBoolean(3, customer.isCustomerGender());
            ps.setInt(4, customer.getCustomerIdCard());
            ps.setInt(5, customer.getCustomerPhone());
            ps.setString(6, customer.getCustomerEmail());
            ps.setString(7, customer.getCustomerAddress());
            ps.setInt(8, customer.getCustomerType().getCustomerTypeId());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public CustomerType customerType(int id) {
        try {
            ps = conn.prepareStatement(SELECT_CUSTOMER_ID);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new CustomerType(rs.getInt("customer_type_id"),
                        rs.getString("customer_type_name"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public Customer customerById(int id) {
        try {
            ps = conn.prepareStatement(SELECT_CUSTOMER_BY_ID);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(
                        rs.getInt("customer_id"),
                        rs.getString("customer_name"),
                        rs.getDate("customer_birthday"),
                        rs.getBoolean("customer_gender"),
                        rs.getInt("customer_id_card"),
                        rs.getInt("customer_phone"),
                        rs.getString("customer_email"),
                        rs.getString("customer_address"),
                        new CustomerType(rs.getInt("customer_type_id"),
                                rs.getString("customer_type_name")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void updateCustomer(Customer customer) {
        try {
            ps = conn.prepareStatement(UPDATE_CUSTOMER_BY_ID);
            ps.setString(1, customer.getCustomerName());
            ps.setDate(2, (java.sql.Date) customer.getCustomerBirthday());
            ps.setBoolean(3, customer.isCustomerGender());
            ps.setInt(4, customer.getCustomerIdCard());
            ps.setInt(5, customer.getCustomerPhone());
            ps.setString(6, customer.getCustomerEmail());
            ps.setString(7, customer.getCustomerAddress());
            ps.setInt(8, customer.getCustomerType().getCustomerTypeId());
            ps.setInt(9, customer.getCustomerId());
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteCustomer(int id) {
        try {
            ps = conn.prepareStatement(DELETE_CUSTOMER);
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public List<Customer>  searchCustomer(String name) {
        List<Customer> customerList = new ArrayList<>();
            try {
                ps = conn.prepareStatement(SEARCH_CUSTOMER);
                ps.setString(1,"%"+name+"%");
                rs = ps.executeQuery();
                while (rs.next()){
                    customerList.add(new Customer(
                            rs.getInt("customer_id"),
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

            }catch (Exception e){
                e.printStackTrace();
            }
            return customerList;
    }

}
