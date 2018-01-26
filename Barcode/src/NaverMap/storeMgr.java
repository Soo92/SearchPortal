package NaverMap;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class storeMgr {

	Geocoding a = new Geocoding();
	private DBConnectionMgr pool;
	
	public storeMgr() {
		pool = DBConnectionMgr.getInstance();
	}
	public boolean updatelotto_store(String address, int idx){
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "update lotto_store set latlng=? where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, a.location(address));
			pstmt.setInt(2, idx);
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	public boolean deletelotto_store(int idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "delete from lotto_store where idx = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	//회원가입
	public boolean insertlotto_store(storeBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert lotto_store(name,phonenum,address,status,pic,url)"
					+ "values(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getPhonenum());
			pstmt.setString(3, bean.getAddress());
			pstmt.setString(4, bean.getStatus());
			pstmt.setString(5, bean.getPic());
			pstmt.setString(6, bean.getUrl());
			if(pstmt.executeUpdate()==1)
				flag = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
	}
	
	public storeBean getlotto_store(int idx) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		storeBean regBean = new storeBean();
		try {
			con = pool.getConnection();
			sql = "select * from lotto_store where idx=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				regBean.setIdx(rs.getInt("idx"));
				regBean.setName(rs.getString("name"));
				regBean.setPhonenum(rs.getString("phonenum"));
				regBean.setAddress(rs.getString("address"));
				regBean.setStatus(rs.getString("status"));
				regBean.setLatlng(rs.getString("latlng"));
				regBean.setPic(rs.getString("pic"));
				regBean.setUrl(rs.getString("url"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return regBean;
	}
	public Vector<storeBean> getlotto_storeList() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		Vector<storeBean> vlist = new Vector<>();
		try {
			con = pool.getConnection();
			sql = "select * from lotto_store";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				storeBean regBean = new storeBean();
				regBean.setIdx(rs.getInt("idx"));
				regBean.setName(rs.getString("name"));
				regBean.setPhonenum(rs.getString("phonenum"));
				regBean.setAddress(rs.getString("address"));
				regBean.setStatus(rs.getString("status"));
				regBean.setLatlng(rs.getString("latlng"));
				regBean.setPic(rs.getString("pic"));
				regBean.setUrl(rs.getString("url"));
				vlist.addElement(regBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con);
		}
		return vlist;
	}	
}
