# SỔ THU HỌC PHÍ THÔNG MINH (Mobile App & PWA)

Ứng dụng web được tối ưu hóa đặc biệt dành cho **điện thoại di động**, hỗ trợ giáo viên, gia sư và trung tâm đào tạo dễ dàng **theo dõi, đánh dấu và quản lý việc thu tiền học phí theo từng tháng của học sinh**.

---

## 🌟 TÍNH NĂNG NỔI BẬT

1. **Giao diện chuẩn di động (Mobile-First)**:
   - Thiết kế tinh gọn, hiện đại theo phong cách App Native trên iPhone / Android.
   - Thanh điều hướng thông minh (Bottom Navigation Bar) thao tác 1 tay cực kỳ tiện lợi.

2. **Đánh dấu thu học phí theo tháng (1 Chạm)**:
   - Dễ dàng chuyển qua lại giữa các tháng/năm (`Tháng 10/2026`, `Tháng 11/2026`,...).
   - **Nút thu nhanh 1 chạm**: Bấm vào nút tích xanh để đánh dấu học sinh đã nộp đủ tiền kèm ngày giờ thu hiện tại.
   - **Tùy chỉnh thu chi tiết**: Hỗ trợ nộp tiền một phần (đóng thiếu), chọn hình thức (Chuyển khoản, Tiền mặt, Ví điện tử) và ghi chú riêng.

3. **Tích hợp mã chuyển khoản VietQR tự động**:
   - Tự động sinh mã VietQR chuẩn ngân hàng Việt Nam kèm số tiền và nội dung chuyển khoản theo tên học sinh (`HP T10 Nguyen Van A`).
   - Phụ huynh chỉ cần dùng app ngân hàng quét mã là xong, không lo nhầm lẫn số tiền hay số tài khoản.

4. **Nhắc học phí 1 chạm qua Zalo / Tin nhắn SMS**:
   - Tự động soạn sẵn tin nhắn thông báo học phí cá nhân hóa cho từng học sinh và số tài khoản ngân hàng.
   - Bấm nút mở ứng dụng tin nhắn SMS hoặc copy gửi nhanh qua Zalo cho phụ huynh.

5. **Thống kê & Báo cáo doanh thu trực quan**:
   - Thẻ theo dõi tiến độ: Tổng học sinh, Số tiền đã thu, Số tiền còn thiếu, Tỷ lệ hoàn thành (%).
   - Biểu đồ cột doanh thu 12 tháng trong năm.
   - Danh sách học sinh chưa nộp học phí của tháng để tiện theo dõi đòi nợ phí.

6. **Sao lưu, Xuất Excel & An toàn dữ liệu**:
   - **Xuất bảng thu học phí ra file Excel (.CSV)** chuẩn tiếng Việt UTF-8 không lỗi font.
   - **Sao lưu toàn bộ dữ liệu** thành file `.json` để lưu trữ hoặc chuyển sang máy khác.
   - Khôi phục dữ liệu nhanh chóng chỉ với 1 cú click.
   - Dữ liệu được lưu trữ an toàn ngay trên bộ nhớ trình duyệt điện thoại (LocalStorage), hoạt động **Offline 100%** không cần mạng.

---

## 📱 CÁCH SỬ DỤNG TRÊN ĐIỆN THOẠI DI ĐỘNG

### Cách 1: Cài đặt lên màn hình chính (Dùng như App thật)

#### Trên iPhone (iOS Safari):
1. Mở trang web bằng trình duyệt **Safari**.
2. Bấm vào biểu tượng **Chia sẻ** (hình vuông có mũi tên trỏ lên ở giữa thanh công cụ phía dưới).
3. Cuộn xuống và chọn **"Thêm vào MH chính"** (*Add to Home Screen*).
4. Bấm **Thêm** (*Add*). Ứng dụng sẽ xuất hiện trên màn hình điện thoại với biểu tượng riêng, bấm vào là mở toàn màn hình (không có thanh địa chỉ web).

#### Trên điện thoại Android (Chrome / Cốc Cốc):
1. Mở trang web bằng trình duyệt **Google Chrome**.
2. Bấm vào dấu **3 chấm dọc (⋮)** ở góc trên bên phải.
3. Chọn **"Cài đặt ứng dụng"** hoặc **"Thêm vào Màn hình chính"**.
4. Bấm xác nhận cài đặt.

---

### Cách 2: Chạy trực tiếp từ máy tính kết nối Wi-Fi sang điện thoại

Nếu bạn có máy tính cùng mạng Wi-Fi với điện thoại:
1. Mở thư mục này trên máy tính: `C:\Users\TUNG\.gemini\antigravity\scratch\quan-ly-hoc-phi`
2. Nhấp chuột phải vào file **`server.ps1`** -> Chọn **Run with PowerShell**.
3. Cửa sổ lệnh sẽ hiện ra địa chỉ IP nội bộ, ví dụ: `http://192.168.1.15:8080`.
4. Mở trình duyệt trên điện thoại và gõ địa chỉ trên là có thể dùng ngay lập tức!

---

### Cách 3: Đưa lên mạng miễn phí để dùng ở bất cứ đâu (Khuyên dùng)

Bạn có thể đưa toàn bộ thư mục này lên các dịch vụ hosting miễn phí vĩnh viễn (chỉ mất 1 phút):
- **Netlify Drop** ([app.netlify.com/drop](https://app.netlify.com/drop)): Kéo thả cả thư mục `quan-ly-hoc-phi` vào trang web, bạn sẽ nhận được ngay 1 đường link web (ví dụ: `hoc-phi.netlify.app`) để lưu vào điện thoại dùng trọn đời.
- **GitHub Pages** hoặc **Vercel**: Upload mã nguồn lên và kích hoạt Pages miễn phí.

---

## 📁 CẤU TRÚC TỆP TIN

- `index.html`: Mã nguồn toàn bộ ứng dụng (Giao diện Mobile, Xử lý tính toán, VietQR, Xuất Excel).
- `manifest.json`: Khai báo PWA cho phép cài đặt app lên iOS / Android.
- `sw.js`: Service Worker giúp app lưu bộ nhớ đệm và mở nhanh cả khi mất mạng.
- `icon.svg`: Biểu tượng ứng dụng độ phân giải cao.
- `server.ps1`: Script PowerShell khởi chạy máy chủ mini cục bộ cho mạng nội bộ.
