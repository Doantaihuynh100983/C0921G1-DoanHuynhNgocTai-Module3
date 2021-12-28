package repository;

import bean.Customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository{
    private static final String GET_ALL_CUSTOMER = "select * from customer ctm left join customer_type ctmt on ctm.customer_type_id = ctmt.customer_type_id";

    Connection conn = new DBConnect().DBConnect();;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Customer> getAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        try {
            ps = conn.prepareStatement(GET_ALL_CUSTOMER);
            rs = ps.executeQuery();
            while (rs.next()){
                customerList.add(new Customer(
                        rs.getInt("customer_id"),
                        rs.getString("customer_name"),
                        rs.getDate("customer_birthday"),
                        rs.getInt("customer_gender"),
                        rs.getInt("customer_id_card"),
                        rs.getInt("customer_phone"),
                        rs.getString("customer_email"),
                        rs.getString("customer_type_name"),
                        rs.getString("customer_address")));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return customerList;
    }
    public static void main(String[] args) {
        ICustomerRepository customerRepository = new CustomerRepository();
        List<Customer> customerList = customerRepository.getAllCustomer();
        for (Customer c : customerList){
            System.out.println(c);
        }
    }
}


