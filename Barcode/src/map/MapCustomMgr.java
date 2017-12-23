package map;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import member.DBConnectionMgr;


public class MapCustomMgr {
	
	private DBConnectionMgr pool;
	
	public MapCustomMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public MapCustomBean getMember(String index) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MapCustomBean regBean = new MapCustomBean();
		try {
			con = pool.getConnection();
			sql = "select * from tblmapcustom where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, index);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setCate0(rs.getString("cate0"));
				regBean.setCate1(rs.getString("cate1"));
				regBean.setCate2(rs.getString("cate2"));
				regBean.setName(rs.getString("name"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setCount(rs.getString("count"));
				regBean.setContent(rs.getString("content"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	
	public Vector<MapCustomBean> getMapCustomBeanList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<MapCustomBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from tblmapcustom";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MapCustomBean regBean = new MapCustomBean();
				regBean.setCate0(rs.getString("cate0"));
				regBean.setCate1(rs.getString("cate1"));
				regBean.setCate2(rs.getString("cate2"));
				regBean.setName(rs.getString("name"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setCount(rs.getString("count"));
				regBean.setContent(rs.getString("content"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
}
