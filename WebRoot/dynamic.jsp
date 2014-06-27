<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.log4j.Logger"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="com.ow.DBDao"%>
<%@ page import="com.ow.dto.*"%>

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

</head>

<jsp:include page="header.jsp" />

<%
	TableDto newsInfoTable=new TableDto();
	TableDto recommendTable=new TableDto();
	String curPage = request.getParameter("page");
	if (curPage != null && !curPage.equals("")) {
		String[] curPages=curPage.split("A");
		newsInfoTable.setCurPageNum(Integer.parseInt(curPages[0]));
		recommendTable.setCurPageNum(Integer.parseInt(curPages[1]));
	} else {
		newsInfoTable.setCurPageNum(1);
		recommendTable.setCurPageNum(1);
	}
	DBDao dbDao = new DBDao();
	dbDao.init();
	newsInfoTable.setTotalRecordCount(dbDao.getNewsInfoTotalNum());
	recommendTable.setTotalRecordCount(dbDao.getRecommendInfoTotalNum());
	//获得当前页数据
	List<NewsInfoDto> newsInfos=dbDao.getNewsInfoByPage(newsInfoTable.getCurPageNum(), TableDto.MAX_RECORD_PER_PAGE);
	List<RecommendInfoDto> recommendInfos=dbDao.getRecommendInfoByPage(recommendTable.getCurPageNum(), TableDto.MAX_RECORD_PER_PAGE);
	dbDao.close();
%>

<script type="text/javascript">
	//<![CDATA[
	Sys.WebForms.PageRequestManager._initialize('ctl00$cpContent$ScriptManager1', document.getElementById('aspnetForm'));
	Sys.WebForms.PageRequestManager.getInstance()._updateControls([ 'tctl00$cpContent$UpdatePanel1','tctl00$cpContent$UpdatePanel2' ], [], [], 90);
	//]]>
</script>

