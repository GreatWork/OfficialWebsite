<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.log4j.Logger"%>
<%@ page import="com.ow.DBDao"%>
<%@ page import="com.ow.dto.*"%>

<%
	String pageTitle = "关于安洪";
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

<style type="text/css">
td p {
	text-indent: 0em;
}
</style>

<script type="text/javascript">
        $(document).ready(function() {
            var k = $G("k");
            if (k == 1) {
                ClickLeftMenu('1');
            }
            else if (k == 2) {
                ClickLeftMenu('2');
            }
            else if (k == 3) {
                ClickLeftMenu('3');
            }
            else if (k == 4) {
                ClickLeftMenu('4');
            }
            else if (k == 5) {
                ClickLeftMenu('5');
            }
            else if (k == 6) {
                ClickLeftMenu('6');
            } else {
                ClickLeftMenu('1');
            }
        });
    </script>

</head>

<jsp:include page="header.jsp" />

<div class="wapper clearfix">
	<img src="img/banner_2.png" />
</div>

<%
	DBDao dbDao = new DBDao();
	dbDao.init();
	//公司简介
	String companyProfile=dbDao.getConfigInfoByName("公司简介");
	//投资策略
	String investmentStrategy=dbDao.getConfigInfoByName("投资策略");
	//投资经理
	List<InvestManagerDto> investManagers=dbDao.getInvestManagers();
	dbDao.close();
%>

<div class="wapper clearfix overhide">
	<div class="subleft">
		<a href="javascript:void(0);" class="on" onclick="ClickLeftMenu('1');"	id="menu01">公司简介</a> 
		<a href="javascript:void(0);" onclick="ClickLeftMenu('2');" id="menu02">安洪理念</a> 
		<a href="javascript:void(0);" onclick="ClickLeftMenu('3');" id="menu03">投资经理</a>
		<a href="javascript:void(0);" onclick="ClickLeftMenu('4');"	id="menu04">投研团队</a> 
	</div>
	<div id="page01" class="rightcontent wordbox" style="display: none;">
		<%
			String[] profileParagraphs = companyProfile.split("\r\n|\n");
			for (String profileParagraph:profileParagraphs){
		 %>
		<p style="background: white; text-align: justify; margin: 7.8pt 0cm 0pt; text-justify: inter-ideograph; line-height: 200%; text-indent: 18pt; mso-para-margin-top: .5gd; mso-para-margin-right: 0cm; mso-para-margin-bottom: .0001pt; mso-para-margin-left: 0cm; mso-char-indent-count: 2.0">
			<span style="font-size: 9pt; line-height: 200%; mso-ascii-font-family: 宋体; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: 宋体; mso-hansi-theme-font: minor-fareast">
				<font face="宋体">
					<%=profileParagraph %>
					<span lang="EN-US"><o:p></o:p></span>
				</font>
			</span>
		</p>									 
		 <%
			}
		 %>		 		
	</div>
	<div id="page02" class="rightcontent wordbox" style="display: none;">
		<strong style="font-weight: bolder; color: #0B3953; font-size: 15px;">投资策略</strong>
		<%
			String[] investmentStrategyParagraphs = investmentStrategy.split("\r\n|\n");
			for (String investmentStrategyParagraph:investmentStrategyParagraphs){
		 %>
		<p style="background: white; text-align: justify; margin: 7.8pt 0cm 0pt; text-justify: inter-ideograph; line-height: 200%; text-indent: 18pt; mso-para-margin-top: .5gd; mso-para-margin-right: 0cm; mso-para-margin-bottom: .0001pt; mso-para-margin-left: 0cm; mso-char-indent-count: 2.0">
			<span style="font-size: 9pt; line-height: 200%; mso-ascii-font-family: 宋体; mso-ascii-theme-font: minor-fareast; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: 宋体; mso-hansi-theme-font: minor-fareast">
				<font face="宋体">
					<%=investmentStrategyParagraph %>
					<span lang="EN-US"><o:p></o:p></span>
				</font>
			</span>
		</p>									 
		 <%
			}
		 %>
	</div>
	<div id="page03" class="rightcontent wordbox" style="display: none;">
		<table style="width: 100%; text-align: left; vertical-align: top;"
			cellpadding="0" cellspacing="0">
			<% 
			for(InvestManagerDto investManager:investManagers){
			%>
			<tr>
				<td	style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					<%=investManager.getName() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					<%=investManager.getInfo() %>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<% 
			}
			%>			
		</table>
	</div>
	<div id="page04" class="rightcontent wordbox" style="display: none;">
		安洪投研团队现由*人组成，均具有良好的教育背景，其中核心投研人员*人，平均从业时间超过10年。 
		<br /> <br />
		<table style="width: 100%; text-align: left; vertical-align: top;"
			cellpadding="0" cellspacing="0">
			<% 
			for(InvestManagerDto investManager:investManagers){
			%>
			<tr>
				<td	style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					<%=investManager.getName() %></td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					<%=investManager.getInfo() %>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<% 
			}
			%>	
		</table>
	</div>
</div>

<jsp:include page="footer.jsp" />

</form>
</body>
</html>