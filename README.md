# demo-trigger-sql
bài tập số 5 mssv k225480106001 Lê Tuấn Anh môn hệ quản trị cs dữ liệu 
A.án đ Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.

   # bài làm
   A.án đ Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
# 1 Mô tả bài toán
Trong môi trường đại học, nhiều sinh viên gặp khó khăn trong việc học một số môn và có nhu cầu tìm người hỗ trợ – đặc biệt là các gia sư có kiến thức tốt và kỹ năng truyền đạt hiệu quả. Tuy nhiên, việc tìm kiếm gia sư phù hợp hiện nay thường thực hiện qua các kênh không chính thức như mạng xã hội, truyền miệng, hoặc bảng thông báo, dẫn đến:

Thông tin không được xác thực, thiếu tin cậy.

Khó khăn trong việc so sánh, lựa chọn gia sư phù hợp.

Thiếu công cụ hỗ trợ quản lý các buổi học, chi phí, phản hồi, đánh giá…

Do đó, cần thiết kế một hệ thống hỗ trợ tìm gia sư theo môn học cho sinh viên trong phạm vi nội bộ trường học, giúp kết nối giữa người học (sinh viên cần hỗ trợ) và người dạy (sinh viên giỏi, trợ giảng, gia sư tự nguyện hoặc tính phí) một cách nhanh chóng, hiệu quả và an toàn.

2. Yêu cầu hệ thống
Quản lý người dùng:

Đăng ký/Đăng nhập riêng cho từng đối tượng: Sinh viên, Gia sư, Quản trị viên.

Cập nhật thông tin cá nhân, đổi mật khẩu, ảnh đại diện, v.v.

Quản lý môn học và năng lực gia sư:

Danh sách các môn học trong trường.

Gia sư khai báo các môn có thể dạy, trình độ, tiểu sử (CV).

Tìm kiếm và đề xuất gia sư:

Cho phép sinh viên tìm kiếm gia sư theo môn học, lịch rảnh, mức giá, đánh giá…

Gợi ý gia sư phù hợp dựa trên bộ lọc.

Quản lý buổi học:

Đặt lịch học giữa sinh viên và gia sư.

Theo dõi trạng thái: Đã đặt, Đã hoàn thành, Đã hủy, v.v.

Ghi nhận thời gian, địa điểm (offline hoặc online), nội dung học.

Đánh giá và phản hồi:

Sinh viên có thể đánh giá buổi học, nhận xét gia sư.

Gia sư có thể phản hồi nhận xét (nếu cần).

Quản trị hệ thống:

Quản lý tài khoản, duyệt đăng ký gia sư.

Quản lý môn học, kiểm duyệt nội dung phản hồi.

Thống kê số lượng buổi học, gia sư được đánh giá cao,

# 2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết

bảng sinh viên 
![image](https://github.com/user-attachments/assets/3fcf4417-77ff-41af-85e3-ed9ad126716f)

bảng gia sư
![image](https://github.com/user-attachments/assets/ab512401-8962-4294-8411-7d78dac98301)

bảng môn học
![image](https://github.com/user-attachments/assets/1d6416c0-f1e1-4f65-82c2-1e77ee86f7e4)

bảng yêu cầu gia sư
![image](https://github.com/user-attachments/assets/740a8689-a364-4d9a-b3c3-bb829ad1324a)

bảng lịch học
![image](https://github.com/user-attachments/assets/891a1d76-53a2-4c8d-9629-beb9c8f9a40f)

bảng đăng kí môn học
![image](https://github.com/user-attachments/assets/95de5eea-9f8a-49a5-8471-e783437437c9)

bảng buổi học
![image](https://github.com/user-attachments/assets/f5596246-c024-4f74-a8cc-7deebef4bbb2)

bảng đánh giá
![image](https://github.com/user-attachments/assets/2089c5b2-08e0-4f1a-9147-a03e4798332a)



# B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.


# 2 Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!

   ![image](https://github.com/user-attachments/assets/3a52c5e2-3fd6-4a60-9e57-99812691b1a0)

mail không được trùng lặp nếu trùng lặp hệ thống sẽ báo lỗi 

   ![image](https://github.com/user-attachments/assets/d7b5ad80-5ab8-4b5d-8416-4d03890cf3da)

sdt không được trùng lặp nếu trùng nhau hệ thống sẽ báo lỗi 

![image](https://github.com/user-attachments/assets/2e2c16a2-24b2-4cac-9b2c-386bbf55258a)


khi khi gmail và sdt không trùng lặp hệ thống không báo lỗi 

![image](https://github.com/user-attachments/assets/c484bc94-ed14-449c-8075-02e2c2be3a67)

![image](https://github.com/user-attachments/assets/5d5a7283-b671-472f-8593-d5a066780f1b)

![image](https://github.com/user-attachments/assets/d85f396f-a0a2-455a-b333-0fbfbfae3fb7)

![image](https://github.com/user-attachments/assets/5614b903-1532-498d-aca8-a8ae730607cd)

![image](https://github.com/user-attachments/assets/f631648b-02ae-494d-a05a-cdaed548c904)

![image](https://github.com/user-attachments/assets/a4a7afb8-0a9a-4493-aefa-2bc66dd29cf5)

![image](https://github.com/user-attachments/assets/5739b7e1-d848-4622-81f3-036151448100)

![image](https://github.com/user-attachments/assets/ac999969-e29d-4690-821f-8e10098c8ce6)

![image](https://github.com/user-attachments/assets/83cbb096-2ab9-451d-a343-c9076956b07b)

![image](https://github.com/user-attachments/assets/5eeb150e-2f99-4ed5-8933-bd1b319bf3fd)
Đảm bảo tính toàn vẹn dữ liệu:

Trigger giúp kiểm soát và cập nhật dữ liệu liên quan giữa các bảng mà không cần can thiệp thủ công.

Ví dụ: Sau khi sinh viên đặt buổi học, hệ thống có thể cập nhật tự động số lượt dạy của gia sư.

 Tự động hóa các nghiệp vụ lặp lại:

Trigger hỗ trợ giảm tải cho người dùng hoặc ứng dụng bằng cách tự động thực hiện một số thao tác logic nghiệp vụ.

Ví dụ: Nếu một buổi học bị hủy, trigger sẽ tự động ghi lại lịch sử vào bảng thống kê hoặc nhật ký.

 Giúp kiểm tra và ràng buộc dữ liệu trước khi lưu:

Trigger BEFORE INSERT/UPDATE có thể dùng để kiểm tra logic (ví dụ: không cho phép đặt lịch trùng giờ, số lượng sinh viên học 1 gia sư vượt quá giới hạn).

Hỗ trợ thống kê và báo cáo:

Khi có sự kiện như hoàn tất buổi học, hệ thống có thể cập nhật bảng thống kê (tổng số buổi học, tổng tiền gia sư nhận, mức độ đánh giá...) một cách tự động.














