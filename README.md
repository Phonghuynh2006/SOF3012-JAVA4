# ☕ SOF3012 — Lập trình Java 4  
## 📦 Hướng dẫn cài đặt **Lombok** cho Eclipse IDE  

> 💡 *Lombok giúp giảm bớt code lặp trong Java bằng cách sinh tự động getter, setter, constructor, builder,…*
>
> 🧰 Cài đặt plugin này giúp Eclipse nhận diện và biên dịch các annotation của Lombok chính xác hơn.

---

### 🪜 Bước 1. Mở Eclipse
- 🔹 Chạy **Eclipse** như bình thường.  
- 🔹 Trên thanh menu, chọn **Help → Install New Software…**

---

### 🪜 Bước 2. Thêm địa chỉ cập nhật (Update Site)
1. 🧩 Trong cửa sổ **Install**, nhấn **Add…**  
2. Nhập thông tin sau:
Name: Lombok
Location: https://projectlombok.org/p2
3. ✅ Nhấn **Add** để thêm nguồn cài đặt.

---

### 🪜 Bước 3. Chọn Lombok
- 🕓 Chờ vài giây để Eclipse tải danh sách plugin.  
- ☑️ Tích chọn **Project Lombok**.  
> Nếu danh sách có nhiều mục, chỉ cần chọn **Project Lombok**.
- Nhấn **Next →**

---

### 🪜 Bước 4. Cài đặt
- 📄 Kiểm tra thông tin plugin → Nhấn **Next**  
- 🔘 Chọn **I accept the terms of the license agreement**  
- 🚀 Nhấn **Finish** để bắt đầu cài đặt

---

### 🪜 Bước 5. Chờ cài đặt
- ⏳ Quá trình có thể mất vài phút.  
- ⚠️ Nếu thấy cảnh báo *“unsigned content”* hoặc *“certificate warning”*, nhấn **Install anyway**  
> 🧠 *Lombok là mã nguồn mở và an toàn để cài đặt.*

---

### 🪜 Bước 6. Khởi động lại Eclipse
- 🔁 Sau khi cài xong, Eclipse sẽ yêu cầu **Restart**.  
- Nhấn **Restart Now** để hoàn tất quá trình.

---

### ✅ Bước 7. Kiểm tra cài đặt
1. Mở menu: **Help → About Eclipse IDE → Installation Details → Installed Software**  
2. 🔍 Tìm mục **Project Lombok**  
- Nếu thấy xuất hiện → 🥳 **Cài đặt thành công!**

---

## 💡 Ghi chú thêm
- Sau khi cài đặt, bạn có thể dùng các annotation:
```java
@Getter
@Setter
@Data
@Builder

