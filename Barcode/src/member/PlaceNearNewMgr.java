package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class PlaceNearNewMgr {
	
	private DBConnectionMgr pool;
	
	public PlaceNearNewMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	

	public PlaceNearNewBean getMember(int index) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		PlaceNearNewBean regBean = new PlaceNearNewBean();
		try {
			con = pool.getConnection();
			sql = "select * from placenearnew where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, index);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setLname(rs.getString("lname"));
				regBean.setSname(rs.getString("sname"));
				regBean.setWriter(rs.getString("writer"));
				regBean.setContent(rs.getString("content"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setBlogname(rs.getString("blogname"));
				regBean.setSliderimg(rs.getString("sliderimg"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}

	public Vector<MemberBean> getMemberList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<MemberBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from placenearnew";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PlaceNearNewBean pnnBean = new PlaceNearNewBean();
				pnnBean.setLname(rs.getString("lname"));
				pnnBean.setSname(rs.getString("sname"));
				pnnBean.setWriter(rs.getString("writer"));
				pnnBean.setContent(rs.getString("content"));
				pnnBean.setRegdate(rs.getString("regdate"));
				pnnBean.setBlogname(rs.getString("blogname"));
				pnnBean.setSliderimg(rs.getString("sliderimg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
}
