package filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebFilter("/MemberAreaController")
public class MemberAreaFilter extends HttpFilter implements Filter {
    
    public MemberAreaFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
	
		HttpServletResponse response = (HttpServletResponse)res;
		HttpServletRequest request = (HttpServletRequest) req;
		
		if(request.getSession().getAttribute("username") == null) {
			response.sendRedirect(request.getContextPath()+"/SiteController?action=login");
		}else {
			chain.doFilter(request, response);

		}
		
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
