<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr" />
<%
	request.setCharacterEncoding("euc-kr");
	String id = (String) session.getAttribute("idKey");
	String email = mgr.getMember(id).getEmail();
	String name = mgr.getMember(id).getName();
%>
<!doctype>
<!-- saved from url=(0047)http://localhost/Barcode1/movie/movie_home.html -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<title>바코드 영화</title>
<script type="text/javascript" src="js/swiper.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css//movie.all.css">
<link rel="stylesheet" href="../css/gnb_style.css" type="text/css">
<div id="wrap" class="basic">
	<!-- GNB -->
	<script type="text/javascript">
		function mypage() {
			if (document.getElementById("gnb_my_layer").className === ("gnb_my_li"))
				document.getElementById("gnb_my_layer").className = "gnb_my_li gnb_lyr_opened";
			else
				document.getElementById("gnb_my_layer").className = "gnb_my_li";
		}
		function alarm() {
			if (document.getElementById("gnb_notice_layer").className === ("gnb_notice_li"))
				document.getElementById("gnb_notice_layer").className = "gnb_notice_li gnb_lyr_opened";
			else
				document.getElementById("gnb_notice_layer").className = "gnb_notice_li";
		}
		function service() {
			if (document.getElementById("gnb_service_layer").className === ("gnb_service_li"))
				document.getElementById("gnb_service_layer").className = "gnb_service_li gnb_lyr_opened";
			else
				document.getElementById("gnb_service_layer").className = "gnb_service_li";
		}
		function delayed_submit(object) {
			if (navigator.userAgent.indexOf('MSIE') == -1) {
				var b = c = new Date();
				while ((b.getTime() - c.getTime()) < 100) {
					b = new Date();
				}
			}
		}
	</script>
	<!-- skip navigation -->
	<div id="u_skip">
		<a href="header"
			onclick="document.getElementById(header).tabIndex=-1;document.getElementById('header').focus();return false;"><span>메인
				메뉴로 바로가기</span></a> <a href="content" id="gnb_goContent"
			onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문으로
				바로가기</span></a>
	</div>
	<!-- //skip navigation -->
	<div class="gnb_container">
		<div class="gnb_content">
			<div class="gnb_box">
				<div class="gnb_wrap">
					<%	if (id == null || id.equals("")) {	%>
					<div id="gnb" class="gnb_dark_type2">
						<strong class="blind">사용자 링크</strong>
						<ul class="gnb_lst" id="gnb_lst" style="display: block;">
							<li class="gnb_login_li" id="gnb_login_layer"
								style="display: inline-block;"><a class="gnb_btn_login"
								href="../member/login.jsp" id="gnb_login_button"><span
									class="gnb_bg"></span><span class="gnb_bdr"></span><span
									class="gnb_txt">로그인</span></a></li>
							<iframe id="gnb_my_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr"
								name="padding" width="0" height="0" scrolling="no"
								frameborder="0"
								style="top: 34px; right: -4px; width: 320px; height: 174px; display: none; opacity: 0; -ms-filter: alpha(opacity = 0)"
								src="../img/movie/saved_resource.html"></iframe>
							</li>
							<li class="gnb_notice_li gnb_lyr_opened" id="gnb_notice_layer"
								style="display: none"><a href="javascript:;"
								class="gnb_notice" onclick="alarm(); return false;"><span
									class="blind">알림</span><span class="gnb_icon"></span><em
									class="gnb_ico_num" id="gnb_me_menu" style="display: none"><span
										class="gnb_ico_new"><span class="gnb_count"
											id="gnb_me_count"></span></span></em><span class="ico_arrow"></span></a>
								<div class="gnb_notice_lyr" id="gnb_notice_lyr">
									<div class="svc_noti svc_panel">
										<div class="svc_scroll">
											<div class="svc_head">
												<strong class="gnb_tit">전체 알림</strong>
												<div class="task_right">
													<button
														onclick="gnbbarcodeMeLayer.deleteReadList(this, event);"
														id="gnb_btn_read_noti_del">읽은 알림 삭제</button>
													<button onclick="gnbbarcodeMeLayer.showDeleteAlert();"
														id="gnb_btn_all_noti_del">모두 삭제</button>
												</div>
											</div>
											<div class="svc_body" id="gnb_barcodeme_layer"></div>
										</div>
										<div class="gnb_ly_alert" id="gnb_ly_alert"
											style="display: none;">
											<p class="gnb_msg">
												<strong>알림을 모두 삭제하시겠습니까?</strong>
											</p>
											<div class="gnb_btns">
												<button id="ly_alert_confirm"
													onclick="gnbbarcodeMeLayer.deleteAllList(this, event);">확인</button>
												<button onclick="gnbbarcodeMeLayer.hideDeleteAlert();">취소</button>
											</div>
											<button class="gnb_btn_close"
												onclick="gnbbarcodeMeLayer.hideDeleteAlert();">
												<i>레이어 닫기</i>
											</button>
										</div>
										<a href="http://me.barcode.com/box/noti.nhn"
											class="gnb_notice_all">내 알림 전체보기</a>
									</div>
								</div> <iframe id="gnb_notice_lyr_iframe" title="빈 프레임"
									class="gnb_pad_lyr" name="padding" width="0" height="0"
									scrolling="no" frameborder="0"
									style="top: 34px; right: -4px; width: 299px; height: 332px; display: none; opacity: 0; -ms-filter: alpha(opacity = 0)"
									src="../img/movie/saved_resource(1).html"></iframe></li>
							<li class="mail_li" id="gnb_mail_layer" style="display: none"><a
								href="http://mail.barcode.com/" class="gnb_mail"><span
									class="blind">메일</span><span class="gnb_icon"></span><em
									class="gnb_ico_num" id="gnb_mail_menu" style="display: none"><span
										class="gnb_ico_new"><span class="gnb_count"
											id="gnb_mail_count"></span></span></em></a></li>
						</ul>
					</div>
					<%
						} else {
					%>
					<div id="gnb" class="gnb_dark_type2">
						<strong class="blind">사용자 링크</strong>
						<ul class="gnb_lst" id="gnb_lst" style="display: block;">
							<li class="gnb_login_li" id="gnb_login_layer"
								style="display: none;"><a class="gnb_btn_login"
								href="https://nid.barcode.com/nidlogin.login"
								id="gnb_login_button"><span class="gnb_bg"></span><span
									class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li>
							<li class="gnb_my_li" id="gnb_my_layer"
								style="display: inline-block;"><div class="gnb_my_namebox"
									id="gnb_my_namebox"
									style="background-image: url(&quot;http://static.barcode.net/common/gnb/2014/ico_arrow_wh.gif&quot;);">
									<a href="javascript:;" class="gnb_my" onclick="mypage()"><img
										id="gnb_profile_img"
										src="http://static.naver.net/common/myarea/myInfo.gif"
										width="26" height="26" alt="내 프로필 이미지"
										style="display: inline-block;"><span
										id="gnb_profile_filter_mask" class="filter_mask"
										style="display: inline-block;"></span> <span class="gnb_name"
										id="gnb_name1"><%=name%></span><em class="blind">내정보 보기</em><span
										class="ico_arrow"></span></a><a href="#" class="gnb_emp"
										id="gnb_emp" style="display: none;">(임직원혜택)</a>
								</div>
								<div class="gnb_my_lyr" id="gnb_my_lyr">
									<div class="gnb_my_content">
										<div class="gnb_img_area">
											<span class="gnb_mask"></span><img
												src="http://static.barcode.net/common/myarea/myInfo.gif"
												width="80" height="80" alt=""><a
												href="https://nid.barcode.com/user2/api/barcodeProfile.nhn?m=checkIdType"
												class="gnb_change"><span class="blind">프로필 사진 변경</span></a>
										</div>
										<div class="gnb_txt_area">
											<p class="gnb_account">
												<span class="gnb_name" id="gnb_name2"><a
													class="gnb_nick"
													href="https://nid.barcode.com/user2/api/barcodeProfile.nhn?m=checkIdType"><%=name%></a>님</span><a
													class="gnb_btn_login" href="../member/logout.jsp"><span
													class="gnb_bg"></span><span class="gnb_bdr"></span><span
													class="gnb_txt">로그아웃</span></a>
											</p>
											<a href="http://mail.barcode.com" class="gnb_mail_address"><%=email%></a>
											<ul class="gnb_edit_lst">
												<li class="gnb_info"><a
													href="https://nid.barcode.com/user2/help/myInfo.nhn?menu=home">내정보</a></li>
											</ul>
											<p class="gnb_pay_check" id="gnb_pay_check">
												<em>B Pay</em><a href="http://pay.barcode.com"
													id="gnb_pay_point"><span>내 페이포인트</span><strong>63,035원</strong></a>
											</p>
										</div>
									</div>
									<a href="#" class="gnb_my_interface" style="display: none"><span
										class="blind">환경설정</span></a>
								</div></li>
							<li class="gnb_notice_li" id="gnb_notice_layer"
								style="display: inline-block;"><a href="javascript:;"
								class="gnb_notice" onclick="alarm(); return false;"><span
									class="blind">알림</span><span class="gnb_icon"></span><em
									class="gnb_ico_num" id="gnb_me_menu" style="display: none"><span
										class="gnb_ico_new"><span class="gnb_count"
											id="gnb_me_count" style="display: inline-block;"></span></span></em><span
									class="ico_arrow"></span></a>
							<div class="gnb_notice_lyr" id="gnb_notice_lyr">
									<div class="svc_noti svc_panel">
										<div class="svc_scroll">
											<div class="svc_head">
												<strong class="gnb_tit">전체 알림</strong>
												<div class="task_right">
													<button
														onclick="gnbbarcodeMeLayer.deleteReadList(this, event);"
														id="gnb_btn_read_noti_del">읽은 알림 삭제</button>
													<button onclick="gnbbarcodeMeLayer.showDeleteAlert();"
														id="gnb_btn_all_noti_del">모두 삭제</button>
												</div>
											</div>
											<div class="svc_body" id="gnb_barcodeme_layer"></div>
										</div>
										<div class="gnb_ly_alert" id="gnb_ly_alert"
											style="display: none;">
											<p class="gnb_msg">
												<strong>알림을 모두 삭제하시겠습니까?</strong>
											</p>
											<div class="gnb_btns">
												<button id="ly_alert_confirm"
													onclick="gnbbarcodeMeLayer.deleteAllList(this, event);">확인</button>
												<button onclick="gnbbarcodeMeLayer.hideDeleteAlert();">취소</button>
											</div>
											<button class="gnb_btn_close"
												onclick="gnbbarcodeMeLayer.hideDeleteAlert();">
												<i>레이어 닫기</i>
											</button>
										</div>
										<a href="http://me.barcode.com/box/noti.nhn"
											class="gnb_notice_all">내 알림 전체보기</a>
									</div>
								</div>
								<iframe id="gnb_notice_lyr_iframe" title="빈 프레임"
									class="gnb_pad_lyr" name="padding" width="0" height="0"
									scrolling="no" frameborder="0"
									style="top: 34px; right: -4px; width: 299px; height: 332px; display: none; opacity: 0; -ms-filter: alpha(opacity = 0)"></iframe></li>
							<li class="gnb_service_li" id="gnb_service_layer"
								style="display: inline-block;"><a href="javascript:;"
								class="gnb_service" onclick="service(); return false;"><span
									class="blind">서비스 더보기</span><span class="gnb_icon"></span><span
									class="ico_arrow"></span></a>
							<div class="gnb_service_lyr" id="gnb_service_lyr">
									<div class="gnb_favorite_search" id="gnb_favorite_search">
										<div class="gnb_favorite_area">
											<div class="gnb_favorite_lstwrp">
												<div class="gnb_first_visit" style="display: none">
													<span class="blind">나만의 즐겨찾기를 추가해 보세요!</span><a href="#"
														class="gnb_close"><span class="blind">닫기</span></a>
												</div>
												<strong class="blind">즐겨찾는 서비스</strong>
												<ul class="gnb_favorite_lst" id="gnb_favorite_lst">
													<li class="gnb_add"><a href="#"><span
															class="ic_add"></span>추가</a></li>
													<li class="gnb_add"><a href="#"><span
															class="ic_add"></span>추가</a></li>
													<li class="gnb_add"><a href="#"><span
															class="ic_add"></span>추가</a></li>
													<li class="gnb_add"><a href="#"><span
															class="ic_add"></span>추가</a></li>
												</ul>
												<a href="#" class="gnb_my_interface"
													onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span
													class="blind">즐겨찾기 설정</span></a>
											</div>
										</div>
										<div class="gnb_search_area">
											<div class="gnb_search_box"
												onmouseover="gnb_search.mouseOver(this);"
												onmouseout="gnb_search.mouseOut(this);">
												<input id="gnb_svc_search_input" type="text" title="서비스 검색"
													value="더 많은 서비스를 간편하게 시작하세요!"
													onfocus="gnb_search.clearInput(this);"
													onblur="gnb_search.resetInput(this);"
													onkeydown="gnb_search.keyDown(event);"
													onkeyup="gnb_search.keyUp(event);"><a href="#"
													class="gnb_del_txt" id="gnb_del_txt" style="display: none"><span
													class="blind">삭제</span></a>
												<div class="gnb_pop_input" id="gnb_pop_input" tabindex="0"
													onfocus="gnb_search.searchPopOnMouse = true; return false;"
													onfocusout="gnb_search.searchPopOnMouse = false; return false;"
													onmouseover="gnb_search.searchPopOnMouse = true; return false;"
													onmouseout="gnb_search.searchPopOnMouse = false; return false;"
													style="display: none">
													<ul class="gnb_pop_lst"></ul>
												</div>
											</div>
											<div class="gnb_search_lstwrp">
												<ul class="gnb_search_lst gnb_first">
													<li class="gnb_first"><a
														href="http://cafe.barcode.com/">카페</a></li>
													<li><a href="http://news.barcode.com/">뉴스</a></li>
													<li><a href="http://map.barcode.com/">지도</a></li>
													<li><a href="http://sports.news.barcode.com/">스포츠</a></li>
													<li><a href="http://game.barcode.com/">게임</a></li>
												</ul>
												<ul class="gnb_search_lst">
													<li class="gnb_first"><a
														href="http://section.blog.barcode.com/">블로그</a></li>
													<li><a href="http://post.barcode.com/main.nhn">포스트</a></li>
													<li><a href="http://dic.barcode.com/">사전</a></li>
													<li><a href="http://kin.barcode.com/">지식iN</a></li>
													<li><a href="http://weather.barcode.com/">날씨</a></li>
												</ul>
												<ul class="gnb_search_lst">
													<li class="gnb_first"><a
														href="http://mail.barcode.com/">메일</a></li>
													<li><a href="http://stock.barcode.com/">증권</a></li>
													<li><a href="http://land.barcode.com/">부동산</a></li>
													<li><a href="http://music.barcode.com/">뮤직</a></li>
													<li><a href="http://book.barcode.com">책</a></li>
												</ul>
												<ul class="gnb_search_lst">
													<li class="gnb_first"><a
														href="http://shopping.barcode.com/">쇼핑</a></li>
													<li><a href="http://comic.barcode.com/">웹툰</a></li>
													<li><a href="http://movie.barcode.com/">영화</a></li>
													<li><a href="http://cloud.barcode.com/">클라우드</a></li>
													<li><a href="http://auto.barcode.com/">자동차</a></li>
												</ul>
											</div>
										</div>
										<div class="gnb_banner">
											<a href="http://campaign.barcode.com/pointevent/"
												class="gnb_service_event"><img id="gnb_promo"
												alt="바코드페이 | 12월 이벤트" width="265" height="47"
												src="http://static.barcode.net/common/gnb/banner/promo_npay_1712.png"></a>
										</div>
										<div class="gnb_linkwrp">
											<a href="http://www.barcode.com/more.html"
												class="gnb_service_all" id="gnb_service_all">전체 서비스 보기</a>
										</div>
									</div>
									<div class="gnb_svc_more" id="gnb_svc_more"
										style="display: none;">
										<strong class="blind">바코드 주요 서비스</strong>
										<div class="gnb_bg_top"></div>
										<div class="gnb_svc_hd">
											<strong class="gnb_svc_tit">바로가기 설정</strong><span
												class="link"><a
												href="http://www.barcode.com/more.html">전체 서비스 보기</a></span>
										</div>
										<div class="gnb_svc_lstwrp">
											<div class="gnb_svc_lst1">
												<ul class="gnb_first">
													<li><input type="checkbox" id="nsvc_game"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_game">게임</label></li>
													<li><input type="checkbox" id="nsvc_weather"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_weather">날씨</label></li>
													<li><input type="checkbox" id="nsvc_shopping"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_shopping">바코드쇼핑</label></li>
													<li><input type="checkbox" id="nsvc_barcodecast"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_barcodecast">바코드캐스트</label></li>
													<li><input type="checkbox" id="nsvc_cloud"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_cloud">바코드클라우드</label></li>
													<li class="gnb_event"><input type="checkbox"
														id="nsvc_barcodepay" name="selmenu"
														class="gnb_input_check" value=""> <label
														for="nsvc_barcodepay">바코드페이</label><em class="ic_gnb_new">New</em></li>
													<li><input type="checkbox" id="nsvc_news"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_news">뉴스</label></li>
													<li><input type="checkbox" id="nsvc_comic"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_comic">만화/웹툰</label></li>
													<li><input type="checkbox" id="nsvc_memo"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_memo">메모</label></li>
													<li><input type="checkbox" id="nsvc_mail"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_mail">메일</label></li>
													<li><input type="checkbox" id="nsvc_music"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_music">뮤직</label></li>
													<li><input type="checkbox" id="nsvc_land"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_land">부동산</label></li>
													<li><input type="checkbox" id="nsvc_bookmark"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_bookmark">북마크</label></li>
												</ul>
												<ul class="">
													<li><input type="checkbox" id="nsvc_blog"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_blog">블로그</label></li>
													<li><input type="checkbox" id="nsvc_dic"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_dic">사전</label></li>
													<li><input type="checkbox" id="nsvc_software"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_software">소프트웨어</label></li>
													<li><input type="checkbox" id="nsvc_sports"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_sports">스포츠</label></li>
													<li><input type="checkbox" id="nsvc_ya9"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_ya9">야구9단</label></li>
													<li><input type="checkbox" id="nsvc_movie"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_movie">영화</label></li>
													<li><input type="checkbox" id="nsvc_office"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_office">오피스</label></li>
													<li><input type="checkbox" id="nsvc_novel"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_novel">웹소설</label></li>
													<li><input type="checkbox" id="nsvc_auto"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_auto">자동차</label></li>
													<li><input type="checkbox" id="nsvc_contact"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_contact">주소록</label></li>
													<li><input type="checkbox" id="nsvc_finance"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_finance">증권(금융)</label></li>
													<li><input type="checkbox" id="nsvc_map"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_map">지도</label></li>
													<li><input type="checkbox" id="nsvc_kin"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_kin">지식iN</label></li>
												</ul>
												<ul class="">
													<li><input type="checkbox" id="nsvc_terms"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_terms">지식백과</label></li>
													<li><input type="checkbox" id="nsvc_book"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_book">책</label></li>
													<li><input type="checkbox" id="nsvc_cafe"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_cafe">카페</label></li>
													<li><input type="checkbox" id="nsvc_calendar"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_calendar">캘린더</label></li>
													<li><input type="checkbox" id="nsvc_photo"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_photo">포토갤러리</label></li>
													<li><input type="checkbox" id="nsvc_nstore"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_nstore">N스토어</label></li>
													<li><input type="checkbox" id="nsvc_barcodetv"
														name="selmenu" class="gnb_input_check" value=""> <label
														for="nsvc_barcodetv">바코드TV</label></li>
												</ul>
											</div>
											<div class="svc_lst2">
												<div class="svc_spc gnb_first">
													<strong><a href="http://dic.barcode.com/">어학사전</a></strong>
													<ul class="">
														<li><input type="checkbox" id="nsvc_krdic"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_krdic">국어사전</label></li>
														<li><input type="checkbox" id="nsvc_endic"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_endic">영어/영영사전</label></li>
														<li><input type="checkbox" id="nsvc_hanja"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_hanja">한자사전</label></li>
														<li><input type="checkbox" id="nsvc_jpdic"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_jpdic">일어사전</label></li>
														<li><input type="checkbox" id="nsvc_cndic"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_cndic">중국어사전</label></li>
														<li><input type="checkbox" id="nsvc_frdic"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_frdic">프랑스어사전</label></li>
														<li><input type="checkbox" id="nsvc_dedic"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_dedic">독일어사전</label></li>
														<li><input type="checkbox" id="nsvc_rudic"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_rudic">러시아어사전</label></li>
														<li><input type="checkbox" id="nsvc_vndic"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_vndic">베트남어사전</label></li>
														<li><input type="checkbox" id="nsvc_spdic"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_spdic">스페인어사전</label></li>
														<li><input type="checkbox" id="nsvc_translate"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_translate">번역기</label></li>
													</ul>
												</div>
												<div class="svc_spc">
													<strong>인기/신규서비스</strong>
													<ul class="">
														<li><input type="checkbox" id="nsvc_grafolio"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_grafolio">그라폴리오</label></li>
														<li><input type="checkbox" id="nsvc_post"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_post">포스트</label></li>
														<li><input type="checkbox" id="nsvc_luncherapp"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_luncherapp">도돌런처</label></li>
														<li><input type="checkbox" id="nsvc_band"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_band">밴드</label></li>
														<li><input type="checkbox" id="nsvc_line"
															name="selmenu" class="gnb_input_check" value="">
															<label for="nsvc_line">라인</label></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="svc_btnwrp">
											<div class="svc_btns">
												<button class="gnb_save"
													onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;">
													<strong class="blind">확인</strong>
												</button>
												<button class="gnb_close"
													onclick="gnbFavorite.cancel(); return false;">
													<span class="blind">취소</span>
												</button>
												<button class="gnb_return"
													onclick="gnbFavorite.resetService(); return false;">
													<span class="blind">초기 설정으로 변경</span>
												</button>
											</div>
										</div>
										<div class="gnb_bg_btm"></div>
									</div>
								</div>
								<iframe id="gnb_service_lyr_iframe" title="빈 프레임"
									class="gnb_pad_lyr" name="padding" width="0" height="0"
									scrolling="no" frameborder="0"
									style="display: none; top: 34px; right: 297px; width: 585px; height: 385px; opacity: 0; -ms-filter: alpha(opacity = 0)"></iframe>
								<iframe id="gnb_svc_more_iframe" title="빈 프레임"
									class="gnb_pad_lyr" name="padding" width="0" height="0"
									scrolling="no" frameborder="0"
									style="display: none; top: 34px; right: -4px; width: 295px; height: 385px; opacity: 0; -ms-filter: alpha(opacity = 0)"></iframe></li>
						</ul>
					</div>
					<%
						}
					%>
				</div>
				<!-- 검색창 -->
				<form id="jSearchForm"
					action="http://movie.barcode.com/movie/search/result.nhn"
					method="get" style="margin: 0; display: none;">
					<input type="text" name="query" maxlength="100" title="영화검색">
					<input type="hidden" name="section" value="all"> <input
						type="hidden" name="ie" value="utf8">
				</form>
				<fieldset id="jSearchArea" class="srch_area">
					<legend>
						<span class="blind">영화검색 영역</span>
					</legend>
					<div class="srch_field_on _view">
						<span class="ipt_srch"> <label for="ipt_tx_srch"
							id="search_placeholder">바코드로 영화검색</label> <input type="text"
							id="ipt_tx_srch" class="ipt_tx_srch" name="query" maxlength="100"
							accesskey="s" style="ime-mode: active;" autocomplete="off">
							<span class="align"></span> <span class="auto_tx"><a
								href="" title="자동완성 펼치기"><img
									src="../img/movie/srch_arrow_down.gif" width="7" height="4"
									title="자동완성 펼치기" alt="자동완성 펼치기"></a></span>
						</span>
						<button type="submit" title="검색" class="btn_srch"
							onclick="clickcr(this,'GNB.search','','',event); delayed_submit(this);">
							<span class="blind">검색</span>
						</button>
						<!-- 자동 완성 영역임 #autocomplate_template-->
					</div>
				</fieldset>
				<!-- //검색창 -->
			</div>
		</div>
	</div>
	<!-- //GNB -->
	<!-- header -->
	<div id="header" style="bottom: 0px;">
		<a href="content" title="본문으로 이동" class="blind">본문 바로가기</a>
		<h1 class="svc_name">
			<a href="../index.jsp" title="barcode로 바로가기" class="ci_logo"
				id="lnb_gobarcode"><img src="../img/movie/logo_ci.png"
				width="62" height="13" alt="barcode"></a>
			<!-- N=a:LNB.barcode -->
			<a href="http://movie.barcode.com/" title="영화서비스홈으로 바로가기"
				class="svc_logo"><img src="../img/movie/logo_svc.png" width="34"
				height="19" alt="영화"></a>
			<!-- N=a:LNB.movie -->
		</h1>
		<div id="scrollbar" class="scrollbar"
			style="width: 148px; height: 853px;">
			<div class="scrollbar-box" style="width: 148px; height: 853px;">
				<div class="scrollbar-content"
					style="top: 0px; width: 148px; height: auto;">
					<div class="in_scroll">
						<ul class="navi">
							<li><a href="http://movie.barcode.com/" title="영화홈"
								class="menu01_on"><strong>영화홈</strong></a>
							<!-- N=a:LNB.home --></li>
							<li><a href="currentmovie.html" title="상영작·예정작"
								class="menu02"><strong>상영작·예정작</strong></a>
							<!-- N=a:LNB.movies -->
								<ul class="navi_sub" id="navi_movie" style="display: none">
									<li><a href="currentmovie.html" title="현재 상영영화"
										class="sub2_1"><em>현재 상영영화</em></a>
									<!-- N=a:LNB.now --></li>
									<li><a href="premovie.html" title="개봉 예정영화" class="sub2_2"><em>개봉
												예정영화</em></a>
									<!-- N=a:LNB.soon --></li>
								</ul></li>
							<li><a href="ranking1.html" title="영화랭킹" class="menu03"><strong>영화랭킹</strong></a>
							<!-- N=a:LNB.db --></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="scrollbar-v">
				<div class="scrollbar-button-up rollover"></div>
				<div class="scrollbar-track rollover">
					<div class="scrollbar-thumb S10716933 rollover S92546606"
						style="top: 0px; height: 0px;"></div>
				</div>
				<div class="scrollbar-button-down rollover"></div>
			</div>
		</div>
	</div>
	<!-- //header -->
	<!-- container -->
	<div id="container">
		<!-- content -->
		<div id="content">
			<div class="article hh">
				<!-- 무비차트 -->
				<div class="mv_main" onmouseover="oTimer.abort();"
					onmouseout="movieChart.restartTimer();">
					<div class="flick_nav">
						<a href="" id="flick_prev" class="btn_prev"
							onclick="clickcr(this, 'run.pre', '', '', event);"
							onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
							title="이전"><em>이전</em></a>
						<!-- N=a:run.pre -->
					</div>
					<!-- flick area -->
					<div id="mflick" class="flick_view_area flick-view">
						<div class="flick-container"
							style="left: -100%; position: relative; width: 100%; height: 430px; transition-duration: 0ms; transform: translate(0px, 0px);">
