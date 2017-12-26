package place;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import member.DBConnectionMgr;

public class PlaceMgr {
	
	private DBConnectionMgr pool;
	
	public PlaceMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public boolean insertPlace(PlaceBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert place(title,content,location"
					+ "values(?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setString(2, bean.getContent());
			pstmt.setString(3, bean.getLocation());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public PlaceBean getPlace(String idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		PlaceBean regBean = new PlaceBean();
		try {
			con = pool.getConnection();
			sql = "select * from place where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setIdx(rs.getString("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setContent(rs.getString("content"));
				regBean.setLocation(rs.getString("location"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	public Vector<PlaceBean> getPlaceList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<PlaceBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from place";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PlaceBean regBean = new PlaceBean();
				regBean.setIdx(rs.getString("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setContent(rs.getString("content"));
				regBean.setLocation(rs.getString("location"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public boolean insertPlaceBoard(PlaceBoardBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert place_board(placenum,mainpic,place,enddate,title,writer,redate,content"
					+ "values(?,?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getPlacenum());
			pstmt.setString(2, bean.getMainpic());
			pstmt.setString(3, bean.getPlace());
			pstmt.setString(4, bean.getEnddate());
			pstmt.setString(5, bean.getTitle());
			pstmt.setString(6, bean.getWriter());
			pstmt.setString(7, bean.getRegdate());
			pstmt.setString(8, bean.getContent());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public PlaceBoardBean getPlaceBoard(String idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		PlaceBoardBean regBean = new PlaceBoardBean();
		try {
			con = pool.getConnection();
			sql = "select * from place_board where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setIdx(rs.getString("idx"));
				regBean.setPlacenum(rs.getString("placenum"));
				regBean.setMainpic(rs.getString("mainpic"));
				regBean.setPlace(rs.getString("place"));
				regBean.setEnddate(rs.getString("enddate"));
				regBean.setTitle(rs.getString("title"));
				regBean.setWriter(rs.getString("writer"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setContent(rs.getString("content"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	public Vector<PlaceBoardBean> getPlaceBoardList(String placenum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<PlaceBoardBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from place_board where placenum = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, placenum);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PlaceBoardBean regBean = new PlaceBoardBean();
				regBean.setIdx(rs.getString("idx"));
				regBean.setPlacenum(rs.getString("placenum"));
				regBean.setMainpic(rs.getString("mainpic"));
				regBean.setPlace(rs.getString("place"));
				regBean.setEnddate(rs.getString("enddate"));
				regBean.setTitle(rs.getString("title"));
				regBean.setWriter(rs.getString("writer"));
				regBean.setRegdate(rs.getString("regdate"));
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
	public Vector<PlaceBoardBean> getPlaceWriterList(String writer) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<PlaceBoardBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from place_board where writer = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, writer);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PlaceBoardBean regBean = new PlaceBoardBean();
				regBean.setIdx(rs.getString("idx"));
				regBean.setPlacenum(rs.getString("placenum"));
				regBean.setMainpic(rs.getString("mainpic"));
				regBean.setPlace(rs.getString("place"));
				regBean.setEnddate(rs.getString("enddate"));
				regBean.setTitle(rs.getString("title"));
				regBean.setWriter(rs.getString("writer"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setContent(rs.getString("content"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}	//////////////////////////////////////////////
	public Vector<PlaceBoardBean> getPlaceLegionList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<PlaceBoardBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select DISTINCT place from place_board";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PlaceBoardBean regBean = new PlaceBoardBean();
				regBean.setPlace(rs.getString("place"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public static String getImgSrc(String str) {
        Pattern nonValidPattern = Pattern
	      .compile("(?i)< *[IMG][^\\>]*[src] *= *[\"\']{0,1}([^\"\'\\ >]*)");
	      int imgCnt = 0;
	      String content = "";
	      Matcher matcher = nonValidPattern.matcher(str);
	      while (matcher.find()) {
	         content = matcher.group(1);
	         imgCnt++;
	         if(imgCnt == 1){
	              break;                                  
	          }
	      }
          return content;
	}
	
}
