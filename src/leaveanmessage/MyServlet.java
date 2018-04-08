package leaveanmessage;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

/**
 * Created by jal on 2018/3/11 0011.
 */
@WebServlet(name = "myServlet")
public class MyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = MyTools.toChinese(request.getParameter("name"));
        String title = MyTools.changeHTML(MyTools.toChinese(request.getParameter("title")));
        String content = MyTools.changeHTML(MyTools.toChinese(request.getParameter("content")));

        String time = MyTools.changeTime(new Date());
        WordSingle single = new WordSingle();
        single.setName(name);
        single.setTitle(title);
        single.setContent(content);
        single.setTime(time);

        HttpSession session = request.getSession();
        ServletContext servletContext = session.getServletContext();
        ArrayList messages = (ArrayList)servletContext.getAttribute("messages");
        if(messages == null){
            messages = new ArrayList();
        }
        messages.add(single);
        servletContext.setAttribute("messages",messages);
        response.sendRedirect("leaveanmessage/show.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
