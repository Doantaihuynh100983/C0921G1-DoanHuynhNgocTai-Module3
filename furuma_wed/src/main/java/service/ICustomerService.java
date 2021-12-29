package service;

import bean.Customer;
import bean.CustomerType;

import java.util.List;

public interface ICustomerService {
    List<Customer> getAllCustomer();
    List<CustomerType> getAllCustomerType();
    void inserCustomer(Customer customer);
    CustomerType customerType(int id);
}
