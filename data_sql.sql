USE [timgiasu]
GO
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Email], [Username], [MatKhau], [SoDienThoai], [Lop], [NganhHoc]) VALUES (N'SV001', N'Lê Tuấn Anh', N'anh@gmail.com', N'tuananh', N'123456', N'0934399101', N'k58ktp', N'Kỹ thuật máy tính')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Email], [Username], [MatKhau], [SoDienThoai], [Lop], [NganhHoc]) VALUES (N'SV002', N'Nguyễn Trung Kiên', N'kien@gmail.com', N'trungkien', N'123456', N'0934399102', N'k58ktp', N'Kỹ thuật máy tính')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [Email], [Username], [MatKhau], [SoDienThoai], [Lop], [NganhHoc]) VALUES (N'SV003', N'Nguyễn Tiến Đức', N'duc@gmail.com', N'tienduc', N'123456', N'0934399103', N'k58ktp', N'Kỹ thuật máy tính')
GO
INSERT [dbo].[MonHoc] ([MaMon], [TenMon], [MaxStudents]) VALUES (N'MH001', N'Toán', 5)
GO
INSERT [dbo].[DangKyMonHoc] ([MaDK], [MaSV], [MaMon], [NgayDangKy]) VALUES (1, N'SV001', N'MH001', CAST(N'2025-04-20' AS Date))
GO
INSERT [dbo].[YeuCauGiaSu] ([MaYeuCau], [MaSV], [MaMon], [NoiDung], [NgayYeuCau], [TrangThai]) VALUES (1, N'SV001', N'MH001', N'Cần gia sư ôn thi đại học', CAST(N'2025-04-21' AS Date), N'Chờ xử lý')
GO
INSERT [dbo].[GiaSu] ([MaGS], [HoTen], [Email], [Username], [MatKhau], [SoDienThoai], [KinhNghiem], [TieuSu]) VALUES (N'GS001', N'Đỗ Duy Cốp', N'cop@gmail.com', N'duycop', N'123456', N'0987654321', N'6 năm dạy kèm', N'Đã từng dạy các lớp luyện thi đại học')
INSERT [dbo].[GiaSu] ([MaGS], [HoTen], [Email], [Username], [MatKhau], [SoDienThoai], [KinhNghiem], [TieuSu]) VALUES (N'GS002', N'Trần Thị Thanh', N'thanh@gmail.com', N'tranthanh', N'123456', N'0987654322', N'3 năm dạy kèm', N'Đã từng dạy các lớp luyện thi đại học')
GO
INSERT [dbo].[LichHoc] ([MaLich], [MaYeuCau], [MaGS], [NgayBatDau], [NgayKetThuc], [HinhThuc], [HocPhi], [HinhThucThanhToan], [TrangThai]) VALUES (1, 1, N'GS001', CAST(N'2025-04-22' AS Date), CAST(N'2025-05-30' AS Date), N'Trực tuyến', CAST(200000.00 AS Decimal(10, 2)), N'Chuyển khoản', N'Đang học')
GO
SET IDENTITY_INSERT [dbo].[BuoiHoc] ON 

INSERT [dbo].[BuoiHoc] ([STT], [MaLich], [Ngay], [GioBatDau], [GioKetThuc], [TrangThai]) VALUES (8, 1, CAST(N'2025-04-22' AS Date), CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time), N'chưa học')
SET IDENTITY_INSERT [dbo].[BuoiHoc] OFF
GO