<div class="wapper clearfix">
	<img src="img/banner_4.png" />
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
			</table>
			<table id="ctl00_cpContent_DataList1" cellspacing="0" border="0"
				style="border-collapse: collapse;">
				<tbody>
					<%for(NewsInfoDto newsInfo:newsInfos){%>		
					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetail.jsp?id=<%=newsInfo.getId() %>">
								<%=newsInfo.getTitle() %></a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							<%=formatTime(newsInfo.getCreateTime()) %></td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>
					<%}%>		
				</tbody>
			</table>

			<div id="ctl00_cpContent_AspNetPager1" showpageindexbox="Never"
				pagingbuttonclass="PageFontA">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td valign="bottom" align="left" nowrap="true"
								style="width: 40%;">
								<font color="#0C3855"><%=newsInfoTable.getTotalRecordCount()%></font>条/
								<font color="#0C3855"><%=newsInfoTable.getPageCount()%></font>页
							</td>
							<td valign="bottom" align="notset" nowrap="true" class=""
								style="width: 60%;">
								<a href="dynamic.jsp?page=1A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;">&lt;&lt;</a>
								<% 
									if(newsInfoTable.getCurPageNum()>1){
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum()-1%>A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;">&lt;</a>
								<%								
									}else{
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum()%>A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;">&lt;</a>
								<%																		
									}
								
									int newsInfoCardinalNum=newsInfoTable.getCurPageNum()/TableDto.MAX_SHOW_PAGE_NUM;	//第几个10
							    	int newsInfoBeginPageNum=newsInfoCardinalNum*TableDto.MAX_SHOW_PAGE_NUM;								
									
							    	if(newsInfoCardinalNum>0){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoBeginPageNum %>A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;">...</a>
								<%	
									}

								    for(int i=1;i<=TableDto.MAX_SHOW_PAGE_NUM && newsInfoBeginPageNum+i<=newsInfoTable.getPageCount();i++){	
								    	int nowNewsInfoBeginPageNum=newsInfoBeginPageNum+i;
								    	if(nowNewsInfoBeginPageNum == newsInfoTable.getCurPageNum()){
								%>
								<a href="dynamic.jsp?page=<%=nowNewsInfoBeginPageNum %>A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;text-decoration:underline;"><%=nowNewsInfoBeginPageNum %></a>
								<%  								    		
								    	}else{
								%>
								<a href="dynamic.jsp?page=<%=nowNewsInfoBeginPageNum %>A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;"><%=nowNewsInfoBeginPageNum %></a>
								<%  								    		
								    	}
									}
								    
							    	if(newsInfoBeginPageNum+TableDto.MAX_SHOW_PAGE_NUM<newsInfoTable.getPageCount()){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoBeginPageNum+TableDto.MAX_SHOW_PAGE_NUM %>A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;">...</a>
								<%	
									}
							    	if(newsInfoTable.getCurPageNum()<newsInfoTable.getPageCount()){
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum()+1 %>A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;">&gt;</a>
								<%
							    	}else{
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;">&gt;</a>
								<%							    		
							    	}
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getPageCount() %>A<%=recommendTable.getCurPageNum() %>" style="margin-right: 5px;">&gt;&gt;</a>																
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- AspNetPager V6.0.0 for VS2005 End -->



		</div>
	</div>
	<div id="page02" class="rightcontent wordbox" style="display: none;">
		<div id="ctl00_cpContent_UpdatePanel2">

			<table width="625" border="0" cellspacing="0" cellpadding="0">
			</table>
			<table id="ctl00_cpContent_DataList2" cellspacing="0" border="0"
				style="border-collapse: collapse;">
				<tbody>
					<%for(RecommendInfoDto recommendInfo:recommendInfos){%>		
					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetail.jsp?id=<%=recommendInfo.getId() %>&k=2">
								<%=recommendInfo.getTitle() %></a>
						</td>
						<td width="120" align="right" style="font-family: Tahoma;">
							<%=formatTime(recommendInfo.getCreateTime()) %></td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>
					<%}%>		
				</tbody>
			</table>

			<div id="ctl00_cpContent_AspNetPager2" showpageindexbox="Never"
				pagingbuttonclass="PageFontA">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td valign="bottom" align="left" nowrap="true"
								style="width: 40%;">
								<font color="#0C3855"><%=recommendTable.getTotalRecordCount()%></font>条/
								<font color="#0C3855"><%=recommendTable.getPageCount()%></font>页
							</td>
							<td valign="bottom" align="notset" nowrap="true" class=""
								style="width: 60%;">
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A1&k=2" style="margin-right: 5px;">&lt;&lt;</a>
								<% 
									if(recommendTable.getCurPageNum()>1){
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum()%>A<%=recommendTable.getCurPageNum()-1 %>&k=2" style="margin-right: 5px;">&lt;</a>
								<%
									}else{
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum()%>A<%=recommendTable.getCurPageNum() %>&k=2" style="margin-right: 5px;">&lt;</a>
								<%										
									}
									int recommendInfoCardinalNum=recommendTable.getCurPageNum()/TableDto.MAX_SHOW_PAGE_NUM;	//第几个10
							    	int recommendInfoBeginPageNum=recommendInfoCardinalNum*TableDto.MAX_SHOW_PAGE_NUM;								
									
							    	if(recommendInfoCardinalNum>0){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=recommendInfoBeginPageNum %>&k=2" style="margin-right: 5px;">...</a>
								<%	}

								    for(int i=1;i<=TableDto.MAX_SHOW_PAGE_NUM && recommendInfoBeginPageNum+i<=recommendTable.getPageCount();i++){
								    	int nowrecommendInfoPageNum=recommendInfoBeginPageNum+i;
								    	if(nowrecommendInfoPageNum == recommendTable.getCurPageNum()){
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=nowrecommendInfoPageNum %>&k=2" style="margin-right: 5px;text-decoration:underline;"><%=nowrecommendInfoPageNum %></a>
								<%  								    										    		
								    	}else{
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=nowrecommendInfoPageNum %>&k=2" style="margin-right: 5px;"><%=nowrecommendInfoPageNum %></a>
								<%  								    		
								    	}
									}
								    
							    	if(recommendInfoBeginPageNum+TableDto.MAX_SHOW_PAGE_NUM<newsInfoTable.getPageCount()){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=recommendInfoBeginPageNum+TableDto.MAX_SHOW_PAGE_NUM %>&k=2" style="margin-right: 5px;">...</a>
								<%	}
							    	if(recommendTable.getCurPageNum()<recommendTable.getPageCount()){
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=recommendTable.getCurPageNum()-1 %>&k=2" style="margin-right: 5px;">&gt;</a>
								<%
							    	}else{
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=recommendTable.getCurPageNum() %>&k=2" style="margin-right: 5px;">&gt;</a>
								<%							    		
							    	}
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=recommendTable.getPageCount() %>&k=2" style="margin-right: 5px;">&gt;&gt;</a>
							</td>						
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