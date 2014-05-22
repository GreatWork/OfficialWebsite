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
	TableDto viewPointTable=new TableDto();
	String curPage = request.getParameter("page");
	if (curPage != null && !curPage.equals("")) {
		String[] curPages=curPage.split("A");
		newsInfoTable.setCurPageNum(Integer.parseInt(curPages[0]));
		viewPointTable.setCurPageNum(Integer.parseInt(curPages[1]));
	} else {
		newsInfoTable.setCurPageNum(1);
		viewPointTable.setCurPageNum(1);
	}
	DBDao dbDao = new DBDao();
	dbDao.init();
	newsInfoTable.setTotalRecordCount(dbDao.getNewsInfoTotalNum());
	viewPointTable.setTotalRecordCount(dbDao.getViewPointTotalNum());
	//获得当前页数据
	List<NewsInfoDto> newsInfos=dbDao.getNewsInfoByPage(newsInfoTable.getCurPageNum(), TableDto.MAX_RECORD_PER_PAGE);
	List<ViewPointDto> viewPoints=dbDao.getViewPointByPage(viewPointTable.getCurPageNum(), TableDto.MAX_RECORD_PER_PAGE);
	dbDao.close();
%>

<script type="text/javascript">
	//<![CDATA[
	Sys.WebForms.PageRequestManager._initialize('ctl00$cpContent$ScriptManager1', document.getElementById('aspnetForm'));
	Sys.WebForms.PageRequestManager.getInstance()._updateControls([ 'tctl00$cpContent$UpdatePanel1','tctl00$cpContent$UpdatePanel2' ], [], [], 90);
	//]]>
</script>

<div class="wapper clearfix">
	<img src="img/banner_profile.jpg">
</div>
<div class="wapper clearfix overhide">
	<div class="subleft">
		<a href="javascript:void(0);" class="on" onclick="ClickLeftMenu('1');"
			id="menu01">安洪资讯</a> 
		<a href="javascript:void(0);" onclick="ClickLeftMenu('2');" 
			id="menu02" class="">安洪视点</a>
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
								<% 
									if(newsInfoTable.getCurPageNum()>1){
								%>
								<a href="dynamic.jsp?page=1A<%=viewPointTable.getCurPageNum() %>" style="margin-right: 5px;">&lt;&lt;</a>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum()-1%>A<%=viewPointTable.getCurPageNum() %>" style="margin-right: 5px;">&lt;</a>
								<%								
									}
									int newsInfoCardinalNum=newsInfoTable.getCurPageNum()/TableDto.MAX_SHOW_PAGE_NUM;	//第几个10
							    	int newsInfoBeginPageNum=newsInfoCardinalNum*TableDto.MAX_SHOW_PAGE_NUM;								
									
							    	if(newsInfoCardinalNum>0){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoBeginPageNum %>A<%=viewPointTable.getCurPageNum() %>" style="margin-right: 5px;">...</a>
								<%	}

								    for(int i=1;i<=TableDto.MAX_SHOW_PAGE_NUM && newsInfoBeginPageNum+i<=newsInfoTable.getPageCount();i++){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoBeginPageNum+i %>A<%=viewPointTable.getCurPageNum() %>" style="margin-right: 5px;"><%=newsInfoBeginPageNum+i %></a>
								<%  }
								    
							    	if(newsInfoBeginPageNum+TableDto.MAX_SHOW_PAGE_NUM<newsInfoTable.getPageCount()){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoBeginPageNum+TableDto.MAX_SHOW_PAGE_NUM %>A<%=viewPointTable.getCurPageNum() %>" style="margin-right: 5px;">...</a>
								<%	}
							    	if(newsInfoTable.getCurPageNum()<newsInfoTable.getPageCount()){
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum()+1 %>A<%=viewPointTable.getCurPageNum() %>" style="margin-right: 5px;">&gt;</a>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getPageCount() %>A<%=viewPointTable.getCurPageNum() %>" style="margin-right: 5px;">&gt;&gt;</a>
								<%
							    	}
								%>
								<input type="text" value="<%=newsInfoTable.getCurPageNum() %>" name="ctl00$cpContent$AspNetPager1_input" id="ctl00$cpContent$AspNetPager1_input" onkeydown="ANP_keydown(event,'ctl00$cpContent$AspNetPager1_btn');" style="width:30px;" />
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
					<%for(ViewPointDto viewPoint:viewPoints){%>		
					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetail.jsp?id=<%=viewPoint.getId() %>&amp;k=2">
								<%=viewPoint.getTitle() %></a>
						</td>
						<td width="120" align="right" style="font-family: Tahoma;">
							<%=formatTime(viewPoint.getCreateTime()) %></td>
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
								<font color="#0C3855"><%=viewPointTable.getTotalRecordCount()%></font>条/
								<font color="#0C3855"><%=viewPointTable.getPageCount()%></font>页
							</td>
							<td valign="bottom" align="notset" nowrap="true" class=""
								style="width: 60%;">
								<% 
									if(viewPointTable.getCurPageNum()>1){
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A1&k=2" style="margin-right: 5px;">&lt;&lt;</a>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum()%>A<%=viewPointTable.getCurPageNum()-1 %>&k=2" style="margin-right: 5px;">&lt;</a>
								<%
									}
									int viewPointCardinalNum=viewPointTable.getCurPageNum()/TableDto.MAX_SHOW_PAGE_NUM;	//第几个10
							    	int viewPointBeginPageNum=viewPointCardinalNum*TableDto.MAX_SHOW_PAGE_NUM;								
									
							    	if(viewPointCardinalNum>0){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=viewPointBeginPageNum %>&k=2" style="margin-right: 5px;">...</a>
								<%	}

								    for(int i=1;i<=TableDto.MAX_SHOW_PAGE_NUM && viewPointBeginPageNum+i<=viewPointTable.getPageCount();i++){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=viewPointBeginPageNum+i %>&k=2" style="margin-right: 5px;"><%=viewPointBeginPageNum+i %></a>
								<%  }
								    
							    	if(viewPointBeginPageNum+TableDto.MAX_SHOW_PAGE_NUM<newsInfoTable.getPageCount()){										
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=viewPointBeginPageNum+TableDto.MAX_SHOW_PAGE_NUM %>&k=2" style="margin-right: 5px;">...</a>
								<%	}
							    	if(viewPointTable.getCurPageNum()<viewPointTable.getPageCount()){
								%>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=viewPointTable.getCurPageNum()-1 %>&k=2" style="margin-right: 5px;">&gt;</a>
								<a href="dynamic.jsp?page=<%=newsInfoTable.getCurPageNum() %>A<%=viewPointTable.getPageCount() %>&k=2" style="margin-right: 5px;">&gt;&gt;</a>
								<%
							    	}
								%>
								<input type="text" value="<%=viewPointTable.getCurPageNum() %>" name="ctl00$cpContent$AspNetPager1_input" id="ctl00$cpContent$AspNetPager1_input" onkeydown="ANP_keydown(event,'ctl00$cpContent$AspNetPager1_btn');" style="width:30px;" />
							</td>						
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</div>
</div>


<%!

	private static final Logger logger = Logger.getLogger("com.ow.dynamic");
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