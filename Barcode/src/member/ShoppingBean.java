package member;

public class ShoppingBean {
	
	
	private int index; // 상품번호
	private String title; // 상품제목
	private String account; // 상품간략설명
	private String stock; // 재고
	private String price; // 상품가격
	private String shipAccount; //배송비
	private String shipDate; //배송일
	private String origin; //원산지
	private String opt; //상품옵션
	private String proAdd; //추가구성
	private int maxBuy; //최대구매수량
	private String mainImg; //메인이미지
	private String listImg; //메인이미지
	private String detailImg; //메인이미지
	private double proStar; //상품 별점
	private int reviewNum; // 리뷰갯수
	private int likeNum; // 리뷰갯수
	private String Seller; // 판매자 상품
	private String s_adr;//판매자 주소
	
	
	
	public String getS_adr() {
		return s_adr;
	}
	public void setS_adr(String s_adr) {
		this.s_adr = s_adr;
	}
	public String getSeller() {
		return Seller;
	}
	public void setSeller(String seller) {
		this.Seller = seller;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getStock() {
		return stock;
	}
	public void setStock(String stock) {
		this.stock = stock;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getShipAccount() {
		return shipAccount;
	}
	public void setShipAccount(String shipAccount) {
		this.shipAccount = shipAccount;
	}
	public String getShipDate() {
		return shipDate;
	}
	public void setShipDate(String shipDate) {
		this.shipDate = shipDate;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getOpt() {
		return opt;
	}
	public void setOpt(String opt) {
		this.opt = opt;
	}
	public String getProAdd() {
		return proAdd;
	}
	public void setProAdd(String proAdd) {
		this.proAdd = proAdd;
	}
	public int getMaxBuy() {
		return maxBuy;
	}
	public void setMaxBuy(int maxBuy) {
		this.maxBuy = maxBuy;
	}
	public String getMainImg() {
		return mainImg;
	}
	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}
	public String getListImg() {
		return listImg;
	}
	public void setListImg(String listImg) {
		this.listImg = listImg;
	}
	public String getDetailImg() {
		return detailImg;
	}
	public void setDetailImg(String detailImg) {
		this.detailImg = detailImg;
	}
	public double getProStar() {
		return proStar;
	}
	public void setProStar(double proStar) {
		this.proStar = proStar;
	}
	public int getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	
	
	
}
