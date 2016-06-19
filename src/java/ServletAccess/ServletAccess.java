package ServletAccess;

import Servlets.BaseServlet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
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
public class ServletAccess extends BaseServlet {

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
           // ServletContext context= getServletContext();
            RequestDispatcher rd= null;
            
    //Accessing Pages
    
    //HOME
            if(redirect.equalsIgnoreCase("home")){
            request.setAttribute("page", "home");
             rd= request.getRequestDispatcher("/WEB-INF/home.jsp");
            rd.forward(request, response);
            }
    //Demo        
            else if(redirect.equalsIgnoreCase("byAgeGroupSex")){
            request.setAttribute("page", "byAgeGroupSex");
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
            
    //Health       
            else if(redirect.equalsIgnoreCase("liveBirths")){
            request.setAttribute("page", "liveBirths");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/liveBirths.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("mortality")){
            request.setAttribute("page", "mortality");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/hMortalityReport.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("morbidity")){
            request.setAttribute("page", "morbidity");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/hMorbidityReport.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("percentageDist")){
            request.setAttribute("page", "percentageDist");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/hPercentageDist.jsp");
            rd.forward(request, response);
            }else if(redirect.equalsIgnoreCase("numOfDocsNursesMidwives")){
            request.setAttribute("page", "numOfDocsNursesMidwives");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/numOfDocsNursesMidwives.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("hListOfPrivateGovHosp")){
            request.setAttribute("page", "hListOfPrivateGovHosp");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/hListOfPrivateGovHosp.jsp");
            rd.forward(request, response);
            } 
    
    // Education
            else if(redirect.equalsIgnoreCase("eKinderPublic")){
            request.setAttribute("page", "eKinderPublic");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/eKinderPublic.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("ePrivateElementary")){
            request.setAttribute("page", "ePrivateElementary");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/ePrivateElementary.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("ePrivateKinder")){
            request.setAttribute("page", "ePrivateKinder");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/ePrivateKinder.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("ePublicElementary")){
            request.setAttribute("page", "ePublicElementary");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/ePublicElementary.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("ePublicSecondary")){
            request.setAttribute("page", "ePublicSecondary");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/ePublicSecondary.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("eTotalPublicSecondary")){
            request.setAttribute("page", "eTotalPublicSecondary");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/eTotalPublicSecondary.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("eGovSecondaryTeacherDeployment")){
            request.setAttribute("page", "eGovSecondaryTeacherDeployment");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/eGovSecondaryTeacherDeployment.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("eClassroomFurnitures")){
            request.setAttribute("page", "eClassroomFurnitures");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/eClassroomFurnitures.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("eInstructionalElem")){
            request.setAttribute("page", "eInstructionalElem");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/eInstructionalElem.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("eInstructionalSecondary")){
            request.setAttribute("page", "eInstructionalSecondary");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/eInstructionalSecondary.jsp");
            rd.forward(request, response);
            }else{
            request.getRequestDispatcher("login.html").include(request, response);
            }
          
}
}
