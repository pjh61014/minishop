package product.service;

import static fw.JdbcTemplate.getConnect;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dao.ProductDAO;
import product.dao.ProductDAOImpl;
import product.dto.ProductDTO;

public class ProductSeriveImple implements ProductService {

	@Override
	public ArrayList<ProductDTO> productlist(String category) {
		ArrayList<ProductDTO> deptlist = new ArrayList<ProductDTO>();
		System.out.println("¼­ºñ½º");
		Connection con = getConnect();
		ProductDAO dao = new ProductDAOImpl();
		
		try{
			deptlist = dao.productlist(con, category);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return deptlist;
	}

	@Override
	public ArrayList<ProductDTO> searchTopProduct() {
		ArrayList<ProductDTO> productlist = new ArrayList<ProductDTO>();
		
		Connection con = getConnect();
		ProductDAO dao = new ProductDAOImpl();
		try{
			productlist = dao.searchTopProduct(con);
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return productlist;
	}

	@Override
	public ProductDTO read(String prd_no) {
		// TODO Auto-generated method stub
		return null;
	}

}
