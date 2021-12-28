package bean;

import bean.Facility;

public class Room extends Facility {
    private String dichVuMienPhiDiKem;

    public Room() {
    }

    public Room(String tenDichVu, double dienTichSuDung, double chiPhiThue, int soNguoiThueToiDa, String kieuThue, String dichVuMienPhiDiKem) {
        super(tenDichVu, dienTichSuDung, chiPhiThue, soNguoiThueToiDa, kieuThue);
        this.dichVuMienPhiDiKem = dichVuMienPhiDiKem;
    }

    public String getDichVuMienPhiDiKem() {
        return dichVuMienPhiDiKem;
    }

    public void setDichVuMienPhiDiKem(String dichVuMienPhiDiKem) {
        this.dichVuMienPhiDiKem = dichVuMienPhiDiKem;
    }
}