<ul id="flick0" class="flick-ct home_list page0 flick-panel" style="position: absolute; width: 100%; height: 100%; transform: translate(0px, 0px); transition-property: -webkit-transform; left: 100%; z-index: 10;">
<%for(int i=0;i<10;i++) {%>
	<li class="item1">
		<div class="obj_off tab4">
			<a href="" onfocus="" onblur="">				
					<span class="ico_rating_all">전체 관람가</span>
				<span class="mask"></span>
				<img src="http://movie2.phinf.naver.net/20171115_208/1510709092470SERrP_JPEG/movie_image.jpg?type=f125" alt="" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:90%"><em>9.00 점</em></span></span>
					<strong class="l"><span class="char sc_num9"><em>9</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num0"><em>0</em></span><span class="char sc_num0"><em>0</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:1,i:165722 -->
		</div>
	</li>
<%} %>
</ul>

<ul id="flick1" class="flick-ct home_list page1 flick-panel" style="position: absolute; width: 100%; height: 100%; transform: translate(0px, 0px); transition-property: -webkit-transform; left: 100%; z-index: 10;">
<%for(int i=0;i<10;i++) {%>
	<li class="item1" onmouseover="" onmouseout="">
		<div class="obj_off tab4">
			<a href="" onfocus="" onblur="">
					<span class="ico_rating_all">전체 관람가</span>
				<span class="mask"></span>
				<img src="http://movie2.phinf.naver.net/20171219_124/15136652598317TAGd_JPEG/movie_image.jpg?type=f125" alt="극장판 프리파라 모두의 동경♪ 렛츠고☆프리파리" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_num8"><em>8</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:1,i:168501 -->
		</div>
	</li>
<%} %>
</ul>

