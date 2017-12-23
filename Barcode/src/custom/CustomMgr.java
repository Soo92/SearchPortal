package custom;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import member.DBConnectionMgr;

public class CustomMgr {
	
	private DBConnectionMgr pool;
	
	public CustomMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	
	public boolean insertCustom(CustomBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert custom(title,icon"
					+ "values(?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setString(2, bean.getIcon());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public CustomBean getCustom(String idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		CustomBean regBean = new CustomBean();
		try {
			con = pool.getConnection();
			sql = "select * from custom where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setIdx(rs.getString("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setIcon(rs.getString("icon"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	public Vector<CustomBean> getCustomList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<CustomBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from custom";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CustomBean regBean = new CustomBean();
				regBean.setIdx(rs.getString("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setIcon(rs.getString("icon"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return vlist;
	}
	
	public boolean insertCustomCate(CustomCateBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert custom_cate(Cnum,idx,title,parent,subCate,board,pic"
					+ "values(?,?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getCnum());
			pstmt.setString(2, bean.getIdx());
			pstmt.setString(3, bean.getTitle());
			pstmt.setString(4, bean.getParent());
			pstmt.setString(5, bean.getSubCate());
			pstmt.setString(6, bean.getBoard());
			pstmt.setString(6, bean.getPic());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public CustomCateBean getCustomCate(String cnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		CustomCateBean regBean = new CustomCateBean();
		try {
			con = pool.getConnection();
			sql = "select * from custom_cate where cnum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cnum);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setCnum(rs.getString("cnum"));
				regBean.setIdx(rs.getString("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setParent(rs.getString("parent"));
				regBean.setSubCate(rs.getString("subCate"));
				regBean.setBoard(rs.getString("board"));
				regBean.setPic(rs.getString("pic"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	public Vector<CustomCateBean> getCustomCateList(String idx,String parent) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<CustomCateBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from custom_cate where idx = ? and parent = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, idx);
			pstmt.setString(2, parent);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CustomCateBean regBean = new CustomCateBean();
				regBean.setCnum(rs.getString("cnum"));
				regBean.setIdx(rs.getString("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setParent(rs.getString("parent"));
				regBean.setSubCate(rs.getString("subCate"));
				regBean.setBoard(rs.getString("board"));
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

	public boolean insertCustomCateBoard(CustomCateBoardBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert custom_cate_board(ccboardnum,idx,title,regdate,cnt,content"
					+ "values(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getCcboardnum());
			pstmt.setString(2, bean.getIdx());
			pstmt.setString(3, bean.getTitle());
			pstmt.setString(4, bean.getRegdate());
			pstmt.setString(5, bean.getCnt());
			pstmt.setString(6, bean.getContent());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public CustomCateBoardBean getCustomCateBoard(String ccboardnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		CustomCateBoardBean regBean = new CustomCateBoardBean();
		try {
			con = pool.getConnection();
			sql = "select * from custom_cate_board where ccboardnum=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, ccboardnum);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setCcboardnum(rs.getString("ccboardnum"));
				regBean.setIdx(rs.getString("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setCnt(rs.getString("cnt"));
				regBean.setContent(rs.getString("content"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	public Vector<CustomCateBoardBean> getCustomCateBoardList(String idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<CustomCateBoardBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from custom_cate_board where idx = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				CustomCateBoardBean regBean = new CustomCateBoardBean();
				regBean.setCcboardnum(rs.getString("ccboardnum"));
				regBean.setIdx(rs.getString("idx"));
				regBean.setTitle(rs.getString("title"));
				regBean.setRegdate(rs.getString("regdate"));
				regBean.setCnt(rs.getString("cnt"));
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
