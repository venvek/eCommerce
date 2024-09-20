package Main;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;

import Category.CategoryDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/MainController/*")
public class MainController extends HttpServlet  
{
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uri = req.getRequestURI();
		// /MainController/test.do
		int lastSlash = uri.lastIndexOf('/');		
		String command = uri.substring(lastSlash);	
		
		//------------------------------------//
		
		if(command.equals("/test.do"))
		{
			testDoFunction(req,resp);	
		}
		else if(command.equals("/test.do2"))
		{
			testDoFunction2(req,resp);
		}		
	}
	
	public void testDoFunction(HttpServletRequest req, HttpServletResponse resp)
	{	
		try 
		{
			resp.setContentType("application/json");
			resp.setCharacterEncoding("UTF-8");
			
			BufferedReader reader = req.getReader();
			Gson gson_in = new Gson();
			TestDTO data = gson_in.fromJson(reader, TestDTO.class);			
			
			MainDAO dao = new MainDAO();
			
			List<CategoryDTO> list = dao.selectList();
			
		    Gson gson = new Gson();
		    String jsonResponse = gson.toJson(list);
		    System.out.print("jsonResponse : " + jsonResponse);
		    resp.getWriter().write(jsonResponse);
		    
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}
	
	public void testDoFunction2(HttpServletRequest req, HttpServletResponse resp)
	{
		System.out.println("testDoFunction2");
	}
}
