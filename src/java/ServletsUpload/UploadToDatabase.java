/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletsUpload;



import Excel.ExcelToHtml;
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
public class UploadToDatabase extends HttpServlet {
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        InputStream inputStream = null; // input stream of the upload file

            String sheetNumber = request.getParameter("SheetValue"); 
            System.out.println(sheetNumber);
       
            // obtains the upload file part in this multipart request
            Part filePart = request.getPart("file1");
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        
            POIFSFileSystem fs = new POIFSFileSystem(inputStream);
            //TODO can be changed into xssf      
            HSSFWorkbook wb = new HSSFWorkbook(fs);

            String table = new ExcelToHtml(wb).getHTML();
          
            session.setAttribute("table", table);
   
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/previewByAgeGroupSex.jsp");
            rd.forward(request, response);

             
//          //@todo change this to user input radio
//          HSSFSheet sheet = wb.getSheetAt(1);
//
//                Iterator rows = sheet.rowIterator();
//                while( rows.hasNext() ) {  
//                    HSSFRow row = (HSSFRow) rows.next();
//                    System.out.println("\n");
//                    Iterator cells = row.cellIterator();
//                    while( cells.hasNext() ) {
//
//                        HSSFCell cell = (HSSFCell) cells.next();
//                        if(HSSFCell.CELL_TYPE_NUMERIC==cell.getCellType())
//                        System.out.print( cell.getNumericCellValue()+"     " );
//                        else
//                        if(HSSFCell.CELL_TYPE_STRING==cell.getCellType())
//                            System.out.print( cell.getStringCellValue()+"     " );
//                        else
//                            if(HSSFCell.CELL_TYPE_BOOLEAN==cell.getCellType())
//                            System.out.print( cell.getBooleanCellValue()+"     " );
//                            else
//                                if(HSSFCell.CELL_TYPE_BLANK==cell.getCellType())
//                                    System.out.print( "BLANK     " );
//                                    else
//                                System.out.print("Unknown cell type");                         
//                    }                        
//                }      
          //POIFSFileSystem fs = new POIFSFileSystem(inputStream);
          //TODO can be changed into xssf      
          //HSSFWorkbook wb = new HSSFWorkbook(fs);

          //@todo change this to user input radio
          //HSSFSheet sheet = wb.getSheetAt(Integer.parseInt(sheetNumber));

                //Iterator rows = sheet.rowIterator();
                //while( rows.hasNext() ) {  
//                    HSSFRow row = (HSSFRow) rows.next();
//                    System.out.println("\n");
//                    Iterator cells = row.cellIterator();
//                    while( cells.hasNext() ) {
//
//                        HSSFCell cell = (HSSFCell) cells.next();
//                        if(HSSFCell.CELL_TYPE_NUMERIC==cell.getCellType())
//                        System.out.print( cell.getNumericCellValue()+"     " );
//                        else
//                        if(HSSFCell.CELL_TYPE_STRING==cell.getCellType())
//                            System.out.print( cell.getStringCellValue()+"     " );
//                        else
//                            if(HSSFCell.CELL_TYPE_BOOLEAN==cell.getCellType())
//                            System.out.print( cell.getBooleanCellValue()+"     " );
//                            else
//                                if(HSSFCell.CELL_TYPE_BLANK==cell.getCellType())
//                                    System.out.print( "BLANK     " );
//                                    else
//                                System.out.print("Unknown cell type");                         
                    }                        
                


//public static boolean isRowEmpty(Row row) {
//    for (int c = row.getFirstCellNum(); c < row.getLastCellNum(); c++) {
//        Cell cell = row.getCell(c);
//        if (cell != null && cell.getCellType() != Cell.CELL_TYPE_BLANK)
//            return false;
//    }
//    return true;
//}
}
   

