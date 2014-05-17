<%@page import="java.awt.image.TileObserver"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.sql.*,javax.sql.*,javax.naming.*,com.ow.*"%>

<%
	String tmp = URLDecoder.decode(request.getParameter("t"), "UTF-8");
	String pageTitle = new String(tmp.getBytes("ISO-8859-1"), "UTF-8");

	//out.print(recTitle);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
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

<%
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	String recAuthor = "";
	String recTitle = "";
	String recInfo = "";
	String recTime = "";

	try {

		//ds = (DataSource) ctx.lookup("java:comp/env/jdbc/ow");
		///conn = ds.getConnection();
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		String url = "jdbc:mysql://localhost:8888/owdb";
		conn = DriverManager.getConnection(url, "cht", "cht");

		String recId = request.getParameter("id");

		stmt = conn
				.prepareStatement("select recAuthor,recTitle,recInfo,recTime from recommendinfo where recId = ? ");
		stmt.setInt(1, Integer.parseInt(recId));
		rs = stmt.executeQuery();
		if (rs.next()) {

			recAuthor = rs.getString(1);
			recTitle = rs.getString(2);
			recInfo = rs.getString(3);
			recTime = rs.getTimestamp(4).toString();

		}

	} catch (Exception ex) {

		out.print(ex.getStackTrace());
	}

	finally {

		if(rs!=null) rs.close();

		if(stmt!=null) stmt.close();

		if(conn!=null) conn.close();
	}
%>


<div class="wapper clearfix">
	<img src="img/recommend/banner_news.jpg">
</div>
<div class="wapper clearfix overhide">
	<div class="subleft">
		<a id="menu01" class="on" href="recommend2.jsp">安洪推荐</a>
	</div>
	<div class="rightcontent wordbox" style="text-indent: 2em;">
		<table style="border-collapse: collapse;"
			id="ctl00_cpContent_DataList1" border="0" cellSpacing="0">
			<tbody>
				<tr>
					<td>
						<table border="0" cellSpacing="0" cellPadding="0" width="625">
							<tbody>
								<tr>
									<td><strong
										style="color: rgb(15, 54, 83); font-weight: bolder;">

											<%=recTitle%></strong>&nbsp;<%=recTime%></td>
								</tr>
								<tr>
									<td style="color: rgb(123, 123, 123);"><BR>
										<p
											style="margin: 7.8pt 0cm 0pt; text-align: right; line-height: 200%; text-indent: 18pt; mso-para-margin-top: .5gd; mso-char-indent-count: 2.0; mso-pagination: widow-orphan;"
											class="MsoNormal" align="right">
											<span
												style="color: gray; line-height: 200%; font-family: 宋体; font-size: 9pt; mso-bidi-font-size: 12.0pt; mso-bidi-font-family: Helvetica; mso-themecolor: background1; mso-themeshade: 128; mso-font-kerning: 0pt;">作者：<%=recAuthor%><span
												lang="EN-US"><o:p></o:p></span></span>
										</p> <%
 	String[] paragraphs = PageUtil.getParagraphs(recInfo);

 	for (int i = 0; i < paragraphs.length; i++) {
 %>

										<p
											style="margin: 7.8pt 0cm 0pt; text-align: left; line-height: 200%; text-indent: 18pt; mso-para-margin-top: .5gd; mso-char-indent-count: 2.0; mso-pagination: widow-orphan;"
											class="MsoNormal" align="left">

											<span
												style="color: gray; line-height: 200%; font-family: 宋体; font-size: 9pt; mso-bidi-font-size: 12.0pt; mso-bidi-font-family: Helvetica; mso-themecolor: background1; mso-themeshade: 128; mso-font-kerning: 0pt;"><%=paragraphs[i]%><span
												lang="EN-US"><o:p></o:p></span></span>
										</p> <%
 	}
 %></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<jsp:include page="footer.jsp" />

</form>

</body>
</html>