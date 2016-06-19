package ServletsDemo;

import DAODemo.byAgeGroupSexDAO;
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
public class RetrieveDataDemoServlet extends BaseServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
            String redirect = request.getParameter("redirect");
            String saveToDb = (String) request.getAttribute("saveToDB");
            RequestDispatcher rd= null;
            byAgeGroupSexDAO byAgeGroupSexDAO = new byAgeGroupSexDAO();
    //Demo        
             if(redirect.equalsIgnoreCase("byAgeGroupSex")){
//                 ArrayList<Integer> censusYear = new ArrayList<Integer>();
//                try {
//                    censusYear = byAgeGroupSexDAO.GetAllCensusYear();
//                } catch (ParseException ex) {
//                    Logger.getLogger(RetrieveDataDemoServlet.class.getName()).log(Level.SEVERE, null, ex);
//                }
              //  System.out.print(censusYear.size());
             if(saveToDb!=null && saveToDb.equalsIgnoreCase("successDB")){
             request.setAttribute("saveToDB", "success");
             request.setAttribute("page", "byAgeGroupSex");
             }else{
                 request.setAttribute("saveToDB", "none");
             request.setAttribute("page", "byAgeGroupSex");
             }
            // request.setAttribute("censusYear", censusYear);
             rd= request.getRequestDispatcher("/WEB-INF/JSPDemo/byAgeGroupSex.jsp");
             rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("MaritalStatus")){
            request.setAttribute("page", "MaritalStatus");
             rd= request.getRequestDispatcher("/WEB-INF/JSPDemo/maritalStatus.jsp");
             rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("HighestCompleted")){
            request.setAttribute("page", "HighestCompleted");
            rd= request.getRequestDispatcher("/WEB-INF/JSPDemo/highestCompleted.jsp");
            rd.forward(request, response);
            }  
             
        }
}
