package product;

import java.sql.ResultSet;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import member.DBConnectionMgr;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class ReviewMgr {
	private DBConnectionMgr pool;
	
	public static final String UPLOAD
	="C:/Jsp"; 
	public static final String ENCTYPE = "EUC-KR";
	public static final int MAXSIZE = 5*1024*1024;//5MB
	
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
			sql = "select * from tblnewshop_board where no=?";
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
			sql = "select * from tblnewshop_board where idx = ? order by date desc, no desc;";
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
	
	//리뷰등록
	public boolean reviewProAdd(HttpServletRequest req) {
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
			if(multi.getFilesystemName("img")==null) {//이미지 빼고 수정
				sql = "insert tblnewshop_board (title,star,content,idx,name,pro_title,date)"
						+ "values(?,?,?,?,?,?,date_format(now(),'%y.%m.%d'))";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("title"));
				pstmt.setString(2, multi.getParameter("star"));
				pstmt.setString(3, multi.getParameter("content"));
				pstmt.setString(4, multi.getParameter("idx"));
				pstmt.setString(5, multi.getParameter("name"));
				pstmt.setString(6, multi.getParameter("pro_title"));
			}else {
				sql = "insert tblnewshop_board (title,star,img,content,idx,name,pro_title,date)"
						+ "values(?,?,?,?,?,?,?,date_format(now(),'%y.%m.%d'))";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, multi.getParameter("title"));
				pstmt.setString(2, multi.getParameter("star"));
				pstmt.setString(3, multi.getParameter("img"));
				pstmt.setString(4, multi.getParameter("content"));
				pstmt.setString(5, multi.getParameter("idx"));
				pstmt.setString(6, multi.getParameter("name"));
				pstmt.setString(7, multi.getParameter("pro_title"));
			}
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