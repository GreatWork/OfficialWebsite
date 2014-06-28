<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<body>
	<form name="aspnetForm" method="post" action="index.jsp"
		id="aspnetForm">
		<div>
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPDwULLTE2MjI3NjQwMDUPZBYCZg9kFgICAw9kFgICAQ9kFgQCAQ8WAh4LXyFJdGVtQ291bnQCBRYKZg9kFgJmDxUDG0R5bmFtaWNkZXRhaWxzLmFzcHg/aWQ9Nzc5OELph43pmLPpl67nrZTvvJpJUE/igJzkuozmrKHph43lkK/igJ3lj6/og73lgqzljJbluILlnLrpo47moLzovazmjaIFMDQtMjhkAgEPZBYCZg8VAx9EeW5hbWljZGV0YWlscy5hc3B4P2lkPTc3OTMmaz0yRDIwMTTlubQ05pyI5a6P6KeC5YiG5p6Q5oql5ZGK77ya5Lit5Zu957uP5rWO6L2s5Z6L5ZGI546w56ev5p6B5L+h5Y+3BTA0LTIyZAICD2QWAmYPFQMbRHluYW1pY2RldGFpbHMuYXNweD9pZD03Nzg4M+ijmOWbveague+8muacquadpeS4pOW5tOaKlei1hOetlueVpeeahOacgOS8mOixoemZkAUwNC0xMmQCAw9kFgJmDxUDG0R5bmFtaWNkZXRhaWxzLmFzcHg/aWQ9Nzc4OS3ph43pmLPmipXotYTonYnogZTkupTlsYrkuK3lm73np4Hli5/ph5HniZvlpZYFMDQtMTJkAgQPZBYCZg8VAxtEeW5hbWljZGV0YWlscy5hc3B4P2lkPTc3ODIy6YeN6Ziz57O75YiX5Lqn5ZOBMjAxNOW5tDTmnIjlvIDmlL7ml6XmuKnppqjmj5DnpLoFMDQtMDFkAgMPFgIfAAIFFgpmD2QWAmYPFQMdUmVjb21tZW5kZGV0YWlscy5hc3B4P2lkPTc4MDU55pS56Z2p6KaB5oiQ5Yqf77yM5biC5Zy66YC76L6R5LiA5a6a6KaB5oiY6IOc5a6Y5Zy66YC76L6RBTA0LTMwZAIBD2QWAmYPFQMdUmVjb21tZW5kZGV0YWlscy5hc3B4P2lkPTc4MDQn5be06I+y54m55aaC5L2V5LuO6buR5aSp6bmF5LqL5Lu26I635YipBTA0LTMwZAICD2QWAmYPFQMdUmVjb21tZW5kZGV0YWlscy5hc3B4P2lkPTc4MDMq6L+O5o6l57uT5p6E6LCD5pW04oCc6Zi155eb5pyf4oCd55qE5oyR5oiYBTA0LTMwZAIDD2QWAmYPFQMdUmVjb21tZW5kZGV0YWlscy5hc3B4P2lkPTc4MDIh5oi/5Zyw5Lqn5biC5Zy655qE6aOO6Zmp5LiO5bqU5a+5BTA0LTI5ZAIED2QWAmYPFQMdUmVjb21tZW5kZGV0YWlscy5hc3B4P2lkPTc4MDEn4oCc5Y2B6K664oCd5qaC5ous5Lmg6L+R5bmz57uP5rWO5oCd5oOzBTA0LTI5ZGQv6Odu8PCtKzb4opTSryyMBfn8RQ==" />
		</div>


		<div class="wapper header">
			<a href="index.jsp" class="fl"><img src="img/logo.jpg" width="120px" height="103px"></a>
			<!-- table height="10px" border="0" cellspacing="0" cellpadding="0"
				style="margin-left: 10px; margin-right: 0px;">
				<tr>
					<td width="1130" height="5"></td>
					<td width="50" style="padding-top: 0px; text-align: right;"
						valign="top"><a href="index.jsp"><font
							style="font-family: Arial; font-size: 12px; text-align: right;"
							color="#001c43"><b>中文</b></font> </a></td>
				</tr>
			</table -->
			<ul class="menu">
			    <!-- li><a href="index.jsp" class="fl"><img src="img/logo.jpg"></a></li -->			
				<li><a href="index.jsp">首页</a></li>
				<li><a href="about.jsp">关于安洪</a>
					<p class="submenu">
						<a href="about.jsp">公司简介</a>
						<a href="about.jsp?k=2">安洪理念</a>
						<a href="about.jsp?k=3">投资经理</a>
						<a href="about.jsp?k=4">投研团队</a>					
						<i class="sj"></i>
						<i class="rightborder"></i>
					</p>
				</li>
				<li id="m_profile"><a href="dynamic.jsp">安洪资讯</a>
					<p class="submenu">
						<a href="dynamic.jsp">公司新闻</a>
						<a href="dynamic.jsp?k=2">行业推荐</a>
						<i class="sj"></i>
						<i class="rightborder"></i>
					</p>
				</li>
				<li id="m_pro"><a href="products.jsp">产品与服务</a>
					<p class="submenu">
						<a href="products.jsp">信托产品</a>
						<a href="products.jsp?k=2">认购流程</a>
						<a href="products.jsp?k=3">常见问题</a>
						<a href="products.jsp?k=4">产品咨询</a>
						<i class="sj"></i>
						<i class="rightborder"></i>
					</p>
				</li>
			    <li class="last"><a href="contact.jsp">联系我们</a></li>				
			</ul>
		</div>