<ul id="flick2" class="flick-ct home_list page2 flick-panel" style="position: absolute; width: 100%; height: 100%; transform: translate(0px, 0px); transition-property: -webkit-transform; left: 100%; z-index: 10;">
<%for(int i=0;i<10;i++) {%>
	<li class="item1" onmouseover="" onmouseout="">
		<div class="obj_off tab4">
			<a href="" onfocus="" onblur=""><span class="rank"><em>1위</em></span>
				<span class="ico_rating_12">12세 관람가</span>
				<span class="mask"></span>
				<img src="http://movie2.phinf.naver.net/20171218_47/1513561221134wvRja_JPEG/movie_image.jpg?type=f125" alt="위대한 쇼맨" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:96%"><em>9.60 점</em></span></span>
					<strong class="l"><span class="char sc_num9"><em>9</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num6"><em>6</em></span><span class="char sc_num0"><em>0</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:1,i:106360 -->
		</div>
	</li>
<%} %>
</ul>

						</div>
					</div>
					<!-- //flick area -->
					<div class="flick_nav">
						<a href="" id="flick_next" class="btn_next"
							onclick="clickcr(this, 'run.next', '', '', event);"
							onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
							title="다음"><em>다음</em></a>
						<!-- N=a:run.next -->
					</div>
					<div class="running_tab">
						<ul>
							<li id="CURRENT_tab" class="item1 on"><a href=""
								onclick="movieChart.fullSettingMovieChart(1);"
								onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
								class="flickingTab"><em>현재상영작</em></a>
							<!-- N=a:run.now --></li>
							<li id="COMMING_tab" class="item2"><a href=""
								onclick="movieChart.fullSettingMovieChart(2);"
								onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
								class="flickingTab"><em>개봉예정작</em></a>
							<!-- N=a:run.coming --></li>
							<li id="POINT_tab" class="item3"><a href=""
								onclick="movieChart.fullSettingMovieChart(3);"
								onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
								class="flickingTab"><em>평점순</em></a>
							<!-- N=a:run.bystar --></li>
						</ul>
						<p href="#" class="all_view_go" style="display: block;">
							<a id="movieChartAllView"
								href="http://localhost/movie/running/current.nhn"
								onclick="clickcr(this, 'run.all', '', '', event);"
								onfocus="oTimer.abort();" onblur="movieChart.restartTimer();"
								title="전체보기" target="_self">전체보기</a>
							<!-- N=a:run.all -->
						</p>
					</div>
				</div>
				<!-- //무비차트  -->
				<div class="section_group" id="homeReview">
					<div class="obj_section">
						<div class="main_review">
							<div class="title_area">
								<h4 class="hh_review">
									<strong class="blind">평점/리뷰</strong>
								</h4>
							</div>
							<div class="hh_review_area">
								<div id="movieReview" class="hh_review_ct">
									<ul class="lst_con first" data-index="0" style="display: block">
										<!-- [D] 선택된 경우 li에 class="on" 추가 -->
										<li id="review1" data-index="0" class="_select_title on">
											<a
											href="http://movie.barcode.com/movie/bi/mi/basic.nhn?code=152385"
											class="thmb"
											onclick="clickcr(this, 'tvw.img', '152385', '1', event);"><img
												src="../img/movie/movie_image(29).jpg" width="64"
												height="91" alt="꾼"
												onerror="this.src='http://static.barcode.net/movie/2012/06/dft_img64x91.png'"></a>
											<div class="detail">
												<a
													href="http://movie.barcode.com/movie/bi/mi/basic.nhn?code=152385"
													onclick="clickcr(this, 'tvw.title', '152385', '1', event);"
													data-index="0" class="_select_title_anchor"><strong>꾼</strong>
													<div class="star_score">
														<span class="st_off"><span class="st_on"
															style="width: 79.2%">평점 - 총 10점 중</span></span> <span
															class="score"> <span class="char sc_num7"><em>7</em></span><span
															class="char sc_dot"><em>.</em></span><span
															class="char sc_num9"><em>9</em></span><span
															class="char sc_num2"><em>2</em></span>
														</span>
													</div> </a>
												<ul class="info">
													<li><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4582056&amp;code=152385"
														onclick="clickcr(this, 'tvw.list', '4582056', '1', event);"><span
															class="tit">2017년 영화 &lt;꾼&gt; 후기/쿠키영상 유무</span></a></li>
													<li><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4581937&amp;code=152385"
														onclick="clickcr(this, 'tvw.list', '4581937', '2', event);"><span
															class="tit">[영화 꾼] 아무도 믿지마라!</span></a></li>
													<li class="last"><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4580442&amp;code=152385"
														onclick="clickcr(this, 'tvw.list', '4580442', '3', event);"><span
															class="tit">영화 [꾼] 후기 "의심은 해소시켜주면 확신이 된다"
																(현빈,유지태,배성우,나나,박성웅,안세하)</span></a></li>
												</ul>
											</div>
										</li>
										<li id="review2" data-index="1" class="_select_title"><a
											href="http://movie.barcode.com/movie/bi/mi/basic.nhn?code=116866"
											class="thmb"
											onclick="clickcr(this, 'tvw.img', '116866', '2', event);"><img
												src="../img/movie/movie_image(30).jpg" width="64"
												height="91" alt="저스티스 리그"
												onerror="this.src='http://static.barcode.net/movie/2012/06/dft_img64x91.png'"></a>
											<div class="detail">
												<a
													href="http://movie.barcode.com/movie/bi/mi/basic.nhn?code=116866"
													onclick="clickcr(this, 'tvw.title', '116866', '2', event);"
													data-index="1" class="_select_title_anchor"><strong>저스티스
														리그</strong>
													<div class="star_score">
														<span class="st_off"><span class="st_on"
															style="width: 79.4%">평점 - 총 10점 중</span></span> <span
															class="score"> <span class="char sc_num7"><em>7</em></span><span
															class="char sc_dot"><em>.</em></span><span
															class="char sc_num9"><em>9</em></span><span
															class="char sc_num4"><em>4</em></span>
														</span>
													</div> </a>
												<ul class="info">
													<li><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4579973&amp;code=116866"
														onclick="clickcr(this, 'tvw.list', '4579973', '1', event);"><span
															class="tit">영화 &lt;저스티스 리그&gt; 리뷰</span></a></li>
													<li><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4579899&amp;code=116866"
														onclick="clickcr(this, 'tvw.list', '4579899', '2', event);"><span
															class="tit">저스티스리그,어벤져스보다 재미있는 이유(그래도 잭스나이더는 이제그만)</span></a></li>
													<li class="last"><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4583195&amp;code=116866"
														onclick="clickcr(this, 'tvw.list', '4583195', '3', event);"><span
															class="tit">저스티스 리그 (Justice League) 관람기 [약스포]</span></a></li>
												</ul>
											</div></li>
										<li id="review3" data-index="2" class="_select_title"><a
											href="http://movie.barcode.com/movie/bi/mi/basic.nhn?code=164932"
											class="thmb"
											onclick="clickcr(this, 'tvw.img', '164932', '3', event);"><img
												src="../img/movie/movie_image(31).jpg" width="64"
												height="91" alt="해피 데스데이"
												onerror="this.src='http://static.barcode.net/movie/2012/06/dft_img64x91.png'"></a>
											<div class="detail">
												<a
													href="http://movie.barcode.com/movie/bi/mi/basic.nhn?code=164932"
													onclick="clickcr(this, 'tvw.title', '164932', '3', event);"
													data-index="2" class="_select_title_anchor"><strong>해피
														데스데이</strong>
													<div class="star_score">
														<span class="st_off"><span class="st_on"
															style="width: 83.5%">평점 - 총 10점 중</span></span> <span
															class="score"> <span class="char sc_num8"><em>8</em></span><span
															class="char sc_dot"><em>.</em></span><span
															class="char sc_num3"><em>3</em></span><span
															class="char sc_num5"><em>5</em></span>
														</span>
													</div> </a>
												<ul class="info">
													<li><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4577048&amp;code=164932"
														onclick="clickcr(this, 'tvw.list', '4577048', '1', event);"><span
															class="tit">[Theater] 해피 데스데이 / 재미 있으데이</span></a></li>
													<li><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4579947&amp;code=164932"
														onclick="clickcr(this, 'tvw.list', '4579947', '2', event);"><span
															class="tit">영화 추천 : 해피 데스데이 -부딪히는 방법에 대하여-</span></a></li>
													<li class="last"><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4580191&amp;code=164932"
														onclick="clickcr(this, 'tvw.list', '4580191', '3', event);"><span
															class="tit">해피 데스데이 (Happy Death Day, 2017)</span></a></li>
												</ul>
											</div></li>
										<li id="review4" data-index="3" class="_select_title"><a
											href="http://movie.barcode.com/movie/bi/mi/basic.nhn?code=134898"
											class="thmb"
											onclick="clickcr(this, 'tvw.img', '134898', '4', event);"><img
												src="../img/movie/movie_image(32).jpg" width="64"
												height="91" alt="토르: 라그나로크"
												onerror="this.src='http://static.barcode.net/movie/2012/06/dft_img64x91.png'"></a>
											<div class="detail">
												<a
													href="http://movie.barcode.com/movie/bi/mi/basic.nhn?code=134898"
													onclick="clickcr(this, 'tvw.title', '134898', '4', event);"
													data-index="3" class="_select_title_anchor"><strong>토르:
														라그나로크</strong>
													<div class="star_score">
														<span class="st_off"><span class="st_on"
															style="width: 88.7%">평점 - 총 10점 중</span></span> <span
															class="score"> <span class="char sc_num8"><em>8</em></span><span
															class="char sc_dot"><em>.</em></span><span
															class="char sc_num8"><em>8</em></span><span
															class="char sc_num7"><em>7</em></span>
														</span>
													</div> </a>
												<ul class="info">
													<li><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4574915&amp;code=134898"
														onclick="clickcr(this, 'tvw.list', '4574915', '1', event);"><span
															class="tit">코믹과 액션을 함께 갖춘 리벤져스의 메인이벤트-토르:라그나로크</span></a></li>
													<li><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4581860&amp;code=134898"
														onclick="clickcr(this, 'tvw.list', '4581860', '2', event);"><span
															class="tit">토르의 마지막 피날레 토르 라그나로크 _ 쿠키영상 _ 스포주의</span></a></li>
													<li class="last"><a
														href="http://movie.barcode.com/movie/bi/mi/reviewread.nhn?nid=4572665&amp;code=134898"
														onclick="clickcr(this, 'tvw.list', '4572665', '3', event);"><span
															class="tit">[영화] 토르 - 라그나로크 / 마블의 개성과 안정성</span></a></li>
												</ul>
											</div></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- [D] 맨위로 버튼 div id="content" 기준 top:342px 이상 -->
			<div class="staticbanner" id="floatingTopAnchor"
				style="bottom: 638px;">
				<a href="" title="맨위로"><img alt="맨위로"
					src="../img/movie/btn_top.png" width="33" height="35"></a>
				<!-- N=a:btm.top -->
			</div>
			<script type="text/javascript">
				jindo.$Fn(
						function() {
							var welTopAnchor = jindo
									.$Element('floatingTopAnchor');
							var welContent = jindo.$Element('content');
							var nTopMargin = 342 + welTopAnchor.height();
							var nMaxY;
							var nMinY = 61;
							var oFloatingLayer = new jindo.FloatingLayer(
									welTopAnchor).attach({
								beforeMove : function(oEvent) {
									// 상단 limit
									nMaxY = welContent.height() - nTopMargin;
									if (oEvent.nY > nMaxY) {
										oEvent.nY = nMaxY;
									}
									// 하단 limit
									if (oEvent.nY < nMinY) {
										oEvent.nY = nMinY;
									}
								}
							});
						}).attach(window, 'load');
			</script>
			<!-- //맨위로 -->
		</div>
		<!-- //content -->
		<script type="text/template" id="RESERVE_template">
{for index:movie in RESERVE}
	<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('reserveTooltip{=index+1}').show();" onmouseout="jindo.$Element('reserveTooltip{=index+1}').hide();">
		<div class="obj_off tab4">
			<a href="/movie/bi/mi/basic.nhn?code={=movie.movieCode}" onfocus="jindo.$Element('reserveTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip{=index+1}').hide();movieChart.restartTimer();"><span class="rank"><em>{=index +1}위</em></span>
				{if movie.adult}
					<span class="ico_rating_19">청소년 유해물</span>
				{elseif movie.lastKoreanGrade != null}
					{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
				{/if}
				<span class="mask"></span>
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.barcode.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l">{js movieChart.numberFont(=movie.formattedReserveRatio, 'rate')}<span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
		</div>
		<div  id="reserveTooltip{=index+1}" class="obj_con" style="display:none">
			<div class="obj_on{js movieChart.tooltipLengthOver(=movie.movieTitle)} {if (index+1)%5 == 0}rt{/if}">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">{=movie.movieTitle}</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>
{/for}
</script>
		<script type="text/template" id="COMMING_template">
{for index:movie in COMMING}
	<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('commingTooltip{=index+1}').show();" onmouseout="jindo.$Element('commingTooltip{=index+1}').hide();">
		<div class="obj_off tab4">
			<a href="/movie/bi/mi/basic.nhn?code={=movie.movieCode}" onfocus="jindo.$Element('commingTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip{=index+1}').hide();movieChart.restartTimer();">
				{if movie.adult}
					<span class="ico_rating_19">청소년 유해물</span>
				{elseif movie.lastKoreanGrade != null}
					{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
				{/if}
				<span class="mask"></span>
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.barcode.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l">{js movieChart.numberFont(=movie.openDate, 'rate')}</strong>{if movie.openDate != ''}<span class="spr stic_open l"><em>개봉</em>{/if}</span>
				</span>
			</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
		</div>
		<div id="commingTooltip{=index+1}" class="obj_con" style="display:none">
			<div class="obj_on{js movieChart.tooltipLengthOver(=movie.movieTitle)} {if (index+1)%5 == 0}rt{/if}">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">{=movie.movieTitle}</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>
{/for}
</script>
		<script type="text/template" id="POINT_template">
{for index:movie in POINT}
	<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('pointTooltip{=index+1}').show();" onmouseout="jindo.$Element('pointTooltip{=index+1}').hide();">
		<div class="obj_off tab4">
			<a href="/movie/bi/mi/basic.nhn?code={=movie.movieCode}" onfocus="jindo.$Element('pointTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('pointTooltip{=index+1}').hide();movieChart.restartTimer();"><span class="rank"><em>{=index +1}위</em></span>
				{if movie.adult}
					<span class="ico_rating_19">청소년 유해물</span>
				{elseif movie.lastKoreanGrade != null}
					{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
				{/if}
				<span class="mask"></span>
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.barcode.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:{=movie.point*10}%"><em>{=movie.point} 점</em></span></span>
					<strong class="l">{js movieChart.numberFont(=movie.point, 'sc')}</strong>
				</span>
			</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
		</div>
		<div id="pointTooltip{=index+1}" class="obj_con" style="display:none">
			<div class="obj_on{js movieChart.tooltipLengthOver(=movie.movieTitle)} {if (index+1)%5 == 0}rt{/if}">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">{=movie.movieTitle}</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>
{/for}
</script>
		<script type="text/template" id="BOXOFFICE_template">
{for index:movie in BOXOFFICE}
	<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('boxofficeTooltip{=index+1}').show();" onmouseout="jindo.$Element('boxofficeTooltip{=index+1}').hide();">
		<div class="obj_off tab4">
			<a href="/movie/bi/mi/basic.nhn?code={=movie.movieCode}" onfocus="jindo.$Element('boxofficeTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('boxofficeTooltip{=index+1}').hide();movieChart.restartTimer();"><span class="rank"><em>{=index +1}위</em></span>
				{if movie.adult}
					<span class="ico_rating_19">청소년 유해물</span>
				{elseif movie.lastKoreanGrade != null}
					{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
				{/if}
				<span class="mask"></span>
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.barcode.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_box l"><em>주말관객</em></span>
					<strong class="l">{js movieChart.numberFont(=movie.formattedWeekendAudience, 'cnt')}<span class="char cnt_per"><em>명</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
		</div>
		<div id="boxofficeTooltip{=index+1}" class="obj_con" style="display:none">
			<div class="obj_on{js movieChart.tooltipLengthOver(=movie.movieTitle)} {if (index+1)%5 == 0}rt{/if}">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">{=movie.movieTitle}</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			<div>
		</div>
	</li>
{/for}
</script>
		<script type="text/javascript">
			var flickContents = new Array(6);
			var htInfo = jindo.m.getDeviceInfo();
			var bUseCss3d = jindo.m._isUseCss3d()
					|| (htInfo.galaxyS2 && (htInfo.version >= "4.0.3"));
			var oFlicking = new jindo.m.CircularFlicking(jindo.$('mflick'), {
				nDuration : 100,
				bHorizontal : true,
				sClassPrefix : 'flick-',
				nFlickThreshold : 40,
				nTotalContents : 6,
				bUseCss3d : bUseCss3d
			})
					.attach({
						// 타이머 정지 및 메뉴 하이라이팅
						'beforeFlicking' : function(oCustomEvt) {
							oTimer.abort();
							var index = oCustomEvt.nContentIndex;
							var nextIndex = movieChart.getNextIndex(index);
							var previousIndex = movieChart
									.getPreviousIndex(index);
							if (oCustomEvt.bLeft) {
								movieChart.setMenuHighlighting(nextIndex);
							} else {
								movieChart.setMenuHighlighting(previousIndex);
							}
							this.getPanelElement().removeClass('blind');
							this.getRightPanelElement().removeClass('blind');
							this.getLeftPanelElement().removeClass('blind');
						},
						// 플리킹처리 및 타이머 재시작
						'afterFlicking' : function(oCustomEvt) {
							if (oCustomEvt.bLeft) {
								var type = movieChart.movieChartTab[oCustomEvt.nContentRightIndex];
								// 플리킹 저장변수에 이미 데이터가 있다면 저장변수 이용, 없으면 Ajax Call.
								if (flickContents[oCustomEvt.nContentRightIndex]) {
									movieChart
											.movieChartJsonCallBack(
													null,
													flickContents[oCustomEvt.nContentRightIndex],
													type,
													oCustomEvt.nContentRightIndex,
													oCustomEvt.nPanelRightIndex);
								} else {
									movieChart.ajaxCall(
											movieChart.movieChartJsonUrl, type,
											oCustomEvt.nContentRightIndex,
											oCustomEvt.nPanelRightIndex);
								}
							} else {
								var type = movieChart.movieChartTab[oCustomEvt.nContentLeftIndex];
								// 플리킹 저장변수에 이미 데이터가 있다면 저장변수 이용, 없으면 Ajax Call.
								if (flickContents[oCustomEvt.nContentLeftIndex]) {
									movieChart
											.movieChartJsonCallBack(
													null,
													flickContents[oCustomEvt.nContentLeftIndex],
													type,
													oCustomEvt.nContentLeftIndex,
													oCustomEvt.nPanelLeftIndex);
								} else {
									movieChart.ajaxCall(
											movieChart.movieChartJsonUrl, type,
											oCustomEvt.nContentLeftIndex,
											oCustomEvt.nPanelLeftIndex);
								}
							}
							this.getRightPanelElement().addClass('blind');
							this.getLeftPanelElement().addClass('blind');
							movieChart.restartTimer();
						}
					});
			//[MOVIEOP-5993] [모바일웹] Android 공통댓글 이전/다음 버튼 클릭시 포커싱 유지(PC 환경에서는 Flicking 되지 않도록 수정.)
			var osInfo = jindo.$Agent().os();
			if (osInfo.win || osInfo.mac || osInfo.linux) {
				oFlicking.attach({
					'touchStart' : function(oCustomEvt) {
						oCustomEvt.stop();
					}
				});
			}
			var oTimer = new jindo.Timer();
			var movieChart = {
				movieChartDefaultJsonUrl : "/movieChartDefaultJson.nhn",
				movieChartJsonUrl : "/movieChartJson.nhn",
				movieChartTab : new Array("RESERVE", "CURRENT", "COMMING",
						"POINT", "BOXOFFICE", "DOWNLOAD"),
				movieChartAllViewUrl : new Array(
						"/movie/running/current.nhn?order=reserve",
						"/movie/running/current.nhn",
						"/movie/running/premovie.nhn?order=reserve",
						"/movie/running/current.nhn?order=point",
						"/movie/sdb/rank/rboxoffice.nhn",
						"http://nstore.barcode.com/movie/top100List.nhn?rankingTypeCode=PC_D"),
				// 개봉예정작 목록의 마지막 영화의 상영관이 없다면, 예매율순 개봉예정작에서 데이터가 부족해서 상영관이 없는 데이터도 채워넣은 경우이기 때문에 더보기 링크 제공하지 않음
				hasCommingMovieAllViewUrl : true,
				// domready시 수행
				init : function() {
					movieChart.ajaxCall(movieChart.movieChartJsonUrl,
							movieChart.movieChartTab[0], 0, 0);
					movieChart.setMenuHighlighting(0);
					movieChart.startTimer();
				},
				// load시 수행
				load : function() {
					movieChart.ajaxCall(movieChart.movieChartJsonUrl,
							movieChart.movieChartTab[1], 1, 1);
					movieChart
							.ajaxCall(
									movieChart.movieChartJsonUrl,
									movieChart.movieChartTab[movieChart.movieChartTab.length - 1],
									movieChart.movieChartTab.length - 1, 2);
				},
				// 타이머 재시작
				restartTimer : function() {
					if (oTimer.isRunning = true) {
						oTimer.abort();
					}
					oTimer = new jindo.Timer();
					movieChart.startTimer();
				},
				// 타이머 시작
				startTimer : function() {
					oTimer.start(function() {
						oFlicking.moveNext();
						return true;
					}, 7000);
				},
				// JSON API 호출
				ajaxCall : function(url, type, index, targetAreaIndex) {
					var ajax = new jindo.$Ajax(url, {
						method : "GET",
						onload : function(response) {
							if (url == movieChart.movieChartDefaultJsonUrl) {
								// 풀세팅 
								movieChart.movieChartDefaultJsonCallBack(
										response, null, index);
							} else {
								// 개별세팅
								movieChart.movieChartJsonCallBack(response,
										null, type, index, targetAreaIndex);
							}
						}
					});
					ajax.header("ajax", "true");
					ajax.request({
						"type" : type
					});
				},
				// 무비차트 풀세팅 CallBack 함수
				movieChartDefaultJsonCallBack : function(response,
						movieChartList, index) {
					if (movieChartList == null) {
						var jsonData = response.json();
						movieChartList = jsonData.movieChartList;
					}
					var nextIndex = movieChart.getNextIndex(index);
					var previousIndex = movieChart.getPreviousIndex(index);
					oFlicking.setContentIndex(index);
					oFlicking.getPanelElement().html(
							jindo.$Template(
									movieChart.movieChartTab[index]
											+ "_template").process(
									movieChartList[0]));
					oFlicking.getRightPanelElement().html(
							jindo.$Template(
									movieChart.movieChartTab[nextIndex]
											+ "_template").process(
									movieChartList[1]));
					oFlicking.getLeftPanelElement().html(
							jindo.$Template(
									movieChart.movieChartTab[previousIndex]
											+ "_template").process(
									movieChartList[2]));
					flickContents[index] = movieChartList[0];
					flickContents[nextIndex] = movieChartList[1];
					flickContents[previousIndex] = movieChartList[2];
					if (index == 2) {
						this.setHasCommingMovieAllViewUrl(movieChartList[0]);
						movieChart.setMenuHighlighting(index);
					}
					oFlicking.getPanelElement().removeClass('blind');
					oFlicking.getRightPanelElement().addClass('blind');
					oFlicking.getLeftPanelElement().addClass('blind');
				},
				// 플리킹 및 좌우 네비게이션 버튼 클릭에 따른 CallBack 함수
				movieChartJsonCallBack : function(response, movieChartList,
						type, index, targetAreaIndex) {
					if (movieChartList == null) {
						var jsonData = response.json();
						movieChartList = jsonData.movieChartList;
					}
					jindo.$Element("flick" + targetAreaIndex).html(
							jindo.$Template(type + "_template").process(
									movieChartList));
					flickContents[index] = movieChartList;
					if (index == 2) {
						this.setHasCommingMovieAllViewUrl(movieChartList);
					}
					oFlicking.getPanelElement().removeClass('blind');
					oFlicking.getRightPanelElement().addClass('blind');
					oFlicking.getLeftPanelElement().addClass('blind');
				},
				// 무비차트 풀세팅 호출
				fullSettingMovieChart : function(index) {
					movieChart.setMenuHighlighting(index);
					var nextIndex = movieChart.getNextIndex(index);
					var previousIndex = movieChart.getPreviousIndex(index);
					// 저장변수에 데이터가 이미 있다면 저장변수 이용, 아니면 Ajax Call.
					if (flickContents[index] && flickContents[nextIndex]
							&& flickContents[previousIndex]) {
						var movieChartList = new Array(flickContents[index],
								flickContents[nextIndex],
								flickContents[previousIndex]);
						movieChart.movieChartDefaultJsonCallBack(null,
								movieChartList, index);
					} else {
						movieChart.ajaxCall(
								movieChart.movieChartDefaultJsonUrl,
								movieChart.movieChartTab[index], index);
					}
				},
				// 메뉴 하이라이팅 처리
				setMenuHighlighting : function(index) {
					// 탭메뉴 하이라이팅
					for (i = 0; i < movieChart.movieChartTab.length; i++) {
						jindo.$Element(movieChart.movieChartTab[i] + "_tab")
								.removeClass("on");
					}
					jindo.$Element(movieChart.movieChartTab[index] + "_tab")
							.addClass("on");
					// 전체보기 URL 세팅
					jindo.$("movieChartAllView").href = movieChart.movieChartAllViewUrl[index];
					// [다운로드순]일 경우, 전체보기 아이콘이 다르다. (새창)
					if (movieChart.movieChartTab[index] == "DOWNLOAD") {
						jindo.$Element(jindo.$$.getSingle(".all_view_go"))
								.show();
						jindo.$("movieChartAllView").target = "_blank";
						jindo.$Element(jindo.$$.getSingle(".all_view_go"))
								.addClass("dwn");
					}
					// [개봉예정작]일 경우 예매율순 개봉예정작에서 데이터가 부족해서 채워넣은 경우이면 전체 보기 링크를 보여주지 않는다. 
					else if (movieChart.movieChartTab[index] == "COMMING"
							&& !this.hasCommingMovieAllViewUrl) {
						jindo.$Element(jindo.$$.getSingle(".all_view_go"))
								.hide();
					} else {
						jindo.$Element(jindo.$$.getSingle(".all_view_go"))
								.show();
						jindo.$("movieChartAllView").target = "_self";
						jindo.$Element(jindo.$$.getSingle(".all_view_go"))
								.removeClass("dwn");
					}
				},
				// 두개의 포토인프라도메인을 분산해서 제공 
				getPhotoInfraImageDomain : function() {
					var photoInfraImageDomains = new Array(
							"http://movie.phinf.barcode.net",
							"http://movie2.phinf.barcode.net");
					return photoInfraImageDomains[Math
							.floor((Math.random() * (2)))];
				},
				// 따옴표 escape 처리
				replaceDoubleQuotationForHTML : function(title) {
					if (title == null) {
						return null;
					}
					var result = "";
					for (i = 0; i < title.length; i++) {
						var tmpChar = title.charAt(i);
						if (tmpChar == "\"") {
							result += "&quot;";
						} else if (tmpChar == "\n" || tmpChar == "\r") {
							result += "";
						} else {
							result += tmpChar;
						}
					}
					return result;
				},
				// 이미지폰트 정의
				numberFont : function(value, charName) {
					var result = "";
					if (value == 'undefined') {
						value = "0";
					}
					for (i = 0; i < value.length; i++) {
						var tmpChar = value.charAt(i);
						result += '<span class="char ' + charName + '_';
						if (tmpChar == ".") {
							result += "dot";
						} else if (tmpChar == ",") {
							result += "comma";
						} else {
							result += "num" + tmpChar;
						}
						result += '"><em>' + tmpChar + '</em></span>';
					}
					return result;
				},
				// 포스터 툴팁 길이제한 확인
				tooltipLengthOver : function(value) {
					if (value != null && value.length > 18) {
						return " br";
					}
					return "";
				},
				// 플리킹영역 다음 index를 얻는다.
				getNextIndex : function(index) {
					var nextIndex = index + 1;
					if (nextIndex > movieChart.movieChartTab.length - 1) {
						nextIndex = 0;
					}
					return nextIndex;
				},
				// 플리킹영역 이전 index를 얻는다.
				getPreviousIndex : function(index) {
					var previousIndex = index - 1;
					if (previousIndex < 0) {
						previousIndex = movieChart.movieChartTab.length - 1;
					}
					return previousIndex;
				},
				// 개봉예정작의 전체보기 버튼 노출 여부
				setHasCommingMovieAllViewUrl : function(movieList) {
					if (movieList.COMMING[movieList.COMMING.length - 1].theater == 0) {
						this.hasCommingMovieAllViewUrl = false;
					} else {
						this.hasCommingMovieAllViewUrl = true;
					}
				},
				// 등급 아이콘 html을 얻는다.
				getGradeIcon : function(gradeCode) {
					var result = '<span class="ico_rating_';
					if (gradeCode == "1001001") {
						result += 'all">전체 관람가'
					} else if (gradeCode == "1001002") {
						result += '12">12세 관람가'
					} else if (gradeCode == "1001003") {
						result += '15">15세 관람가'
					} else if (gradeCode == "1001004") {
						result += '18">청소년 관람불가'
					} else if (gradeCode == "1001005") {
						result += 'restricted">제한 상영가'
					} else {
						return "";
					}
					result += '</span>';
					return result;
				}
			};
			var HomeMovieReviewAccordion = jindo
					.$Class({
						$init : function(sClassName) {
							_self = this;
							this._wel = jindo.$Element("movieReview");
							this._welList = this._wel.query("ul.lst_con."
									+ sClassName);
							this._wel.delegate("mouseover", "._select_title",
									jindo.$Fn(this._onMouseOverItem, this)
											.bind());
							jindo.$A(
									jindo.$ElementList('._select_title_anchor')
											.$value()).forEach(
									function(element, index, array) {
										jindo
												.$Fn(_self._onMouseOverItem,
														_self).attach(element,
														"focus");
									});
						},
						_onMouseOverItem : function(we) {
							we.stopDefault();
							var nIndex = Number(jindo.$Element(we.element)
									.data('index'));
							this.openReview(nIndex);
						},
						openReview : function(nIndex) {
							var aEls = this._welList.queryAll("li ! li");
							// 해당하는 항목만 <li class="on">
							for (var i = 0; i < aEls.length; i++) {
								aEls[i].cssClass("on", nIndex == i);
							}
						},
						showRandomMovie : function() {
							var randNo = Math.floor(4 * Math.random());
							this.openReview(randNo);
						}
					});
			var oFirstHomeMovieReviewAccordion = new HomeMovieReviewAccordion(
					"first");
			jindo.$Fn(function() {
				oFirstHomeMovieReviewAccordion.showRandomMovie();
			}).attach(document, "domready");
			jindo.$Fn(function() {
				movieChart.init();
			}).attach(document, "domready");
			jindo.$Fn(function() {
				movieChart.load();
			}).attach(window, "load");
			jindo.$Fn(function(evt) {
				evt.stop();
				oFlicking.movePrev();
			}, this).attach(jindo.$("flick_prev"), "click");
			jindo.$Fn(function(evt) {
				evt.stop();
				oFlicking.moveNext();
			}, this).attach(jindo.$("flick_next"), "click");
			var nsc = "movie.home";
		</script>
	</div>
	<!-- //container -->
	<!-- footer -->
	<div id="footer">
		<div class="in_footer">
			<div class="foot_con">
				<ul>
					<li class="first"><a
						href="http://www.barcode.com/rules/service.html" target="rules">이용약관</a>
					<!-- N=a:fot.agreement --></li>
					<li><a href="http://www.barcode.com/rules/privacy.html"
						target="rules"><strong>개인정보처리방침</strong></a>
					<!-- N=a:fot.privacy --></li>
					<li><a href="http://www.barcode.com/rules/disclaimer.html"
						target="rules">책임의 한계와 법적고지</a>
					<!-- N=a:fot.disclaimer --></li>
					<li><a
						href="https://help.barcode.com/support/service/main.nhn?serviceNo=800"
						target="customer">영화 고객센터</a>
					<!-- N=a:fot.help --></li>
				</ul>
				<p class="info">본 콘텐츠의 저작권은 저작권자 또는 제공처에 있으며, 이를 무단 이용하는 경우 저작권법
					등에 따라 법적 책임을 질 수 있습니다.</p>
				<p class="info">
					사업자등록번호 : 220-81-62517<span>통신판매업 신고번호</span> : 경기성남 제 2006 - 692호<span>대표이사
						: 한성숙</span><span><a
						href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp">사업자등록정보
							확인</a>
					<!-- N=a:fot.bizinfo --></span><br> 주소 : 경기도 성남시 분당구 불정로 6 바코드 그린팩토리
					<span>대표전화 : 1588-3820</span>
				</p>
				<address>
					<a href="http://www.barcodecorp.com/" target="_blank" class="logo"><img
						src="../img/movie/logo_barcode.png" width="63" height="11"
						alt="barcode"></a>
					<!-- N=a:fot.nhn -->
					<em>Copyright ©</em> <a href="http://www.barcodecorp.com/"
						target="_blank">barcode Corp.</a>
					<!-- N=a:fot.corp -->
					<span>All Rights Reserved.</span>
				</address>
			</div>
		</div>
	</div>
	<script type="text/javascript">
if (false) {
	var alertType = "NONE";
	var koreanTitle = "신비한 동물사전";
	var movieCode = "115642";
	var userReserveCount = "1";
	var todayDatetime = "20171206093006";
	var endDatetimeAfterTwoDays = "20161120221200";
	
	
	if (movieCode > 0) {
		openWriteActualPointAlert (alertType, koreanTitle, movieCode, userReserveCount, todayDatetime, endDatetimeAfterTwoDays);
	}
}
function openWriteActualPointAlert (alertType, koreanTitle, movieCode, count, today, endDate) {
	if (alertType == "ONE") {
		setCookieLastUserReserveDate(today, endDate);
		if (confirm("관람하신 " + koreanTitle + "에\n평점 등록 시 바코드페이 포인트 500원 적립!\n지금 평점쓰기 메뉴로 이동하시겠습니까?")) {
			top.location.href = "http://movie.barcode.com/movie/bi/mi/point.nhn?code=" + movieCode;
		}
	} else if (alertType == "MORE") {
		setCookieLastUserReserveDate(today, endDate);
		if (confirm("관람하신 작품에 평점을 등록해주세요\n작품당 바코드페이 포인트 500원씩 적립!\n평점 미등록작 리스트를 확인하시겠습니까?")) {
			top.location.href = "http://ticket.movie.barcode.com/Order/OverdueList.aspx";
		}
	}
}
function setCookieLastUserReserveDate(today, endDate) {
	var cookieForNotOpenActualPointPopup = jindo.$Cookie();
	
	
	cookieForNotOpenActualPointPopup.remove("lastUserReserveDatetime");
	cookieForNotOpenActualPointPopup.remove("lastUserReserveCheckDatetime");
	
	cookieForNotOpenActualPointPopup.set("lastUserReserveDatetime", endDate, 9999, "movie.barcode.com");
	cookieForNotOpenActualPointPopup.set("lastUserReserveCheckDatetime", today, 9999, "movie.barcode.com");
}
</script>
	<!-- //footer -->
</div>
<script type="text/javascript">
jindo.$Fn(function (we) {
	// 상단 검색영역
	var oSearch = new nhn.movie.Search({
		area : "jSearchArea",
		autosearch : "http://auto.movie.barcode.com/ac?q_enc=UTF-8&st=1&r_lt=1&n_ext=1&t_koreng=1&r_format=json&r_enc=UTF-8&r_unicode=0&r_escape=1&q=",
		movelink : "/movie/bi/mi/basic.nhn?code=",
		peoplelink : "/movie/bi/pi/basic.nhn?code="
	});
    // 좌측 LNB
    var oLNB = new nhn.movie.LNB();
	if( typeof oViewMode != "undefined") {
		oViewMode.attach('change', jindo.$Fn(oLNB.update, oLNB).bind());
	}
    //영화검색 결과에서 포커스 아웃될 경우, 검색 결과를 지우도록 변경.
    jindo.$Element("lnb_gobarcode").attach("focus",function(e){
    	
    	jindo.$Element('search_placeholder').attr({
    		"style" : "display: inline;"
    	})
    	jindo.$Element('ipt_tx_srch').$value().value="";
    	if(jindo.$Element("jAutoComplate") != null){
    		jindo.$Element("jAutoComplate").hide();
    	}
    });
    // LCS
	try{ lcs_do(); } catch(e){}
}).attach(document, 'domready');
</script>
<script type="text/javascript">
	//nClick 초기화 영역
	//클릭로그 집계 코드 추가
	var ccsrv="cc.barcode.com";
	var nclk_evt = 1;
	
	nclk_do();
	//nClick 초기화 영역 끝
</script>
</body>
</html>