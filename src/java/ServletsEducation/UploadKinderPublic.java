/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsEducation;

import Excel.Excel_KinderPublic;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/**
 *
 * @author Geraldine Atayan
 */
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class UploadKinderPublic extends HttpServlet {

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("file1");
        // obtains input stream of the upload file
        inputStream = filePart.getInputStream();

        POIFSFileSystem fs = new POIFSFileSystem(inputStream);
        //TODO can be changed into xssf      
        HSSFWorkbook wb = new HSSFWorkbook(fs);

        String table = new Excel_KinderPublic(wb).getHTML();

        session.setAttribute("table", table);

        ServletContext context = getServletContext();
        RequestDispatcher rd = context.getRequestDispatcher("/previewByKinderPublic.jsp");
        rd.forward(request, response);
    }
}
