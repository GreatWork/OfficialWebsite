<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.sql.*,javax.sql.*,javax.naming.*,com.ow.*"%>

<%
	String pageTitle = "重阳推荐";
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

				pageInfo.setCurPageNum(pageInfo.getCurPageNum() - 1);
			}

		} else if (0 == num) {//下一页

			if (pageInfo.getCurPageNum() < pageInfo.getPageCount()) {

				pageInfo.setCurPageNum(pageInfo.getCurPageNum() + 1);
			}

		} else {

			pageInfo.setCurPageNum(num);
		}
	}
%>

<script type="text/javascript">
	var curPageNum = 1;
	var maxShowRecCount = 5;
	var maxShowPageNum = 5;
	var totalRecCount = 0;

	function getPageCount() {

		if (totalRecCount % maxShowRecCount == 0) {

			return totalRecCount % maxShowRecCount;
		}

		return totalRecCount % maxShowRecCount + 1;
	}

	function __doPostBack(pageNum) {

		alert(pageNum);

		locaion.reload();
	}
</script>



<div class="wapper clearfix">
	<img src="img/recommend/banner_news.jpg">
</div>
<div class="wapper clearfix overhide">
	<div class="subleft">
		<a href="recommend.jsp" class="on" id="menu01">重阳推荐</a>
	</div>
	<div id="page01" class="rightcontent wordbox" style="">
		<div id="ctl00_cpContent_UpdatePanel1">

			<table width="625" border="0" cellspacing="0" cellpadding="0">

				<%
					//Context ctx = new InitialContext();

					//Connection conn = null;

					//DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/ow");

					//conn = ds.getConnection();

					Class.forName("com.mysql.jdbc.Driver").newInstance();
					String url = "jdbc:mysql://localhost:8888/owdb";
					Connection conn = DriverManager.getConnection(url, "cht", "cht");

					PreparedStatement stmt = conn
							.prepareStatement("select recId,recTitle,recTime from recommendinfo where recId >= ? limit ?");

					stmt.setInt(1, (pageInfo.getCurPageNum() - 1)
							* pageInfo.MaxShowPageNum + 1);
					stmt.setInt(2, pageInfo.MaxShowPageNum);

					ResultSet rs = stmt.executeQuery();

					String title = "";
					String dateString = "";
					String id = "";

					while (rs.next()) {

						id = rs.getInt(1) + "";
						title = rs.getString(2);
						dateString = rs.getDate(3).toString();
				%>

				<tr>
					<td>
						<tr>
							<td width="505"><a
								href="recommenddetail.jsp?id=<%=id%>&t=<%=java.net.URLEncoder.encode(title, "UTF-8")%>"><%=title%></a></td>
							<td width="120" align="right" style="font-family: Tahoma;"><%=dateString%></td>
						</tr>
						<tr>
							<td colspan="2"><img src="img/recommend/lineB.gif"
								height="1"></td>
						</tr>
					</td>
				</tr>

				<%
					}

					//获取总记录数
					rs = stmt.executeQuery("select count(1) from recommendinfo");

					if (rs.next())
						pageInfo.setTotalRecordCount(rs.getInt(1));

					rs.close();

					stmt.close();

					conn.close();
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
										int iFlag = 0;
										while (iFlag < pageInfo.MaxShowPageNum) {

											if (pageInfo.getCurPageNum() + iFlag <= pageInfo.getPageCount()) {
									%> <a
									href="recommend.jsp?page=<%=pageInfo.getCurPageNum() + iFlag%>"
									style="margin-right: 5px;"><%=pageInfo.getCurPageNum() + iFlag%></a>


									<%
										}
											iFlag++;
										}
									%> <span style="margin-right: 5px;"><a
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
//<![CDATA[
Sys.Application.initialize();
//]]>
</script>
</form>


</body>
</html>