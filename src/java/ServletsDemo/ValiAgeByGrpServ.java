package ServletsDemo;


import DAODemo.byAgeGroupSexDAO;
import ModelDemo.ByAgeGroupSex;
import Servlets.BaseServlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
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
       // String[] location = request.getParameterValues("location");
        String[] ageGroup = request.getParameterValues("ageGroup");
        String[] bothSexes = request.getParameterValues("bothSexes");
        String[] male = request.getParameterValues("male");
        String[] female = request.getParameterValues("female");
        
        ArrayList<String> location = new ArrayList<String>(Arrays.asList(request.getParameterValues("location")));
       
        ByAgeGroupSex byAgeGroupSex;
        byAgeGroupSexDAO ByAgeGroupSexDAO = new byAgeGroupSexDAO();
        ArrayList <ByAgeGroupSex> ArrByAgeGroupSex = new  ArrayList <ByAgeGroupSex>();
        boolean x = false;
       for(int i = 0; i <location.size();i++){
           byAgeGroupSex = new ByAgeGroupSex();
           byAgeGroupSex.setYear(2007);
           byAgeGroupSex.setBarangay(location.get(i));
           byAgeGroupSex.setAgeGroup(ageGroup[i]);
           byAgeGroupSex.setBothSex(Integer.parseInt(bothSexes[i].replaceAll(" ", "")));
           byAgeGroupSex.setFemaleCount(Integer.parseInt(male[i].replaceAll(" ", "")));
           byAgeGroupSex.setMaleCount(Integer.parseInt(female[i].replaceAll(" ", "")));
           System.out.println("SIZE" +location.size());
           byAgeGroupSex.setApproved(false);
           ArrByAgeGroupSex.add(byAgeGroupSex);
       }
       x =ByAgeGroupSexDAO.EncodeByAgeGroupSex(ArrByAgeGroupSex);
       
       if(x){
           request.setAttribute("AgeGroupSuccess", "success");
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
       }else{
            RequestDispatcher rd = request.getRequestDispatcher("/??");
            request.setAttribute("AgeGroupSuccess", "Error");
            rd.forward(request, response);
       }
    }
}