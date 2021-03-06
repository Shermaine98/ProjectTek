package ServletsDemo;


import DAODemo.byAgeGroupSexDAO;
import ModelDemo.ByAgeGroupSex;
import Servlets.BaseServlet;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
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
public class ValiAgeByGrpServ extends BaseServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    
    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
//         String[] locationError = request.getParameterValues("location");
//         String[] ageGroupError = request.getParameterValues("ageGroup");
//         String[] bothSexesError = request.getParameterValues("bothSexes");
//         String[] maleError = request.getParameterValues("male");
//         String[] femaleError = request.getParameterValues("female");
       
        String[] location = request.getParameterValues("location");
        String[] ageGroup = request.getParameterValues("ageGroup");
        String[] bothSexes = request.getParameterValues("bothSexes");
        String[] male = request.getParameterValues("male");
        String[] female = request.getParameterValues("female");
        String year = request.getParameter("year");
        
      int formID =0;
        ByAgeGroupSex byAgeGroupSex;
        byAgeGroupSexDAO ByAgeGroupSexDAO = new byAgeGroupSexDAO();
        try {
             formID = ByAgeGroupSexDAO.getFormID(Integer.parseInt(year.trim()));
        } catch (SQLException ex) {
            Logger.getLogger(ValiAgeByGrpServ.class.getName()).log(Level.SEVERE, null, ex);
        }
        ArrayList <ByAgeGroupSex> ArrByAgeGroupSex = new  ArrayList <ByAgeGroupSex>();
        boolean x = false;
        
       for(int i = 0; i <location.length;i++){
           byAgeGroupSex = new ByAgeGroupSex();
           byAgeGroupSex.setFormID(formID);
           byAgeGroupSex.setYear(Integer.parseInt(year.trim()));
           byAgeGroupSex.setBarangay(location[i]);
           byAgeGroupSex.setAgeGroup(ageGroup[i]);
           byAgeGroupSex.setBothSex(Integer.parseInt(bothSexes[i].replaceAll(" ", "")));
           byAgeGroupSex.setFemaleCount(Integer.parseInt(male[i].replaceAll(" ", "")));
           byAgeGroupSex.setMaleCount(Integer.parseInt(female[i].replaceAll(" ", "")));
           byAgeGroupSex.setValidation(true);
           ArrByAgeGroupSex.add(byAgeGroupSex);
       }

       x =ByAgeGroupSexDAO.EncodeByAgeGroupSex(ArrByAgeGroupSex);
       
       if(x){
            request.setAttribute("saveToDB", "successDB");
            RequestDispatcher rd = request.getRequestDispatcher("/RetrieveDataDemoServlet?redirect=byAgeGroupSex");
            rd.forward(request, response);
       }else{
            RequestDispatcher rd = request.getRequestDispatcher("/??");
            request.setAttribute("AgeGroupSuccess", "Error");
            rd.forward(request, response);
       }
    }
}
