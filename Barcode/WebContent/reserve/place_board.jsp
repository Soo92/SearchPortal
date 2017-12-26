<%@page import="place.PlaceBoardBean"%>
<%@page import="place.PlaceBean"%>
<%@page import="java.util.Vector"%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<jsp:useBean id="pbean" class="place.PlaceBoardBean"/>
<jsp:useBean id="pmgr" class="place.PlaceMgr"/>
<%
		request.setCharacterEncoding("utf-8");
		String id = (String)session.getAttribute("idKey");	
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
		String boardnum = request.getParameter("placenum");
		
		String idx = request.getParameter("index");
		Vector<PlaceBoardBean> vlist = pmgr.getPlaceBoardList(idx);
		pbean = pmgr.getPlaceBoard(idx);
		String title = pbean.getTitle();
		String writer = pbean.getWriter();
		String enddate = pbean.getEnddate();
		String regdate = pbean.getRegdate();
		String content = pbean.getContent();
		String mainpic = pbean.getMainpic();
		String place = pbean.getPlace();
%>
<!DOCTYPE html>
<!-- saved from url=(0116)https://m.blog.naver.com/PostView.nhn?blogId=ssagaji629&logNo=221155564632&proxyReferer=https%3A%2F%2Fm.naver.com%2F -->
<html lang="ko"
	data-useragent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36">
<head prefix="og: http://ogp.me/ns# article: http://ogp.me/ns/article#">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
</script>
<link rel="stylesheet" type="text/css"
	href="./place_board_files/lego_w-172107688_https.css" charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="./place_board_files/se_viewer_blog_mobile.css">
