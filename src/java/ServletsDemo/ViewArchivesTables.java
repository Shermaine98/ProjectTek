package ServletsDemo;

import DAODemo.byAgeGroupSexDAO;
import Model.record;
import ModelDemo.ByAgeGroupSex;
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
public class ViewArchivesTables extends BaseServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           
        try {
            byAgeGroupSexDAO DAO = new byAgeGroupSexDAO();
            ArrayList <ByAgeGroupSex> temp = new ArrayList<ByAgeGroupSex>();
            String formID = (String) request.getAttribute("formID");
            //  String approved = request.getParameter("approved");
            RequestDispatcher rd= null;
            temp = DAO.ViewByAgeGroupSexFormID(Integer.parseInt(formID));
            request.setAttribute("formID", formID);
            request.setAttribute("ageGroupSexData", temp);
            rd= request.getRequestDispatcher("/WEB-INF/JSPDemo/showTables.jsp");
            rd.forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ViewArchivesTables.class.getName()).log(Level.SEVERE, null, ex);
        }
             
            
             
             
        }
}
