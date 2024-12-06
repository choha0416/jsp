

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AA
 */
@WebServlet("/aa")
public class AA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AA() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String uid= request.getParameter("id");
		String upw= request.getParameter("pw");
		String ph1= request.getParameter("phone1");
		String ph2= request.getParameter("phone2");
		String ph3= request.getParameter("phone3");
		String usex =request.getParameter("sex");
		
		String[] hobbys = request.getParameterValues("hobby");
		for(int i=0;i<hobbys.length;i++) {
			if(hobbys[i]==null) continue;
			else {
				System.out.print("취미: "+hobbys[i]+"\t");
			}
		}
		String uta =request.getParameter("ta");
		request.setAttribute("uid",uid);
		request.setAttribute("upw", upw);
		request.setAttribute("ph1", ph1);
		request.setAttribute("ph2", ph2);
		request.setAttribute("ph3", ph3);
		request.setAttribute("usex", usex);
		request.setAttribute("uta", uta);
		RequestDispatcher dispatch = request.getRequestDispatcher("output.jsp");
		dispatch.forward(request, response);
	}

}
