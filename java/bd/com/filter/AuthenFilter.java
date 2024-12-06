package bd.com.filter;

import java.io.*;
import javax.servlet.*;

public class AuthenFilter implements Filter{
	@Override
	public void init(FilterConfig filterConfig) throws ServletException{
		System.out.println("Filter01 초기화...");
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println("Filter01 수행...");
		String name= request.getParameter("name");
		
		if(name==null || name.equals("")) {
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter writer = response.getWriter();
			String message="입력된 name 값은 null 입니다";
			writer.println(message);
			return;
		}
		filterChain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("Filter01 해제...");
	}
}
