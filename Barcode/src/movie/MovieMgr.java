package movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import member.DBConnectionMgr;

public class MovieMgr {
	
	private DBConnectionMgr pool;
	/*private final SimpleDateFormat SDF_DATE =
			new SimpleDateFormat("yyyy'.'MM'.'dd'.'hh':'mm (E)");*/
	public MovieMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public boolean insertMember(MovieBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag=false;
		try {
			con = pool.getConnection();
			sql = "insert movie(title,subtitle,star,genre,country,runtime,opendate,director,actor,age,`like`,content,pic) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?) "
				+ "ON DUPLICATE KEY UPDATE title=?,subtitle=?,star=?,genre=?,country=?,runtime=?,opendate=?,director=?,actor=?,age=?,`like`=?,content=?,pic=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setString(2, bean.getSubtitle());
			pstmt.setString(3, bean.getStar());
			pstmt.setString(4, bean.getGenre());
			pstmt.setString(5, bean.getCountry());
			pstmt.setString(6, bean.getRuntime());
			pstmt.setString(7, bean.getOpendate());
			pstmt.setString(8, bean.getDirector());
			pstmt.setString(9, bean.getActor());
			pstmt.setInt(10, bean.getAge());
			pstmt.setInt(11, bean.getLike());
			pstmt.setString(12, bean.getContent());
			pstmt.setString(13, bean.getPic());
			pstmt.setString(14, bean.getTitle());
			pstmt.setString(15, bean.getSubtitle());
			pstmt.setString(16, bean.getStar());
			pstmt.setString(17, bean.getGenre());
			pstmt.setString(18, bean.getCountry());
			pstmt.setString(19, bean.getRuntime());
			pstmt.setString(20, bean.getOpendate());
			pstmt.setString(21, bean.getDirector());
			pstmt.setString(22, bean.getActor());
			pstmt.setInt(23, bean.getAge());
			pstmt.setInt(24, bean.getLike());
			pstmt.setString(25, bean.getContent());
			pstmt.setString(26, bean.getPic());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public int getIdx(String title) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int idx=0;
		try {
			con = pool.getConnection();
			sql = "select idx from movie where title=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				idx=rs.getInt("idx");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return idx;
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
				regBean.setIdx(rs.getInt("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setSubtitle(rs.getString("subtitle"));
				regBean.setStar(rs.getString("star"));
				regBean.setGenre(rs.getString("genre"));
				regBean.setCountry(rs.getString("country"));
				regBean.setRuntime(rs.getString("runtime"));
				regBean.setOpendate(rs.getString("opendate"));
				regBean.setDirector(rs.getString("director"));
				regBean.setActor(rs.getString("actor"));
				regBean.setAge(rs.getInt("age"));
				regBean.setLike(rs.getInt("like"));
				regBean.setContent(rs.getString("content"));
				regBean.setPic(rs.getString("pic"));
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
				regBean.setIdx(rs.getInt("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setSubtitle(rs.getString("subtitle"));
				regBean.setStar(rs.getString("star"));
				regBean.setGenre(rs.getString("genre"));
				regBean.setCountry(rs.getString("country"));
				regBean.setRuntime(rs.getString("runtime"));
				regBean.setOpendate(rs.getString("opendate"));
				regBean.setDirector(rs.getString("director"));
				regBean.setActor(rs.getString("actor"));
				regBean.setAge(rs.getInt("age"));
				regBean.setLike(rs.getInt("like"));
				regBean.setContent(rs.getString("content"));
				regBean.setPic(rs.getString("pic"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public Vector<MovieBean> getMemberList(int order) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<MovieBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			if(order==1) {
				sql = "select * from movie where (opendate) <= date_format(now(),'%Y.%m.%d') order by opendate desc;";
			}else if(order==2) {
				sql = "select * from movie where (opendate) > date_format(now(),'%Y.%m.%d')  order by opendate;";
			}else if(order==3){
				sql = "select * from movie order by star desc";
			}
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MovieBean regBean = new MovieBean();
				regBean.setIdx(rs.getInt("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setSubtitle(rs.getString("subtitle"));
				regBean.setStar(rs.getString("star"));
				regBean.setGenre(rs.getString("genre"));
				regBean.setCountry(rs.getString("country"));
				regBean.setRuntime(rs.getString("runtime"));
				regBean.setOpendate(rs.getString("opendate"));
				regBean.setDirector(rs.getString("director"));
				regBean.setActor(rs.getString("actor"));
				regBean.setAge(rs.getInt("age"));
				regBean.setLike(rs.getInt("like"));
				regBean.setContent(rs.getString("content"));
				regBean.setPic(rs.getString("pic"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}

	///////////////
	public boolean insertReview(ReviewBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag=false;
		try {
			con = pool.getConnection();
			sql = "insert movie_review(title,star,regdate,content,writer,idx)";
			sql +="values(?,?,date_format(now(),'%Y.%m.%d'),?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setFloat(2, bean.getStar());
			pstmt.setString(3, bean.getContent());
			pstmt.setString(4, bean.getWriter());
			pstmt.setInt(5, bean.getIdx());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
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
			sql = "select * from movie_review where idx=? order by regdate desc, reviewnum desc";
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
	
	
	////////////////
	
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
///////////////////////////////////////////////
	public boolean insertPoint(PointBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert movie_point(idx, star, redate, content,writer)"
					+"values(?,?,now(),?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bean.getIdx());
			pstmt.setInt(2, bean.getStar());
			pstmt.setString(3, bean.getContent());
			pstmt.setString(4, bean.getWriter());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public PointBean getPoint(int pointnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		PointBean regBean = new PointBean();
		try {
			con = pool.getConnection();
			sql = "select * from movie_point where pointnum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, pointnum);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setPointnum(rs.getInt("pointnum"));
				regBean.setIdx(rs.getInt("idx"));
				regBean.setStar(rs.getInt("star"));
				regBean.setGood(rs.getInt("good"));
				regBean.setBad(rs.getInt("bad"));
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
	public Vector<PointBean> getPointList(int idx) {
	      Connection con = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      String sql = null;
	      Vector<PointBean> vlist = new Vector<>();
	      try {
	         con = pool.getConnection();
	         sql = "select * from movie_point where idx=? order by redate desc, pointnum desc";
	         pstmt = con.prepareStatement(sql);
	         pstmt.setInt(1, idx);
	         rs = pstmt.executeQuery();
	         while (rs.next()) {
	            PointBean regBean = new PointBean();
	            regBean.setPointnum(rs.getInt("pointnum"));
	            regBean.setIdx(rs.getInt("idx"));
	            regBean.setStar(rs.getInt("star"));
				regBean.setRedate(rs.getString("redate"));
	            regBean.setGood(rs.getInt("good"));
	            regBean.setBad(rs.getInt("bad"));
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
}
