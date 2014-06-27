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
	
	//公司理念
	String companyPhilosophy=dbDao.getConfigInfoByName("公司理念");
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
		<p>
			&nbsp;&nbsp;上海安洪投资管理有限公司成立于2014年4月。公司由具有20年证券投资经历的李洪波先生发起建立，是一个年轻而富有朝气的资产管理公司。公司创始人李洪波先生具有长期国内著名基金管理公司丰富的投研管理经验，曾担任国联安德盛精选基金经理，管理资金规模近百亿元。
		</p>
		<br /> 
		<p>
			&nbsp;&nbsp;安洪投资秉承“复利投资，稳健增长”的投资理念，“大胆假设、小心求证、谨慎投资”的投资方法。我们既专注投资于具有广阔成长空间和强大竞争力的成长型企业，也充分重视绝对价值明显低估，具备大量隐形资产的企业投资。
		</p>
		<%
			String[] philosophys=companyPhilosophy.split("\r\n");
		    for(String philosophy:philosophys){
		%>
		<p>
			&nbsp;&nbsp;<%=philosophy %>
		</p>
		<br />
		<%  }%> 		
	</div>
	<div id="page02" class="rightcontent wordbox" style="display: none;">
		<strong style="font-weight: bolder; color: #0B3953; font-size: 15px;">投资策略</strong>
		<p>
			宏观方面的把握。结合宏观面情况确定投资总体方向。股票市场的繁荣与否，与经济形势的总体概况紧密相连。只有总体经济形势把握好了，才能够从一个更广义的角度来看待股票市场的日常波动情况，才有一个明确的方向感。而这个明确的方向感，是坚持价值投资的前提。
		</p>
		<br />
		<p>
			深入研究公司基本面，确定具体投资标的。在把握了宏观经济政策与形势之后，我们再展开从上而下，从行业到个股的价值分析。把握了经济总体的走势，才能找到一些新兴行业，一些代表将来发展趋势的充满希望的公司。我们不仅专注投资于具有广阔成长空间和强大竞争力的成长型企业，也充分重视绝对价值明显低估具备大量隐形资产的企业投资。
		</p>
		<br />
		<p>
			根据市场的估值水平及交易气氛确定买卖时机。在充分做好了基本面的研究之后，我们也会回到技术分析中。任何一个股票，都存在着一个比较好的买点和卖点。我们也将根据我们十几年的股市从业经验，来选择正确的买卖时机。
		</p>
		<br />
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