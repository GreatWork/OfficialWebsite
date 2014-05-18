<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.log4j.Logger"%>

<%
	String pageTitle = "联系我们";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><%=pageTitle%></title>
<link href="css/common.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript"
	src="js/seanObject.js"></script>
<script src="js/common.js" type="text/javascript"></script>

<script type="text/javascript">
	$(document).ready(function() {
		var k = $G("k");
		if (k == 1) {
			ClickLeftMenu('1');
		} else {
			ClickLeftMenu('1');
		}
	});
</script>

</head>

<jsp:include page="header.jsp" />

<div class="wapper clearfix">
	<img src="img/banner_about.jpg" />
</div>
<div class="wapper clearfix overhide">
	<div class="subleft">
		<a href="javascript:void(0);" class="on" onclick="ClickLeftMenu('1');"
			id="menu01">联系我们</a>
	</div>
	<div id="page01" class="rightcontent wordbox" style="display: none;">

		<div style="width: 625px;">
			<strong>上海安洪投资管理有限公司</strong>
			<br /> 地址：上海市浦东新区世纪大道8号国金中心北塔51楼
			<br /> 邮编：200120 
			<br /> 电话：86 21 20216666 
			<br /> 传真：86 21 20216688 
			<br /> 电邮：<a class="email" target="_blank" href="mailto:chongyang@chongyang.net">chongyang@chongyang.net</a>

		</div>

		<img src="img/contact/index_map.jpg" /> 
		<br /> 
		<br /> 
		<br /> 
		
		<strong>深圳办事处</strong>
		<br /> 地址：深圳市福田区中心四路1号嘉里建设广场2座15楼53室
		<br /> 邮编：518048 
		<br /> 电话：86 755	33043155 
		<br /> 传真：86 755 33043322 
		<br />
	</div>
</div>


<jsp:include page="footer.jsp" />


</form>
</body>
</html>
