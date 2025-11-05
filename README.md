project:
  name: "SOF3012 - Lập trình Java 4"
  author: "phonghuynh"
  description: "Hướng dẫn cài đặt Lombok cho Eclipse IDE"

installation_steps:
  - step: 1
    title: "Mở Eclipse"
    actions:
      - "Chạy Eclipse như bình thường."
      - "Vào menu: Help → Install New Software…"

  - step: 2
    title: "Thêm địa chỉ cập nhật (Update Site)"
    actions:
      - "Trong cửa sổ Install, nhấn Add…"
      - "Điền thông tin:"
      - name: "Lombok"
        location: "https://projectlombok.org/p2"
      - "Nhấn Add để thêm nguồn cài đặt."

  - step: 3
    title: "Chọn Lombok"
    actions:
      - "Sau vài giây, Eclipse sẽ tải danh sách plugin."
      - "Tick chọn 'Project Lombok'."
      - "Nếu có nhiều mục, chỉ chọn 'Project Lombok'."
      - "Nhấn Next."

  - step: 4
    title: "Cài đặt"
    actions:
      - "Xem thông tin plugin → Nhấn Next."
      - "Chọn 'I accept the terms of the license agreement'."
      - "Nhấn Finish để bắt đầu cài đặt."

  - step: 5
    title: "Chờ cài đặt"
    actions:
      - "Quá trình cài đặt có thể mất vài phút."
      - "Nếu có cảnh báo chứng chỉ, nhấn 'Install anyway'."
      - note: "Lombok là open-source và an toàn để cài đặt."

  - step: 6
    title: "Khởi động lại Eclipse"
    actions:
      - "Sau khi cài xong, Eclipse sẽ yêu cầu restart."
      - "Nhấn 'Restart Now' để hoàn tất."

  - step: 7
    title: "Kiểm tra cài đặt"
    actions:
      - "Vào Help → About Eclipse IDE → Installation Details → Installed Software."
      - "Tìm 'Project Lombok' trong danh sách."
      - success: "Nếu có, bạn đã cài đặt thành công 🎉"

notes:
  - "Sau khi cài, bạn có thể dùng các annotation của Lombok như @Getter, @Setter, @Data, @Builder,…"
  - "Nếu gặp lỗi biên dịch, kiểm tra xem Lombok.jar đã được thêm vào classpath."

metadata:
  created_by: "phonghuynh"
  last_updated: "2025-11-05"
  license: "Open Source"
