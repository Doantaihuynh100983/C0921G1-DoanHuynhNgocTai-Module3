package service;

import bean.BenhNhan;
import repository.BenhNhanRepository;
import repository.IBenhNhanRepository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BenhNhanService implements  IBenhNhanSerVice{
    IBenhNhanRepository iBenhNhanRepository = new BenhNhanRepository();
    @Override
    public List<BenhNhan> getAllBenhNhan() {
        return this.iBenhNhanRepository.getAllBenhNhan();
    }

    @Override
    public BenhNhan getBenhNhanById(int id) {
        return this.iBenhNhanRepository.getBenhNhanById(id);
    }

    @Override
    public Map<String,String> updateBenhNhan(BenhNhan benhNhan) {
        Map<String,String> stringStringMap = new HashMap<>();
        if (!benhNhan.getTenBenhNhan().matches("[A-Za-z ]+")){
            stringStringMap.put("nameBenhNhan","Nhập Lại Tên");
        }
        

        if (stringStringMap.isEmpty()){
            this.iBenhNhanRepository.updateBenhNhan(benhNhan);
        }


        return stringStringMap;
    }

    @Override
    public void deleteBenhNhan(int id) {
        this.iBenhNhanRepository.deleteBenhNhan(id);
    }

}
