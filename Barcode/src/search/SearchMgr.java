package search;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import member.DBConnectionMgr;
import member.MemberBean;
import movie.MovieBean;
import place.PlaceBean;
import place.PlaceBoardBean;
import product.ShoppingBean;

public class SearchMgr {
	
	private DBConnectionMgr pool;
	public static final String UPLOAD
		="C:/Jsp"; 
	public static final String ENCTYPE = "EUC-KR";
	public static final int MAXSIZE = 5*1024*1024;//5MB
	
	public SearchMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
//shopping List
	public Vector<ShoppingBean> getShoppingList(String search) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ShoppingBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from tblnewshop where match(title) against(?  IN BOOLEAN MODE) limit 10;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, search+"*");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ShoppingBean regBean = new ShoppingBean();
				regBean.setIndex(rs.getInt("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setAccount(rs.getString("account"));
				regBean.setStock(rs.getString("stock"));
				regBean.setPrice(rs.getString("price"));
				regBean.setShipAccount(rs.getString("shipAccount"));
				regBean.setShipDate(rs.getString("shipDate"));
				regBean.setOrigin(rs.getString("origin"));
				regBean.setOpt(rs.getString("opt"));
				regBean.setProAdd(rs.getString("proAdd"));
				regBean.setMaxBuy(rs.getInt("maxbuy"));
				regBean.setMainImg(rs.getString("mainImg"));
				regBean.setListImg(rs.getString("listImg"));
				regBean.setDetailImg(rs.getString("detailImg"));
				regBean.setProStar(rs.getDouble("proStar"));
				regBean.setReviewNum(rs.getInt("reviewNum"));
				regBean.setLikeNum(rs.getInt("likeNum"));
				regBean.setSeller(rs.getString("Seller"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public Vector<PlaceBoardBean> getPlaceBoardList(String search) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<PlaceBoardBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from place_board where match(content) against(?  IN BOOLEAN MODE) limit 10;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, search+"*");
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
	public Vector<PlaceBean> getPlaceList(String search) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<PlaceBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from place where match(content) against(?  IN BOOLEAN MODE) limit 10;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, search+"*");
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
	
	public Vector<MovieBean> getMemberList(String search) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<MovieBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from movie where genre like ? or title like ? or match(content) against(? IN BOOLEAN MODE) limit 10;";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+search+"%");
			pstmt.setString(2, "%"+search+"%");
			pstmt.setString(3, search+"*");
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
	public boolean insertSearch(String search) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "INSERT INTO searchbox (keyword, cnt, regdate) VALUES (?, '1', DATE_FORMAT(NOW(), '%Y.%m.%d.'))" + 
					"ON DUPLICATE KEY UPDATE keyword=?, cnt=cnt+1";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, search);
			pstmt.setString(2, search);
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	public Vector<SearchBean> getSearchList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<SearchBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from searchbox order by cnt desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				SearchBean regBean = new SearchBean();
				regBean.setKeyword(rs.getString("keyword"));
				regBean.setCnt(rs.getInt("cnt"));
				regBean.setRegdate(rs.getString("regdate"));
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