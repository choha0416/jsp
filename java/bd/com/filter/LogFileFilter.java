package bd.com.filter;

import javax.servlet.*;
import java.util.*;
import java.text.*;
import java.io.*;

public class LogFileFilter implements Filter{

	PrintWriter writer;
	
	public void init(FilterConfig filterConfig) throws ServletException{
		String filename = filterConfig.getInitParameter("filename");
		if(filename==null)throw new ServletException("로그 파일의 이름을 찾을 수 없습니다");
		
		try {
			writer = new PrintWriter(new FileWriter(filename, true), true);
		} catch (IOException e) {
			throw new ServletException("로그 파일으 열 수 없습니다");
		}
	}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		writer.printf("현재일시 : %s %n", getCurrentTime());
		String clientAddr = request.getRemoteAddr();
		writer.printf("클라이언트 주소 : %s %n", clientAddr);
		
		filterChain.doFilter(request, response);
		
		String contentType=request.getContentType();
		writer.printf("문서의 콘텐츠 유형 : %s %n", contentType);
		writer.println("------------------------------------------------");
	}
	
	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}

	public void destroy() {
		writer.close();
	}
}
