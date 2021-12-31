package repository;

import bean.Customer;
import bean.RentType;
import bean.Service;
import bean.ServiceType;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ServiceRepository implements IServiceRepository{
    private static final String GET_ALL_SERVICE = "select * from service sv join service_type svt on sv.service_type_id = svt.service_type_id\n" +
                                                         "join rent_type rt on sv.rent_type_id = rt.rent_type_id where flag_delete_servie = 1 order by service_id ";
    private static final String GET_ALL_REN_TYPE = "SELECT * FROM rent_type;";
    private static final String GET_ALL_SERVICE_TYPE = "SELECT * FROM service_type";
    private static final String ADD_SERVICE ="insert into service (service_name, service_are, service_cost, service_max_people ,  " +
            " standard_room , description_other_convenience , pool_area , number_of_floors ,rent_type_id , service_type_id )" +
            " values (?,?,?,?,?,?,?,?,?,?)";
    private static final  String GET_SERVICE_BY_ID ="select * from service where service_id = ?";
    private static  final String UPDATE_SERVICE = "UPDATE service SET service_name = ?, service_are = ? , " +
            "service_cost = ?, service_max_people = ? ,   standard_room = ? , description_other_convenience = ?, pool_area = ? , " +
              "number_of_floors = ? ,rent_type_id = ? , service_type_id = ? WHERE service_id=? ";
    private static final String DELETE_SERVICE = "update service set flag_delete_servie = 0 where  service_id= ?";

    Connection conn = new DBConnect().DBConnect();
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<Service> getAllService() {
        List<Service> serviceList = new ArrayList<>();
        try {
            ps = conn.prepareStatement(GET_ALL_SERVICE);
            rs = ps.executeQuery();
            while (rs.next()){
                    serviceList.add(new Service(rs.getInt("service_id"),
                            rs.getString("service_name"),
                            rs.getInt("service_are"),
                            rs.getDouble("service_cost"),
                            rs.getInt("service_max_people"),
                            rs.getString("standard_room"),
                            rs.getString("description_other_convenience"),
                             rs.getDouble("pool_area"),
                            rs.getInt("number_of_floors"),
                            new RentType(rs.getInt("rent_type_id"),rs.getString("rent_type_name"),rs.getDouble("rent_type_cost")),
                            new ServiceType(rs.getInt("service_type_id"),rs.getString("service_type_name"))));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return serviceList;
    }

    @Override
    public List<RentType> getAllRenType() {
        List<RentType> rentTypeList = new ArrayList<>();
        try {
            ps = conn.prepareStatement(GET_ALL_REN_TYPE);
            rs = ps.executeQuery();
            while (rs.next()){
                rentTypeList.add(new RentType(
                        rs.getInt("rent_type_id"),
                        rs.getString("rent_type_name"),
                        rs.getDouble("rent_type_cost")
                ));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return rentTypeList;
    }

    @Override
    public List<ServiceType> getAllServiceType() {
        List<ServiceType> serviceTypeList = new ArrayList<>();
        try {
            ps = conn.prepareStatement(GET_ALL_SERVICE_TYPE);
            rs = ps.executeQuery();
            while (rs.next()){
                serviceTypeList.add(new ServiceType(
                    rs.getInt("service_type_id"),
                        rs.getString("service_type_name")
                ));
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return serviceTypeList;
    }

    @Override
    public void addService(Service service) {
        try {
            ps = conn.prepareStatement(ADD_SERVICE);
            ps.setString(1,service.getServiceName());
            ps.setInt(2,service.getServiceArea());
            ps.setDouble(3,service.getServiceCost());
            ps.setInt(4,service.getServiceMaxPeople());
            ps.setString(5,service.getStandardRoom());
            ps.setString(6,service.getDescriptionOtherConvenience());
            ps.setDouble(7,service.getPoolArea());
            ps.setInt(8,service.getNumberOfFloors());
            ps.setInt(9,service.getRentType().getRentTypeId());
            ps.setInt(10,service.getServiceType().getServiceTypeId());
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public Service getServiceById(int id) {
        try {
            ps = conn.prepareStatement(GET_SERVICE_BY_ID);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()){
                return  new Service(rs.getInt("service_id"),
                        rs.getString("service_name"),
                        rs.getInt("service_are"),
                        rs.getDouble("service_cost"),
                        rs.getInt("service_max_people"),
                        rs.getString("standard_room"),
                        rs.getString("description_other_convenience"),
                        rs.getDouble("pool_area"),
                        rs.getInt("number_of_floors"),
                        new RentType(rs.getInt("rent_type_id")),
                        new ServiceType(rs.getInt("service_type_id")));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void updateService(Service service) {
            try {
                ps = conn.prepareStatement(UPDATE_SERVICE);
                ps.setString(1,service.getServiceName());
                ps.setInt(2,service.getServiceArea());
                ps.setDouble(3,service.getServiceCost());
                ps.setInt(4,service.getServiceMaxPeople());
                ps.setString(5,service.getStandardRoom());
                ps.setString(6,service.getDescriptionOtherConvenience());
                ps.setDouble(7,service.getPoolArea());
                ps.setInt(8,service.getNumberOfFloors());
                ps.setInt(9,service.getRentType().getRentTypeId());
                ps.setInt(10,service.getServiceType().getServiceTypeId());
                ps.setInt(11,service.getServiceId());
                ps.executeUpdate();
            }catch (Exception e){
                e.printStackTrace();
            }
    }

    @Override
    public void deleteService(int id) {
        try {
            ps = conn.prepareStatement(DELETE_SERVICE);
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }


}
