<%@page import="com.ow.dto.NewsInfoDto"%>
<%@page import="com.ow.dto.ViewPointDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.log4j.Logger"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page import="com.ow.DBDao"%>
<%@ page import="com.ow.dto.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	String idPara = request.getParameter("id");
	String kPara  = request.getParameter("k");
	ViewPointDto viewPoint=null;
	NewsInfoDto newsInfo=null;
	int id=-1;
	if (idPara != null && idPara.trim().length() > 0) {
		id=Integer.parseInt(idPara);
	}
	
	String pageTitle = null;
	
	DBDao dbDao = new DBDao();
	dbDao.init();
	if(kPara!=null && kPara.trim().length()>0 
			&& kPara.equals("2")){
		viewPoint=dbDao.getViewPointById(id);
		pageTitle=viewPoint.getTitle();
	}else{
		newsInfo=dbDao.getNewsInfoById(id);
		pageTitle=newsInfo.getTitle();
	}
	
	dbDao.close();

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
		} else if (k == 2) {
			ClickLeftMenu('2');
		} else if (k == 3) {
			ClickLeftMenu('3');
		} else if (k == 4) {
			ClickLeftMenu('4');
		} else {
			ClickLeftMenu('1');
		}
	});
</script>
</head>


<jsp:include page="header.jsp" />

<div class="wapper clearfix">
	<img src="img/banner_profile.jpg">
</div>
<div class="wapper clearfix overhide">
	<div class="subleft">
		<a href="dynamic.jsp" class="on" id="menu01">安洪资讯</a> 
		<a href="dynamic.jsp?k=2" id="menu02">安洪视点</a>
	</div>
	<div class="rightcontent wordbox">
		<table id="ctl00_cpContent_DataList1" cellspacing="0" border="0"
			style="border-collapse: collapse;">
			<tbody>
				<tr>
					<td>
						<table width="625" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								<%
									if(viewPoint!=null){								
								%>
								<tr>
									<td><strong style="color: #0F3653; font-weight: bolder">
											<%=viewPoint.getTitle() %></strong>&nbsp;<%=formatTime(viewPoint.getCreateTime()) %>&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td style="color: #7b7b7b">
									<br />
									<p style="background: white; text-align: right; margin: 7.8pt 0cm 0pt; line-height: 200%; text-indent: 18pt; mso-para-margin-top: .5gd; mso-para-margin-right: 0cm; mso-para-margin-bottom: .0001pt; mso-para-margin-left: 0cm; mso-char-indent-count: 2.0" align="right">
										<span style="font-size: 9pt; line-height: 200%; mso-ascii-font-family: 宋体; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: 宋体; mso-hansi-theme-font: minor-fareast">
											<font face="宋体">
												作者：<%=viewPoint.getAuthor() %>
												<span lang="EN-US"><o:p></o:p></span>
											</font>
										</span>
									</p>
									<%
										String[] viewPointParagraphs = viewPoint.getContent().split("\r\n");
										for (String viewPointParagraph:viewPointParagraphs){
									 %>
									<p style="background: white; text-align: justify; margin: 7.8pt 0cm 0pt; text-justify: inter-ideograph; line-height: 200%; text-indent: 18pt; mso-para-margin-top: .5gd; mso-para-margin-right: 0cm; mso-para-margin-bottom: .0001pt; mso-para-margin-left: 0cm; mso-char-indent-count: 2.0">
										<span style="font-size: 9pt; line-height: 200%; mso-ascii-font-family: 宋体; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: 宋体; mso-hansi-theme-font: minor-fareast">
											<font face="宋体">
												<%=viewPointParagraph %>
												<span lang="EN-US"><o:p></o:p></span>
											</font>
										</span>
									</p>									 
									 <%
										}
									 %>
									 </td>
								</tr>											
								<%
									}
									if(newsInfo!=null){
								%>
								<tr>
									<td><strong style="color: #0F3653; font-weight: bolder">
											<%=newsInfo.getTitle() %></strong>&nbsp;<%=formatTime(newsInfo.getCreateTime()) %>&nbsp;&nbsp;
									</td>
								</tr>								
								<tr>
									<td style="color: #7b7b7b">
									<br />
									<p style="background: white; text-align: right; margin: 7.8pt 0cm 0pt; line-height: 200%; text-indent: 18pt; mso-para-margin-top: .5gd; mso-para-margin-right: 0cm; mso-para-margin-bottom: .0001pt; mso-para-margin-left: 0cm; mso-char-indent-count: 2.0" align="right">
										<span style="font-size: 9pt; line-height: 200%; mso-ascii-font-family: 宋体; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: 宋体; mso-hansi-theme-font: minor-fareast">
											<font face="宋体">
												作者：<%=newsInfo.getAuthor() %>
												<span lang="EN-US"><o:p></o:p></span>
											</font>
										</span>
									</p>
									<%
										String[] newsInfoParagraphs = newsInfo.getContent().split("\r\n");
										for (String newsInfoParagraph:newsInfoParagraphs){
									 %>
									<p style="background: white; text-align: justify; margin: 7.8pt 0cm 0pt; text-justify: inter-ideograph; line-height: 200%; text-indent: 18pt; mso-para-margin-top: .5gd; mso-para-margin-right: 0cm; mso-para-margin-bottom: .0001pt; mso-para-margin-left: 0cm; mso-char-indent-count: 2.0">
										<span style="font-size: 9pt; line-height: 200%; mso-ascii-font-family: 宋体; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: 宋体; mso-hansi-theme-font: minor-fareast">
											<font face="宋体">
												<%=newsInfoParagraph %>
												<span lang="EN-US"><o:p></o:p></span>
											</font>
										</span>
									</p>									 
									 <%
										}
									 %>
									 </td>
								</tr>																								<%										
									}
								%>							
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<%!
	/* 时间格式化 */
	public static String formatTime(final Date time) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (time == null) {
			return null;
		}
		String result = sdf.format(time);
		return result;
	}

%>

<jsp:include page="footer.jsp" />

<script type="text/javascript">
//<![CDATA[
Sys.Application.initialize();
//]]>
</script>
</form>
</body>
</html>