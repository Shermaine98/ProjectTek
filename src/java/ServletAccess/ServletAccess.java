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
            
    //Accessing Pages
    
    //HOME
            if(redirect.equalsIgnoreCase("home")){
            request.setAttribute("page", "home");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/home.jsp");
            rd.forward(request, response);
            }
    //Demo        
            else if(redirect.equalsIgnoreCase("byAgeGroupSex")){
            request.setAttribute("page", "byAgeGroupSex");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPDemo/byAgeGroupSex.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("MaritalStatus")){
            request.setAttribute("page", "MaritalStatus");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPDemo/maritalStatus.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("HighestCompleted")){
            request.setAttribute("page", "HighestCompleted");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPDemo/highestCompleted.jsp");
            rd.forward(request, response);
            } 
            
    //Health       
            else if(redirect.equalsIgnoreCase("liveBirths")){
            request.setAttribute("page", "liveBirths");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPHealth/liveBirths.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("mortality")){
            request.setAttribute("page", "mortality");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPHealth/hMortality.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("morbidity")){
            request.setAttribute("page", "morbidity");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPHealth/hMorbidity.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("?")){
            request.setAttribute("page", "?");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPHealth/?");
            rd.forward(request, response);
            }else if(redirect.equalsIgnoreCase("numOfDocsNursesMidwives")){
            request.setAttribute("page", "numOfDocsNursesMidwives");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPHealth/numOfDocsNursesMidwives.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("numOfDocsNursesMidwives")){
            request.setAttribute("page", "numOfDocsNursesMidwives");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPHealth/numOfDocsNursesMidwives.jsp");
            rd.forward(request, response);
            } 
    
    // Education
            else if(redirect.equalsIgnoreCase("eKinderPublic")){
            request.setAttribute("page", "eKinderPublic");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPEducation/eKinderPublic.jsp");
            rd.forward(request, response);
            } else if(redirect.equalsIgnoreCase("?")){
            request.setAttribute("page", "?");
            ServletContext context= getServletContext();
            RequestDispatcher rd= context.getRequestDispatcher("/WEB-INF/JSPEducation/?");
            rd.forward(request, response);
            }else{
           
            request.getRequestDispatcher("login.html").include(request, response);
            }
          
}
}