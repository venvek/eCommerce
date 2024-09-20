package ProductsListController;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ProductsList/ProductList.do")
public class ProductsListController extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public ProductsListController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	int page = 1;
    	int pageSize = 60;
    	if(request.getParameter("page") != null) {
    		page = Integer.parseInt(request.getParameter("page"));
    	}
    	
    	int start = (page - 1) * (pageSize) + 1;
    	int end = page * pageSize;
    	
    	System.out.println("doget 호출");
    	ListDAO dao = new ListDAO();
        List<ListDTO> list = dao.selectListPage(start, end);
        int cnt = dao.ListCount();
        int totalPages = (int) Math.ceil(cnt / (double) pageSize);
        dao.close();
        request.setAttribute("cnt", cnt);
        request.setAttribute("list", list);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.getRequestDispatcher("/ProductsList/ProductList.jsp").forward(request, response);
    }
}
