<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bài 2 - Upload File</title>
</head>
<body>
    <h2>Upload File - Bài 2</h2>
    <input type="file" id="fileInput"><br><br>
    <button onclick="upload()">Upload</button>

    <script>
        function upload() {
            const file = document.getElementById("fileInput").files[0];
            if (!file) {
                alert("Chọn file đi bro");
                return;
            }
            const formData = new FormData();
            formData.append("file", file);

            fetch("upload", {  // hoặc full URL: http://localhost:8080/LAB7_JAVA4/upload
                method: "POST",
                body: formData
            })
            .then(r => r.json())
            .then(data => console.log("Upload thành công:", data))
            .catch(err => console.error("Lỗi:", err));
        }
    </script>
</body>
</html>