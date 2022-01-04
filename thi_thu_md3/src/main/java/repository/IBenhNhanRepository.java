package repository;

import bean.BenhNhan;

import java.util.List;

public interface IBenhNhanRepository {
        List<BenhNhan> getAllBenhNhan();
        BenhNhan getBenhNhanById(int id);
        void updateBenhNhan(BenhNhan benhNhan);
        void deleteBenhNhan(int id);
}
