<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="org.apache.log4j.Logger"%>
<%@ page import="com.ow.DBDao"%>
<%@ page import="com.ow.dto.NewsInfoDto"%>
<%@ page import="com.ow.dto.ViewPointDto"%>

<%
	String pageTitle = "安洪投资";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><%=pageTitle%></title>
<link href="css/common.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript"
	src="js/seanObject.js"></script>
<script src="js/common.js" type="text/javascript"></script>

</head>

<jsp:include page="header.jsp" />

<div class="wapper clearfix">
	<div class="club">
		<ul>
			<li><a href="products.jsp?k=3">信托产品</a></li>
			<li><a href="products.jsp?k=2">认购流程</a></li>
			<li><a href="about.jsp?k=6">诚聘英才</a></li>
			<li><a href="contact.jsp">联系我们</a></li>
		</ul>
	</div>
	<div class="banner_box">
		<ul class="banner">
			<li><a href="#"><img src="img/banner.jpg"></a></li>
			<li><a href="#"><img src="img/banner_2.jpg" width="700"
					height="300"></a></li>
			<li><a href="#"><img src="img/banner_3.jpg"></a></li>
			<li><a href="#"><img src="img/banner_4.jpg" width="700"
					height="300"></a></li>
			<li><a href="#"><img src="img/banner_5.jpg"></a></li>
		</ul>
		<a href="#" class="a_left"></a> <a href="#" class="a_right"></a>
	</div>
</div>
<%
	DBDao dbDao = new DBDao();
	dbDao.init();
	List<NewsInfoDto> newsInfos=dbDao.getTheNewestFiveNewsInfo();
	
	dbDao.close();
%>
<div class="line"></div>
<div class="wapper clearfix">
	<div class="news_box fl mr50">
		<h2 class="title_news">重阳动态</h2>
		<a href="dynamic.jsp" target="_blank" class="a_more">MORE</a>
		<ul class="news_ul">
			<%for(NewsInfoDto newsInfo:newsInfos){%>		
			<li><a target="_blank" href="dynamicdetails.jsp?id=<%=newsInfo.getId() %>>">
					<%=newsInfo.getTitle() %>> </a> 
				<span class="date"><%=formatTime(newsInfo.getCreateTime()) %>></span>
			</li>
			<%}%>							
		</ul>
	</div>
	<div class="news_box fl">
		<h2 class="title_recommend">重阳推荐</h2>
		<a href="recommend.jsp" target="_blank" class="a_more">MORE</a>
		<ul class="news_ul">

			<li><a target="_blank" href="recommenddetails.jsp?id=7805">改革要成功，市场逻辑一定要战胜官场逻辑</a><span
				class="date">04-30</span></li>

			<li><a target="_blank" href="recommenddetails.jsp?id=7804">巴菲特如何从黑天鹅事件获利</a><span
				class="date">04-30</span></li>

			<li><a target="_blank" href="recommenddetails.jsp?id=7803">迎接结构调整“阵痛期”的挑战</a><span
				class="date">04-30</span></li>

			<li><a target="_blank" href="recommenddetails.jsp?id=7802">房地产市场的风险与应对</a><span
				class="date">04-29</span></li>

			<li><a target="_blank" href="recommenddetails.jsp?id=7801">“十论”概括习近平经济思想</a><span
				class="date">04-29</span></li>
		</ul>
	</div>
</div>
<div class="line"></div>
<div class="wapper clearfix">
	<img src="img/demo_1.jpg" class="fl mr13"> <img
		src="img/demo_2.jpg" class="fl mr13"> <img src="img/demo_3.jpg"
		class="fl "></a>
</div>
<script type="text/javascript">
        $(function() {
            function scroll() {
                var z = $('.banner li').size(), w = (z + 1) * 700, i = 0;
                $('.banner li').first().clone().appendTo('.banner');
                $('.banner').width(w);
                $('.a_right').click(function() {
                    if (i + z <= 0) { i = 0; $('.banner').css({ 'left': 0 }); }
                    i--;
                    scroll(i);

                });
                $('.a_left').click(function() {
                    if (i >= 0) { i = -z; }
                    $('.banner').css({ 'left': i * 700 });
                    i++;
                    scroll(i);
                });
                function scroll(m) {
                    $('.banner').animate({ 'left': m * 700 }, 1000);
                    if (i + z <= 0) { i = 1; }
                    if (i >= 0) { i = -z; }
                }
            }
            scroll();
        });
    </script>

<%!
	private static final Logger logger = Logger.getLogger("com.ow.index");

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