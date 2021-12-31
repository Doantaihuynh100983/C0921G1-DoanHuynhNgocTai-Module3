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

//    public static void main(String[] args) {
//        IServiceS d = new ServiceS();
//        List<ServiceType> rentTypeList = d.getAllServiceType();
//        for (ServiceType r : rentTypeList){
//            System.out.println(r);
//        }
//    }
}
