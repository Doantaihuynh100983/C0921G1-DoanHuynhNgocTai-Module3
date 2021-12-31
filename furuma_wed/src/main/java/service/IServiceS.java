package service;

import bean.RentType;
import bean.Service;
import bean.ServiceType;

import java.util.List;

public interface IServiceS {
    List<Service> getAllService();
    List<RentType> getAllRenType();
    List<ServiceType> getAllServiceType();
    void addService(Service service);
    Service getServiceById(int id);
    void updateService(Service service);
    void deleteService(int id);

}
