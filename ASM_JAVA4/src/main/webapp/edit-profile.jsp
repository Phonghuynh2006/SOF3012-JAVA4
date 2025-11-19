<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet" />

    <style>
        /* ===== RESET ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Plus Jakarta Sans", sans-serif;
            background: #141414;
            color: white;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        /* ===== LAYOUT WRAPPER ===== */
        .container {
            max-width: 1250px;
            margin: auto;
            padding: 40px 20px;
            display: flex;
            gap: 40px;
        }

        /* ===== SIDEBAR ===== */
        .sidebar {
            width: 260px;
            background: rgba(255, 255, 255, 0.06);
            padding: 20px;
            border-radius: 12px;
            height: fit-content;
        }

        .profile-box {
            display: flex;
            gap: 12px;
            margin-bottom: 25px;
        }

        .profile-box img {
            width: 46px;
            height: 46px;
            border-radius: 50%;
            object-fit: cover;
        }

        .sidebar-item {
            padding: 10px;
            display: flex;
            gap: 10px;
            align-items: center;
            border-radius: 8px;
            cursor: pointer;
            color: #ddd;
        }

        .sidebar-item.active {
            background: rgba(230, 10, 21, 0.3);
            color: #e60a15;
            font-weight: 600;
        }

        .sidebar-item:hover {
            background: rgba(255, 255, 255, 0.15);
        }

        /* ===== MAIN CONTENT ===== */
        .main {
            flex: 1;
        }

        .main h1 {
            font-size: 36px;
            font-weight: 800;
            margin-bottom: 6px;
        }

        .main p.sub {
            color: #bbb;
            margin-bottom: 30px;
        }

        /* ===== AVATAR SECTION ===== */
        .avatar-section {
            border-bottom: 1px solid #333;
            padding-bottom: 25px;
            margin-bottom: 35px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .avatar-box {
            display: flex;
            gap: 20px;
            align-items: center;
        }

        .avatar-box img {
            width: 95px;
            height: 95px;
            border-radius: 50%;
            object-fit: cover;
        }

        .btn-upload {
            background: #2f2f2f;
            border: none;
            padding: 10px 20px;
            color: white;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
        }

        .btn-upload:hover {
            background: #3b3b3b;
        }

        /* ===== FORM ===== */
        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 25px;
            margin-bottom: 25px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group label {
            margin-bottom: 6px;
            font-weight: 500;
        }

        .form-group input {
            padding: 12px;
            border-radius: 8px;
            border: 1px solid #444;
            background: rgba(255, 255, 255, 0.06);
            color: white;
            font-size: 15px;
        }

        .form-group input:focus {
            border-color: #e60a15;
            outline: none;
        }

        .form-group input[readonly] {
            background: rgba(255, 255, 255, 0.15);
            color: #aaa;
            cursor: not-allowed;
        }

        /* ===== BUTTONS ===== */
        .action-row {
            margin-top: 30px;
            display: flex;
            justify-content: flex-end;
            gap: 15px;
            padding-top: 25px;
            border-top: 1px solid #333;
        }

        .btn {
            padding: 10px 22px;
            border-radius: 8px;
            font-weight: 700;
            cursor: pointer;
            border: none;
        }

        .btn-cancel {
            background: #2f2f2f;
            color: white;
        }

        .btn-cancel:hover {
            background: #3b3b3b;
        }

        .btn-save {
            background: #e60a15;
            color: white;
        }

        .btn-save:hover {
            background: #c40913;
        }


        /* RESPONSIVE */
        @media(max-width: 900px) {
            .container {
                flex-direction: column;
            }

            .sidebar {
                width: 100%;
            }

            .form-grid {
                grid-template-columns: 1fr;
            }

            .avatar-section {
                flex-direction: column;
                gap: 20px;
                text-align: center;
            }
        }
    </style>
</head>
<body>

    <div class="container">

        <!-- SIDEBAR -->
        <div class="sidebar">
            <div class="profile-box">
                <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuDj0EndXdcVk9nix0wv7hk1_AuGgiC73cWBWtoLmgzpAQY0ipYuEz-usjMcNR5FXpjsJC26uRkXcOc_rG2k6foOa_T_2EZa2TGmzbaYM1fGjI4dDmYxPSmA2gGmrh98ZZ_y7STzjGilUeBMOXscoC49K9zIrnunFTheHyVOZ9VxeoS3CDnCCJtZakBA7BV_QL0wfDKoYpQh_05zgX6f7Ab8FwpZdnWm99brXhV8bgb619LVeNmbLLNLrFvJ8L7gS_rqHhuN-2qbWck"
                    alt="">
                <div>
                    <h3>Minh Nguyen</h3>
                    <p style="color:#bbb; font-size:14px;">minh.nguyen@email.com</p>
                </div>
            </div>

            <div class="sidebar-item active">
                <span></span> Thông tin cá nhân
            </div>
            <a href="change-password.jsp">
            <div class="sidebar-item">
                <span></span> Mật khẩu
            </div></a>

            <a href="index.jsp">
            <div class="sidebar-item">
                <span></span> Quay lại
            </div></a>
            

            <div style="border-top:1px solid #333; margin-top:20px; padding-top:15px;">
                <div class="sidebar-item">
                    <span></span> Đăng xuất
                </div>
            </div>
        </div>

        <!-- MAIN -->
        <div class="main">
            <h1>Cài đặt Tài khoản</h1>
            <p class="sub">Quản lý thông tin hồ sơ và cài đặt tài khoản của bạn.</p>

            <!-- Avatar Section -->
            <div class="avatar-section">
                <div class="avatar-box">
                    <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuCZFG-gkLpGBsQJcPeBzZcK5jrj7oFN_3jRymWG3idtYIukWc-mHOfZ_C8R9_gDOCi6NnA2wfVIlaH4acRB9jwaRfoFg8OT_ouItu3jKcW6c0jt2uQ1ANx8FNX_z0T7eTiSYMTiFjZoPyCVvlzwpSPONLfx42_AqEDtCgg8d09vlGfokOa851iGK9eyTZ1ctqAOPjEU8SlctqFnlx3X-02Hz1xaCNp9pkW6TN9izj_Vjn0DAzcaVFlMjYnlIiPOwxQ3bdCCW4wNAZs"
                        alt="">
                    <div>
                        <h3 style="font-size:22px; font-weight:700;">Ảnh đại diện</h3>
                        <p style="color:#bbb;">Cập nhật ảnh của bạn. Nó sẽ hiển thị cho người khác.</p>
                    </div>
                </div>

                <button class="btn-upload">Tải ảnh mới</button>
            </div>

            <!-- FORM -->
            <div class="form-grid">
                <div class="form-group">
                    <label>Họ và Tên</label>
                    <input type="text" value="Minh Nguyen">
                </div>

                <div class="form-group">
                    <label>Tên người dùng</label>
                    <input type="text" value="minh_nguyen">
                </div>
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="text" value="minh.nguyen@email.com" readonly>
            </div>

            <!-- BUTTONS -->
            <div class="action-row">
                <button class="btn btn-cancel">Hủy</button>
                <button class="btn btn-save">Lưu Thay Đổi</button>
            </div>

        </div>
    </div>

</body>
</html>