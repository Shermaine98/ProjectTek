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

             rd= request.getRequestDispatcher("/WEB-INF/JSPDemo/HighestCompleted.jsp");
            }
            
    //Health       
            else if(redirect.equalsIgnoreCase("liveBirths")){
            request.setAttribute("page", "liveBirths");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/liveBirths.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("mortality")){
            request.setAttribute("page", "mortality");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/hMortality.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("morbidity")){
            request.setAttribute("page", "morbidity");
            
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/hMorbidity.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("?")){
            request.setAttribute("page", "?");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/?");
            rd.forward(request, response);
            }else if(redirect.equalsIgnoreCase("numOfDocsNursesMidwives")){
            request.setAttribute("page", "numOfDocsNursesMidwives");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/numOfDocsNursesMidwives.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("numOfDocsNursesMidwives")){
            request.setAttribute("page", "numOfDocsNursesMidwives");
             rd= request.getRequestDispatcher("/WEB-INF/JSPHealth/numOfDocsNursesMidwives.jsp");
            rd.forward(request, response);
            } 
    
    // Education
            else if(redirect.equalsIgnoreCase("eKinderPublic")){
            request.setAttribute("page", "eKinderPublic");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/eKinderPublic.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("?")){
            request.setAttribute("page", "?");
             rd= request.getRequestDispatcher("/WEB-INF/JSPEducation/?");
            rd.forward(request, response);
            }else{
            request.getRequestDispatcher("login.html").include(request, response);
            }
          
}
}
