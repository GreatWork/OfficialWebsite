<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.log4j.Logger"%>

<%
	String pageTitle = "重阳动态";
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
		<a href="dynamic.jsp" class="on" id="menu01">重阳资讯</a> <a
			href="dynamic.jsp?k=2" id="menu02">重阳视点</a>
	</div>
	<div class="rightcontent wordbox">
		<table id="ctl00_cpContent_DataList1" cellspacing="0" border="0"
			style="border-collapse: collapse;">
			<tbody>
				<tr>
					<td>
						<table width="625" border="0" cellspacing="0" cellpadding="0">
							<tbody>
								<tr>
									<td><strong style="color: #0F3653; font-weight: bolder">
											重阳降息点评：降低融资成本，刺激信贷需求</strong>&nbsp;2012-7-5 20:18:32&nbsp;&nbsp;</td>
								</tr>
								<tr>
									<td style="color: #7b7b7b"><br>
										<p
											style="text-align: left; line-height: 200%; text-indent: 18pt; margin: 6pt 0cm 0pt; layout-grid-mode: char; mso-para-margin-top: .5gd; mso-char-indent-count: 2.0; mso-layout-grid-align: none"
											class="MsoNormal" align="left">
											<span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">央行年内第二次下调存贷款基准利率。其中，一年期存款基准利率下调</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">0.25</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">个百分点至</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">3.0%</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">，一年期贷款基准利率下调</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">0.31</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">个百分点至</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">6.0%</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">。此外，活期存款利率下调</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">0.05</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">个百分点，</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">3</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">个月及</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">6</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">个月存款利率下调</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">0.25</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">个百分点，</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">2</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">年期及以上存款利率上调</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">0.35-0.40</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">个百分点。贷款方面，除</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">1</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">年期外，其他各期限贷款利率均下调</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">0.25</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">个百分点。更重要的是，央行进一步将金融机构贷款利率浮动区间的下限由基准利率的</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">0.8</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">倍调整为</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">0.7</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">倍，进一步扩大了银行的贷款定价空间。</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><o:p></o:p></span>
										</p>
										<p
											style="text-align: left; line-height: 200%; text-indent: 18pt; margin: 6pt 0cm 0pt; layout-grid-mode: char; mso-para-margin-top: .5gd; mso-char-indent-count: 2.0; mso-layout-grid-align: none"
											class="MsoNormal" align="left">
											<span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">在经济下行的背景下，企业盈利能力下降，信贷需求也相对疲弱。据媒体报道，</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">6</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">月降息后信贷并无显著增长，四大行新增贷款仅为</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><font face="Calibri">1880</font></span><span
												style="line-height: 200%; font-family: 宋体; color: gray; font-size: 9pt; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-themecolor: background1; mso-themeshade: 128">亿元。央行连续第二个月降息并下调贷款利率浮动区间下限，意在降低融资成本，刺激企业信贷需求。</span><span
												style="line-height: 200%; color: gray; font-size: 9pt; mso-themecolor: background1; mso-themeshade: 128"
												lang="EN-US"><o:p></o:p></span>
										</p></td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>


<%!private static final Logger logger = Logger
			.getLogger("com.chongyang.dynamic");%>


<script type="text/javascript">
	//<![CDATA[
	Sys.Application.initialize();
	//]]>
</script>

<jsp:include page="footer.jsp" />