package repository;

import bean.Customer;
import bean.CustomerType;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> getAllCustomer();
    List<CustomerType> getAllCustomerType();
    void inserCustomer(Customer customer);
    CustomerType customerType(int id);
    Customer customerById(int id);
    void updateCustomer(Customer customer);
    void deleteCustomer(int id);
    List<Customer> searchCustomer(String name,String adress,int customerType);
}
