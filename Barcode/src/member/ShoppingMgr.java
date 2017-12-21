package member;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ShoppingMgr {
	
	private DBConnectionMgr pool;
	public static final String UPLOAD
		="C:/Jsp"; 
	public static final String ENCTYPE = "EUC-KR";
	public static final int MAXSIZE = 5*1024*1024;//5MB
	
	public ShoppingMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
public ShoppingBean getShopping(int idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ShoppingBean regBean = new ShoppingBean();
		try {
			con = pool.getConnection();
			sql = "select * from tblnewshop where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
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
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}

//shopping List
	public Vector<ShoppingBean> getShoppingList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<ShoppingBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from tblnewshop order by idx;";
			pstmt = con.prepareStatement(sql);
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
	

	
	//Admin 래코드 한개 가져오기
	public ShoppingBean shoppingAdminSelect(int idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ShoppingBean bean = new ShoppingBean();
		try {
			con = pool.getConnection();
			sql = "select * from tblnewshop where idx =?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setIndex(rs.getInt("idx"));
				bean.setTitle(rs.getString("title"));
				bean.setAccount(rs.getString("account"));
				bean.setStock(rs.getString("stock"));
				bean.setPrice(rs.getString("price"));
				bean.setShipAccount(rs.getString("shipAccount"));
				bean.setShipDate(rs.getString("shipDate"));
				bean.setOrigin(rs.getString("origin"));
				bean.setOpt(rs.getString("opt"));
				bean.setProAdd(rs.getString("proAdd"));
				bean.setMaxBuy(rs.getInt("maxbuy"));
				bean.setMainImg(rs.getString("mainImg"));
				bean.setListImg(rs.getString("listImg"));
				bean.setDetailImg(rs.getString("detailImg"));
				bean.setProStar(rs.getDouble("proStar"));
				bean.setReviewNum(rs.getInt("reviewNum"));
				bean.setLikeNum(rs.getInt("likeNum"));
				bean.setSeller(rs.getString("Seller"));
				bean.setS_adr(rs.getString("s_adr"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return bean;
	}
	
	//Admin Update
	public boolean AdminUpdate(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			File dir = new File(UPLOAD);
			if(!dir.exists())
				dir.mkdirs();//폴더가 없으면 생성
			MultipartRequest multi = 
					new MultipartRequest(req, UPLOAD, MAXSIZE, 
							ENCTYPE, new DefaultFileRenamePolicy());
			if(multi.getFilesystemName("mainImg")==null
					&& multi.getFilesystemName("listImg")==null
					&& multi.getFilesystemName("detailImg")==null) {//이미지 빼고 수정
				sql = "update tblnewshop set Seller=?,title=?,price=?,account=?,"
						+ "shipAccount=?,shipDate=?,maxBuy=?,origin=?,"
						+ "stock=?,opt=?,proAdd=?,s_adr=?"
						+ " where idx=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("Seller"));
				pstmt.setString(2, multi.getParameter("title"));
				pstmt.setString(3, multi.getParameter("price"));
				pstmt.setString(4, multi.getParameter("account"));
				pstmt.setString(5, multi.getParameter("shipAccount"));
				pstmt.setString(6, multi.getParameter("shipDate"));
				pstmt.setInt(7, Integer.parseInt(multi.getParameter("maxBuy")));
				pstmt.setString(8, multi.getParameter("origin"));
				pstmt.setString(9, multi.getParameter("stock"));
				pstmt.setString(10, multi.getParameter("opt"));
				pstmt.setString(11, multi.getParameter("proAdd"));
				pstmt.setString(12, multi.getParameter("s_adr"));
				pstmt.setInt(13, Integer.parseInt(multi.getParameter("index")));
				
			}else {
				sql = "update tblnewshop set Seller=?,title=?,price=?,account=?,"
						+ "shipAccount=?,shipDate=?,maxBuy=?,origin=?,"
						+ "stock=?,opt=?,proAdd=?,s_adr=?,mainImg=?,listImg=?,detailImg=?"
						+ " where idx=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("Seller"));
				pstmt.setString(2, multi.getParameter("title"));
				pstmt.setString(3, multi.getParameter("price"));
				pstmt.setString(4, multi.getParameter("account"));
				pstmt.setString(5, multi.getParameter("shipAccount"));
				pstmt.setString(6, multi.getParameter("shipDate"));
				pstmt.setInt(7, Integer.parseInt(multi.getParameter("maxBuy")));
				pstmt.setString(8, multi.getParameter("origin"));
				pstmt.setString(9, multi.getParameter("stock"));
				pstmt.setString(10, multi.getParameter("opt"));
				pstmt.setString(11, multi.getParameter("proAdd"));
				pstmt.setString(12, multi.getParameter("s_adr"));
				pstmt.setString(13, multi.getParameter("mainImg"));
				pstmt.setString(14, multi.getParameter("listImg"));
				pstmt.setString(15, multi.getParameter("detailImg"));
				pstmt.setInt(16, Integer.parseInt(multi.getParameter("idx")));
			}
			
			if(pstmt.executeUpdate()==1)
				flag=true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	//AdminDelete
	public void adminDelete(int idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "delete from tblnewshop where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
	}
	

	//상품등록
	public boolean insertProAdd(HttpServletRequest req) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert tblNewShop(title,account,stock,price,shipAccount,shipDate,origin,"
					+ "opt,proAdd,maxBuy,Seller)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?)";
			File dir = new File(UPLOAD);
			if(!dir.exists())
				dir.mkdirs();//폴더가 없으면 생성
			MultipartRequest multi = 
					new MultipartRequest(req, UPLOAD, MAXSIZE, 
							ENCTYPE, new DefaultFileRenamePolicy());
			if(multi.getFilesystemName("mainImg")==null
					&& multi.getFilesystemName("listImg")==null
					&& multi.getFilesystemName("detailImg")==null) {//이미지 빼고 수정
				sql = "insert tblnewshop (Seller,title,price,account,"
						+ "shipAccount,shipDate,maxBuy,origin,"
						+ "stock,opt,proAdd,s_adr)"
						+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("Seller"));
				pstmt.setString(2, multi.getParameter("title"));
				pstmt.setString(3, multi.getParameter("price"));
				pstmt.setString(4, multi.getParameter("account"));
				pstmt.setString(5, multi.getParameter("shipAccount"));
				pstmt.setString(6, multi.getParameter("shipDate"));
				pstmt.setInt(7, Integer.parseInt(multi.getParameter("maxBuy")));
				pstmt.setString(8, multi.getParameter("origin"));
				pstmt.setString(9, multi.getParameter("stock"));
				pstmt.setString(10, multi.getParameter("opt"));
				pstmt.setString(11, multi.getParameter("proAdd"));
				pstmt.setString(12, multi.getParameter("s_adr"));
				
			}else {
				sql = "insert tblnewshop (Seller,title,price,account,"
						+ "shipAccount,shipDate,maxBuy,origin,"
						+ "stock,opt,proAdd,s_adr,mainImg,listImg,detailImg)"
						+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("Seller"));
				pstmt.setString(2, multi.getParameter("title"));
				pstmt.setString(3, multi.getParameter("price"));
				pstmt.setString(4, multi.getParameter("account"));
				pstmt.setString(5, multi.getParameter("shipAccount"));
				pstmt.setString(6, multi.getParameter("shipDate"));
				pstmt.setInt(7, Integer.parseInt(multi.getParameter("maxBuy")));
				pstmt.setString(8, multi.getParameter("origin"));
				pstmt.setString(9, multi.getParameter("stock"));
				pstmt.setString(10, multi.getParameter("opt"));
				pstmt.setString(11, multi.getParameter("proAdd"));
				pstmt.setString(12, multi.getParameter("s_adr"));
				pstmt.setString(13, multi.getParameter("mainImg"));
				pstmt.setString(14, multi.getParameter("listImg"));
				pstmt.setString(15, multi.getParameter("detailImg"));
			}
			
				if(pstmt.executeUpdate()==1)
					flag = true;
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}

}
