package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import member.DBConnectionMgr;

public class CartMgr {
	private DBConnectionMgr pool;
		
	public CartMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	// Cart List
	public Vector<CartBean> getCartList(String userId){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<CartBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from tblnewshop_cart where userid = ?;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CartBean reBean = new CartBean();
				reBean.setIdx(rs.getInt("idx"));
				reBean.setPronum(rs.getInt("pronum"));
				reBean.setEa(rs.getInt("ea"));
				reBean.setUserid(rs.getString("userid"));
				vlist.addElement(reBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public boolean insertCart(CartBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert tblnewshop_cart(pronum,ea,userid)"
					+ "values(?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bean.getPronum());
			pstmt.setInt(2, 1);
			pstmt.setString(3, bean.getUserid());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

	public boolean deleteCart(int idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "delete from tblnewshop_cart where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
}