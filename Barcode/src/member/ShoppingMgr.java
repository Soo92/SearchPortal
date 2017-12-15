package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class ShoppingMgr {
   
   private DBConnectionMgr pool;
   
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
            regBean.setOption(rs.getString("option"));
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

   public Vector<ShoppingBean> getShoppingList() {
      Connection con = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      String sql = null;
      Vector<ShoppingBean> vlist = new Vector<>();
      try {
         con = pool.getConnection();
         sql = "select * from tblnewshop";
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
            regBean.setOption(rs.getString("option"));
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

}