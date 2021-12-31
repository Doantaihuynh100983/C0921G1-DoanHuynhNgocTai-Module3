package service;

import bean.RentType;
import bean.Service;
import bean.ServiceType;
import repository.IServiceRepository;
import repository.ServiceRepository;

import java.util.List;

public class ServiceS  implements IServiceS{
    IServiceRepository iServiceRepository = new ServiceRepository();
    @Override
    public List<Service> getAllService() {
        return this.iServiceRepository.getAllService();
    }

    @Override
    public List<RentType> getAllRenType() {
        return this.iServiceRepository.getAllRenType();
    }

    @Override
    public List<ServiceType> getAllServiceType() {
        return this.iServiceRepository.getAllServiceType();
    }

    @Override
    public void addService(Service service) {
            this.iServiceRepository.addService(service);
    }

    @Override
    public Service getServiceById(int id) {
        return  this.iServiceRepository.getServiceById(id);
    }

    @Override
    public void updateService(Service service) {
        this.iServiceRepository.updateService(service);
    }

    @Override
    public void deleteService(int id) {
        this.iServiceRepository.deleteService(id);
    }


}
