package product;

import java.sql.ResultSet;
import java.util.Vector;

import member.DBConnectionMgr;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ReviewMgr {
	private DBConnectionMgr pool;
	
	public ReviewMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	
	//bean 에서 가져오기
	public ReviewBean getReview(int no) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ReviewBean reBean = new ReviewBean();
		try {
			con = pool.getConnection();
			sql = "select * from board where no=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				reBean.setNo(rs.getInt("no"));
				reBean.setIdx(rs.getInt("idx"));
				reBean.setPro_title(rs.getString("pro_title"));
				reBean.setTitle(rs.getString("title"));
				reBean.setStar(rs.getDouble("star"));
				reBean.setName(rs.getString("name"));
				reBean.setDate(rs.getString("date"));
				reBean.setView(rs.getInt("view"));
				reBean.setImg(rs.getString("img"));
				reBean.setContent(rs.getString("content"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return reBean;
	}
	
	// Review List
	public Vector<ReviewBean> getReviewList(int index){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ReviewBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from board where idx = ? order by no;";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, index);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReviewBean reBean = new ReviewBean();
				reBean.setNo(rs.getInt("no"));
				reBean.setIdx(rs.getInt("idx"));
				reBean.setPro_title(rs.getString("pro_title"));
				reBean.setTitle(rs.getString("title"));
				reBean.setStar(rs.getDouble("star"));
				reBean.setName(rs.getString("name"));
				reBean.setDate(rs.getString("date"));
				reBean.setView(rs.getInt("view"));
				reBean.setImg(rs.getString("img"));
				reBean.setContent(rs.getString("content"));
				vlist.addElement(reBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
}