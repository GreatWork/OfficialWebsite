<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="org.apache.log4j.Logger"%>
<%@ page import="com.ow.DBDao"%>
<%@ page import="com.ow.dto.*"%>

<%
	String pageTitle = "安洪投资";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" ></meta>
<title><%=pageTitle%></title>
<link href="css/common.css" type="text/css" rel="stylesheet" ></link>

<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript"
	src="js/seanObject.js"></script>
<script src="js/common.js" type="text/javascript"></script>
</head>

<jsp:include page="header.jsp" />

<div class="wapper clearfix">
	<div class="banner_box">
		<ul class="banner">
			<li><a href="#"><img src="img/banner_1.png"></a></li>
			<li><a href="#"><img src="img/banner_2.png"></a></li>
			<li><a href="#"><img src="img/banner_3.png"></a></li>
			<li><a href="#"><img src="img/banner_4.png"></a></li>
		</ul>
		<a href="#" class="a_left"></a> <a href="#" class="a_right"></a>
	</div>
</div>
<%
	DBDao dbDao = new DBDao();
	dbDao.init();
	List<NewsInfoDto> newsInfos=dbDao.getTheNewestFiveNewsInfo();
	List<RecommendInfoDto> recommendInfos=dbDao.getTheNewestFiveRecommendInfo();
	
	dbDao.close();
%>
<div class="line"></div>
<div class="wapper clearfix">
	<div class="news_box fl mr50">
		<h2 class="title_news">公司新闻</h2>
		<a href="dynamic.jsp" class="a_more">MORE</a>
		<ul class="news_ul">
			<%
				for(NewsInfoDto newsInfo:newsInfos){
			%>		
			<li><a href="dynamicdetail.jsp?id=<%=newsInfo.getId()%>">
					<%=newsInfo.getTitle()%> </a> 
				<span class="date"><%=formatTime(newsInfo.getCreateTime())%></span>
			</li>
			<%
				}
			%>							
		</ul>
	</div>
	<div class="news_box fl">
		<h2 class="title_recommend">行业推荐</h2>
		<a href="dynamic.jsp" class="a_more">MORE</a>
		<ul class="news_ul">
			<%
				for(RecommendInfoDto recommendInfo:recommendInfos){
			%>		
			<li><a href="dynamicdetail.jsp?id=<%=recommendInfo.getId() %>&k=2">
			       <%=recommendInfo.getTitle() %></a>
			       <span class="date"><%=formatTime(recommendInfo.getCreateTime()) %></span></li>
			<%}%>							
		</ul>
	</div>
</div>
<div class="line"></div>
<div class="wapper clearfix">
	<img src="img/bottom_1.png" class="fl mr13" /> 
	<img src="img/bottom_2.png" class="fl mr13" /> 
	<img src="img/bottom_3.png" class="fl " />
</div>

<script type="text/javascript">
       $(function() {
           function scroll() {
               var z = $('.banner li').size(), w = (z + 1) * 932, i = 0;
               $('.banner li').first().clone().appendTo('.banner');
               $('.banner').width(w);
               $('.a_right').click(function() {
                   if (i + z <= 0) { i = 0; $('.banner').css({ 'left': 0 }); }
                   i--;
                   scroll(i);

               });
               $('.a_left').click(function() {
                   if (i >= 0) { i = -z; }
                   $('.banner').css({ 'left': i * 932 });
                   i++;
                   scroll(i);
               });
               function scroll(m) {
                   $('.banner').animate({ 'left': m * 932 }, 932);
                   if (i + z <= 0) { i = 1; }
                   if (i >= 0) { i = -z; }
               }
           }
           scroll();
       });
</script>

<%!
	/* 时间格式化 */
	public static String formatTime(final Date time) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if (time == null) {
			return null;
		}
		String result = sdf.format(time);
		return result;
	}
%>

<jsp:include page="footer.jsp" />

</form>
</body>
</html>