package ServletsDemo;


import DAODemo.MaritalStatusDAO;
import DAODemo.byAgeGroupSexDAO;
import ModelDemo.MaritalStatus;
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
public class ValiMaritalStatus extends BaseServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    
    @Override
    public void servletAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] location = request.getParameterValues("location");
        String[] sex = request.getParameterValues("sex");
        String[] ageGroup = request.getParameterValues("ageGroup");
        String[] single = request.getParameterValues("single");
        String[] married = request.getParameterValues("married");
        String[] widowed = request.getParameterValues("windowed");
        String[] divorcedSeparated = request.getParameterValues("divorcedSeparated");
        String[] commonLawLiveIn = request.getParameterValues("commonLawLiveIn");
        String[] unknown = request.getParameterValues("unknown");
        String[] total = request.getParameterValues("total");
         
      
        MaritalStatus maritalStatus;
        MaritalStatusDAO MaritalStatusDAO = new MaritalStatusDAO();
        ArrayList <MaritalStatus> arrMaritalStatus = new  ArrayList <MaritalStatus>();
        boolean x = false;
       for(int i = 0; i <location.length;i++){
           maritalStatus = new MaritalStatus();
           maritalStatus.setYear(2007);
           maritalStatus.setLocation(location[i]);
           maritalStatus.setAgeGroup(ageGroup[i]);
           maritalStatus.setSex(sex[i]);
           maritalStatus.setSingle(Integer.parseInt(single[i].replaceAll(" ", "")));
           maritalStatus.setMarried(Integer.parseInt(married[i].replaceAll(" ", "")));
           maritalStatus.setWidowed(Integer.parseInt(widowed[i].replaceAll(" ", "")));
           maritalStatus.setDivorcedSeparated(Integer.parseInt(divorcedSeparated[i].replaceAll(" ", "")));
           maritalStatus.setCommonLawLiveIn(Integer.parseInt(commonLawLiveIn[i].replaceAll(" ", "")));
           maritalStatus.setUnknown(Integer.parseInt(unknown[i].replaceAll(" ", "")));
           maritalStatus.setApproved(false);
           arrMaritalStatus.add(maritalStatus);
       }
        x =MaritalStatusDAO.EncodeMaritalStatus(arrMaritalStatus);
       
       if(x){
           request.setAttribute("MaritalStatus", "success");
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
       }else{
            RequestDispatcher rd = request.getRequestDispatcher("/??");
            request.setAttribute("MaritalStatus", "Error");
            rd.forward(request, response);
       }
    }
}