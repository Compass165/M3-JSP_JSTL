<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>List - Customer</title>
    <style type="text/css">
        table, th, td {
            border-top: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th,td {
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>

<table>

    <tr>
        <th colspan="4" ><h2><%="Danh sách Khách hàng"%></h2></th>
    </tr>
    <tr>
        <th><%= "Tên"%></th>
        <th><%= "Ngày sinh"%></th>
        <th><%= "Dịa chỉ"%></th>
        <th><%= "Ảnh"%></th>
    </tr>
    <tr>
        <td><%= "Nguyễn Duy Phong"%></td>
        <td><%= "16-05-1999"%></td>
        <td><%= "Quảng Ninh"%></td>
        <td><img width="30" height="30" src="https://haycafe.vn/wp-content/uploads/2022/02/Hinh-avatar-facebook-doc-ngon-giua.jpg"></td>
    </tr>


</table>

</body>
</html>
<script>
    alert('Bạn đã vào trang quản lý Khách hàng');
</script>