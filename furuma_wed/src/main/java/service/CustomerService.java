package service;

import bean.Customer;
import bean.CustomerType;
import repository.CustomerRepository;
import repository.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository iCustomerRepository = new CustomerRepository();
    @Override
    public List<Customer> getAllCustomer() {
        return this.iCustomerRepository.getAllCustomer();
    }

    @Override
    public List<CustomerType> getAllCustomerType() {
        return this.iCustomerRepository.getAllCustomerType();
    }

    @Override
    public void inserCustomer(Customer customer) {
         this.iCustomerRepository.inserCustomer(customer);
    }

    @Override
    public CustomerType customerType(int id) {
        return  this.iCustomerRepository.customerType(id);
    }
}
