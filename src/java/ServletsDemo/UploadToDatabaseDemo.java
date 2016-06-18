package ServletsDemo;

import Excel.ExcelToHtml;
import ExcelDemo.ExcelByAgeGroup;
import ModelDemoError.byAgeGroupError;
import Servlets.BaseServlet;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/**
 *
 * @author Atayan
 * @author Roxas
 * @author Sy
 *
 */
@MultipartConfig(maxFileSize = 16177215)
public class UploadToDatabaseDemo extends BaseServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    
    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
         InputStream inputStream = null;
        
        Part filePart = request.getPart("file");
        int sheetNumber = -1;

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
                 ArrayList<byAgeGroupError> arrTemp = new ArrayList<byAgeGroupError>();
                arrTemp = new ExcelByAgeGroup(wb, sheetNumber).getHTML();
            System.out.println("THIS SIZE" + arrTemp.get(1).getBarangay());
            request.setAttribute("arrayTemp", arrTemp);           
         RequestDispatcher rd= request.getRequestDispatcher("/WEB-INF/JSPDemo/valiAgeBySex.jsp");
       rd.forward(request, response);               
            } else if (sheetNumber > -1 && uploadFile.equalsIgnoreCase("")) {
                String table = new ExcelToHtml(wb, sheetNumber).getHTML();
                request.setAttribute("table", table);
                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/JSPDemo/.jsp");
                rd.forward(request, response);
            } else if (sheetNumber > -1 && uploadFile.equalsIgnoreCase("")) {
                String table = new ExcelToHtml(wb, sheetNumber).getHTML();
                request.setAttribute("table", table);
                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/JSPDemo/.jsp");
                rd.forward(request, response);
            }
        } else {
            ArrayList<String> arrSheet = new ArrayList<String>();
            for (int i = 0; i < numberSheet; i++) {
                arrSheet.add(wb.getSheetName(i));
                request.setAttribute("SheetName", "False");
                request.setAttribute("SheetName", arrSheet);
                 RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/home.jsp");
                 rd.forward(request, response);
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