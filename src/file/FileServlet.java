package file;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
/**
 * Created by jal on 2018/3/15 0015.
 */
@WebServlet(name = "FileServlet")
public class FileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adjunctname;
        String fileDir = request.getRealPath("upload/");//指定上传文件的保存地址
        String message = "文件上传成功";
        String address = "";
        if(ServletFileUpload.isMultipartContent(request)){//判断是否上传文件的保存地址
            DiskFileItemFactory factory = new DiskFileItemFactory();
            factory.setSizeThreshold(20*1024);//设置内存中心允许存储的字节数
            factory.setRepository(factory.getRepository());//设置存放临时文件的目录
            //创建新的上传文件句柄
            ServletFileUpload upload = new ServletFileUpload(factory);
            int size = 2*1024*1024;//指定上传文件的大小
            List formlists = null;//创建保存上传文件的集合对象
            try {
                formlists = upload.parseRequest(request);
            }catch (FileUploadException e){
                e.printStackTrace();
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
