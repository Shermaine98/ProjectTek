/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsDemo;

import Excel.ExcelToHtml;
import Servlets.BaseServlet;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class UploadToDatabase extends BaseServlet {

    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        InputStream inputStream = null;

        int sheetNumber = -1;

        Part filePart = request.getPart("file1");
        inputStream = filePart.getInputStream();
        POIFSFileSystem fs = new POIFSFileSystem(inputStream);
        HSSFWorkbook wb = new HSSFWorkbook(fs);
        int numberSheet = wb.getNumberOfSheets();
        String uploadFile = request.getParameter("UploadFile");

        for (int i = 0; i < numberSheet; i++) {
            if (uploadFile.equalsIgnoreCase(wb.getSheetName(i).replaceAll(" ", ""))) {
                sheetNumber = i;
            }
        }
        if (sheetNumber != -1) {
              request.setAttribute("SheetName", "True");
            if (sheetNumber > -1 && uploadFile.equalsIgnoreCase("AgeGroup")) {
                String table = new ExcelToHtml(wb, sheetNumber).getHTML();
                request.setAttribute("table", table);
                ServletContext context = getServletContext();
                RequestDispatcher rd = context.getRequestDispatcher("/WEB-INF/JSPDemo/previewByAgeGroupSex.jsp");
                rd.forward(request, response);
            } else if (sheetNumber > -1 && uploadFile.equalsIgnoreCase("")) {
                String table = new ExcelToHtml(wb, sheetNumber).getHTML();
                request.setAttribute("table", table);
                ServletContext context = getServletContext();
                RequestDispatcher rd = context.getRequestDispatcher("/WEB-INF/JSPDemo/.jsp");
                rd.forward(request, response);
            } else if (sheetNumber > -1 && uploadFile.equalsIgnoreCase("")) {
                String table = new ExcelToHtml(wb, sheetNumber).getHTML();
                request.setAttribute("table", table);
                ServletContext context = getServletContext();
                RequestDispatcher rd = context.getRequestDispatcher("/WEB-INF/JSPDemo/.jsp");
                rd.forward(request, response);
            }
        } else {
            ArrayList<String> arrSheet = new ArrayList<String>();
            for (int i = 0; i < numberSheet; i++) {
                arrSheet.add(wb.getSheetName(i));
                request.setAttribute("SheetName", "False");
                request.setAttribute("SheetName", arrSheet);
            }
        }

        //ERROR
//        else {
//            request.setAttribute("table", "ERROR");
//            ServletContext context = getServletContext();
//            RequestDispatcher rd = context.getRequestDispatcher("/WEB-INF/JSPDemo/ER");
//            rd.forward(request, response);
//        }
    }
}
