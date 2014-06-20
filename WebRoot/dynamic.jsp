<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.log4j.Logger"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="com.ow.DBDao"%>
<%@ page import="com.ow.dto.*"%>
<%@ page import="com.ow.*"%>

<%
	String pageTitle = "安洪动态";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><%=pageTitle%></title>
<link href="css/common.css" type="text/css" rel="stylesheet" />
    <script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript" src="js/seanObject.js"></script>
    <script src="js/common.js" type="text/javascript"></script>
    
    <script type="text/javascript">
        $(document).ready(function() {
            var k = $G("k");
            if (k == 1) {
                ClickLeftMenu('1');
            }
            else if (k == 2) {
                ClickLeftMenu('2');
            } else {
                ClickLeftMenu('1');
            }
        });
       
    </script>
    
    <script type="text/javascript">
    
    function menuClick(id){
    	
    	if(id=='1'){
    		
    	}
    	
    	if(id=='2'){
    		
    		
    	}
    }
    
    </script>

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

<%!RecommendPage pageInfoNews = new RecommendPage();%>
<%
String curPageNews = request.getParameter("page_news");
if (curPageNews != null && !curPageNews.equals("")) {

	int num = Integer.parseInt(curPageNews);
	if (-1 == num) {//上一页

if (pageInfoNews.getCurPageNum() > 1) {

	if(pageInfoNews.getStartPageNum()==pageInfoNews.getCurPageNum()){

		pageInfoNews.setStartPageNum(pageInfoNews.getStartPageNum()-1);
		pageInfoNews.setEndPageNum(pageInfoNews.getEndPageNum()-1);
	}
	
	pageInfoNews.setCurPageNum(pageInfoNews.getCurPageNum() - 1);
	
}

	} else if (0 == num) {//下一页

if (pageInfoNews.getCurPageNum() < pageInfoNews.getPageCount()) {

	if(pageInfoNews.getEndPageNum()==pageInfoNews.getCurPageNum()){

		pageInfoNews.setEndPageNum(pageInfoNews.getEndPageNum()+1);
		pageInfoNews.setStartPageNum(pageInfoNews.getStartPageNum()+1);
	}
	
	pageInfoNews.setCurPageNum(pageInfoNews.getCurPageNum() + 1);
}

	} else {

		pageInfoNews.setCurPageNum(num);
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
	
	int newsId=(pageInfoNews.getCurPageNum() - 1)*pageInfoNews.MaxShowPageNum + 1;
	int maxShowPageNumNews=pageInfoNews.MaxShowPageNum;
	List<NewsInfoDto> newsInfoDtos=dbDao.getNewsInfoDtos(newsId, maxShowPageNumNews);
	pageInfoNews.setTotalRecordCount(dbDao.getTotalNewsCount());		
	
	dbDao.close();
%>

<script type="text/javascript">
	//<![CDATA[
	Sys.WebForms.PageRequestManager._initialize('ctl00$cpContent$ScriptManager1', document.getElementById('aspnetForm'));
	Sys.WebForms.PageRequestManager.getInstance()._updateControls([ 'tctl00$cpContent$UpdatePanel1','tctl00$cpContent$UpdatePanel2' ], [], [], 90);
	//]]>
</script>

<div class="wapper clearfix">
	<img src="img/banner.png">
</div>
<div class="wapper clearfix overhide">
	<div class="subleft">
		<a href="javascript:void(0);" class="on" onclick="ClickLeftMenu('1');"
			id="menu01">公司新闻</a> 
		<a href="javascript:void(0);" onclick="ClickLeftMenu('2');" 
			id="menu02" class="">行业推荐</a>
	</div>
	<div id="page01" class="rightcontent wordbox" style="display: block;">
	<div id="ctl00_cpContent_UpdatePanel1">

			<table width="625" border="0" cellspacing="0" cellpadding="0">

				<%
					for(NewsInfoDto newsInfoDto:newsInfoDtos){
				%>

				<tr>
					<td>
						<tr>
							<td width="505"><a
								href="newsdetail.jsp?id=<%=newsInfoDto.getId()%>&t=<%=java.net.URLEncoder.encode(newsInfoDto.getTitle(), "UTF-8")%>"><%=newsInfoDto.getTitle()%></a></td>
							<td width="120" align="right" style="font-family: Tahoma;"><%=newsInfoDto.getCreateTime()%></td>
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
								style="width: 40%;"><font color="#0C3855"><%=pageInfoNews.getTotalRecordCount()%></font>条/<font
								color="#0C3855"><%=pageInfoNews.getPageCount()%></font>页</td>
							<td valign="bottom" style="width: 60%;"><span
								style="margin-right: 5px;"> <a
									href="dynamic.jsp?page_news=-1" style="margin-right: 5px;">&lt;上一页</a>
									<%
									
										if(pageInfoNews.getEndPageNum()==-1){//第一次加载
											
											if(pageInfoNews.getPageCount()<pageInfoNews.MaxShowPageNum){
												
												pageInfoNews.setEndPageNum(pageInfoNews.getPageCount());
												
											}else{
												
												pageInfoNews.setEndPageNum(pageInfoNews.MaxShowPageNum);
											}
										}
									
										int iFlagNews = pageInfoNews.getStartPageNum();
										while (iFlagNews <= pageInfoNews.getEndPageNum()) {
											
											if(iFlagNews==pageInfoNews.getCurPageNum()){
											
									%> <a
									href="dynamic.jsp?page_news=<%=iFlagNews%>"
									style="margin-right: 5px;text-decoration:underline;"><%=iFlagNews%></a>
									<%
											}else{
																		
									%>
									<a
									href="dynamic.jsp?page_news=<%=iFlagNews%>"
									style="margin-right: 5px;"><%=iFlagNews%></a>

									<%
											}
											iFlagNews++;
										}
									%> 
									<span style="margin-right: 5px;"><a
										href="dynamic.jsp?page_news=0" style="margin-right: 5px;">下一页&gt;</a></td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</div>
	
	
	<!--  行业推荐     -->
	<div id="page02" class="rightcontent wordbox" style="display: block;">
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
									href="dynamic.jsp?page=-1" style="margin-right: 5px;">&lt;上一页</a>
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
									href="dynamic.jsp?page=<%=iFlag%>"
									style="margin-right: 5px;text-decoration:underline;"><%=iFlag%></a>
									<%
											}else{
																		
									%>
									<a
									href="dynamic.jsp?page=<%=iFlag%>"
									style="margin-right: 5px;"><%=iFlag%></a>

									<%
											}
											iFlag++;
										}
									%> 
									<span style="margin-right: 5px;"><a
										href="dynamic.jsp?page=0" style="margin-right: 5px;">下一页&gt;</a></td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</div>
	
</div>


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

<script type="text/javascript">
//<![CDATA[
Sys.Application.initialize();
//]]>
</script>
</form>
</body>
</html>