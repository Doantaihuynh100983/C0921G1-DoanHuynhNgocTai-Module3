package service;

import bean.Customer;
import repository.CustomerRepository;
import repository.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService{
    ICustomerRepository iCustomerRepository = new CustomerRepository();
    @Override
    public List<Customer> getAllCustomer() {
        return this.iCustomerRepository.getAllCustomer();
    }
}
