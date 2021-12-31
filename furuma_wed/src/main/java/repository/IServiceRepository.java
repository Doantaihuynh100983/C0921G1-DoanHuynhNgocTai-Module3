package repository;

import bean.Customer;
import bean.RentType;
import bean.Service;
import bean.ServiceType;

import java.util.List;

public interface IServiceRepository {
    List<Service> getAllService();
    List<RentType> getAllRenType();
    List<ServiceType> getAllServiceType();
    void addService(Service service);
}
