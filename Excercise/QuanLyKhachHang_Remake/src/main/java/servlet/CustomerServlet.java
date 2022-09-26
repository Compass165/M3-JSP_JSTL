package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Phong","16/05/1999","Quảng Ninh","https://haycafe.vn/wp-content/uploads/2022/02/Hinh-avatar-facebook-doc-ngon-giua.jpg"));
        customerList.add(new Customer("Bảnh","01/05/1998","Thái Bình","https://haycafe.vn/wp-content/uploads/2022/03/avatar-facebook-doc.jpg"));
        customerList.add(new Customer("Huy","08/07/1999","Mê Linh","https://kiemtientuweb.com/ckfinder/userfiles/images/avatar-fb/avatar-fb-1.jpg"));
        customerList.add(new Customer("Lương","1/09/1997","Bắc Ninh","https://khoinguonsangtao.vn/wp-content/uploads/2022/06/avatar-facebook-nu-tao-ky-hieu-tay-1.png"));

        //        Một Attribute là một đối tượng được sử dụng để chia sẻ thông tin trong một ứng dụng web.
//        Thuộc tính cho phép Servlets chia sẻ thông tin với nhau
        request.setAttribute("customerList", customerList);
        System.out.print(customerList.get(1));
        //        Một RequestDispatcher là một class vô cùng quan trọng trong Java.
//        Nó giúp cho trang web chuyển request từ servlet này sang một servlet khác bằng cách cho phép gọi một servlet khác từ trong một servlet khác.
//        Nó tạo ra một đối tượng nhận request từ client và gửi chúng đến bất kỳ resource nào như một servlet, HTML hay JSP file.
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("display.jsp");
//        Với Forward bạn có thể sử dụng request.setAttribute() để truyền dữ liệu từ trang 1 sang trang thứ 2
        requestDispatcher.forward(request,response);
    }
}
