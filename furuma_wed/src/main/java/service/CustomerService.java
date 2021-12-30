package service;

import bean.Customer;
import bean.CustomerType;
import common.Vallidate;
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

    @Override
    public Customer customerById(int id) {
        return this.iCustomerRepository.customerById(id);
    }

    @Override
    public void updateCustomer(Customer customer) {
        this.iCustomerRepository.updateCustomer(customer);
    }

    @Override
    public void deleteCustomer(int id) {
        this.iCustomerRepository.deleteCustomer(id);
    }

    @Override
    public List<Customer> searchCustomer(String name) {
        return this.iCustomerRepository.searchCustomer(name);
    }
}
