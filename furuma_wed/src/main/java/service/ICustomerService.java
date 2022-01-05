package service;

import bean.Customer;
import bean.CustomerType;

import java.util.List;
import java.util.Map;

public interface ICustomerService {
    List<Customer> getAllCustomer();
    List<CustomerType> getAllCustomerType();
    Map<String ,String> inserCustomer(Customer customer);
    CustomerType customerType(int id);
    Customer customerById(int id);
    void updateCustomer(Customer customer);
    void deleteCustomer(int id);
    List<Customer> searchCustomer(String name,String adress,int customerType);
}
