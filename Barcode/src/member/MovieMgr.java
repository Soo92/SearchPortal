package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class MovieMgr {
	
	private DBConnectionMgr pool;
	
	public MovieMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public MovieBean getMember(int idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		MovieBean regBean = new MovieBean();
		try {
			con = pool.getConnection();
			sql = "select * from movie where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setTitle(rs.getString("title"));
				regBean.setSubtitle(rs.getString("subtitle"));
				regBean.setStar(rs.getFloat("star"));
				regBean.setGenre(rs.getString("genre"));
				regBean.setCountry(rs.getString("country"));
				regBean.setRuntime(rs.getString("runtime"));
				regBean.setOpendate(rs.getString("opendate"));
				regBean.setDirector(rs.getString("director"));
				regBean.setActor(rs.getString("actor"));
				regBean.setAge(rs.getInt("age"));
				regBean.setLike(rs.getInt("like"));
				regBean.setContent(rs.getString("content"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}

	public Vector<MovieBean> getMemberList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<MovieBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from movie";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MovieBean regBean = new MovieBean();
				regBean.setTitle(rs.getString("title"));
				regBean.setSubtitle(rs.getString("subtitle"));
				regBean.setStar(rs.getFloat("star"));
				regBean.setGenre(rs.getString("genre"));
				regBean.setCountry(rs.getString("country"));
				regBean.setRuntime(rs.getString("runtime"));
				regBean.setOpendate(rs.getString("opendate"));
				regBean.setDirector(rs.getString("director"));
				regBean.setActor(rs.getString("actor"));
				regBean.setAge(rs.getInt("age"));
				regBean.setLike(rs.getInt("like"));
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
	
	public ReviewBean getReview(int reviewnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ReviewBean regBean = new ReviewBean();
		try {
			con = pool.getConnection();
			sql = "select * from movie_review where reviewnum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, reviewnum);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setReviewnum(rs.getInt("reviewnum"));
				regBean.setIdx(rs.getInt("idx"));
				regBean.setStar(rs.getFloat("star"));
				regBean.setTitle(rs.getString("title"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setViews(rs.getInt("views"));
				regBean.setGood(rs.getInt("good"));
				regBean.setContent(rs.getString("content"));
				regBean.setWriter(rs.getString("writer"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}

	public Vector<ReviewBean> getReviewList(int idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ReviewBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from movie_review where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ReviewBean regBean = new ReviewBean();
				regBean.setReviewnum(rs.getInt("reviewnum"));
				regBean.setIdx(rs.getInt("idx"));
				regBean.setStar(rs.getFloat("star"));
				regBean.setTitle(rs.getString("title"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setViews(rs.getInt("views"));
				regBean.setGood(rs.getInt("good"));
				regBean.setContent(rs.getString("content"));
				regBean.setWriter(rs.getString("writer"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public ReBean getRe(int renum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ReBean regBean = new ReBean();
		try {
			con = pool.getConnection();
			sql = "select * from movie_review_re where renum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, renum);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setRenum(rs.getInt("renum"));
				regBean.setIdx(rs.getInt("idx"));
				regBean.setReviewnum(rs.getInt("reviewnum"));
				regBean.setWriter(rs.getString("writer"));
				regBean.setContent(rs.getString("content"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setGood(rs.getInt("good"));
				regBean.setBad(rs.getInt("bad"));
				regBean.setRere(rs.getString("rere"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}

	public Vector<ReBean> getReList(int idx, int reviewnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ReBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from movie_review_re where idx=? && reviewnum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.setInt(2, reviewnum);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ReBean regBean = new ReBean();
				regBean.setRenum(rs.getInt("renum"));
				regBean.setIdx(rs.getInt("idx"));
				regBean.setReviewnum(rs.getInt("reviewnum"));
				regBean.setWriter(rs.getString("writer"));
				regBean.setContent(rs.getString("content"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setGood(rs.getInt("good"));
				regBean.setBad(rs.getInt("bad"));
				regBean.setRere(rs.getString("rere"));
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
