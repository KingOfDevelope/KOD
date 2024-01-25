package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.dao.ProductDAO;
import model.dto.ProductDTO;
/**
 * Servlet implementation class TESTTEST
 */
@WebServlet("/test")
public class TESTTEST extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TESTTEST() {
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
		System.out.println("확인확인");
		System.out.println("확인확인");
		System.out.println("확인확인");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		ProductDAO productDAO = new ProductDAO();
		ProductDTO productDTO = new ProductDTO();
		ArrayList<ProductDTO> productFilterDatas = new ArrayList<ProductDTO>();
		String categoryList = request.getParameter("categoryList");
		categoryList = categoryList.replace("[", "");
		categoryList = categoryList.replace("]", "");
		categoryList = categoryList.replace("\"", "");
		String[] ar = categoryList.split(",");
		
		System.out.println(ar[0]);
		productDTO.setCategoryList(ar);
		//System.out.println(productDTO.getCategoryList());
		productFilterDatas = productDAO.selectCategory(productDTO);
		System.out.println(productFilterDatas.get(0));
		PrintWriter out = response.getWriter();
//		System.out.println("===");
//		System.out.println(productFilterDatas);
//		System.out.println("===");
//		out.print(productFilterDatas);
		
		Gson gson = new Gson();
		String transDatas = gson.toJson(productFilterDatas); 
		out.println(transDatas);
		
		
		
	}

}