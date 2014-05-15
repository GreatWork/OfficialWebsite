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

<!--[if lte IE 6]>  
<script type="text/javascript" src="js/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">  
       DD_belatedPNG.fix('.a_left');   
       DD_belatedPNG.fix('.a_right'); 
</script>  
<![endif]-->
</head>

<jsp:include page="header.jsp" />

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
			id="menu01">重阳资讯</a> 
		<a href="javascript:void(0);" onclick="ClickLeftMenu('2');" 
			id="menu02" class="">重阳视点</a>
	</div>
	<div id="page01" class="rightcontent wordbox" style="display: block;">
		<div id="ctl00_cpContent_UpdatePanel1">
			<table width="625" border="0" cellspacing="0" cellpadding="0">
			</table>
			<table id="ctl00_cpContent_DataList1" cellspacing="0" border="0"
				style="border-collapse: collapse;">
				<tbody>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7817">
								重阳问答：新国九条促资本市场走向成熟和理性</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.05.12</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7810">
								重阳问答：经济转型将降低中长期资金价格</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.05.05</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7806">
								重阳系列产品2014年5月开放日温馨提示</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.05.05</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7798">
								重阳问答：IPO“二次重启”可能催化市场风格转换</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.04.28</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7788">
								裘国根：未来两年投资策略的最优象限</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.04.12</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7789">
								重阳投资蝉联五届中国私募金牛奖</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.04.12</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7782">
								重阳系列产品2014年4月开放日温馨提示</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.04.01</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7770">
								转型期：如何弯道超越</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.03.26</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7779">
								重阳投资获“2013年度最值得信赖对冲基金管理人”称号</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.03.25</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7771">
								中国股市遭遇“完美风暴”</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.03.25</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7780">
								裘国根：布局低估值优质股的绝佳时机已现</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.03.24</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7778">
								外贸信托·重阳对冲2号集合资金信托计划成立公告</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.03.21</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>


				</tbody>
			</table>

			<div id="ctl00_cpContent_AspNetPager1" showpageindexbox="Never"
				pagingbuttonclass="PageFontA">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td valign="bottom" align="left" nowrap="true"
								style="width: 40%;"><font color="#0C3855">233</font>条/<font
								color="#0C3855">20</font>页</td>
							<td valign="bottom" align="notset" nowrap="true" class=""
								style="width: 60%;"><a disabled="true"
								style="margin-right: 5px;">&lt;&lt;</a><a disabled="true"
								style="margin-right: 5px;">&lt;</a><span class="PageFontB"
								style="margin-right: 5px;">1</span><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','2')"
								style="margin-right: 5px;">2</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','3')"
								style="margin-right: 5px;">3</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','4')"
								style="margin-right: 5px;">4</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','5')"
								style="margin-right: 5px;">5</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','6')"
								style="margin-right: 5px;">6</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','7')"
								style="margin-right: 5px;">7</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','8')"
								style="margin-right: 5px;">8</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','9')"
								style="margin-right: 5px;">9</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','10')"
								style="margin-right: 5px;">10</a><span
								style="margin-right: 5px;"><a
									href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','11')">...</a></span><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','2')"
								style="margin-right: 5px;">&gt;</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager1','20')"
								style="margin-right: 5px;">&gt;&gt;</a></td>
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
					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7793&amp;k=2">
								2014年4月宏观分析报告：中国经济转型呈现积极信号</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.04.22</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7775&amp;k=2">
								2014年3月宏观分析报告：“钱松”与“钱紧”缘何并存？</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.03.26</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7774&amp;k=2">
								2014年2月宏观分析报告：不一样新兴市场危机</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.02.27</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7773&amp;k=2">
								2014年1月宏观分析报告：中国经济变差了吗？</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2014.01.26</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7772&amp;k=2">
								2013年12月宏观分析报告：2014年经济定调稳中求进、改革创新</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2013.12.27</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7724&amp;k=2">
								利率上升源于内生性资金压力</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2013.12.23</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7702&amp;k=2">
								2013年11月宏观分析报告：新一轮改革降低社会的尾部风险</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2013.11.27</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7723&amp;k=2">
								创业板泡沫破灭过程中的优质蓝筹股机会</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2013.11.26</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7690&amp;k=2">
								2013年10月宏观分析报告：央行停止逆回购意在回归中性偏紧</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2013.10.29</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7669&amp;k=2">
								2013年9月宏观分析报告：道德风险下利率体系的重构</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2013.09.23</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7631&amp;k=2">
								2013年8月宏观分析报告：非正常的补库存</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2013.08.15</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>

					<tr>
						<td></td>
					</tr>
					<tr>
						<td width="505"><a href="dynamicdetails.jsp?id=7586&amp;k=2">
								2013年7月宏观分析报告：去杠杆将使下半年中国经济面临更大风险</a></td>
						<td width="120" align="right" style="font-family: Tahoma;">
							2013.07.16</td>
					</tr>
					<tr>
						<td colspan="2"><img src="img/lineB.gif" height="1"></td>
					</tr>


				</tbody>
			</table>

			<div id="ctl00_cpContent_AspNetPager2" showpageindexbox="Never"
				pagingbuttonclass="PageFontA">
				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<td valign="bottom" align="left" nowrap="true"
								style="width: 40%;"><font color="#0C3855">54</font>条/<font
								color="#0C3855">5</font>页</td>
							<td valign="bottom" align="notset" nowrap="true" class=""
								style="width: 60%;"><a disabled="true"
								style="margin-right: 5px;">&lt;&lt;</a><a disabled="true"
								style="margin-right: 5px;">&lt;</a><span class="PageFontB"
								style="margin-right: 5px;">1</span><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager2','2')"
								style="margin-right: 5px;">2</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager2','3')"
								style="margin-right: 5px;">3</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager2','4')"
								style="margin-right: 5px;">4</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager2','5')"
								style="margin-right: 5px;">5</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager2','2')"
								style="margin-right: 5px;">&gt;</a><a
								href="javascript:__doPostBack('ctl00$cpContent$AspNetPager2','5')"
								style="margin-right: 5px;">&gt;&gt;</a></td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</div>
</div>


<%!private static final Logger logger = Logger.getLogger("com.chongyang.dynamic");%>


<script type="text/javascript">
	//<![CDATA[
	Sys.Application.initialize();
	//]]>
</script>

<jsp:include page="footer.jsp" />

<script type="text/javascript">
//<![CDATA[
Sys.Application.initialize();
//]]>
</script>
</form>
</body>
</html>