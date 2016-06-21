package ServletsDemo;

import DAODemo.byAgeGroupSexDAO;
import Model.record;
import Servlets.BaseServlet;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Atayan
 * @author Roxas
 * @author Sy
 *
 */
public class ViewArchivesTableCharts extends BaseServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
            String redirect = request.getParameter("clicked");
            String formID = request.getParameter("formID");
          //  String approved = request.getParameter("approved");
             RequestDispatcher rd= null;
             if(redirect.equalsIgnoreCase("table")){
            request.setAttribute("page", "table");
             request.setAttribute("formID", formID);
//             request.setAttribute("page", "byAgeGroupSex");
            rd= request.getRequestDispatcher("/WEB-INF/JSPDemo/showTables.jsp");
             rd.forward(request, response);
             }else if(redirect.equalsIgnoreCase("chart")) {
               request.setAttribute("page", "chart");
               request.setAttribute("formID", formID);
             rd= request.getRequestDispatcher("/WEB-INF/JSPDemo/viewGraphs.jsp");
             rd.forward(request, response);
             }
            
             
             
        }
}
