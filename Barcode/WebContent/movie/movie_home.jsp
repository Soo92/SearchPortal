<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="mgr" class="member.MemberMgr"/>
<%
		request.setCharacterEncoding("euc-kr");
		String id = (String)session.getAttribute("idKey");	
		String email = mgr.getMember(id).getEmail();
		String name = mgr.getMember(id).getName();
		String name1 = mgr.getMember(id).getAddress();
		String name2 = mgr.getMember(id).getGender();
		String name3 = mgr.getMember(id).getPass();
%>
<!doctype>
<!-- saved from url=(0047)http://localhost/Barcode1/movie/movie_home.html -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<meta property="og:title" content="네이버">
<meta property="og:description" content="영화에 대한 모든 것">
<meta property="og:image" content="http://static.naver.net/m/movie/icons/OG_270_270.png">
<meta property="og:type" content="article">
<meta property="og:url" content="http://movie.naver.com"> 
<title>바코드 영화</title>
<link rel="shortcut icon" href="http://static.naver.net/m/movie/icons/naver_movie_favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./moviehomefiles/movie.all.css">
<script type="text/javascript" src="../js/movie.home.js"></script>
<style id="gnb_style" type="text/css">@charset "UTF-8";
/* NTS UIT Development Office YJH 140717 */
a.gnb_my, .gnb_icon, #gnb .gnb_my_interface, #gnb .gnb_ico_num .gnb_ico_new, #gnb .gnb_ico_num .gnb_ico_new .gnb_count, .gnb_lst .ico_arrow, a.gnb_my .filter_mask, .gnb_my_lyr, .gnb_my_li .gnb_my_content .gnb_mask, .gnb_my_li .gnb_my_content .gnb_change, .gnb_my_li .gnb_my_content .gnb_edit_lst li, .gnb_my_li .gnb_my_content .gnb_pay_check em, #gnb .gnb_my_li .gnb_my_community a.gnb_pay span, .gnb_notice_li .gnb_notice_lyr, .gnb_notice_li .svc_list .gnb_ico_mail, .gnb_notice_li .svc_list .gnb_btn_remove span, .gnb_notice_li .svc_list .gnb_btn_remove i, .gnb_notice_li .gnb_error .gnb_ico_error, .gnb_ly_alert .gnb_btn_close i, .gnb_first_visit, .gnb_search_box, .gnb_search_box .gnb_del_txt, .gnb_svc_more .gnb_svc_lstwrp li.gnb_event em.ic_gnb_new, .gnb_svc_more .svc_btnwrp button {background: url(http://static.naver.net/common/gnb/one/sp_gnb_v14.png) no-repeat -999px -999px;}
.gnb_favorite_area, .gnb_search_area, .gnb_banner, .gnb_linkwrp{background:url(http://static.naver.net/common/gnb/2014/bg_svclyr2_v2.png) no-repeat -999px -999px}
#gnb .gnb_my_li .gnb_my_community a, .gnb_notice_li .gnb_notice_all, a.gnb_service_all, .gnb_svc_more .svc_btns{display:block;height:38px;border-top:1px solid #ebebeb;background-color:#f8f8f8;text-align:center;font-weight:bold;text-decoration:none;letter-spacing:-1px;line-height:38px}
#gnb .gnb_my_li .gnb_my_community a:visited, .gnb_notice_li .gnb_notice_all:visited, a.gnb_service_all:visited, .gnb_svc_more .svc_btns:visited{color:#444}
.gnb_login_li, .gnb_my_li, .gnb_notice_li, .mail_li, .gnb_service_li{float:left;margin-right:2px;overflow:visible}
.gnb_login_li a, .gnb_my_li a, .gnb_notice_li a, .mail_li a, .gnb_service_li a{position:relative;z-index:100}
a.gnb_my, .gnb_icon{position:relative}
#gnb{position:relative;z-index:2147483646;font-family:'나눔고딕',NanumGothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,Sans-serif !important;color:#444;font-size:12px;letter-spacing:0 !important;line-height:normal !important;text-align:left !important}
#gnb div, #gnb p, #gnb span, #gnb em, #gnb strong, #gnb h1, #gnb h2, #gnb h3, #gnb h4, #gnb h5, #gnb h6, #gnb ul, #gnb ol, #gnb li, #gnb dl, #gnb dt, #gnb dd, #gnb table, #gnb th, #gnb td, #gnb form, #gnb fieldset, #gnb legend, #gnb input, #gnb textarea, #gnb button, #gnb label{font-family:'나눔고딕',NanumGothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,Sans-serif !important}
#gnb a, #gnb label, #gnb button{cursor:pointer}
#gnb a, #gnb a:visited, #gnb a:active, #gnb a:focus{color:#444}
#gnb a:hover{color:#444;text-decoration:underline}
#gnb input::-ms-clear{display:none}
#gnb em{font-style:normal}
#gnb ul{list-style:none}
#gnb .blind{display:block;overflow:hidden;position:absolute;top:-1000em;left:0;width:1px;height:1px;margin:0;padding:0;font-size:0;line-height:0}
#gnb .gnb_my_interface{padding:5px;position:absolute;top:12px;right:8px;display:block;width:17px;height:16px;background-position:-90px 5px}
#gnb .gnb_my_interface:hover{background-position:-90px -20px}
#gnb .gnb_pad_lyr{position:absolute}
#gnb .gnb_ico_num{display:block;position:absolute;top:1px;width:40px;text-align:center}
#gnb .gnb_ico_num .gnb_ico_new{height:15px;display:inline-block;background-position:-331px 0;zoom:1}
#gnb .gnb_ico_num .gnb_ico_new .gnb_count{position:relative;top:0;right:-5px;height:15px;margin:0;padding:0 4px 0 1px;display:inline-block;*display:inline;vertical-align:top;background-position:100% 0;text-indent:-2px;font-family:tahoma !important;font-weight:bold;color:#fff;zoom:1}
#gnb .gnb_ico_num .gnb_ico_new .plus{margin:1px -1px 0 2px;font-size:8px;display:inline-block;color:#fff;vertical-align:top}
:root #gnb .gnb_pad_lyr{opacity:1 !important;background:#fff}
.gnb_lst{margin:0;padding:0;zoom:1}
.gnb_lst:after{display:block;clear:both;content:''}
.gnb_lst ul{margin:0;padding:0}
.gnb_lst .ico_arrow{display:none;position:absolute;left:50%;top:27px;width:10px;height:8px;margin-left:-5px;background-position:-175px -10px}
.gnb_lyr_opened .gnb_my_lyr, .gnb_lyr_opened .gnb_service_lyr, .gnb_lyr_opened .gnb_notice_lyr, .gnb_lyr_opened .ico_arrow{display:block !important}
.gnb_login_li{height:23px;padding:5px 7px 0 0}
.gnb_btn_login, .gnb_bg, .gnb_bdr{display:inline-block;width:46px;height:20px;font-size:12px}
.gnb_btn_login{position:relative}
.gnb_bg {background-color: #fff;opacity: 0.05;	filter: alpha(opacity=5);}
.gnb_bdr {position: absolute;top: -1px;left: -1px;width: 46px;height: 20px;border: 1px solid #000;opacity: 0.12;filter: alpha(opacity=12);}
.gnb_txt{position:absolute;top:0;left:0;width:45px;height:20px;padding-left:1px;line-height:21px;color:#777;text-align:center}
.gnb_btn_login:hover{text-decoration:none !important}
.gnb_account .gnb_btn_login{width:54px;margin:-1px 0 0 4px;vertical-align:top}
.gnb_account .gnb_bdr{width:52px}
.gnb_account .gnb_txt{width:53px}
.gnb_my_li{margin-right:7px}
.gnb_my_namebox{padding:2px 9px 0 0;background-repeat:no-repeat;background-position:100% 50%;zoom:1}
.gnb_my_namebox:after{display:block;clear:both;content:''}
a.gnb_my{float:left;display:block;font-size:0;vertical-align:middle}
a.gnb_my .filter_mask {position: absolute; top: -1px; left: -1px; z-index: 1; width: 28px; height: 28px; background-position: -260px -60px;}
a.gnb_my img{vertical-align:top;border-radius:16px}
a.gnb_my .gnb_name{margin-right:-1px;padding-left:5px;display:inline-block;height:28px;line-height:28px;vertical-align:top;font-size:11px;color:#444}
a.gnb_my:visited{color:#444}
a.gnb_my:hover, a.gnb_my:active, a.gnb_my:visited, a.gnb_my:focus{text-decoration:none !important}
a.gnb_my:hover .gnb_name{text-decoration:underline}
a.gnb_my .ico_arrow{top:25px;margin-left:8px}
.gnb_my_namebox a.gnb_emp{float:left;display:inline-block;height:28px;margin-left:3px;line-height:28px;font-size:11px;color:#777 !important}
.gnb_my_lyr{display:none;position:absolute;top:26px;right:-8px;padding:9px 5px 4px 4px;width:316px;height:120px;background-position:-2px -1310px;z-index:10}
.gnb_my_lyr.gnb_groupid{height:144px;background-position:-2px -1500px}
.gnb_my_lyr.gnb_groupid .gnb_my_content{height:80px}
.gnb_my_lyr.gnb_groupid.gnb_longid1{height:144px;background-position:-2px -1664px}
.gnb_my_lyr.gnb_groupid.gnb_longid2{height:144px;background-position:-2px -1828px}
.gnb_my_lyr.gnb_longid1{width:318px;background-position:-2px -1118px}
.gnb_my_lyr.gnb_longid2{width:348px;background-position:-2px -926px}
.gnb_my_li .gnb_my_content{zoom:1;height:108px;padding:15px 0 10px 15px}
.gnb_my_li .gnb_my_content:after{display:block;clear:both;content:''}
.gnb_my_li .gnb_my_content .gnb_img_area{float:left;position:relative;display:block;width:80px}
.gnb_my_li .gnb_my_content .gnb_img_area img{vertical-align:top}
.gnb_my_li .gnb_my_content .gnb_mask{position:absolute;top:0;left:0;display:block;width:80px;height:80px;background-position:-70px -60px}
.gnb_my_li .gnb_my_content .gnb_change{position:absolute;bottom:-2px;left:-2px;display:block;width:28px;height:28px;background-position:-140px 0px}
.gnb_my_li .gnb_my_content .gnb_change:hover{background-position:-140px -30px}
.gnb_my_li .gnb_my_content .gnb_txt_area{float:left;width:212px;margin:5px 0 0 9px}
.gnb_longid1 .gnb_my_content .gnb_txt_area{width:210px}
.gnb_longid2 .gnb_my_content .gnb_txt_area{width:235px}
.gnb_my_li .gnb_my_content .gnb_account{margin-bottom:3px;font-size:0}
.gnb_my_li .gnb_my_content .gnb_name{color:#777;font-size:14px}
.gnb_my_li .gnb_my_content .gnb_name a{display:inline-block;vertical-align:top;font-weight:bold;color:#444}
.gnb_my_li .gnb_my_content a.gnb_mail_address{font-family:tahoma;color:#777 !important;font-size:14px}
.gnb_my_li .gnb_my_content .gnb_edit_lst{zoom:1;margin-top:9px !important}
.gnb_my_li .gnb_my_content .gnb_edit_lst:after{display:block;clear:both;content:''}
.gnb_my_li .gnb_my_content .gnb_edit_lst li{float:left;padding-left:8px;margin-left:8px;background-position:-290px -25px}
.gnb_my_li .gnb_my_content .gnb_edit_lst li.gnb_info{padding-left:0;margin-left:0;background:none}
.gnb_my_li .gnb_my_content .gnb_edit_lst a{color:#019a30 !important;text-decoration:underline;letter-spacing:-1px}
.gnb_my_li .gnb_my_content .gnb_pay_check{height:16px;margin:16px -4px 0 0 !important}
@media screen and (min-width: 0\0) { .gnb_my_li .gnb_my_content .gnb_pay_check{margin-top:17px} }
.gnb_my_li .gnb_my_content .gnb_pay_check em{display:inline-block;width:16px;height:16px;background-position:-300px -309px;margin:0 4px 0 0;overflow:hidden;font-size:0;line-height:0;vertical-align:top}
.gnb_my_li .gnb_my_content .gnb_pay_check a{font-size:14px;letter-spacing:-1px;line-height:16px;vertical-align:top}
.gnb_my_li .gnb_my_content .gnb_pay_check span{padding-right:5px}
.gnb_my_li .gnb_my_content .gnb_pay_check strong{font-family:tahoma;letter-spacing:0;word-spacing:-30px}
.gnb_my_li .gnb_my_content .gnb_pay_check a, .gnb_my_li .gnb_my_content .gnb_pay_check span, .gnb_my_li .gnb_my_content .gnb_pay_check strong{font-size:14px;color:#019a30 !important}
#gnb .gnb_my_li .gnb_my_community{clear:both;zoom:1}
#gnb .gnb_my_li .gnb_my_community:after{display:block;clear:both;content:''}
#gnb .gnb_my_li .gnb_my_community a{float:left;width:106px;margin-right: 0;border-right:1px solid #ebebeb}
#gnb .gnb_my_li .gnb_my_community a.gnb_pay{width:102px;border-right:0;line-height:0}
#gnb .gnb_my_li .gnb_my_community a.gnb_pay span{display:inline-block;width:41px;height:16px;background-position:-300px -334px;margin:11px auto 0;font-size:0;line-height:0}
#gnb .gnb_my_li .gnb_my_community a:active, #gnb .gnb_my_li .gnb_my_community a:focus, #gnb .gnb_my_li .gnb_my_community a:visited{text-decoration:none !important}
#gnb .gnb_my_li .gnb_my_community a:hover{text-decoration:underline !important}
#gnb .gnb_my_lyr.gnb_longid1 .gnb_my_community a{width:105px}
#gnb .gnb_my_lyr.gnb_longid1 .gnb_my_community a.gnb_pay{width:106px}
#gnb .gnb_my_lyr.gnb_longid2 .gnb_my_community a{width:115px}
#gnb .gnb_my_lyr.gnb_longid2 .gnb_my_community a.gnb_pay{width:116px}
#gnb.gnb_one .gnb_my_community a, #gnb.gnb_one_small .gnb_my_community a{margin-right: 0 !important;}
.gnb_notice_li a.gnb_notice{display:block;width:15px;height:17px;padding:7px 9px 4px;text-decoration:none !important}
.gnb_notice_li a.gnb_notice .gnb_ico_num{left:1px;top:0}
.gnb_notice_li a.gnb_notice .gnb_icon{display:block;width:15px;height:17px;background-position:-3px -60px}
.gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-38px -60px;text-decoration:none !important}
.gnb_notice_li .gnb_notice_lyr{display:none;position:absolute;top:26px;right:-7px;width:297px;height:330px;padding:9px 4px 4px;background-position:-2px -584px;z-index:10;overflow:hidden}
.gnb_notice_li .svc_scroll{height:291px;overflow:scroll;overflow-x:hidden;position:relative;zoom:1}
.gnb_notice_li .svc_panel{width:100%;height:330px;overflow:hidden}
.gnb_notice_li .svc_head{position:relative;height:36px;padding-left:15px;line-height:20px;border-bottom:1px solid #eaeaea;zoom:1}
.gnb_notice_li .svc_head .gnb_tit{color:#6b6d70;margin-right:1px;line-height:36px}
.gnb_notice_li .svc_head .task_right{position:absolute;right:8px;top:8px;font-size:0}
.gnb_notice_li .svc_head .task_right button{height:20px;padding:0 6px;margin-left:4px;border:1px solid #ddd;color:#888;background-color:#fff;font-family:'나눔고딕', NanumGothic;font-size:12px;letter-spacing:-1px;line-height:18px;*line-height:16px;overflow:visible}
.gnb_notice_li .svc_list .gnb_btn_remove i, .gnb_notice_li .svc_list .gnb_btn_remove span, .gnb_notice_li .svc_noti .gnb_ico_mail, .gnb_notice_li .svc_blank .svc_msg_box, .gnb_notice_li .svc_blank .gnb_v_guide{display:inline-block;*display:inline;*zoom:1}
.gnb_notice_li .svc_list{margin-top:-1px}
.gnb_notice_li .svc_list li{position:relative;padding:7px 34px 7px 15px;border-top:1px solid #eaeaea;line-height:18px}
.gnb_notice_li .svc_list .gnb_new{background:#ffffd8}
.gnb_notice_li .svc_list .gnb_unread .gnb_subject{color:#444}
.gnb_notice_li .svc_list .gnb_unread .d_cnt{color:#ff630e}
.gnb_notice_li .svc_list .gnb_unread a:hover .gnb_subject, .gnb_notice_li .svc_list .gnb_unread .gnb_unread a:hover .d_cnt{color:#390}
.gnb_notice_li .svc_list .gnb_unread .svc_name{color:#444}
.gnb_notice_li .svc_list a.gnb_list_cover{text-decoration:none !important;display:block;position:relative;zoom:1}
.gnb_notice_li .svc_list a:hover .gnb_subject{text-decoration:underline}
.gnb_notice_li .svc_list .gnb_subject{overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:100%;color:#adadad}
.gnb_notice_li .svc_list .d_cnt{font-family:tahoma;font-size:10px}
.gnb_notice_li .svc_list .gnb_info{color:#adadad}
.gnb_notice_li .svc_list .svc_name{margin-right:3px;color:#adadad}
.gnb_notice_li .svc_list .cchr{margin-right:3px}
.gnb_notice_li .svc_list .dona{position:absolute;top:8px;right:34px;text-decoration:underline}
.gnb_notice_li .svc_list .dona a{color:#adadad}
.gnb_notice_li .svc_list .dona a:hover{color:#390}
.gnb_notice_li .svc_list .gnb_ico_mail{width:14px;height:15px;font-size:0;line-height:0;color:#fff;vertical-align:top}
.gnb_notice_li .svc_list .gnb_ico_mail.gnb_yes{background-position:-245px -17px}
.gnb_notice_li .svc_list .gnb_ico_mail.gnb_no{background-position:-245px 4px}
.gnb_notice_li .svc_list .gnb_btn_remove{position:absolute;right:4px;top:50%;z-index:100;margin-top:-13px;padding:10px;line-height:6px;font-size:0;background:none !important;border:0 !important}
.gnb_notice_li .svc_list .gnb_btn_remove span, .gnb_notice_li .svc_list .gnb_btn_remove i{display:block !important;width:7px;height:7px;font-size:0;line-height:0;color:transparent;white-space:nowrap;overflow:hidden;vertical-align:top;background-position:-175px 0}
.gnb_notice_li .svc_blank{position:absolute;top:104px;left:0;width:100%;white-space:nowrap;height:100px;font-size:0;text-align:center}
.gnb_notice_li .svc_blank .svc_msg_box{white-space:normal;font-size:12px;width:100%}
.gnb_notice_li .svc_blank .gnb_tit{display:block;color:#2f3743;font-size:14px;margin:0 0 15px}
.gnb_notice_li .svc_blank .gnb_tit strong{font-weight:normal;color:#390}
.gnb_notice_li .svc_blank .gnb_desc{line-height:19px;color:#2f3743;margin-bottom:7px}
.gnb_notice_li .svc_blank .gnb_desc a, .gnb_notice_li .svc_blank .gnb_link{color:#390;text-decoration:underline}
.gnb_notice_li .svc_blank .gnb_v_guide{vertical-align:middle;height:100%;width:0}
.gnb_notice_li .svc_blank .gnb_link_wrap{text-align:center}
.gnb_notice_li .svc_blank .gnb_link_wrap .gnb_link{display:block;width:40px;margin:0 auto !important;text-align:center}
.gnb_notice_li .svc_loading{background:url(http://img.naver.net/static/www/2014/loading.gif) no-repeat #fff center center;position:absolute;top:33px;left:0;width:100%;height:245px}
.gnb_notice_li .gnb_error{position:absolute;top:81px;left:2px;width:100%;color:#444;text-align:center}
.gnb_notice_li .gnb_error .gnb_ico_error{display:inline-block;width:57px;height:57px;background-position:-280px -190px}
.gnb_notice_li .gnb_error .gnb_tit{font-size:14px;margin:15px 0 11px}
.gnb_notice_li .gnb_error .gnb_desc{margin-bottom:13px;line-height:18px}
.gnb_notice_li .gnb_error .gnb_link{text-decoration:underline}
.gnb_ly_alert{position:absolute;top:110px;left:13px;background-color:#fff;border:1px solid #b7b9bc;width:260px;padding:34px 0 20px;zoom:1;z-index:100}
.gnb_ly_alert .gnb_msg{text-align:center;line-height:17px;margin-bottom:14px;color:#2f3743}
.gnb_.ly_alert .gnb_btn_close{position:absolute;right:2px;top:0;*overflow:visible}
.gnb_ly_alert .gnb_btns{text-align:center}
.gnb_ly_alert .gnb_btns button{height:27px;line-height:27px;*line-height:22px;font-weight:bold;font-size:12px;padding:0 8px;color:#2f3743;border:1px solid #ddd;background-color:white}
.gnb_ly_alert .gnb_btns button:first-child{margin-right:4px}
.gnb_ly_alert .gnb_btn_close{position:absolute;right:2px;top:0;width:35px;border:0;background:none;cursor:pointer;border-radius:0;padding:10px}
.gnb_ly_alert .gnb_btn_close i{display:block;width:15px;height:15px;font:0/0 a;color:transparent;white-space:nowrap;overflow:hidden;vertical-align:top;background-position:-240px -60px}
.mail_li a.gnb_mail{display:block;width:20px;height:15px;padding:7px 9px 6px;text-decoration:none !important}
.mail_li a.gnb_mail .gnb_icon{display:block;width:20px;height:15px;background-position:0px -95px}
.mail_li a.gnb_mail:hover .gnb_icon{background-position:-35px -95px;text-decoration:none !important}
.mail_li .gnb_ico_num{left:6px;top:0}
.gnb_service_li{margin-right:0}
.gnb_service_li a.gnb_service{display:block;width:16px;height:16px;padding:7px 9px 5px}
.gnb_service_li a.gnb_service .gnb_icon{display:block;width:16px;height:16px;background-position:-2px -130px}
.gnb_service_li a.gnb_service:hover .gnb_icon{background-position:-37px -130px;text-decoration:none !important}
.gnb_service_li .gnb_service_lyr{display:none;position:absolute;top:27px;right:-7px;z-index:10}
.gnb_favorite_search{width:301px;letter-spacing:-1px}
.gnb_response .gnb_favorite_search{display:none}
.gnb_favorite_area{height:93px;padding:8px 4px 0;background-position:0 0}
.gnb_favorite_lstwrp{position:relative;padding:22px 1px 15px 15px;border-bottom:1px solid #ebebeb}
.gnb_favorite_lstwrp .gnb_my_interface{top:3px !important;right:3px !important}
.gnb_first_visit{position:absolute;top:0;left:0;width:293px;height:92px;background-position:0 -310px;z-index:200}
.gnb_first_visit .gnb_close{position:absolute;top:0;right:0;display:block;width:32px;height:32px}
.gnb_favorite_lst{zoom:1}
.gnb_favorite_lst:after{display:block;clear:both;content:''}
.gnb_favorite_lst li{float:left;width:65px;text-align:center;white-space:nowrap}
.gnb_favorite_lst a{display:inline-block;text-align:center;font-weight:bold}
.gnb_favorite_lst .gnb_add a{display:block;test-align:center;}
.gnb_favorite_lst .gnb_add a span.ic_add{display:block;width:36px;height:36px;margin:0 auto 4px;background-image: url(http://static.naver.net/common/gnb/one/sp_gnb_4b16e6.png);background-position: 0px 0px;background-repeat: no-repeat;width: 36px;height: 36px;vertical-align: top;}
.gnb_favorite_lst .gnb_add a:hover span.ic_add{background-image: url(http://static.naver.net/common/gnb/one/sp_gnb_4b16e6.png);background-position: -42px 0px;background-repeat: no-repeat;width: 36px;height: 36px;vertical-align: top;}
.gnb_favorite_lst img{display:block;margin:0 auto 4px;vertical-align:top}
.gnb_search_area{position:relative;z-index:200;padding:18px 4px 17px;background-position:-301px 0;background-repeat:repeat-y}
.gnb_search_box{position:relative;z-index:101;margin:0 12px 16px 0;padding-left:10px;display:block;width:270px;height:35px;background-position:10px -190px}
.gnb_search_box.over{background-position:10px -230px}
.gnb_search_box.fcs{background-position:10px -270px}
.gnb_search_box.fcs input{width:200px;font-size:16px;font-weight:bold;color:#444;outline:0}
.gnb_search_box input{float:left;display:block;width:210px;height:22px;margin-top:6px;padding-left:10px;font-family:'나눔고딕',NamumGothic;letter-spacing:-1px;color:#adadad;font-size:13px;border:0;line-height:22px;background:transparent}
.gnb_search_box .gnb_del_txt{position:absolute;top:8px;right:32px;display:block;width:17px;height:17px;background-position:-190px 0px}
.gnb_search_box .gnb_del_txt:hover{background-position:-190px -20px}
.gnb_search_box .gnb_pop_input{position:absolute;top:34px;left:10px;width:268px;height:170px;*height:172px;border:1px solid #cbc5c5;border-top:0;background:#fff;overflow-x:hidden;overflow-y:scroll;z-index:110}
.gnb_search_box .gnb_pop_lst{padding:4px 0 2px}
.gnb_search_box .gnb_pop_lst a{display:block;padding:6px 0 6px 10px;font-weight:bold}
.gnb_search_box .gnb_pop_lst .on{background-color:#f5f5f5}
.gnb_search_lstwrp{zoom:1;height:118px;padding-left:12px}
.gnb_search_lstwrp:after{display:block;clear:both;content:''}
.gnb_search_lstwrp .gnb_search_lst{float:left;width:69px;border-left:1px solid #eaeaea}
.gnb_search_lstwrp .gnb_search_lst.gnb_first{width:64px;border:0}
.gnb_search_lstwrp li{padding:12px 0 0 8px}
.gnb_search_lstwrp li.gnb_first{font-weight:bold;padding-top:0}
.gnb_search_lstwrp li a{display:inline-block;vertical-align:top}
.gnb_banner{height:47px;margin:0;padding:0 18px;background-position:-301px 0;background-repeat:repeat-y}
.gnb_banner .gnb_service_event{display:inline-block;border-top:1px solid #ebebeb}
.gnb_linkwrp{padding:0 4px 4px;background-position:-602px 0}
a.gnb_service_all:hover, a.gnb_service_all:visited, a.gnb_service_all:active, a.gnb_service_all:focus{text-decoration:none}
.gnb_svc_more{display:none;position:absolute;top:4px;right:303px;width:589px;overflow:hidden;zoom:1;z-index:1000}
.gnb_svc_more:after{display:block;clear:both;content:''}
.gnb_response .gnb_svc_more{right:2px}
.gnb_bg_top{height:6px;background:url(http://static.naver.net/common/gnb/2014/bg_svclyr1_v2.png) no-repeat}
.gnb_bg_btm{position:relative;height:6px;background:url(http://static.naver.net/common/gnb/2014/bg_svclyr1_v2.png) no-repeat -1282px 0}
.gnb_svc_more .gnb_svc_hd{position:relative;padding:0 18px 2px 23px;letter-spacing:-1px;background:url(http://static.naver.net/common/gnb/2014/bg_svclyr1_v2.png) repeat-y -641px 0}
.gnb_svc_more .gnb_svc_hd .gnb_svc_tit{display:block;padding:12px 0 13px;border-bottom:1px solid #ebebeb;font-size:14px;color:#222}
.gnb_svc_more .gnb_svc_hd .link{position:absolute;top:14px;right:19px;font-size:12px;color:#444}
.gnb_svc_more .gnb_svc_hd .link a{color:#444 !important;line-height:16px !important}
.gnb_svc_more .gnb_svc_lstwrp{position:relative;height:283px;overflow:hidden;padding:15px 15px 0 20px;letter-spacing:-1px;background:url(http://static.naver.net/common/gnb/2014/bg_svclyr1_v2.png) repeat-y -641px 0;zoom:1}
.gnb_svc_more .gnb_svc_lstwrp:after{display:block;clear:both;content:''}
.gnb_svc_more .gnb_svc_lstwrp li{height:15px;margin-bottom:5px;color:#6b6d70;white-space:nowrap;line-height:15px}
.gnb_svc_more .gnb_svc_lstwrp li.gnb_event label{color:#444;font-weight:bold}
.gnb_svc_more .gnb_svc_lstwrp li.gnb_event em.ic_gnb_new{display:inline-block;width:11px;height:11px;background-position:-215px 0px;margin:2px 0 0 4px;font-size:0;line-height:0;vertical-align:top}
@media screen and (min-width: 0\0) { .gnb_svc_more .gnb_svc_lstwrp li.gnb_event em.ic{margin-top:3px} }
.gnb_svc_more .gnb_svc_lstwrp .gnb_input_check{width:13px;height:13px;margin:2px 3px 0 3px;padding:0;vertical-align:top}
.gnb_svc_more .gnb_svc_lstwrp label{vertical-align:0px}
.gnb_svc_more .gnb_svc_lstwrp .gnb_disabled strong{color:#a8acb0}
.gnb_svc_more .gnb_svc_lstwrp .gnb_disabled li{color:#cbcbcb}
.gnb_svc_more .gnb_svc_lst1{float:left;width:328px;height:280px}
.gnb_svc_more .gnb_svc_lst1 ul{float:left;width:102px;min-height:260px;padding:5px 0 0 10px;border-left:1px solid #eee}
.gnb_svc_more .gnb_svc_lst1 ul.gnb_first{padding-left:0;border:0}
.gnb_svc_more .svc_lst2{float:left;position:relative;width:221px;border:1px solid #eee;background:#fbfbfb;zoom:1}
.gnb_svc_more .svc_lst2:after{display:block;clear:both;content:''}
.gnb_svc_more .svc_spc{float:left;position:relative;width:100px;min-height:254px;padding:9px 0 0 10px}
.gnb_svc_more .svc_spc.gnb_first{border-right:1px solid #eee}
.gnb_svc_more .svc_spc strong{height:20px;color:#2f3743;line-height:16px}
.gnb_svc_more .svc_spc a:visited{color:#2f3743}
.gnb_svc_more .svc_spc ul{padding:8px 0}
.gnb_svc_more .svc_spc li{margin-bottom:0;padding-bottom:5px;color:#848689}
.gnb_svc_more .svc_stroy{width:89px;margin-top:-5px;padding:12px 0 0;border-top:1px solid #eee}
.gnb_svc_more .svc_btns{position:relative;height:33px;overflow:hidden;padding-top:5px;line-height:normal}
.gnb_svc_more .svc_btnwrp{position:relative;*height:39px;background:url(http://static.naver.net/common/gnb/2014/bg_svclyr1_v2.png) repeat-y -641px 0;padding:0 2px 0 4px}
.gnb_svc_more .svc_btnwrp button{display:inline-block;width:60px;height:25px;border:0;vertical-align:top}
.gnb_svc_more .svc_btnwrp .gnb_save{background-position:0 -160px}
.gnb_svc_more .svc_btnwrp .gnb_close{margin-left:1px;background-position:-65px -160px}
.gnb_svc_more .svc_btnwrp .gnb_return{position:absolute;top:5px;left:15px;background-position:-130px -160px}
.gnb_type2 .gnb_notice_li a.gnb_notice .gnb_icon{background-position:-155px -120px}
.gnb_type2 .gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-155px -140px}
.gnb_type2 .gnb_service_li .gnb_service .gnb_icon{background-position:-200px -120px}
.gnb_type2 .gnb_service_li .gnb_service:hover .gnb_icon{background-position:-200px -140px}
.gnb_type2 .mail_li a.gnb_mail .gnb_icon{background-position:-175px -120px}
.gnb_type2 .mail_li a.gnb_mail:hover .gnb_icon{background-position:-175px -140px}
.gnb_dark .gnb_my_li .gnb_my .gnb_name, .gnb_dark .gnb_login_li .gnb_btn_login .gnb_txt{color:#fff}
.gnb_dark .gnb_notice_li a.gnb_notice .gnb_icon{background-position:-220px -140px}
.gnb_dark .gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-220px -120px}
.gnb_dark .mail_li a.gnb_mail .gnb_icon{background-position:-238px -141px}
.gnb_dark .mail_li a.gnb_mail:hover .gnb_icon{background-position:-238px -121px}
.gnb_dark .gnb_service_li .gnb_service .gnb_icon{background-position:-261px -140px}
.gnb_dark .gnb_service_li .gnb_service:hover .gnb_icon{background-position:-261px -120px}
.gnb_dark_type2 .gnb_my_li .gnb_my .gnb_name, .gnb_dark_type2 .gnb_login_li .gnb_btn_login .gnb_txt{color:#fff}
.gnb_dark_type2 .gnb_notice_li a.gnb_notice .gnb_icon{background-position:-220px -120px}
.gnb_dark_type2 .gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-220px -140px}
.gnb_dark_type2 .mail_li a.gnb_mail .gnb_icon{background-position:-238px -121px}
.gnb_dark_type2 .mail_li a.gnb_mail:hover .gnb_icon{background-position:-238px -141px}
.gnb_dark_type2 .gnb_service_li .gnb_service .gnb_icon{background-position:-261px -120px}
.gnb_dark_type2 .gnb_service_li .gnb_service:hover .gnb_icon{background-position:-261px -140px;}
.gnb_dark .gnb_notice_li a.gnb_notice, .gnb_dark_type2 .gnb_notice_li a.gnb_notice {width: 17px;height: 19px;padding: 6px 8px 3px;}
.gnb_dark .gnb_notice_li a.gnb_notice .gnb_icon, .gnb_dark_type2 .gnb_notice_li a.gnb_notice .gnb_icon {width: 17px;height: 19px;}
.gnb_dark .mail_li a.gnb_mail, .gnb_dark_type2 .mail_li a.gnb_mail {width: 22px;height: 16px;padding: 7px 8px 4px;}
.gnb_dark .mail_li a.gnb_mail .gnb_icon, .gnb_dark_type2 .mail_li a.gnb_mail .gnb_icon {width: 22px;height: 16px;}
.gnb_dark .gnb_service_li a.gnb_service, .gnb_dark_type2 .gnb_service_li a.gnb_service {width: 18px;height: 18px;padding: 6px 8px 4px;}
.gnb_dark .gnb_service_li .gnb_service .gnb_icon, .gnb_dark_type2 .gnb_service_li .gnb_service .gnb_icon {width: 18px;	height: 18px;}
#gnb.gnb_one .gnb_my_li .gnb_my .gnb_name, #gnb.gnb_one_small .gnb_my_li .gnb_my .gnb_name, #gnb.gnb_one .gnb_login_li .gnb_btn_login .gnb_txt, #gnb.gnb_one_small .gnb_login_li .gnb_btn_login .gnb_txt{color:#fff}
#gnb.gnb_one .gnb_login_li, #gnb.gnb_one_small .gnb_login_li {height: 28px;}
#gnb.gnb_one .gnb_login_li .gnb_btn_login, #gnb.gnb_one_small .gnb_login_li .gnb_btn_login, #gnb.gnb_one .gnb_login_li .gnb_bg, #gnb.gnb_one_small .gnb_login_li .gnb_bg, #gnb.gnb_one .gnb_login_li .gnb_bdr, #gnb.gnb_one_small .gnb_login_li .gnb_bdr, #gnb.gnb_one .gnb_login_li .gnb_txt, #gnb.gnb_one_small .gnb_login_li .gnb_txt {width: 53px;height: 23px;}
#gnb.gnb_one .gnb_login_li .gnb_btn_login .gnb_txt, #gnb.gnb_one_small .gnb_login_li .gnb_btn_login .gnb_txt {top: -1px;width: 53px;height: 23px;line-height: 28px;font-size: 11px;}
#gnb.gnb_one .gnb_login_li, #gnb.gnb_one_small .gnb_login_li, #gnb.gnb_one .gnb_my_li, #gnb.gnb_one_small .gnb_my_li, #gnb.gnb_one .gnb_notice_li, #gnb.gnb_one_small .gnb_notice_li, #gnb.gnb_one .mail_li, #gnb.gnb_one_small .mail_li, #gnb.gnb_one .gnb_service_li, #gnb.gnb_one_small .gnb_service_li{margin-right: 0;margin-left: 0; background: url(https://ssl.pstatic.net/static/common/gnb/bg_one_line.png) repeat-y right 0;}
#gnb.gnb_one .gnb_login_li a, #gnb.gnb_one_small .gnb_login_li a, #gnb.gnb_one .gnb_my_li a, #gnb.gnb_one_small .gnb_my_li a, #gnb.gnb_one .gnb_notice_li a, #gnb.gnb_one_small .gnb_notice_li a, #gnb.gnb_one .mail_li a, #gnb.gnb_one_small .mail_li a, #gnb.gnb_one .gnb_service_li a, #gnb.gnb_one_small .gnb_service_li a {margin-right: 1px;}
#gnb.gnb_one .gnb_login_li.hover .gnb_service, #gnb.gnb_one_small .gnb_login_li.hover .gnb_service, #gnb.gnb_one .gnb_login_li.hover .gnb_notice, #gnb.gnb_one_small .gnb_login_li.hover .gnb_notice, #gnb.gnb_one .gnb_login_li.hover .gnb_mail, #gnb.gnb_one_small .gnb_login_li.hover .gnb_mail, #gnb.gnb_one .gnb_login_li.hover .gnb_service, #gnb.gnb_one_small .gnb_login_li.hover .gnb_service, #gnb.gnb_one .gnb_my_li.hover .gnb_service, #gnb.gnb_one_small .gnb_my_li.hover .gnb_service, #gnb.gnb_one .gnb_my_li.hover .gnb_notice, #gnb.gnb_one_small .gnb_my_li.hover .gnb_notice, #gnb.gnb_one .gnb_my_li.hover .gnb_mail, #gnb.gnb_one_small .gnb_my_li.hover .gnb_mail, #gnb.gnb_one .gnb_my_li.hover .gnb_service, #gnb.gnb_one_small .gnb_my_li.hover .gnb_service, #gnb.gnb_one .gnb_notice_li.hover .gnb_service, #gnb.gnb_one_small .gnb_notice_li.hover .gnb_service, #gnb.gnb_one .gnb_notice_li.hover .gnb_notice, #gnb.gnb_one_small .gnb_notice_li.hover .gnb_notice, #gnb.gnb_one .gnb_notice_li.hover .gnb_mail, #gnb.gnb_one_small .gnb_notice_li.hover .gnb_mail, #gnb.gnb_one .gnb_notice_li.hover .gnb_service, #gnb.gnb_one_small .gnb_notice_li.hover .gnb_service, #gnb.gnb_one .mail_li.hover .gnb_service, #gnb.gnb_one_small .mail_li.hover .gnb_service, #gnb.gnb_one .mail_li.hover .gnb_notice, #gnb.gnb_one_small .mail_li.hover .gnb_notice, #gnb.gnb_one .mail_li.hover .gnb_mail, #gnb.gnb_one_small .mail_li.hover .gnb_mail, #gnb.gnb_one .mail_li.hover .gnb_service, #gnb.gnb_one_small .mail_li.hover .gnb_service, #gnb.gnb_one .gnb_service_li.hover .gnb_service, #gnb.gnb_one_small .gnb_service_li.hover .gnb_service, #gnb.gnb_one .gnb_service_li.hover .gnb_notice, #gnb.gnb_one_small .gnb_service_li.hover .gnb_notice, #gnb.gnb_one .gnb_service_li.hover .gnb_mail, #gnb.gnb_one_small .gnb_service_li.hover .gnb_mail, #gnb.gnb_one .gnb_service_li.hover .gnb_service, #gnb.gnb_one_small .gnb_service_li.hover .gnb_service {background: url(https://ssl.pstatic.net/static/common/gnb/bg_one_hover.png) repeat 0 0;}
#gnb.gnb_one .gnb_my_li .gnb_my .gnb_name, #gnb.gnb_one_small .gnb_my_li .gnb_my .gnb_name{margin:0 0 0 4px;}
#gnb.gnb_one .gnb_notice_li a.gnb_notice, #gnb.gnb_one_small .gnb_notice_li a.gnb_notice{width:17px;height:19px}
#gnb.gnb_one .gnb_notice_li a.gnb_notice .gnb_icon, #gnb.gnb_one_small .gnb_notice_li a.gnb_notice .gnb_icon{width:17px;height:19px;background-position:-284px -119px}
#gnb.gnb_one .gnb_notice_li a.gnb_notice:hover .gnb_icon, #gnb.gnb_one_small .gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-284px -119px}
#gnb.gnb_one .mail_li a.gnb_mail, #gnb.gnb_one_small .mail_li a.gnb_mail{width:21px;height:17px}
#gnb.gnb_one .mail_li a.gnb_mail .gnb_icon, #gnb.gnb_one_small .mail_li a.gnb_mail .gnb_icon{width:21px;height:17px;background-position:-302px -120px}
#gnb.gnb_one .mail_li a.gnb_mail:hover .gnb_icon, #gnb.gnb_one_small .mail_li a.gnb_mail:hover .gnb_icon{background-position:-302px -120px}
#gnb.gnb_one .gnb_service_li .gnb_service, #gnb.gnb_one_small .gnb_service_li .gnb_service{width:17px;height:17px}
#gnb.gnb_one .gnb_service_li .gnb_service .gnb_icon, #gnb.gnb_one_small .gnb_service_li .gnb_service .gnb_icon{width:17px;height:17px;background-position:-324px -120px}
#gnb.gnb_one .gnb_service_li .gnb_service:hover .gnb_icon, #gnb.gnb_one_small .gnb_service_li .gnb_service:hover .gnb_icon{background-position:-324px -120px}
#gnb.gnb_one .gnb_my_lyr, #gnb.gnb_one_small .gnb_my_lyr, #gnb.gnb_one .gnb_notice_lyr, #gnb.gnb_one_small .gnb_notice_lyr, #gnb.gnb_one .gnb_service_lyr, #gnb.gnb_one_small .gnb_service_lyr {right: 7px;}
#gnb.gnb_one .gnb_ico_num, #gnb.gnb_one_small .gnb_ico_num{width:34px;top:10px;right:3px;left:auto;vertical-align:top}
#gnb.gnb_one .gnb_ico_num .gnb_ico_new, #gnb.gnb_one_small .gnb_ico_num .gnb_ico_new{vertical-align:top;height: 13px;background-position: -332px -60px;}
#gnb.gnb_one .gnb_ico_num .gnb_count, #gnb.gnb_one_small .gnb_ico_num .gnb_count {height: 13px;padding: 0 6px 0 2px;background-position: 100% -60px;font-size: 10px;font-weight: normal;}
#gnb.gnb_one .gnb_ico_num .plus, #gnb.gnb_one_small .gnb_ico_num .plus{margin:1px 0 0 2px}
#gnb.gnb_one .ico_arrow{top:48px}
#gnb.gnb_one .gnb_my_lyr, #gnb.gnb_one .gnb_notice_lyr{top:47px}
#gnb.gnb_one .gnb_service_lyr{top:48px;}
#gnb.gnb_one .gnb_login_li{padding:16px 21px 10px 1px;}
#gnb.gnb_one .gnb_my_li{padding:12px 20px 12px 2px}
#gnb.gnb_one .gnb_my_li .ico_arrow{top:34px}
#gnb.gnb_one .gnb_notice_li a.gnb_notice{padding:18px 19px 17px 19px}
#gnb.gnb_one .mail_li a.gnb_mail{padding:19px 17px 18px 17px}
#gnb.gnb_one .gnb_service_li .gnb_service{padding:19px 19px 18px 19px}
#gnb.gnb_one_small .ico_arrow{top:33px}
#gnb.gnb_one_small .gnb_my_lyr, #gnb.gnb_one_small .gnb_notice_lyr{top:32px}
#gnb.gnb_one_small .gnb_service_lyr{top:33px}
#gnb.gnb_one_small .gnb_login_li{padding:7px 12px 4px 2px}
#gnb.gnb_one_small .gnb_my_li{padding:5px 20px 4px 2px}
#gnb.gnb_one_small .gnb_my_li .ico_arrow{top:27px}
#gnb.gnb_one_small .gnb_notice_li a.gnb_notice{padding:10px 11px 10px 12px}
#gnb.gnb_one_small .mail_li a.gnb_mail{padding:11px 10px 11px 9px}
#gnb.gnb_one_small .gnb_service_li .gnb_service{padding:11px 12px 11px 11px}
#gnb.gnb_one_small .gnb_ico_num{top:5px;right:6px;width:24px}
#gnb.gnb_one_flat .gnb_login_li,
#gnb.gnb_one_flat .gnb_my_li,
#gnb.gnb_one_flat .gnb_notice_li,
#gnb.gnb_one_flat .mail_li,
#gnb.gnb_one_flat .gnb_service_li {border-color: #e0e0e0;}
#gnb.gnb_one_flat .gnb_notice_li.hover,
#gnb.gnb_one_flat .mail_li.hover,
#gnb.gnb_one_flat .gnb_service_li.hover {background-color: rgba(0, 0, 0, 0.04);}
#gnb.gnb_one_flat .gnb_service_li .gnb_service .gnb_icon,
#gnb.gnb_one_flat .gnb_service_li .gnb_service:hover .gnb_icon {background-image: url(http://static.naver.net/common/gnb/one/sp_gnb_4b16e6.png);background-position: -84px -24px;background-repeat: no-repeat; width: 16px;height: 16px;vertical-align: top; margin: 0 1px;}
#gnb.gnb_one_flat .mail_li a.gnb_mail .gnb_icon,
#gnb.gnb_one_flat .mail_li a.gnb_mail:hover .gnb_icon {background-image: url(http://static.naver.net/common/gnb/one/sp_gnb_4b16e6.png);background-position: 0px -42px;background-repeat: no-repeat;width: 20px;height: 16px;vertical-align: top;margin: 0 1px;}
#gnb.gnb_one_flat .gnb_notice_li a.gnb_notice .gnb_icon,
#gnb.gnb_one_flat .gnb_notice_li a.gnb_notice:hover .gnb_icon {background-image: url(http://static.naver.net/common/gnb/one/sp_gnb_4b16e6.png);background-position: -84px 0px;background-repeat: no-repeat;width: 16px;height: 18px;vertical-align: top;margin: 0 1px;}
#gnb.gnb_one_flat .gnb_my_li .gnb_my .gnb_name,
#gnb.gnb_one_flat .gnb_login_li .gnb_btn_login .gnb_txt {color: #777;}</style><script src="../js/clickcrd.js" id="gnb_clickcrD" charset="utf-8"></script>
<div id="wrap" class="basic">
	<!-- GNB -->
<script type="text/javascript">
alert(<%=id%>,<%=name%>,<%=email%>,<%=name1%>,<%=name2%>,<%=name3%>);
function mypage() {
	if(document.getElementById("gnb_my_layer").className===("gnb_my_li"))
		document.getElementById("gnb_my_layer").className = "gnb_my_li gnb_lyr_opened";
	else
		document.getElementById("gnb_my_layer").className = "gnb_my_li";
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

<script type="text/javascript">
	var gnb_service = "movie";
	var gnb_logout = "http://movie.naver.com/index.nhn";
	var gnb_template = "gnb_utf8";
	var gnb_brightness=3;
	var gnb_response = true;
	
	jindo.$Fn(function(){
		getGNB();
	}).attach(window, "load");
	
	jindo.$Fn(function(oEvent){ var welSource = jindo.$Element(oEvent.element);
			if (!welSource.isChildOf(jindo.$Element("gnb"))) {
				gnbAllLayerClose();
			}
	}).attach(document, 'click');
</script>
 <!-- skip navigation -->
<div id="u_skip">
         <a href="http://movie.naver.com/#header" onclick="document.getElementById(header).tabIndex=-1;document.getElementById('header').focus();return false;"><span>메인 메뉴로 바로가기</span></a>
         <a href="http://movie.naver.com/#content" id="gnb_goContent" onclick="document.getElementById('content').tabIndex=-1;document.getElementById('content').focus();return false;"><span>본문으로 바로가기</span></a>
</div>
<!-- //skip navigation -->
<div class="gnb_container">
	<div class="gnb_content">
		<div class="gnb_box">
			<div class="gnb_wrap">
<%if(id == null || id.equals("")){%>
				<div id="gnb" class="gnb_dark_type2"> <strong class="blind">사용자 링크</strong> <ul class="gnb_lst" id="gnb_lst" style="display: block;"> <li class="gnb_login_li" id="gnb_login_layer" style="display: inline-block;"><a class="gnb_btn_login" href="../member/login.jsp" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li> <iframe id="gnb_my_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top: 34px; right: -4px; width: 320px; height: 174px; display: none; opacity: 0; -ms-filter: alpha(opacity = 0)" src="./moviehomefiles/saved_resource.html"></iframe></li> <li class="gnb_notice_li" id="gnb_notice_layer" style="display: none"><a href="javascript:;" class="gnb_notice" onclick="gnbNaverMeLayer.clickToggle(); return false;"><span class="blind">알림</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display: none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count"></span></span></em><span class="ico_arrow"></span></a> <div class="gnb_notice_lyr" id="gnb_notice_lyr"> <div class="svc_noti svc_panel"> <div class="svc_scroll"> <div class="svc_head"> <strong class="gnb_tit">전체 알림</strong> <div class="task_right"> <button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">읽은 알림 삭제</button> <button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">모두 삭제</button> </div> </div> <div class="svc_body" id="gnb_naverme_layer"></div> </div> <div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"> <p class="gnb_msg"> <strong>알림을 모두 삭제하시겠습니까?</strong> </p> <div class="gnb_btns"> <button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button> <button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button> </div> <button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"> <i>레이어 닫기</i> </button> </div> <a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">내 알림 전체보기</a> </div> </div> <iframe id="gnb_notice_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top: 34px; right: -4px; width: 299px; height: 332px; display: none; opacity: 0; -ms-filter: alpha(opacity = 0)" src="./moviehomefiles/saved_resource(1).html"></iframe></li> <li class="mail_li" id="gnb_mail_layer" style="display: none"><a href="http://mail.naver.com/" class="gnb_mail"><span class="blind">메일</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_mail_menu" style="display: none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_mail_count"></span></span></em></a></li> </ul>
				</div>
<%}else{%>
				<div id="gnb" class="gnb_dark_type2"><strong class="blind">사용자 링크</strong><ul class="gnb_lst" id="gnb_lst" style="display: block;"><li class="gnb_login_li" id="gnb_login_layer" style="display: none;"><a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.login" id="gnb_login_button"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그인</span></a></li><li class="gnb_my_li" id="gnb_my_layer" style="display: inline-block;"><div class="gnb_my_namebox" id="gnb_my_namebox" style="background-image: url(&quot;http://static.naver.net/common/gnb/2014/ico_arrow_wh.gif&quot;);"><a href="javascript:;" class="gnb_my" onclick="mypage()"><img id="gnb_profile_img" src="http://static.naver.net/common/myarea/myInfo.gif" width="26" height="26" alt="내 프로필 이미지" style="display: inline-block;"><span id="gnb_profile_filter_mask" class="filter_mask" style="display: inline-block;"></span> <span class="gnb_name" id="gnb_name1"><%=name %></span><em class="blind">내정보 보기</em><span class="ico_arrow"></span></a><a href="#" class="gnb_emp" id="gnb_emp" style="display: none;">(임직원혜택)</a></div><div class="gnb_my_lyr" id="gnb_my_lyr"><div class="gnb_my_content"><div class="gnb_img_area"><span class="gnb_mask"></span><img src="http://static.naver.net/common/myarea/myInfo.gif" width="80" height="80" alt=""><a href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType" class="gnb_change"><span class="blind">프로필 사진 변경</span></a></div><div class="gnb_txt_area"><p class="gnb_account"><span class="gnb_name" id="gnb_name2"><a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile.nhn?m=checkIdType"><%=name %></a>님</span><a class="gnb_btn_login" href="../member/logout.jsp"><span class="gnb_bg"></span><span class="gnb_bdr"></span><span class="gnb_txt">로그아웃</span></a></p><a href="http://mail.naver.com" class="gnb_mail_address"><%=email %></a><ul class="gnb_edit_lst"><li class="gnb_info"><a href="https://nid.naver.com/user2/help/myInfo.nhn?menu=home">내정보</a></li></ul><p class="gnb_pay_check" id="gnb_pay_check"><em>B Pay</em><a href="http://pay.naver.com" id="gnb_pay_point"><span>내 페이포인트</span><strong>63,035원</strong></a></p></div></div><a href="#" class="gnb_my_interface" style="display:none"><span class="blind">환경설정</span></a></div></li><li class="gnb_notice_li" id="gnb_notice_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_notice" onclick="gnbNaverMeLayer.clickToggle(); return false;"><span class="blind">알림</span><span class="gnb_icon"></span><em class="gnb_ico_num" id="gnb_me_menu" style="display:none"><span class="gnb_ico_new"><span class="gnb_count" id="gnb_me_count" style="display: inline-block;"></span></span></em><span class="ico_arrow"></span></a><div class="gnb_notice_lyr" id="gnb_notice_lyr"><div class="svc_noti svc_panel"><div class="svc_scroll"><div class="svc_head"><strong class="gnb_tit">전체 알림</strong><div class="task_right"><button onclick="gnbNaverMeLayer.deleteReadList(this, event);" id="gnb_btn_read_noti_del">읽은 알림 삭제</button><button onclick="gnbNaverMeLayer.showDeleteAlert();" id="gnb_btn_all_noti_del">모두 삭제</button></div></div><div class="svc_body" id="gnb_naverme_layer"></div></div><div class="gnb_ly_alert" id="gnb_ly_alert" style="display: none;"><p class="gnb_msg"><strong>알림을 모두 삭제하시겠습니까?</strong></p><div class="gnb_btns"><button id="ly_alert_confirm" onclick="gnbNaverMeLayer.deleteAllList(this, event);">확인</button><button onclick="gnbNaverMeLayer.hideDeleteAlert();">취소</button></div><button class="gnb_btn_close" onclick="gnbNaverMeLayer.hideDeleteAlert();"><i>레이어 닫기</i></button></div><a href="http://me.naver.com/box/noti.nhn" class="gnb_notice_all">내 알림 전체보기</a></div></div><iframe id="gnb_notice_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="top:34px;right:-4px;width:299px;height:332px;display:none;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li><li class="gnb_service_li" id="gnb_service_layer" style="display: inline-block;"><a href="javascript:;" class="gnb_service" onclick="gnbMoreLayer.clickToggle(); return false;"><span class="blind">서비스 더보기</span><span class="gnb_icon"></span><span class="ico_arrow"></span></a><div class="gnb_service_lyr" id="gnb_service_lyr"><div class="gnb_favorite_search" id="gnb_favorite_search"><div class="gnb_favorite_area"><div class="gnb_favorite_lstwrp"><div class="gnb_first_visit" style="display:none"><span class="blind">나만의 즐겨찾기를 추가해 보세요!</span><a href="#" class="gnb_close"><span class="blind">닫기</span></a></div><strong class="blind">즐겨찾는 서비스</strong><ul class="gnb_favorite_lst" id="gnb_favorite_lst"><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li><li class="gnb_add"><a href="#"><span class="ic_add"></span>추가</a></li></ul><a href="#" class="gnb_my_interface" onclick="gnbMoreLayer.clickToggleWhole(); return false;"><span class="blind">즐겨찾기 설정</span></a></div></div><div class="gnb_search_area"><div class="gnb_search_box" onmouseover="gnb_search.mouseOver(this);" onmouseout="gnb_search.mouseOut(this);"><input id="gnb_svc_search_input" type="text" title="서비스 검색" value="더 많은 서비스를 간편하게 시작하세요!" onfocus="gnb_search.clearInput(this);" onblur="gnb_search.resetInput(this);" onkeydown="gnb_search.keyDown(event);" onkeyup="gnb_search.keyUp(event);"><a href="#" class="gnb_del_txt" id="gnb_del_txt" style="display:none"><span class="blind">삭제</span></a><div class="gnb_pop_input" id="gnb_pop_input" tabindex="0" onfocus="gnb_search.searchPopOnMouse = true; return false;" onfocusout="gnb_search.searchPopOnMouse = false; return false;" onmouseover="gnb_search.searchPopOnMouse = true; return false;" onmouseout="gnb_search.searchPopOnMouse = false; return false;" style="display:none"><ul class="gnb_pop_lst"></ul></div></div><div class="gnb_search_lstwrp"><ul class="gnb_search_lst gnb_first"><li class="gnb_first"><a href="http://cafe.naver.com/">카페</a></li><li><a href="http://news.naver.com/">뉴스</a></li><li><a href="http://map.naver.com/">지도</a></li><li><a href="http://sports.news.naver.com/">스포츠</a></li><li><a href="http://game.naver.com/">게임</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://section.blog.naver.com/">블로그</a></li><li><a href="http://post.naver.com/main.nhn">포스트</a></li><li><a href="http://dic.naver.com/">사전</a></li><li><a href="http://kin.naver.com/">지식iN</a></li><li><a href="http://weather.naver.com/">날씨</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://mail.naver.com/">메일</a></li><li><a href="http://stock.naver.com/">증권</a></li><li><a href="http://land.naver.com/">부동산</a></li><li><a href="http://music.naver.com/">뮤직</a></li><li><a href="http://book.naver.com">책</a></li></ul><ul class="gnb_search_lst"><li class="gnb_first"><a href="http://shopping.naver.com/">쇼핑</a></li><li><a href="http://comic.naver.com/">웹툰</a></li><li><a href="http://movie.naver.com/">영화</a></li><li><a href="http://cloud.naver.com/">클라우드</a></li><li><a href="http://auto.naver.com/">자동차</a></li></ul></div></div><div class="gnb_banner"><a href="http://campaign.naver.com/pointevent/" class="gnb_service_event"><img id="gnb_promo" alt="네이버페이 | 12월 이벤트" width="265" height="47" src="http://static.naver.net/common/gnb/banner/promo_npay_1712.png"></a></div><div class="gnb_linkwrp"><a href="http://www.naver.com/more.html" class="gnb_service_all" id="gnb_service_all">전체 서비스 보기</a></div></div><div class="gnb_svc_more" id="gnb_svc_more" style="display: none;"><strong class="blind">네이버 주요 서비스</strong><div class="gnb_bg_top"></div><div class="gnb_svc_hd"><strong class="gnb_svc_tit">바로가기 설정</strong><span class="link"><a href="http://www.naver.com/more.html">전체 서비스 보기</a></span></div><div class="gnb_svc_lstwrp"><div class="gnb_svc_lst1"><ul class="gnb_first"><li><input type="checkbox" id="nsvc_game" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_game">게임</label></li><li><input type="checkbox" id="nsvc_weather" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_weather">날씨</label></li><li><input type="checkbox" id="nsvc_shopping" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_shopping">네이버쇼핑</label></li><li><input type="checkbox" id="nsvc_navercast" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navercast">네이버캐스트</label></li><li><input type="checkbox" id="nsvc_cloud" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cloud">네이버클라우드</label></li><li class="gnb_event"><input type="checkbox" id="nsvc_naverpay" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_naverpay">네이버페이</label><em class="ic_gnb_new">New</em></li><li><input type="checkbox" id="nsvc_news" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_news">뉴스</label></li><li><input type="checkbox" id="nsvc_comic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_comic">만화/웹툰</label></li><li><input type="checkbox" id="nsvc_memo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_memo">메모</label></li><li><input type="checkbox" id="nsvc_mail" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_mail">메일</label></li><li><input type="checkbox" id="nsvc_music" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_music">뮤직</label></li><li><input type="checkbox" id="nsvc_land" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_land">부동산</label></li><li><input type="checkbox" id="nsvc_bookmark" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_bookmark">북마크</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_blog" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_blog">블로그</label></li><li><input type="checkbox" id="nsvc_dic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dic">사전</label></li><li><input type="checkbox" id="nsvc_software" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_software">소프트웨어</label></li><li><input type="checkbox" id="nsvc_sports" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_sports">스포츠</label></li><li><input type="checkbox" id="nsvc_ya9" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_ya9">야구9단</label></li><li><input type="checkbox" id="nsvc_movie" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_movie">영화</label></li><li><input type="checkbox" id="nsvc_office" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_office">오피스</label></li><li><input type="checkbox" id="nsvc_novel" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_novel">웹소설</label></li><li><input type="checkbox" id="nsvc_auto" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_auto">자동차</label></li><li><input type="checkbox" id="nsvc_contact" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_contact">주소록</label></li><li><input type="checkbox" id="nsvc_finance" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_finance">증권(금융)</label></li><li><input type="checkbox" id="nsvc_map" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_map">지도</label></li><li><input type="checkbox" id="nsvc_kin" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_kin">지식iN</label></li></ul><ul class=""><li><input type="checkbox" id="nsvc_terms" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_terms">지식백과</label></li><li><input type="checkbox" id="nsvc_book" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_book">책</label></li><li><input type="checkbox" id="nsvc_cafe" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cafe">카페</label></li><li><input type="checkbox" id="nsvc_calendar" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_calendar">캘린더</label></li><li><input type="checkbox" id="nsvc_photo" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_photo">포토갤러리</label></li><li><input type="checkbox" id="nsvc_nstore" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_nstore">N스토어</label></li><li><input type="checkbox" id="nsvc_navertv" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_navertv">네이버TV</label></li></ul></div><div class="svc_lst2"><div class="svc_spc gnb_first"><strong><a href="http://dic.naver.com/">어학사전</a></strong><ul class=""><li><input type="checkbox" id="nsvc_krdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_krdic">국어사전</label></li><li><input type="checkbox" id="nsvc_endic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_endic">영어/영영사전</label></li><li><input type="checkbox" id="nsvc_hanja" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_hanja">한자사전</label></li><li><input type="checkbox" id="nsvc_jpdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_jpdic">일어사전</label></li><li><input type="checkbox" id="nsvc_cndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_cndic">중국어사전</label></li><li><input type="checkbox" id="nsvc_frdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_frdic">프랑스어사전</label></li><li><input type="checkbox" id="nsvc_dedic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_dedic">독일어사전</label></li><li><input type="checkbox" id="nsvc_rudic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_rudic">러시아어사전</label></li><li><input type="checkbox" id="nsvc_vndic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_vndic">베트남어사전</label></li><li><input type="checkbox" id="nsvc_spdic" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_spdic">스페인어사전</label></li><li><input type="checkbox" id="nsvc_translate" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_translate">번역기</label></li></ul></div><div class="svc_spc"><strong>인기/신규서비스</strong><ul class=""><li><input type="checkbox" id="nsvc_grafolio" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_grafolio">그라폴리오</label></li><li><input type="checkbox" id="nsvc_post" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_post">포스트</label></li><li><input type="checkbox" id="nsvc_luncherapp" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_luncherapp">도돌런처</label></li><li><input type="checkbox" id="nsvc_band" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_band">밴드</label></li><li><input type="checkbox" id="nsvc_line" name="selmenu" class="gnb_input_check" value=""> <label for="nsvc_line">라인</label></li></ul></div></div></div><div class="svc_btnwrp"><div class="svc_btns"><button class="gnb_save" onclick="if(gnbFavorite.addService()){gnbMoreLayer.clickToggleWhole()} return false;"><strong class="blind">확인</strong></button><button class="gnb_close" onclick="gnbFavorite.cancel(); return false;"><span class="blind">취소</span></button><button class="gnb_return" onclick="gnbFavorite.resetService(); return false;"><span class="blind">초기 설정으로 변경</span></button></div></div><div class="gnb_bg_btm"></div></div></div><iframe id="gnb_service_lyr_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:297px;width:585px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe><iframe id="gnb_svc_more_iframe" title="빈 프레임" class="gnb_pad_lyr" name="padding" width="0" height="0" scrolling="no" frameborder="0" style="display:none;top:34px;right:-4px;width:295px;height:385px;opacity:0;-ms-filter:alpha(opacity=0)"></iframe></li></ul>
				</div>
<%}%>
			</div>
			<!-- 검색창 -->
			<form id="jSearchForm" action="http://movie.naver.com/movie/search/result.nhn" method="get" style="margin:0;display:none;">
				<input type="text" name="query" maxlength="100" title="영화검색">
				<input type="hidden" name="section" value="all">
				<input type="hidden" name="ie" value="utf8">
			</form>
			<fieldset id="jSearchArea" class="srch_area">
				<legend><span class="blind">영화검색 영역</span></legend>
				<div class="srch_field_on _view">
					<span class="ipt_srch">
						<label for="ipt_tx_srch" id="search_placeholder">영화검색</label>
						<input type="text" id="ipt_tx_srch" class="ipt_tx_srch" name="query" maxlength="100" accesskey="s" style="ime-mode:active;" autocomplete="off">
						<span class="align"></span>
						<span class="auto_tx"><a href="http://movie.naver.com/#" title="자동완성 펼치기"><img src="./moviehomefiles/srch_arrow_down.gif" width="7" height="4" title="자동완성 펼치기" alt="자동완성 펼치기"></a></span>
					</span>
					<button type="submit" title="검색" class="btn_srch" onclick="clickcr(this,'GNB.search','','',event); delayed_submit(this);"><span class="blind">검색</span></button>
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
		<a href="http://movie.naver.com/#content" title="본문으로 이동" class="blind">본문 바로가기</a>
		<h1 class="svc_name">
			<a href="../index.jsp" title="naver로 바로가기" class="ci_logo" id="lnb_gonaver"><img src="./moviehomefiles/logo_ci.png" width="62" height="13" alt="NAVER"></a><!-- N=a:LNB.naver -->
			<a href="http://movie.naver.com/" title="영화서비스홈으로 바로가기" class="svc_logo"><img src="./moviehomefiles/logo_svc.png" width="34" height="19" alt="영화"></a><!-- N=a:LNB.movie -->
		</h1>
		<div id="scrollbar" class="scrollbar" style="width: 148px; height: 853px;">
			<div class="scrollbar-box" style="width: 148px; height: 853px;">
				<div class="scrollbar-content" style="top: 0px; width: 148px; height: auto;">
                    <div class="in_scroll">
                        <ul class="navi">
                        <li>
                            <a href="http://movie.naver.com/" title="영화홈" class="menu01_on"><strong>영화홈</strong></a><!-- N=a:LNB.home -->
                        </li>
                        <li>
                            <a href="http://movie.naver.com/movie/running/current.nhn" title="상영작·예정작" class="menu02"><strong>상영작·예정작</strong></a><!-- N=a:LNB.movies -->
                            <ul class="navi_sub" id="navi_movie" style="display:none">
                            <li><a href="http://movie.naver.com/movie/running/current.nhn" title="현재 상영영화" class="sub2_1"><em>현재 상영영화</em></a><!-- N=a:LNB.now --></li>
                            <li><a href="http://movie.naver.com/movie/running/premovie.nhn" title="개봉 예정영화" class="sub2_2"><em>개봉 예정영화</em></a><!-- N=a:LNB.soon --></li>
                            <li><a href="http://movie.naver.com/movie/running/weekendmovie.nhn" title="TV/DVD 영화" class="sub2_3"><em>TV/DVD 영화</em></a><!-- N=a:LNB.guide --></li>
                            <li><a href="http://movie.naver.com/movie/running/movieclip.nhn" title="예고편" class="sub2_4"><em>예고편</em></a><!-- N=a:LNB.tailer --></li>
                            </ul>
                        </li>
                        <li>
                            <a href="http://movie.naver.com/movie/sdb/rank/rmovie.nhn" title="영화랭킹" class="menu03"><strong>영화랭킹</strong></a><!-- N=a:LNB.db -->
                        </li>
                        <li>
                            <a href="http://movie.naver.com/movie/bi/mi/reserve.nhn" title="예매" class="menu05"><strong>예매</strong></a><!-- N=a:LNB.ticket -->
                        </li>
                        
                        
                        
						                        
                        </ul>
                    </div>
				</div>
			</div>
			<div class="scrollbar-v">
				<div class="scrollbar-button-up rollover"></div>
				<div class="scrollbar-track rollover">
					<div class="scrollbar-thumb S10716933 rollover S92546606" style="top: 0px; height: 0px;"></div>
				</div>
				<div class="scrollbar-button-down rollover"></div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	if ("영화홈" == "상영작·예정작"
			|| "영화홈" == "현재 상영영화"
			|| "영화홈" == "개봉 예정영화"
			|| "영화홈" == "TV/DVD 영화"
			|| "영화홈" == "예고편") {
		jindo.$Element("navi_movie").show();
	}
	</script>
	<!-- //header -->
	
	<!-- container -->
	<div id="container">
			<!-- content -->
<div id="content">
	
	<div class="article hh">
		<!-- 무비차트 -->
		<div class="mv_main" onmouseover="oTimer.abort();" onmouseout="movieChart.restartTimer();">
			<div class="flick_nav">
				<a href="http://movie.naver.com/#" id="flick_prev" class="btn_prev" onclick="clickcr(this, 'run.pre', '', '', event);" onfocus="oTimer.abort();" onblur="movieChart.restartTimer();" title="이전"><em>이전</em></a><!-- N=a:run.pre -->
			</div>
			<!-- flick area -->
			<div id="mflick" class="flick_view_area flick-view">
				<div class="flick-container" style="left: -100%; position: relative; width: 100%; height: 430px; transition-duration: 0ms; transform: translate(0px, 0px);">
					<ul id="flick0" class="flick-ct home_list page0 flick-panel blind" style="position: absolute; width: 100%; height: 100%; transform: translate(0px, 0px); transition-property: -webkit-transform; left: 0%; z-index: 1;">
	<li class="item1" data-id="152385" data-detail="152385" data-reserve="152385" onmouseover="jindo.$Element('reserveTooltip1').show();" onmouseout="jindo.$Element('reserveTooltip1').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=152385" onfocus="jindo.$Element('reserveTooltip1').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip1').hide();movieChart.restartTimer();"><span class="rank"><em>1위</em></span>
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image.jpg" alt="꾼" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num3"><em>3</em></span><span class="char rate_num6"><em>6</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num8"><em>6</em></span><span class="char rate_num9"><em>9</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:1,i:152385 -->
		</div>
		<div id="reserveTooltip1" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">꾼</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item2" data-id="160399" data-detail="160399" data-reserve="160399" onmouseover="jindo.$Element('reserveTooltip2').show();" onmouseout="jindo.$Element('reserveTooltip2').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=160399" onfocus="jindo.$Element('reserveTooltip2').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip2').hide();movieChart.restartTimer();"><span class="rank"><em>2위</em></span>
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(1).jpg" alt="기억의 밤" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num2"><em>2</em></span><span class="char rate_num3"><em>3</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num6"><em>6</em></span><span class="char rate_num7"><em>7</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:2,i:160399 -->
		</div>
		<div id="reserveTooltip2" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">기억의 밤</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item3" data-id="154272" data-detail="154272" data-reserve="154272" onmouseover="jindo.$Element('reserveTooltip3').show();" onmouseout="jindo.$Element('reserveTooltip3').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=154272" onfocus="jindo.$Element('reserveTooltip3').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip3').hide();movieChart.restartTimer();"><span class="rank"><em>3위</em></span>
				
					<span class="ico_rating_12">12세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(2).jpg" alt="오리엔트 특급 살인" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num5"><em>5</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num7"><em>7</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:3,i:154272 -->
		</div>
		<div id="reserveTooltip3" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">오리엔트 특급 살인</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item4" data-id="155411" data-detail="155411" data-reserve="155411" onmouseover="jindo.$Element('reserveTooltip4').show();" onmouseout="jindo.$Element('reserveTooltip4').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=155411" onfocus="jindo.$Element('reserveTooltip4').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip4').hide();movieChart.restartTimer();"><span class="rank"><em>4위</em></span>
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(3).jpg" alt="반드시 잡는다" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num8"><em>8</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num0"><em>0</em></span><span class="char rate_num9"><em>9</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:4,i:155411 -->
		</div>
		<div id="reserveTooltip4" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">반드시 잡는다</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item5" data-id="39440" data-detail="39440" data-reserve="39440" onmouseover="jindo.$Element('reserveTooltip5').show();" onmouseout="jindo.$Element('reserveTooltip5').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=39440" onfocus="jindo.$Element('reserveTooltip5').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip5').hide();movieChart.restartTimer();"><span class="rank"><em>5위</em></span>
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(4).jpg" alt="이프 온리" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num3"><em>3</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num8"><em>8</em></span><span class="char rate_num9"><em>9</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:5,i:39440 -->
		</div>
		<div id="reserveTooltip5" class="obj_con" style="display:none">
			<div class="obj_on rt">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">이프 온리</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item6" data-id="116866" data-detail="116866" data-reserve="116866" onmouseover="jindo.$Element('reserveTooltip6').show();" onmouseout="jindo.$Element('reserveTooltip6').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=116866" onfocus="jindo.$Element('reserveTooltip6').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip6').hide();movieChart.restartTimer();"><span class="rank"><em>6위</em></span>
				
					<span class="ico_rating_12">12세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(5).jpg" alt="저스티스 리그" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num7"><em>7</em></span><span class="char rate_num8"><em>8</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:6,i:116866 -->
		</div>
		<div id="reserveTooltip6" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">저스티스 리그</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item7" data-id="144379" data-detail="144379" data-reserve="144379" onmouseover="jindo.$Element('reserveTooltip7').show();" onmouseout="jindo.$Element('reserveTooltip7').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=144379" onfocus="jindo.$Element('reserveTooltip7').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip7').hide();movieChart.restartTimer();"><span class="rank"><em>7위</em></span>
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(6).jpg" alt="러빙 빈센트" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num4"><em>4</em></span><span class="char rate_num6"><em>6</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:7,i:144379 -->
		</div>
		<div id="reserveTooltip7" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">러빙 빈센트</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item8" data-id="134898" data-detail="134898" data-reserve="134898" onmouseover="jindo.$Element('reserveTooltip8').show();" onmouseout="jindo.$Element('reserveTooltip8').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=134898" onfocus="jindo.$Element('reserveTooltip8').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip8').hide();movieChart.restartTimer();"><span class="rank"><em>8위</em></span>
				
					<span class="ico_rating_12">12세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(7).jpg" alt="토르: 라그나로크" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num8"><em>8</em></span><span class="char rate_num0"><em>0</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:8,i:134898 -->
		</div>
		<div id="reserveTooltip8" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">토르: 라그나로크</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item9" data-id="164932" data-detail="164932" data-reserve="164932" onmouseover="jindo.$Element('reserveTooltip9').show();" onmouseout="jindo.$Element('reserveTooltip9').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=164932" onfocus="jindo.$Element('reserveTooltip9').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip9').hide();movieChart.restartTimer();"><span class="rank"><em>9위</em></span>
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(8).jpg" alt="해피 데스데이" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num0"><em>0</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num9"><em>9</em></span><span class="char rate_num6"><em>6</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:9,i:164932 -->
		</div>
		<div id="reserveTooltip9" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">해피 데스데이</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item10" data-id="148995" data-detail="148995" data-reserve="148995" onmouseover="jindo.$Element('reserveTooltip10').show();" onmouseout="jindo.$Element('reserveTooltip10').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=148995" onfocus="jindo.$Element('reserveTooltip10').show();oTimer.abort();" onblur="jindo.$Element('reserveTooltip10').hide();movieChart.restartTimer();"><span class="rank"><em>10위</em></span>
				
					<span class="ico_rating_all">전체 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(9).jpg" alt="토마스와 친구들: 그레이트 레이스" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="spr stic_rate l"><em>예매율</em></span>
					<strong class="l"><span class="char rate_num0"><em>0</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num5"><em>5</em></span><span class="char rate_num6"><em>6</em></span><span class="char rate_pct"><em>%</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:10,i:148995 -->
		</div>
		<div id="reserveTooltip10" class="obj_con" style="display: none;">
			<div class="obj_on rt">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">토마스와 친구들: 그레이트 레이스</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>
</ul>
					<ul id="flick1" class="flick-ct home_list page1 flick-panel" style="position: absolute; width: 100%; height: 100%; transform: translate(0px, 0px); transition-property: -webkit-transform; left: 100%; z-index: 10;">
	<li class="item1" data-id="169523" data-detail="169523" data-reserve="169523" onmouseover="jindo.$Element('currentTooltip1').show();" onmouseout="jindo.$Element('currentTooltip1').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=169523" onfocus="jindo.$Element('currentTooltip1').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip1').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(10).jpg" alt="인디펜던츠 데이: 외계의 대침공" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:0%"><em>0.00 점</em></span></span>
					<strong class="l"><span class="char sc_num0"><em>0</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num0"><em>0</em></span><span class="char sc_num0"><em>0</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:1,i:169523 -->
		</div>
		<div id="currentTooltip1" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">인디펜던츠 데이: 외계의 대침공</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item2" data-id="148995" data-detail="148995" data-reserve="148995" onmouseover="jindo.$Element('currentTooltip2').show();" onmouseout="jindo.$Element('currentTooltip2').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=148995" onfocus="jindo.$Element('currentTooltip2').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip2').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_all">전체 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(9).jpg" alt="토마스와 친구들: 그레이트 레이스" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:88.4%"><em>8.84 점</em></span></span>
					<strong class="l"><span class="char sc_num8"><em>8</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num8"><em>8</em></span><span class="char sc_num4"><em>4</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:2,i:148995 -->
		</div>
		<div id="currentTooltip2" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">토마스와 친구들: 그레이트 레이스</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item3" data-id="166807" data-detail="166807" data-reserve="166807" onmouseover="jindo.$Element('currentTooltip3').show();" onmouseout="jindo.$Element('currentTooltip3').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=166807" onfocus="jindo.$Element('currentTooltip3').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip3').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_all">전체 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(11).jpg" alt="빅 배드 폭스" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:88.5%"><em>8.85 점</em></span></span>
					<strong class="l"><span class="char sc_num8"><em>8</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num8"><em>8</em></span><span class="char sc_num5"><em>5</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:3,i:166807 -->
		</div>
		<div id="currentTooltip3" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">빅 배드 폭스</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item4" data-id="159108" data-detail="159108" data-reserve="159108" onmouseover="jindo.$Element('currentTooltip4').show();" onmouseout="jindo.$Element('currentTooltip4').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=159108" onfocus="jindo.$Element('currentTooltip4').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip4').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_18">청소년 관람불가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(12).jpg" alt="우리는 같은 꿈을 꾼다" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:81.89999999999999%"><em>8.19 점</em></span></span>
					<strong class="l"><span class="char sc_num8"><em>8</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num1"><em>1</em></span><span class="char sc_num9"><em>9</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:4,i:159108 -->
		</div>
		<div id="currentTooltip4" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">우리는 같은 꿈을 꾼다</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item5" data-id="127466" data-detail="127466" data-reserve="127466" onmouseover="jindo.$Element('currentTooltip5').show();" onmouseout="jindo.$Element('currentTooltip5').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=127466" onfocus="jindo.$Element('currentTooltip5').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip5').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_all">전체 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(13).jpg" alt="딥씨 챌린지" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:75%"><em>7.50 점</em></span></span>
					<strong class="l"><span class="char sc_num7"><em>7</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num5"><em>5</em></span><span class="char sc_num0"><em>0</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:5,i:127466 -->
		</div>
		<div id="currentTooltip5" class="obj_con" style="display: none;">
			<div class="obj_on rt">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">딥씨 챌린지</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item6" data-id="154183" data-detail="154183" data-reserve="154183" onmouseover="jindo.$Element('currentTooltip6').show();" onmouseout="jindo.$Element('currentTooltip6').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=154183" onfocus="jindo.$Element('currentTooltip6').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip6').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_all">전체 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(14).jpg" alt="아들에게 가는 길" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:92.2%"><em>9.22 점</em></span></span>
					<strong class="l"><span class="char sc_num9"><em>9</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num2"><em>2</em></span><span class="char sc_num2"><em>2</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:6,i:154183 -->
		</div>
		<div id="currentTooltip6" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">아들에게 가는 길</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item7" data-id="160702" data-detail="160702" data-reserve="160702" onmouseover="jindo.$Element('currentTooltip7').show();" onmouseout="jindo.$Element('currentTooltip7').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=160702" onfocus="jindo.$Element('currentTooltip7').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip7').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_12">12세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(15).jpg" alt="나는 아들을 사랑하지 않는다" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:92.30000000000001%"><em>9.23 점</em></span></span>
					<strong class="l"><span class="char sc_num9"><em>9</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num2"><em>2</em></span><span class="char sc_num3"><em>3</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:7,i:160702 -->
		</div>
		<div id="currentTooltip7" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">나는 아들을 사랑하지 않는다</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item8" data-id="149482" data-detail="149482" data-reserve="149482" onmouseover="jindo.$Element('currentTooltip8').show();" onmouseout="jindo.$Element('currentTooltip8').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=149482" onfocus="jindo.$Element('currentTooltip8').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip8').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(16).jpg" alt="프레스" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:90%"><em>9.00 점</em></span></span>
					<strong class="l"><span class="char sc_num9"><em>9</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num0"><em>0</em></span><span class="char sc_num0"><em>0</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:8,i:149482 -->
		</div>
		<div id="currentTooltip8" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">프레스</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item9" data-id="163783" data-detail="163783" data-reserve="163783" onmouseover="jindo.$Element('currentTooltip9').show();" onmouseout="jindo.$Element('currentTooltip9').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=163783" onfocus="jindo.$Element('currentTooltip9').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip9').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(17).jpg" alt="특수부대 전랑2" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:82.2%"><em>8.22 점</em></span></span>
					<strong class="l"><span class="char sc_num8"><em>8</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num2"><em>2</em></span><span class="char sc_num2"><em>2</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:9,i:163783 -->
		</div>
		<div id="currentTooltip9" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">특수부대 전랑2</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item10" data-id="158091" data-detail="158091" data-reserve="158091" onmouseover="jindo.$Element('currentTooltip10').show();" onmouseout="jindo.$Element('currentTooltip10').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=158091" onfocus="jindo.$Element('currentTooltip10').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip10').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_18">청소년 관람불가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(18).jpg" alt="실종2" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:66.2%"><em>6.62 점</em></span></span>
					<strong class="l"><span class="char sc_num6"><em>6</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num6"><em>6</em></span><span class="char sc_num2"><em>2</em></span></strong>
				</span>
			</a><!-- N=a:run.da,r:10,i:158091 -->
		</div>
		<div id="currentTooltip10" class="obj_con" style="display: none;">
			<div class="obj_on rt">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">실종2</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>
</ul>
					<ul id="flick2" class="flick-ct home_list page2 flick-panel blind" style="position: absolute; width: 100%; height: 100%; transform: translate(0px, 0px); transition-property: -webkit-transform; left: 200%; z-index: 1;">
	<li class="item1" data-id="144975" data-detail="144975" data-reserve="144975" onmouseover="jindo.$Element('commingTooltip1').show();" onmouseout="jindo.$Element('commingTooltip1').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=144975" onfocus="jindo.$Element('commingTooltip1').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip1').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_12">12세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(19).jpg" alt="패터슨" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_num1"><em>1</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:1,i:144975 -->
		</div>
		<div id="commingTooltip1" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">패터슨</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item2" data-id="166583" data-detail="166583" data-reserve="166583" onmouseover="jindo.$Element('commingTooltip2').show();" onmouseout="jindo.$Element('commingTooltip2').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=166583" onfocus="jindo.$Element('commingTooltip2').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip2').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(20).jpg" alt="세 번째 살인" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num1"><em>1</em></span><span class="char rate_num4"><em>4</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:2,i:166583 -->
		</div>
		<div id="commingTooltip2" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">세 번째 살인</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item3" data-id="151715" data-detail="151715" data-reserve="151715" onmouseover="jindo.$Element('commingTooltip3').show();" onmouseout="jindo.$Element('commingTooltip3').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=151715" onfocus="jindo.$Element('commingTooltip3').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip3').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_12">12세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(21).jpg" alt="오직 사랑뿐" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_num8"><em>8</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:3,i:151715 -->
		</div>
		<div id="commingTooltip3" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">오직 사랑뿐</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item4" data-id="134963" data-detail="134963" data-reserve="134963" onmouseover="jindo.$Element('commingTooltip4').show();" onmouseout="jindo.$Element('commingTooltip4').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=134963" onfocus="jindo.$Element('commingTooltip4').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip4').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_12">12세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(22).jpg" alt="라라랜드" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num8"><em>8</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:4,i:134963 -->
		</div>
		<div id="commingTooltip4" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">라라랜드</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item5" data-id="134906" data-detail="134906" data-reserve="134906" onmouseover="jindo.$Element('commingTooltip5').show();" onmouseout="jindo.$Element('commingTooltip5').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=134906" onfocus="jindo.$Element('commingTooltip5').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip5').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_18">청소년 관람불가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(23).jpg" alt="탠저린" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num3"><em>3</em></span><span class="char rate_num1"><em>1</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:5,i:134906 -->
		</div>
		<div id="commingTooltip5" class="obj_con" style="display: none;">
			<div class="obj_on rt">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">탠저린</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item6" data-id="159037" data-detail="159037" data-reserve="159037" onmouseover="jindo.$Element('commingTooltip6').show();" onmouseout="jindo.$Element('commingTooltip6').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=159037" onfocus="jindo.$Element('commingTooltip6').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip6').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_all">전체 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(24).jpg" alt="메리와 마녀의 꽃" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num7"><em>7</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:6,i:159037 -->
		</div>
		<div id="commingTooltip6" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">메리와 마녀의 꽃</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item7" data-id="100205" data-detail="100205" data-reserve="100205" onmouseover="jindo.$Element('commingTooltip7').show();" onmouseout="jindo.$Element('commingTooltip7').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=100205" onfocus="jindo.$Element('commingTooltip7').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip7').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_15">15세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(25).jpg" alt="어쌔신: 더 비기닝" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num7"><em>7</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:7,i:100205 -->
		</div>
		<div id="commingTooltip7" class="obj_con" style="display:none">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">어쌔신: 더 비기닝</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item8" data-id="169349" data-detail="169349" data-reserve="169349" onmouseover="jindo.$Element('commingTooltip8').show();" onmouseout="jindo.$Element('commingTooltip8').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=169349" onfocus="jindo.$Element('commingTooltip8').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip8').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_all">전체 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(26).jpg" alt="뽀로로 극장판 공룡섬 대모험" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num7"><em>7</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:8,i:169349 -->
		</div>
		<div id="commingTooltip8" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">뽀로로 극장판 공룡섬 대모험</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item9" data-id="165751" data-detail="165751" data-reserve="165751" onmouseover="jindo.$Element('commingTooltip9').show();" onmouseout="jindo.$Element('commingTooltip9').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=165751" onfocus="jindo.$Element('commingTooltip9').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip9').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_12">12세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(27).jpg" alt="스테이션 7" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num7"><em>7</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:9,i:165751 -->
		</div>
		<div id="commingTooltip9" class="obj_con" style="display: none;">
			<div class="obj_on ">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">스테이션 7</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>

	<li class="item10" data-id="154594" data-detail="154594" data-reserve="154594" onmouseover="jindo.$Element('commingTooltip10').show();" onmouseout="jindo.$Element('commingTooltip10').hide();">
		<div class="obj_off tab4">
			<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=154594" onfocus="jindo.$Element('commingTooltip10').show();oTimer.abort();" onblur="jindo.$Element('commingTooltip10').hide();movieChart.restartTimer();">
				
					<span class="ico_rating_12">12세 관람가</span>
				
				<span class="mask"></span>
				<img src="./moviehomefiles/movie_image(28).jpg" alt="은혼" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<strong class="l"><span class="char rate_num1"><em>1</em></span><span class="char rate_num2"><em>2</em></span><span class="char rate_dot"><em>.</em></span><span class="char rate_num7"><em>7</em></span></strong><span class="spr stic_open l"><em>개봉</em></span>
				</span>
			</a><!-- N=a:run.da,r:10,i:154594 -->
		</div>
		<div id="commingTooltip10" class="obj_con" style="display: none;">
			<div class="obj_on rt">
				<div class="tooltip">
					<span class="top"></span>
					<p class="mv_title">은혼</p>
					<span class="bottom"></span><span class="bottom_r"></span>
				</div>
			</div>
		</div>
	</li>
</ul>
				</div>
			</div>
			<!-- //flick area -->
			<div class="flick_nav">
				<a href="http://movie.naver.com/#" id="flick_next" class="btn_next" onclick="clickcr(this, 'run.next', '', '', event);" onfocus="oTimer.abort();" onblur="movieChart.restartTimer();" title="다음"><em>다음</em></a><!-- N=a:run.next -->
			</div>
		
			<div class="running_tab">
				<ul>
					<li id="RESERVE_tab" class="item0"><a href="http://movie.naver.com/#" onclick="movieChart.fullSettingMovieChart(0);" onfocus="oTimer.abort();" onblur="movieChart.restartTimer();" class="flickingTab"><em>예매순</em></a><!-- N=a:run.ticket --></li>
					<li id="CURRENT_tab" class="item1 on"><a href="http://movie.naver.com/#" onclick="movieChart.fullSettingMovieChart(1);" onfocus="oTimer.abort();" onblur="movieChart.restartTimer();" class="flickingTab"><em>현재상영작</em></a><!-- N=a:run.now --></li>
					<li id="COMMING_tab" class="item2"><a href="http://movie.naver.com/#" onclick="movieChart.fullSettingMovieChart(2);" onfocus="oTimer.abort();" onblur="movieChart.restartTimer();" class="flickingTab"><em>개봉예정작</em></a><!-- N=a:run.coming --></li>
					<li id="POINT_tab" class="item3"><a href="http://movie.naver.com/#" onclick="movieChart.fullSettingMovieChart(3);" onfocus="oTimer.abort();" onblur="movieChart.restartTimer();" class="flickingTab"><em>평점순</em></a><!-- N=a:run.bystar --></li>
					<li id="BOXOFFICE_tab" class="item4"><a href="http://movie.naver.com/#" onclick="movieChart.fullSettingMovieChart(4);" onfocus="oTimer.abort();" onblur="movieChart.restartTimer();" class="flickingTab"><em>박스오피스</em></a><!-- N=a:run.box --></li>
					<li id="DOWNLOAD_tab" class="item5"><a href="http://movie.naver.com/#" onclick="movieChart.fullSettingMovieChart(5);" onfocus="oTimer.abort();" onblur="movieChart.restartTimer();" class="flickingTab"><em>다운로드순</em></a><!-- N=a:run.down --></li>
				</ul>
				<p href="#" class="all_view_go" style="display: block;"><a id="movieChartAllView" href="http://localhost/movie/running/current.nhn" onclick="clickcr(this, 'run.all', '', '', event);" onfocus="oTimer.abort();" onblur="movieChart.restartTimer();" title="전체보기" target="_self">전체보기</a><!-- N=a:run.all --></p>
			</div>
		</div>
		<!-- //무비차트  -->
		<div class="section_group" id="homeReview">
			<div class="obj_section">
				<div class="main_review">
					
					<div class="title_area">
						<h4 class="hh_review"><strong class="blind">평점/리뷰</strong></h4>
					</div>
					<div class="hh_review_area">
						<div id="movieReview" class="hh_review_ct">
							<ul class="lst_con first" data-index="0" style="display:block">
							<!-- [D] 선택된 경우 li에 class="on" 추가 -->
							
							<li id="review1" data-index="0" class="_select_title on">
								<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=152385" class="thmb" onclick="clickcr(this, 'tvw.img', '152385', '1', event);"><img src="./moviehomefiles/movie_image(29).jpg" width="64" height="91" alt="꾼" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img64x91.png'"></a>
								<div class="detail">
									<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=152385" onclick="clickcr(this, 'tvw.title', '152385', '1', event);" data-index="0" class="_select_title_anchor"><strong>꾼</strong>
										<div class="star_score">
											
											
											
												
												
													
													
													
													<span class="st_off"><span class="st_on" style="width:79.2%">평점 - 총 10점 중</span></span>
													<span class="score">
													<span class="char sc_num7"><em>7</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num9"><em>9</em></span><span class="char sc_num2"><em>2</em></span>
												
											
											</span>
										</div>
									</a>
									<ul class="info">
										
											
												<li><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4582056&amp;code=152385" onclick="clickcr(this, 'tvw.list', '4582056', '1', event);"><span class="tit">2017년 영화 &lt;꾼&gt; 후기/쿠키영상 유무</span></a></li>
											
										
											
												<li><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4581937&amp;code=152385" onclick="clickcr(this, 'tvw.list', '4581937', '2', event);"><span class="tit">[영화 꾼] 아무도 믿지마라!</span></a></li>
											
										
											
												<li class="last"><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4580442&amp;code=152385" onclick="clickcr(this, 'tvw.list', '4580442', '3', event);"><span class="tit">영화 [꾼] 후기 "의심은 해소시켜주면 확신이 된다" (현빈,유지태,배성우,나나,박성웅,안세하)</span></a></li>
											
										
									</ul>
								</div>
							</li>
							
							<li id="review2" data-index="1" class="_select_title">
								<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=116866" class="thmb" onclick="clickcr(this, 'tvw.img', '116866', '2', event);"><img src="./moviehomefiles/movie_image(30).jpg" width="64" height="91" alt="저스티스 리그" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img64x91.png'"></a>
								<div class="detail">
									<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=116866" onclick="clickcr(this, 'tvw.title', '116866', '2', event);" data-index="1" class="_select_title_anchor"><strong>저스티스 리그</strong>
										<div class="star_score">
											
											
											
												
												
													
													
													
													<span class="st_off"><span class="st_on" style="width:79.4%">평점 - 총 10점 중</span></span>
													<span class="score">
													<span class="char sc_num7"><em>7</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num9"><em>9</em></span><span class="char sc_num4"><em>4</em></span>
												
											
											</span>
										</div>
									</a>
									<ul class="info">
										
											
												<li><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4579973&amp;code=116866" onclick="clickcr(this, 'tvw.list', '4579973', '1', event);"><span class="tit">영화 &lt;저스티스 리그&gt; 리뷰</span></a></li>
											
										
											
												<li><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4579899&amp;code=116866" onclick="clickcr(this, 'tvw.list', '4579899', '2', event);"><span class="tit">저스티스리그,어벤져스보다 재미있는 이유(그래도 잭스나이더는 이제그만)</span></a></li>
											
										
											
												<li class="last"><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4583195&amp;code=116866" onclick="clickcr(this, 'tvw.list', '4583195', '3', event);"><span class="tit">저스티스 리그 (Justice League) 관람기 [약스포]</span></a></li>
											
										
									</ul>
								</div>
							</li>
							
							<li id="review3" data-index="2" class="_select_title">
								<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=164932" class="thmb" onclick="clickcr(this, 'tvw.img', '164932', '3', event);"><img src="./moviehomefiles/movie_image(31).jpg" width="64" height="91" alt="해피 데스데이" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img64x91.png'"></a>
								<div class="detail">
									<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=164932" onclick="clickcr(this, 'tvw.title', '164932', '3', event);" data-index="2" class="_select_title_anchor"><strong>해피 데스데이</strong>
										<div class="star_score">
											
											
											
												
												
													
													
													
													<span class="st_off"><span class="st_on" style="width:83.5%">평점 - 총 10점 중</span></span>
													<span class="score">
													<span class="char sc_num8"><em>8</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num3"><em>3</em></span><span class="char sc_num5"><em>5</em></span>
												
											
											</span>
										</div>
									</a>
									<ul class="info">
										

												<li><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4577048&amp;code=164932" onclick="clickcr(this, 'tvw.list', '4577048', '1', event);"><span class="tit">[Theater] 해피 데스데이 / 재미 있으데이</span></a></li>
												<li><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4579947&amp;code=164932" onclick="clickcr(this, 'tvw.list', '4579947', '2', event);"><span class="tit">영화 추천 : 해피 데스데이 -부딪히는 방법에 대하여-</span></a></li>
												<li class="last"><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4580191&amp;code=164932" onclick="clickcr(this, 'tvw.list', '4580191', '3', event);"><span class="tit">해피 데스데이 (Happy Death Day, 2017)</span></a></li>
									</ul>
								</div>
							</li>
							
							<li id="review4" data-index="3" class="_select_title">
								<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=134898" class="thmb" onclick="clickcr(this, 'tvw.img', '134898', '4', event);"><img src="./moviehomefiles/movie_image(32).jpg" width="64" height="91" alt="토르: 라그나로크" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img64x91.png'"></a>
								<div class="detail">
									<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=134898" onclick="clickcr(this, 'tvw.title', '134898', '4', event);" data-index="3" class="_select_title_anchor"><strong>토르: 라그나로크</strong>
										<div class="star_score">
													<span class="st_off"><span class="st_on" style="width:88.7%">평점 - 총 10점 중</span></span>
													<span class="score">
													<span class="char sc_num8"><em>8</em></span><span class="char sc_dot"><em>.</em></span><span class="char sc_num8"><em>8</em></span><span class="char sc_num7"><em>7</em></span>
											</span>
										</div>
									</a>
									<ul class="info">
										
											
												<li><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4574915&amp;code=134898" onclick="clickcr(this, 'tvw.list', '4574915', '1', event);"><span class="tit">코믹과 액션을 함께 갖춘 리벤져스의 메인이벤트-토르:라그나로크</span></a></li>
											
										
											
												<li><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4581860&amp;code=134898" onclick="clickcr(this, 'tvw.list', '4581860', '2', event);"><span class="tit">토르의 마지막 피날레  토르 라그나로크 _ 쿠키영상 _ 스포주의</span></a></li>
											
										
											
												<li class="last"><a href="http://movie.naver.com/movie/bi/mi/reviewread.nhn?nid=4572665&amp;code=134898" onclick="clickcr(this, 'tvw.list', '4572665', '3', event);"><span class="tit">[영화] 토르 - 라그나로크 / 마블의 개성과 안정성</span></a></li>
											
										
									</ul>
								</div>
							</li>
							
							</ul>
						</div>
					</div>
				</div>
				<div class="main_spot" id="homeSpotlight">
					
					<div class="section">
						<div class="title_area">
							<h4 class="hh_spotlight">
								<strong class="blind">스포트라이트</strong>
							</h4>
						</div>
						<div class="hh_spot_area">
							<a href="http://nstore.naver.com/event/details.nhn?eventNo=9543">
								<img src="./moviehomefiles/영화스포트라이트210X196.png" width="210" height="196" title="스포트라이트 배너" alt="스포트라이트 영역 입니다." border="0">
							</a>
						</div>
					</div>
					
				</div>
			</div>

			
			<div class="obj_section" id="homeTrailer">
				<div class="main_prv">
					<div class="title_area">
						<h4 class="hh_preview"><strong class="blind">예고편</strong></h4>
						<a href="http://movie.naver.com/movie/running/movieclip.nhn">
							<span class="more"><span class="blind">더보기</span></span>
						</a><!-- N=a:cms.more -->
					</div>
					<ul class="video_thumb">
					
					<li>
						<a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=163844&amp;mid=37018#tab" title="3차 예고편" class="video_obj">
							<span class="mask">동영상</span>
							
							<span class="video_ico first"></span>
							<img src="./moviehomefiles/37018_20171204114403.gif" width="164" height="114" alt="3차 예고편" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img164x114.png'">
						</a><!-- N=a:cms.img,r:1,i:37018 -->
						<p class="tx_video ico_hd"><span class="blind">HD</span><a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=163844&amp;mid=37018#tab" title="몬스터 패밀리">몬스터 패밀리</a><!-- N=a:cms.title,r:1,i:37018 --></p>
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=163844&amp;mid=37018#tab" title="3차 예고편">3차 예고편</a><!-- N=a:cms.desc,r:1,i:37018 --></p>
					</li>
					
					<li>
						<a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=170236&amp;mid=37017#tab" title="무삭제 영상" class="video_obj">
							<span class="mask">동영상</span>
							
							<span class="video_ico first"></span>
							<img src="./moviehomefiles/37017_20171204114448.gif" width="164" height="114" alt="무삭제 영상" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img164x114.png'">
						</a><!-- N=a:cms.img,r:2,i:37017 -->
						<p class="tx_video ico_hd"><span class="blind">HD</span><a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=170236&amp;mid=37017#tab" title="무서운 꿈">무서운 꿈</a><!-- N=a:cms.title,r:2,i:37017 --></p>
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=170236&amp;mid=37017#tab" title="무삭제 영상">무삭제 영상</a><!-- N=a:cms.desc,r:2,i:37017 --></p>
					</li>
					
					<li>
						<a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=92082&amp;mid=37033#tab" title="예고편" class="video_obj">
							<span class="mask">동영상</span>
							
							
							<img src="./moviehomefiles/37033_20171205095959.jpg" width="164" height="114" alt="예고편" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img164x114.png'">
						</a><!-- N=a:cms.img,r:3,i:37033 -->
						<p class="tx_video ico_hd"><span class="blind">HD</span><a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=92082&amp;mid=37033#tab" title="오버드라이브">오버드라이브</a><!-- N=a:cms.title,r:3,i:37033 --></p>
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=92082&amp;mid=37033#tab" title="예고편">예고편</a><!-- N=a:cms.desc,r:3,i:37033 --></p>
					</li>
					
					<li>
						<a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=162419&amp;mid=37037#tab" title="뮤직비디오" class="video_obj">
							<span class="mask">동영상</span>
							
							
							<img src="./moviehomefiles/37037_20171205105433.jpg" width="164" height="114" alt="뮤직비디오" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img164x114.png'">
						</a><!-- N=a:cms.img,r:4,i:37037 -->
						<p class="tx_video ico_hd"><span class="blind">HD</span><a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=162419&amp;mid=37037#tab" title="돌아온다">돌아온다</a><!-- N=a:cms.title,r:4,i:37037 --></p>
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/mediaView.nhn?code=162419&amp;mid=37037#tab" title="뮤직비디오">뮤직비디오</a><!-- N=a:cms.desc,r:4,i:37037 --></p>
					</li>
					
					</ul>
				</div>
			</div>
		</div>
		

		
		<div class="section_group" id="homePhoto">
			<div class="obj_section">
				<div class="main_photo">
					<div class="title_area">
						<h4 class="hh_photo"><strong class="blind">포토</strong></h4>
					</div>
					<ul>
					
					<li class="">
						<p class="thmb">
							<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=159108&amp;imageNid=6587886#tab">
								<img src="./moviehomefiles/movie_image(33).jpg" width="108" height="108" alt="드리밍 러브스토리" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img108x108.png'">
								
								
							</a><!-- N=a:pho.img,r:1,i:6587886 -->
						</p>
						<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=159108&amp;imageNid=6587886#tab"><strong class="tit">우리는 같은 꿈을 꾼다</strong></a><!-- N=a:pho.list,r:1,i:6587886 -->
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=159108&amp;imageNid=6587886#tab">드리밍 러브스토리</a><!-- N=a:pho.tlist,r:1,i:6587886 --></p>
					</li>
					
					<li class="">
						<p class="thmb">
							<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=146372&amp;imageNid=6583065#tab">
								<img src="./moviehomefiles/movie_image(34).jpg" width="108" height="108" alt="사라진 연인" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img108x108.png'">
								
								
							</a><!-- N=a:pho.img,r:2,i:6583065 -->
						</p>
						<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=146372&amp;imageNid=6583065#tab"><strong class="tit">시크릿 레터</strong></a><!-- N=a:pho.list,r:2,i:6583065 -->
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=146372&amp;imageNid=6583065#tab">사라진 연인</a><!-- N=a:pho.tlist,r:2,i:6583065 --></p>
					</li>
					
					<li class="">
						<p class="thmb">
							<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=154183&amp;imageNid=6586853#tab">
								<img src="./moviehomefiles/movie_image(35).jpg" width="108" height="108" alt="가족의 성장통" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img108x108.png'">
								
								
							</a><!-- N=a:pho.img,r:3,i:6586853 -->
						</p>
						<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=154183&amp;imageNid=6586853#tab"><strong class="tit">아들에게 가는 길</strong></a><!-- N=a:pho.list,r:3,i:6586853 -->
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=154183&amp;imageNid=6586853#tab">가족의 성장통</a><!-- N=a:pho.tlist,r:3,i:6586853 --></p>
					</li>
					
					<li class="">
						<p class="thmb">
							<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=85579&amp;imageNid=6590331#tab">
								<img src="./moviehomefiles/movie_image(36).jpg" width="108" height="108" alt="새로운 삶의 시작" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img108x108.png'">
								
								
							</a><!-- N=a:pho.img,r:4,i:6590331 -->
						</p>
						<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=85579&amp;imageNid=6590331#tab"><strong class="tit">신과함께-죄와 벌</strong></a><!-- N=a:pho.list,r:4,i:6590331 -->
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=85579&amp;imageNid=6590331#tab">새로운 삶의 시작</a><!-- N=a:pho.tlist,r:4,i:6590331 --></p>
					</li>
					
					<li class="">
						<p class="thmb">
							<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=146394&amp;imageNid=6517442#tab">
								<img src="./moviehomefiles/movie_image(37).jpg" width="108" height="108" alt="깊고 진한  로맨스" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img108x108.png'">
								
								
							</a><!-- N=a:pho.img,r:5,i:6517442 -->
						</p>
						<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=146394&amp;imageNid=6517442#tab"><strong class="tit">스톡홀름의 마지막 연인</strong></a><!-- N=a:pho.list,r:5,i:6517442 -->
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=146394&amp;imageNid=6517442#tab">깊고 진한  로맨스</a><!-- N=a:pho.tlist,r:5,i:6517442 --></p>
					</li>
					
					<li class="last">
						<p class="thmb">
							<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=169523&amp;imageNid=6590265#tab">
								<img src="./moviehomefiles/movie_image(38).jpg" width="108" height="108" alt="거대한 비행물체" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img108x108.png'">
								
								
							</a><!-- N=a:pho.img,r:6,i:6590265 -->
						</p>
						<a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=169523&amp;imageNid=6590265#tab"><strong class="tit">인디펜던츠 데이: 외계의 대침공</strong></a><!-- N=a:pho.list,r:6,i:6590265 -->
						<p class="tx_brief"><a href="http://movie.naver.com/movie/bi/mi/photoView.nhn?code=169523&amp;imageNid=6590265#tab">거대한 비행물체</a><!-- N=a:pho.tlist,r:6,i:6590265 --></p>
					</li>
					
					</ul>
				</div>
			</div>
			<div class="obj_section">
				<div class="main_event">
					<div class="notice">
						<a href="http://movie.naver.com/movie/other/gonggi.nhn" class="notice_more">공지사항 더보기</a><!-- N=a:bnt.more -->
						<div class="info"><a href="http://movie.naver.com/movie/other/gonggi.nhn?docID=10000000000030659300"><em>[공지]</em>&nbsp; 롯데시네마 시스템 점검 안내</a><!-- N=a:bnt.list --></div>
						<p><span class="page_info">정보</span>본 페이지는 나눔글꼴에 최적화 되어있습니다. <a href="http://hangeul.naver.com/font" target="_blank" class="font_inst">나눔글꼴설치<em class="arr"></em></a><!-- N=a:btm.nanumfont --></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [D] 맨위로 버튼 div id="content" 기준 top:342px 이상 -->
	
<div class="staticbanner" id="floatingTopAnchor" style="bottom: 638px;">
    <a href="http://movie.naver.com/#" title="맨위로"><img alt="맨위로" src="./moviehomefiles/btn_top.png" width="33" height="35"></a><!-- N=a:btm.top -->
</div>
<script type="text/javascript">
jindo.$Fn(function () {
    var welTopAnchor = jindo.$Element('floatingTopAnchor');
    var welContent = jindo.$Element('content');
    var nTopMargin = 342 + welTopAnchor.height();
    var nMaxY;
    var nMinY = 61;
    var oFloatingLayer = new jindo.FloatingLayer(welTopAnchor).attach({
        beforeMove: function (oEvent) {
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
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
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

<script type="text/template" id="CURRENT_template">
{for index:movie in CURRENT}
	<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('currentTooltip{=index+1}').show();" onmouseout="jindo.$Element('currentTooltip{=index+1}').hide();">
		<div class="obj_off tab4">
			<a href="/movie/bi/mi/basic.nhn?code={=movie.movieCode}" onfocus="jindo.$Element('currentTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('currentTooltip{=index+1}').hide();movieChart.restartTimer();">
				{if movie.adult}
					<span class="ico_rating_19">청소년 유해물</span>
				{elseif movie.lastKoreanGrade != null}
					{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
				{/if}
				<span class="mask"></span>
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
				<span class="baseplate r">
					<span class="rank_star l"><span class="star_off"><em>별점 - 총 10점 중</em></span><span class="star_on" style="width:{=movie.point*10}%"><em>{=movie.point} 점</em></span></span>
					<strong class="l">{js movieChart.numberFont(=movie.point, 'sc')}</strong>
				</span>
			</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
		</div>
		<div id="currentTooltip{=index+1}" class="obj_con" style="display:none">
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
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
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
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
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
				<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
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

<script type="text/template" id="DOWNLOAD_template">
{if DOWNLOAD ==  ""}
	<li class="error_area">
         <div class="error_msg"></div>
    </li>
{else}
	{for index:movie in DOWNLOAD}
		<li class="item{=index +1}" data-id="{=movie.movieCode}" data-detail="{=movie.movieCode}" data-reserve="{=movie.movieCode}" onmouseover="jindo.$Element('downloadTooltip{=index+1}').show();" onmouseout="jindo.$Element('downloadTooltip{=index+1}').hide();">
			<div class="obj_off tab4">
				<a href="http://nstore.naver.com/tvstore/detail.nhn?mcode={=movie.movieCode}" target="_blank"  onfocus="jindo.$Element('downloadTooltip{=index+1}').show();oTimer.abort();" onblur="jindo.$Element('downloadTooltip{=index+1}').hide();movieChart.restartTimer();"><span class="rank"><em>{=index +1}위</em></span>
					{if movie.adult}
						<span class="ico_rating_19">청소년 유해물</span>
					{elseif movie.lastKoreanGrade != null}
						{js movieChart.getGradeIcon(=movie.lastKoreanGrade.code)}
					{/if}
					<span class="mask"></span> {if movie.salePossibleYn == true}<span class="purchase">구매</span>{/if} {if movie.lendingPossibleYn == true}<span class="rental">대여</span>{/if}
					<img src="{js movieChart.getPhotoInfraImageDomain()}{=movie.posterImageUrl}?type=f125" alt="{js movieChart.replaceDoubleQuotationForHTML(=movie.movieTitle)}" width="125" height="179" onerror="this.src='http://static.naver.net/movie/2012/06/dft_img125x179.png'">
					<span class="baseplate r">
						<span class="spr stic_down l"><em>판매율</em></span>
						<strong class="l">{js movieChart.numberFont(=movie.formattedSaleRate, 'rate')}<span class="char rate_pct"><em>%</em></span></strong>
					</span>
				</a><!-- N=a:run.da,r:{=index + 1},i:{=movie.movieCode} -->
			</div>
			<div id="downloadTooltip{=index+1}" class="obj_con" style="display:none">
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
{/if}
</script>


<script type="text/javascript">





var flickContents = new Array(6);


var htInfo = jindo.m.getDeviceInfo(); 
var bUseCss3d = jindo.m._isUseCss3d() || (htInfo.galaxyS2 && (htInfo.version >= "4.0.3"));
var oFlicking = new jindo.m.CircularFlicking(jindo.$('mflick'),{
	nDuration : 100,
	bHorizontal : true,
    sClassPrefix : 'flick-',
    nFlickThreshold : 40,
    nTotalContents : 6,
    bUseCss3d : bUseCss3d
}).attach({

	// 타이머 정지 및 메뉴 하이라이팅
	'beforeFlicking' : function(oCustomEvt) {
		oTimer.abort();

		var index = oCustomEvt.nContentIndex;
		var nextIndex = movieChart.getNextIndex(index);
		var previousIndex = movieChart.getPreviousIndex(index);

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
	'afterFlicking' : function(oCustomEvt){
		
		if (oCustomEvt.bLeft) {
			var type = movieChart.movieChartTab[oCustomEvt.nContentRightIndex];
			
			// 플리킹 저장변수에 이미 데이터가 있다면 저장변수 이용, 없으면 Ajax Call.
			if (flickContents[oCustomEvt.nContentRightIndex]) {
				movieChart.movieChartJsonCallBack(null, flickContents[oCustomEvt.nContentRightIndex], type, oCustomEvt.nContentRightIndex, oCustomEvt.nPanelRightIndex);
			} else {
				movieChart.ajaxCall(movieChart.movieChartJsonUrl, type, oCustomEvt.nContentRightIndex, oCustomEvt.nPanelRightIndex);
			}
			
		} else {
			var type = movieChart.movieChartTab[oCustomEvt.nContentLeftIndex];
			
			// 플리킹 저장변수에 이미 데이터가 있다면 저장변수 이용, 없으면 Ajax Call.
			if (flickContents[oCustomEvt.nContentLeftIndex]) {
				movieChart.movieChartJsonCallBack(null, flickContents[oCustomEvt.nContentLeftIndex], type, oCustomEvt.nContentLeftIndex, oCustomEvt.nPanelLeftIndex);
			} else {
				movieChart.ajaxCall(movieChart.movieChartJsonUrl, type, oCustomEvt.nContentLeftIndex, oCustomEvt.nPanelLeftIndex);
			}
		}

		
		this.getRightPanelElement().addClass('blind');
		this.getLeftPanelElement().addClass('blind');
		
		movieChart.restartTimer();
	}
});

//[MOVIEOP-5993] [모바일웹] Android 공통댓글 이전/다음 버튼 클릭시 포커싱 유지(PC 환경에서는 Flicking 되지 않도록 수정.)
var osInfo = jindo.$Agent().os();
if(osInfo.win || osInfo.mac || osInfo.linux) {
	oFlicking.attach({
		'touchStart' : function(oCustomEvt){
			oCustomEvt.stop();
			}
	});
}


var oTimer = new jindo.Timer();


var movieChart = {
		
		movieChartDefaultJsonUrl : "/movieChartDefaultJson.nhn",
		movieChartJsonUrl : "/movieChartJson.nhn",
		
		movieChartTab : new Array("RESERVE", "CURRENT", "COMMING", "POINT", "BOXOFFICE", "DOWNLOAD"),
		movieChartAllViewUrl : new Array(
				"/movie/running/current.nhn?order=reserve",
				"/movie/running/current.nhn",
				"/movie/running/premovie.nhn?order=reserve",
				"/movie/running/current.nhn?order=point",
				"/movie/sdb/rank/rboxoffice.nhn",
				"http://nstore.naver.com/movie/top100List.nhn?rankingTypeCode=PC_D"
		),

		// 개봉예정작 목록의 마지막 영화의 상영관이 없다면, 예매율순 개봉예정작에서 데이터가 부족해서 상영관이 없는 데이터도 채워넣은 경우이기 때문에 더보기 링크 제공하지 않음
		hasCommingMovieAllViewUrl : true,
		
		// domready시 수행
		init : function() {
			movieChart.ajaxCall(movieChart.movieChartJsonUrl, movieChart.movieChartTab[0], 0, 0);
			movieChart.setMenuHighlighting(0);
			movieChart.startTimer();
		},
		
		// load시 수행
		load : function() {
			movieChart.ajaxCall(movieChart.movieChartJsonUrl, movieChart.movieChartTab[1], 1, 1);
			movieChart.ajaxCall(movieChart.movieChartJsonUrl, movieChart.movieChartTab[movieChart.movieChartTab.length-1], movieChart.movieChartTab.length-1, 2);
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
			oTimer.start( function() {
				oFlicking.moveNext();
				return true;  
			}, 7000);
		},
		
		// JSON API 호출
		ajaxCall : function(url, type, index, targetAreaIndex) {
			var ajax = new jindo.$Ajax(url, { 
				method : "GET",
				onload : function(response){
					if (url == movieChart.movieChartDefaultJsonUrl) {
						// 풀세팅 
						movieChart.movieChartDefaultJsonCallBack(response, null, index);
					} else {
						// 개별세팅
						movieChart.movieChartJsonCallBack(response, null, type, index, targetAreaIndex);
					}
				}
			});
			ajax.header("ajax", "true");
		    ajax.request({"type":type});
		},
		
		// 무비차트 풀세팅 CallBack 함수
		movieChartDefaultJsonCallBack : function(response, movieChartList, index) {
			
			if (movieChartList == null) {
				var jsonData = response.json();
				movieChartList = jsonData.movieChartList;
			}
			
			var nextIndex = movieChart.getNextIndex(index);
			var previousIndex = movieChart.getPreviousIndex(index);

			oFlicking.setContentIndex(index);
			oFlicking.getPanelElement().html(jindo.$Template(movieChart.movieChartTab[index] + "_template").process(movieChartList[0]));
			oFlicking.getRightPanelElement().html(jindo.$Template(movieChart.movieChartTab[nextIndex] + "_template").process(movieChartList[1]));
			oFlicking.getLeftPanelElement().html(jindo.$Template(movieChart.movieChartTab[previousIndex] + "_template").process(movieChartList[2]));

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
		movieChartJsonCallBack : function(response, movieChartList, type, index, targetAreaIndex) {
			
			if (movieChartList == null) {
				var jsonData = response.json();
				movieChartList = jsonData.movieChartList;
			}
			
			jindo.$Element("flick" + targetAreaIndex).html(jindo.$Template(type + "_template").process(movieChartList));
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
			if (flickContents[index] && flickContents[nextIndex] && flickContents[previousIndex]) {
				var movieChartList = new Array(flickContents[index], flickContents[nextIndex], flickContents[previousIndex]);
				movieChart.movieChartDefaultJsonCallBack(null, movieChartList, index);
			} else {
				movieChart.ajaxCall(movieChart.movieChartDefaultJsonUrl, movieChart.movieChartTab[index], index);
			}
		},
		
		// 메뉴 하이라이팅 처리
		setMenuHighlighting : function(index) {
			
			// 탭메뉴 하이라이팅
			for (i=0; i<movieChart.movieChartTab.length; i++) {
				jindo.$Element(movieChart.movieChartTab[i] + "_tab").removeClass("on");
			}
			jindo.$Element(movieChart.movieChartTab[index] + "_tab").addClass("on");
			
			// 전체보기 URL 세팅
			jindo.$("movieChartAllView").href = movieChart.movieChartAllViewUrl[index];
			
			// [다운로드순]일 경우, 전체보기 아이콘이 다르다. (새창)
			if (movieChart.movieChartTab[index] == "DOWNLOAD") {
				jindo.$Element(jindo.$$.getSingle(".all_view_go")).show();
				jindo.$("movieChartAllView").target = "_blank";
				jindo.$Element(jindo.$$.getSingle(".all_view_go")).addClass("dwn");
			}
			// [개봉예정작]일 경우 예매율순 개봉예정작에서 데이터가 부족해서 채워넣은 경우이면 전체 보기 링크를 보여주지 않는다. 
			else if (movieChart.movieChartTab[index] == "COMMING" && !this.hasCommingMovieAllViewUrl) {
				jindo.$Element(jindo.$$.getSingle(".all_view_go")).hide();
			}
			else {
				jindo.$Element(jindo.$$.getSingle(".all_view_go")).show();
				jindo.$("movieChartAllView").target = "_self";
				jindo.$Element(jindo.$$.getSingle(".all_view_go")).removeClass("dwn");
			}
			
		},		
		
		// 두개의 포토인프라도메인을 분산해서 제공 
		getPhotoInfraImageDomain : function() {
			var photoInfraImageDomains = new Array("http://movie.phinf.naver.net", "http://movie2.phinf.naver.net");
			return photoInfraImageDomains[Math.floor((Math.random()*(2)))];   
		},
		
		// 따옴표 escape 처리
		replaceDoubleQuotationForHTML : function(title) {
			if (title == null) {
				return null;
			}

			var result = "";
			for (i=0; i<title.length; i++) {
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
			
			for (i=0; i<value.length; i++) {
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

			result += '</span>'	;

			return result;
		}
};


var HomeMovieReviewAccordion = jindo.$Class({
	$init : function(sClassName) {
		_self = this;
		this._wel = jindo.$Element("movieReview");
		this._welList = this._wel.query ("ul.lst_con." + sClassName);
		
		this._wel.delegate(
				"mouseover",
				"._select_title",
				jindo.$Fn(this._onMouseOverItem, this).bind()
		);
		
		jindo.$A(jindo.$ElementList('._select_title_anchor').$value()).forEach(function(element, index, array) {
			jindo.$Fn(_self._onMouseOverItem, _self).attach(element, "focus");
		});
	},
	
	_onMouseOverItem : function (we) {
		we.stopDefault();
		var nIndex = Number(jindo.$Element(we.element).data('index'));
		
		this.openReview(nIndex);
	},
	
	openReview : function (nIndex) {
		var aEls = this._welList.queryAll("li ! li");
		
		// 해당하는 항목만 <li class="on">
		for (var i = 0; i < aEls.length; i++) {
			aEls[i].cssClass("on", nIndex == i);
		}
	},
	
	showRandomMovie : function () {
		var randNo = Math.floor(4 * Math.random());
		this.openReview(randNo);
	}
});



var oFirstHomeMovieReviewAccordion = new HomeMovieReviewAccordion("first");


jindo.$Fn(function() {oFirstHomeMovieReviewAccordion.showRandomMovie();}).attach(document, "domready");

jindo.$Fn(function() {movieChart.init();}).attach(document, "domready");
jindo.$Fn(function() {movieChart.load();}).attach(window, "load");
jindo.$Fn(function(evt){evt.stop(); oFlicking.movePrev();}, this).attach(jindo.$("flick_prev"),"click");
jindo.$Fn(function(evt){evt.stop(); oFlicking.moveNext();} ,this).attach(jindo.$("flick_next"),"click");

var nsc = "movie.home";
</script>
	</div>
	<!-- //container -->
	
	<!-- footer -->
	



<div id="footer">
	<div class="in_footer">
		<div class="foot_con">
				<ul>
					<li class="first"><a href="http://www.naver.com/rules/service.html" target="rules">이용약관</a><!-- N=a:fot.agreement --></li>		
					<li><a href="http://www.naver.com/rules/privacy.html" target="rules"><strong>개인정보처리방침</strong></a><!-- N=a:fot.privacy --></li>
					<li><a href="http://www.naver.com/rules/disclaimer.html" target="rules">책임의 한계와 법적고지</a><!-- N=a:fot.disclaimer --></li>		
					<li><a href="https://help.naver.com/support/service/main.nhn?serviceNo=800" target="customer">영화 고객센터</a><!-- N=a:fot.help --></li>
				</ul>
				<p class="info">본 콘텐츠의 저작권은 저작권자 또는 제공처에 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 법적 책임을 질 수 있습니다.</p>
				<p class="info">
					사업자등록번호 : 220-81-62517<span>통신판매업 신고번호</span> : 경기성남 제 2006 - 692호<span>대표이사 : 한성숙</span><span><a href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp">사업자등록정보 확인</a><!-- N=a:fot.bizinfo --></span><br>
					주소 : 경기도 성남시 분당구 불정로 6 네이버 그린팩토리 <span>대표전화 : 1588-3820</span>
				</p> 
				<address>
					<a href="http://www.navercorp.com/" target="_blank" class="logo"><img src="./moviehomefiles/logo_naver.png" width="63" height="11" alt="NAVER"></a><!-- N=a:fot.nhn -->
					<em>Copyright ©</em>
					<a href="http://www.navercorp.com/" target="_blank">NAVER Corp.</a><!-- N=a:fot.corp -->
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
		if (confirm("관람하신 " + koreanTitle + "에\n평점 등록 시 네이버페이 포인트 500원 적립!\n지금 평점쓰기 메뉴로 이동하시겠습니까?")) {
			top.location.href = "http://movie.naver.com/movie/bi/mi/point.nhn?code=" + movieCode;
		}
	} else if (alertType == "MORE") {
		setCookieLastUserReserveDate(today, endDate);
		if (confirm("관람하신 작품에 평점을 등록해주세요\n작품당 네이버페이 포인트 500원씩 적립!\n평점 미등록작 리스트를 확인하시겠습니까?")) {
			top.location.href = "http://ticket.movie.naver.com/Order/OverdueList.aspx";
		}
	}
}

function setCookieLastUserReserveDate(today, endDate) {
	var cookieForNotOpenActualPointPopup = jindo.$Cookie();
	
	
	cookieForNotOpenActualPointPopup.remove("lastUserReserveDatetime");
	cookieForNotOpenActualPointPopup.remove("lastUserReserveCheckDatetime");
	
	cookieForNotOpenActualPointPopup.set("lastUserReserveDatetime", endDate, 9999, "movie.naver.com");
	cookieForNotOpenActualPointPopup.set("lastUserReserveCheckDatetime", today, 9999, "movie.naver.com");
}

</script>

	<!-- //footer -->
</div>
<script type="text/javascript">

jindo.$Fn(function (we) {

	// 상단 검색영역
	var oSearch = new nhn.movie.Search({
		area : "jSearchArea",
		autosearch : "http://auto.movie.naver.com/ac?q_enc=UTF-8&st=1&r_lt=1&n_ext=1&t_koreng=1&r_format=json&r_enc=UTF-8&r_unicode=0&r_escape=1&q=",
		movelink : "/movie/bi/mi/basic.nhn?code=",
		peoplelink : "/movie/bi/pi/basic.nhn?code="
	});

    // 좌측 LNB
    var oLNB = new nhn.movie.LNB();
	if( typeof oViewMode != "undefined") {
		oViewMode.attach('change', jindo.$Fn(oLNB.update, oLNB).bind());
	}

    //영화검색 결과에서 포커스 아웃될 경우, 검색 결과를 지우도록 변경.
    jindo.$Element("lnb_gonaver").attach("focus",function(e){
    	
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
	var ccsrv="cc.naver.com";
	var nclk_evt = 1;
	
	nclk_do();
	//nClick 초기화 영역 끝
</script>

</body></html>