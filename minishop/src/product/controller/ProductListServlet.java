package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.dto.ProductDTO;
import product.service.ProductSeriveImple;
import product.service.ProductService;

/**
 * Servlet implementation class ProductListServlet
 */
@WebServlet(name = "prdlist", urlPatterns = { "/prdlist.do" })
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ArrayList<ProductDTO> list= null;
		request.setCharacterEncoding("euc-kr");
		String category =request.getParameter("category");
		String pathurl =request.getParameter("pathurl");
		String forwardview = "";
		
		
		//비지니스 메소드 call
		ProductService service = new ProductSeriveImple();
		
		
		list= new ArrayList<ProductDTO>();
		list= service.productlist(category);
		
	
		for(int i=0; i<list.size(); i++){
			ProductDTO prd = list.get(i);
			System.out.println(prd.getCategory_no()+" "+prd.getPrd_nm()+""+prd.getCategory_no()+" "
			+prd.getPrd_des()+""+prd.getSell_prc_unit()+ ""+ prd.getSell_start_dt());
		}
		//데이터 공유
		request.setAttribute("productlist", list);
		//요청재지정 - 분리해놓은 응답화면이 요청되록 재지정(list.jsp)
		
		
		if(category==null){
			forwardview="/layout/indexLayout.jsp";
			//아코디언 이미지에 보여질 상품을 추가 
			ArrayList<ProductDTO> toplist = service.searchTopProduct();
			request.setAttribute("toplist", toplist);
		}else{
			request.setAttribute("pathurl", pathurl);
			forwardview="/layout/mainLayout.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(forwardview);
		rd.forward(request,response);
	}

}
