package repository;

import bean.Customer;

import java.util.List;

public interface ICustomerRepository {
    List<Customer> getAllCustomer();
}