<title><%=title %></title>
</head>
<body id="body" class="tablet_end" style="">
	<div class="u_skip">
		<a
			href="https://m.blog.naver.com/PostView.nhn?blogId=ssagaji629&amp;logNo=221155564632&amp;proxyReferer=https%3A%2F%2Fm.naver.com%2F#ct">본문
			바로가기</a>
	</div>
	<div class="Ngnb gnb_bg_white" style="will-change: contents;">
		<div class="Ngnb_service logo_blog_green">
			<h2 class="gnb_title">
				<div class="center">
					<span class="td"> <a
						href="https://m.blog.naver.com/PostView.nhn?blogId=ssagaji629&amp;logNo=221155564632&amp;proxyReferer=https%3A%2F%2Fm.naver.com%2F#"
						id="_categoryName" class="_cur_category _returnFalse"
						onclick="nclk(this, &#39;pgn.blogname&#39;, &#39;&#39;, &#39;&#39;);">
							<span class="sp ico">카테고리 이동</span>
					</a>
					</span> <span class="td"> <a
						href="https://m.blog.naver.com/PostList.nhn?blogId=ssagaji629"
						onclick="nclk(this, &#39;pgn.eachhome&#39;, &#39;&#39;, &#39;&#39;);">
							<span class="ell"><%=writer %>의 글</span>
					</a>
					</span>
				</div>
			</h2>
		</div>
	</div>
	<div id="_post_area" class="ct_wrap">
		<div id="ct" class="end" role="main" style="overflow: hidden;">
			<div class="_postView">
				<div class="post_ct   se3_view " id="viewTypeSelector">
					<div id="SEDOC-1512435852797-79644447"
						class="se_doc_viewer se_body_wrap se_theme_transparent se_m"
						data-docversion="">
						<div class="se_component_wrap">
							<div
								class="se_component se_documentTitle documentTitle_blog  is-fill">
								<div class="se_sectionArea is-fill se_align-left">
									<!-- -->
									<div class="se_category">
										<a
											href="https://m.blog.naver.com/PostList.nhn?blogId=ssagaji629&amp;categoryNo=21&amp;logCode=0&amp;categoryName=%EC%88%98%EC%97%85+%EA%B3%B5%EC%A7%80"
											onclick="nclk(this, &#39;pst.board&#39;, &#39;&#39;, &#39;&#39;);">수업
											공지</a>
									</div>
									<!-- -->
									<!-- SE_DOC_HEADER_TITLE_TOP-->
									<div id="SEDOC-1512435852797-79644447_se_doc_title_top"
										class="se_doc_title_top"></div>
									<div class="se_editArea">
										<div class="se_viewArea se_ff_nanumgothic se_fs_D3">
											<div class="se_editView se_title">
												<div class="se_textView">
													<h3 class="se_textarea">
														<!-- -->
														<span class="pcol3"> <%=title %></span>
														<!-- -->
													</h3>
												</div>
											</div>
										</div>
									</div>
									<!-- SE_DOC_HEADER_TITLE_MIDDLE-->
									<!-- SE_DOC_HEADER_CONTENTS_START -->
									<!-- -->
									<div class="se_authorArea">
										<a
											href="https://m.blog.naver.com/PostList.nhn?blogId=ssagaji629"
											class="se_thumbnail"
											onclick="nclk(this, &#39;pst.writer&#39;, &#39;&#39;, &#39;&#39;);">
											<span class="img"><img src="./place_board_files/1500271546767.jpg" width="35"
												height="35" alt="프로필"></span>
										</a>
										<div class="se_author">
											<a href="" onclick="nclk(this, &#39;pst.writer&#39;, &#39;&#39;, &#39;&#39;);"><strong
												class="ell"><%=writer%></strong></a>
										</div>
										<p class="se_date"><%=regdate%></p>
									</div>
									<!-- //본문 기타 기능 -->
									<!-- -->
									<!-- SE_DOC_HEADER_CONTENTS_END -->
									<!-- SE_DOC_HEADER_TITLE_BOTTOM-->
									<div id="SEDOC-1512435852797-79644447_se_doc_title_bottom"
										class="se_doc_title_bottom"></div>
								</div>
							</div>
						</div>
						<!-- {{{$SE3-CONTENTS_HEADER}}} -->
						<!-- SE_DOC_HEADER_END -->
						<div class="se_doc_header_end"
							id="SEDOC-1512435852797-79644447_se_doc_header_end"></div>
						<div class="se_doc_contents_start"
							id="SEDOC-1512435852797-79644447_se_doc_contents_start"></div>
						<!-- SE_DOC_CONTENTS_START -->
						<%=content %>
						<!-- SE_DOC_CONTENTS_END -->
						<div class="__se_doc_title_end" id="se_doc_contents_end"></div>
						<div id="SEDOC-1512435852797-79644447_se_doc_footer"
							class="se_doc_footer"></div>
					</div>
				</div>
				<div class="section_t1">
					<div class="section_w">
						<div class="btn_r">
							<a
								href="https://m.blog.naver.com/CommentList.nhn?blogId=ssagaji629&amp;logNo=221155564632"
								class="btn_reply"
								onclick="nclk(this, &#39;pst.re&#39;, &#39;&#39;, &#39;&#39;);">
								<span class="sp ico">댓글</span> <em>8</em>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="social_plugin_property" style="display: none">{"title":"<%=title %>","source":"http://blog.naver.com/ssagaji629/221155564632","blogName":"<%=writer %>님..","blogId":"ssagaji629","logNo":221155564632,"smartEditorVersion":3,"outsideDisplay":false,"cafeDisplay":true,"blogDisplay":true,"meDisplay":true,"lineDisplay":true}</div>
			<div class="btn_top">
				<a
					href="https://m.blog.naver.com/PostView.nhn?blogId=ssagaji629&amp;logNo=221155564632&amp;proxyReferer=https%3A%2F%2Fm.naver.com%2F#"
					onclick="nclk(this, &#39;pst.top&#39;, &#39;&#39;, &#39;&#39;);"><span
					class="sp"></span> 맨위로</a>
			</div>
			<div id="POST_VIEW_BOTTOM_WEB" class="btm_banner"></div>
		</div>
		<div id="_loading2" class="rego_loading loading_end"
			style="display: none">
			<div class="align">
				<span class="dot"></span><span class="dot"></span><span class="dot"></span>
			</div>
		</div>
		<div id="_div_categorylist" class="lyr_category_lst1"
			style="display: none;">
			<div class="head">
				<a
					href="https://m.blog.naver.com/PostView.nhn?blogId=ssagaji629&amp;logNo=221155564632&amp;proxyReferer=https%3A%2F%2Fm.naver.com%2F#"
					class="btn_close _closeCategoryList"><span class="sp">닫기</span></a>
				<div class="table">
					<div class="td">
						<h2 class="title" style="margin-left: 50px;">
							<span class="ell">카테고리</span>
						</h2>
					</div>
					<div class="td btn_area">
						<a href="https://m.blog.naver.com/ssagaji629" class="btn_bloghome"><span
							class="sp"></span> 이 블로그 홈</a>
					</div>
				</div>
			</div>
			<ul id="_ul_categorylist" class="lst_t4"></ul>
		</div>
	</div>
	<div class="lst_t17 tablet_aside _relatedCategoryPostListArea" style="">
		<div class="post_writer_area">
			<a href="https://m.blog.naver.com/PostList.nhn?blogId=ssagaji629"
				class="link"
				onclick="nclk(this, &#39;psp.writer&#39;, &#39;&#39;, &#39;&#39;);">
				<span class="thumb_area"> <span class="thumb"> 
					<span class="img"><img src="./place_board_files/1500271546767.jpg" width="48" height="48" alt="<%=writer%>"></span>
				</span>
			</span> <span class="txt_area"><strong class="writer ell"><%=writer%></strong></span>
			</a>
		</div>
		<h2 class="tit_h2">
			<a href="" class="link sp_after">
				<span class="td">이 글&nbsp;</span> <span class="td tit">
				<strong class="ell"><%=writer %></strong></span> <span class="td">의 다른 글</span>
			</a>
		</h2>
		<div class="lst_w">
			<div class="_flickingContainer _flicking_tablet"
				id="_flickingContainer_tablet"
				style="overflow: hidden; touch-action: pan-y pinch-zoom; height: 364px;">
				<div class="_flickingScroll _flicking_tablet"
					id="_flickingScroll_tablet"
					style="transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px); width: 255px; height: 364px;">
					<ul class="_category_post_list"
						id="_relatedCategoryPostListFlickingPage_0_tablet"
						style="width: 255px; float: left;">
		<%Vector<PlaceBoardBean> pwlist = pmgr.getPlaceWriterList(pmgr.getPlaceBoard(idx).getWriter());
		for(int i=0; i<pwlist.size();i++){ %>
						<li>
							<div class="lst_detail_t17 <%if(pwlist.get(i).getIdx().equals(idx)){%>visited<%}%>">
								<a href="<%=request.getRequestURI()%>?index=<%=pwlist.get(i).getIdx() %>" class="link">
									<div class="txt_area">
										<div class="txt_align">
											<div class="tit ell"><%=pwlist.get(i).getTitle()%></div>
											<div class="meta_data">
												<span class="td"> <span class="ell"><%=pwlist.get(i).getRegdate() %></span>
												</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</li>
		<%} %>	
					</ul>
				</div>
			</div>
			<div class="paginate _categoryPostListPagingBtnArea"
				style="display: none;">
				<span class="btn_prev" style=""><i class="sp_before">이전</i></span> <a
					href=""
					class="btn_prev _category_post_list_btn _returnFalse"
					onclick="nclk(this, &#39;pst.prev&#39;, &#39;&#39;, &#39;&#39;);"
					style="display: none;"><i class="sp_before">이전</i></a> <a
					href=""
					class="btn_next _category_post_list_btn _returnFalse"
					onclick="nclk(this, &#39;pst.next&#39;, &#39;&#39;, &#39;&#39;);"
					style="display: none;"><i class="sp_before">다음</i></a> <span
					class="btn_next" style=""><i class="sp_before">다음</i></span>
			</div>
		</div>
	</div>
	<!-- 플로팅 메뉴 -->
	<div class="floating_menu" style="">
		<div class="btn_area">
			<div class="btn_r">
				<a
					href="https://m.blog.naver.com/CommentList.nhn?blogId=ssagaji629&amp;logNo=221155564632"
					class="btn_reply"
					onclick="nclk(this, &#39;flo.reply&#39;, &#39;&#39;, &#39;&#39;);">
					<span class="sp ico">댓글</span> <em>8</em>
				</a>
			</div>
		</div>
	</div>
</body>
</html>