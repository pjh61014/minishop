package product.dao;

import static fw.JdbcTemplate.close;
import static fw.Query.PRODUCT_LIST_CATEGORY;
import static fw.Query.PRODUCT_SELECT;
import static fw.Query.PRODUCT_TOP;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dto.ProductDTO;

public class ProductDAOImpl implements ProductDAO {

	@Override
	public ArrayList<ProductDTO> productlist(Connection conn, String category)
			throws SQLException {
		ArrayList<ProductDTO> productlist = new ArrayList<ProductDTO>();
		ProductDTO product = null;
		String sql ="";
		System.out.println("dao");
		PreparedStatement ptmt =null;
		if(category==null){
			sql =PRODUCT_SELECT;
			ptmt = conn.prepareStatement(sql);
		}else{
			sql =PRODUCT_LIST_CATEGORY;
			ptmt = conn.prepareStatement(sql);
			ptmt.setString (1,category);
		}
		
		ResultSet rs = ptmt.executeQuery();
		while(rs.next()){
			product = new ProductDTO(rs.getString(1),
				rs.getString(2), rs.getString(3), rs.getString(4),
				rs.getInt(5),rs.getString(6),rs.getString(7), 
				rs.getString(8), rs.getString(9),rs.getString(10),
				rs.getString(11), rs.getString(12), rs.getString(13),
				rs.getString(14));
			productlist.add(product);
		}
		close(rs);
		close(ptmt);
		return productlist;
	}

	@Override
	public ArrayList<ProductDTO> searchTopProduct(Connection conn)
			throws SQLException {
		ArrayList<ProductDTO> pr_list = new ArrayList<ProductDTO>();
		ProductDTO prd = null;
	
		PreparedStatement ptmt = conn.prepareStatement(PRODUCT_TOP);
		ResultSet rs = ptmt.executeQuery();
		while(rs.next()){
			prd = new ProductDTO(rs.getString(1),
				rs.getString(2), rs.getString(3));
			pr_list.add(prd);
		}
		close(rs);
		close(ptmt);
		return pr_list;
	}

	@Override
	public ProductDTO read(Connection conn, String prd_no) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
