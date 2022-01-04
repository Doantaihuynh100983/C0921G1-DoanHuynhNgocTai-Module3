package service;

import bean.Customer;
import bean.CustomerType;
import common.Vallidate;
import repository.CustomerRepository;
import repository.ICustomerRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map<String ,String> inserCustomer(Customer customer) {
        Map<String,String> stringStringMap = new HashMap<>();
        if (!customer.getCustomerName().matches("[A-Za-z ]+")){
            stringStringMap.put("nameCustomer","Invalid name format");
        }


        if (stringStringMap.isEmpty()){
            this.iCustomerRepository.inserCustomer(customer);
        }



        return stringStringMap;
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
