<%@page import="com.ow.dto.RecommendInfo2Dto"%>
<%@page import="java.util.List,java.util.ArrayList"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.sql.*,javax.sql.*,javax.naming.*,com.ow.*"%>

<%
	String pageTitle = "安洪推荐";
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
</head>

<jsp:include page="header.jsp" />

<%!RecommendPage pageInfo = new RecommendPage();%>

<%
	String curPage = request.getParameter("page");
	if (curPage != null && !curPage.equals("")) {

		int num = Integer.parseInt(curPage);
		if (-1 == num) {//上一页

	if (pageInfo.getCurPageNum() > 1) {

		if(pageInfo.getStartPageNum()==pageInfo.getCurPageNum()){
	
	pageInfo.setStartPageNum(pageInfo.getStartPageNum()-1);
	pageInfo.setEndPageNum(pageInfo.getEndPageNum()-1);
		}
		
		pageInfo.setCurPageNum(pageInfo.getCurPageNum() - 1);
		
	}

		} else if (0 == num) {//下一页

	if (pageInfo.getCurPageNum() < pageInfo.getPageCount()) {

		if(pageInfo.getEndPageNum()==pageInfo.getCurPageNum()){
	
	pageInfo.setEndPageNum(pageInfo.getEndPageNum()+1);
	pageInfo.setStartPageNum(pageInfo.getStartPageNum()+1);
		}
		
		pageInfo.setCurPageNum(pageInfo.getCurPageNum() + 1);
	}

		} else {

	pageInfo.setCurPageNum(num);
		}
		
	}
%>

<%
	DBDao dbDao = new DBDao();
	dbDao.init();
	int recId=(pageInfo.getCurPageNum() - 1)*pageInfo.MaxShowPageNum + 1;
	int maxShowPageNum=pageInfo.MaxShowPageNum;
	List<RecommendInfo2Dto> recommendInfoDtos=dbDao.getRecommendInfoDtos(recId, maxShowPageNum);
	pageInfo.setTotalRecordCount(dbDao.getTotalRecommendCount());	
	dbDao.close();
%>
<div class="wapper clearfix">
	<img src="img/banner.png">
</div>
<div class="wapper clearfix overhide">
	<div class="subleft">
		<a href="recommend.jsp" class="on" id="menu01">安洪推荐</a>
	</div>
	<div id="page01" class="rightcontent wordbox" style="">
		<div id="ctl00_cpContent_UpdatePanel1">

			<table width="625" border="0" cellspacing="0" cellpadding="0">

				<%
					for(RecommendInfo2Dto recommendInfoDto:recommendInfoDtos){
				%>

				<tr>
					<td>
						<tr>
							<td width="505"><a
								href="recommenddetail.jsp?id=<%=recommendInfoDto.getId()%>&t=<%=java.net.URLEncoder.encode(recommendInfoDto.getTitle(), "UTF-8")%>"><%=recommendInfoDto.getTitle()%></a></td>
							<td width="120" align="right" style="font-family: Tahoma;"><%=recommendInfoDto.getDate()%></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/recommend/lineB.gif"
								height="1"></td>
						</tr>
					</td>
				</tr>

				<%
					}
				%>
				</td>
				<tr>
			</table>

			<div id="ctl00_cpContent_AspNetPager1" showpageindexbox="Never"
				pagingbuttonclass="PageFontA">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td valign="bottom" align="left" nowrap="true"
								style="width: 40%;"><font color="#0C3855"><%=pageInfo.getTotalRecordCount()%></font>条/<font
								color="#0C3855"><%=pageInfo.getPageCount()%></font>页</td>
							<td valign="bottom" style="width: 60%;"><span
								style="margin-right: 5px;"> <a
									href="recommend.jsp?page=-1" style="margin-right: 5px;">&lt;上一页</a>
									<%
									
										if(pageInfo.getEndPageNum()==-1){//第一次加载
											
											if(pageInfo.getPageCount()<pageInfo.MaxShowPageNum){
												
												pageInfo.setEndPageNum(pageInfo.getPageCount());
												
											}else{
												
												pageInfo.setEndPageNum(pageInfo.MaxShowPageNum);
											}
										}
									
										int iFlag = pageInfo.getStartPageNum();
										while (iFlag <= pageInfo.getEndPageNum()) {
											
											if(iFlag==pageInfo.getCurPageNum()){
											
									%> <a
									href="recommend.jsp?page=<%=iFlag%>"
									style="margin-right: 5px;text-decoration:underline;"><%=iFlag%></a>
									<%
											}else{
																		
									%>
									<a
									href="recommend.jsp?page=<%=iFlag%>"
									style="margin-right: 5px;"><%=iFlag%></a>

									<%
											}
											iFlag++;
										}
									%> 
									<span style="margin-right: 5px;"><a
										href="recommend.jsp?page=0" style="margin-right: 5px;">下一页&gt;</a></td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>

	</div>
</div>

<jsp:include page="footer.jsp" />

<script type="text/javascript">
	//         
	Sys.Application.initialize();
	//
</script>
</form>


</body>
</html>