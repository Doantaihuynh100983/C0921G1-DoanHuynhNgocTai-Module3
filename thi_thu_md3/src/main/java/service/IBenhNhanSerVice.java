package service;

import bean.BenhNhan;

import java.util.List;
import java.util.Map;

public interface IBenhNhanSerVice {
    List<BenhNhan> getAllBenhNhan();
    BenhNhan getBenhNhanById(int id);
    Map<String,String> updateBenhNhan(BenhNhan benhNhan);
    void deleteBenhNhan(int id);
}
