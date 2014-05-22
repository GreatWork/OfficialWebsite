<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.log4j.Logger"%>

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
	<img src="img/banner_about.jpg" />
</div>
<div class="wapper clearfix overhide">
	<div class="subleft">
		<a href="javascript:void(0);" class="on" onclick="ClickLeftMenu('1');"
			id="menu01">公司简介</a> 
		<a href="javascript:void(0);" onclick="ClickLeftMenu('2');" id="menu02">安洪理念</a> 
		<a href="javascript:void(0);" onclick="ClickLeftMenu('3');" id="menu03">投资经理</a>
		<a href="javascript:void(0);" onclick="ClickLeftMenu('4');"	id="menu04">投研团队</a> 
		<a href="javascript:void(0);" onclick="ClickLeftMenu('5');" id="menu05">公司荣誉</a> 
		<a href="javascript:void(0);" onclick="ClickLeftMenu('6');" id="menu06">诚聘英才</a>
	</div>
	<div id="page01" class="rightcontent wordbox" style="display: none;">
		<p>
			&nbsp;&nbsp;上海安洪投资管理有限公司成立于2014年4月。公司由具有20年证券投资经历的李洪波先生发起建立，是一个年轻而富有朝气的资产管理公司。公司创始人李洪波先生具有长期国内著名基金管理公司丰富的投研管理经验，曾担任国联安德盛精选基金经理，管理资金规模近百亿元。
		</p>
		<br /> 
		<br /> 
		<p>
			&nbsp;&nbsp;安洪投资秉承“复利投资，稳健增长”的投资理念，“大胆假设、小心求证、谨慎投资”的投资方法。我们既专注投资于具有广阔成长空间和强大竞争力的成长型企业，也充分重视绝对价值明显低估，具备大量隐形资产的企业投资。
		</p>
	</div>
	<div id="page02" class="rightcontent wordbox" style="display: none;">
		<strong style="font-weight: bolder; color: #0B3953; font-size: 15px;">重阳理念</strong>
		<p>
			重阳投资秉承价值投资理念，将“发现并投资确定的低估成长公司”作为投资研究的第一目标，通过前瞻性地分析宏观、行业和公司基本面并运用严谨的多元化估值方法来发现低估的投资标的，实现管理资产的持续高复合成长。</p>
		<p>
			在投资哲学上，重阳投资坚信决定长期投资业绩的是独特和可持续的投资方法，注重做好各种情景模式下的应变准备，强调在不确定环境中的决策质量是投资业绩稳定持续的关键。</p>
		<p>
			具体的投资方法上，重阳投资致力于挖掘那些具有“护城河”优势、而且优势逐年加大加宽的企业，通过寻找未反映在股价里的价值和被市场错误归类的股票，实现基于中长期判断下的逆向投资。投资被市场冷落的股票并坚持投资决策的独立性，用低估值和较小的下行风险来补偿未来的不确定性，确定正确的投资逻辑后，认真求证并持续跟踪，坚定持有以收获公司持续超预期增长和估值修复带来的超额收益。</p>
		<br /> <strong
			style="font-weight: bolder; color: #0B3953; font-size: 15px;">投资决策流程</strong>
		<p>公司投资实行投资决策委员会领导下的投资经理负责制，以组合投资作为投资管理的基本方法。</p>
		<p>
			公司投研体系由研究、投资决策和交易三个部分组成。在投资策略上，重阳投资寻找自上而下的宏观和行业配置与自下而上的公司选择之间理想的结合点。</p>
		<p>重阳投资认为，取得长期卓越业绩的团队所必备的三个条件是： 投研团队在基本面判断方面具备前瞻性和系统性；
			团队中有人拥有部分或完整的“心理护城河”；
			身处一个成长的广阔市场。重阳投资一直着力组建这样的投研团队，并在实践中形成了独具特色的投资研究流程，这一流程包括三个步骤：</p>
		<br /> <strong style="font-weight: bolder; color: #0B3953">严谨清晰的逻辑
		</strong> <br /> 基于开阔的视野、前瞻的判断和敏锐的洞察得出严谨而清晰的投资逻辑和标的选择。<br /> <br /> <strong
			style="font-weight: bolder; color: #0B3953">全面深入的实证 </strong> <br />
		通过调研上市公司、咨询政策制定者和行业专家、访谈精英投资人等方式，多层面扫除误区和盲点。<br /> <br /> <strong
			style="font-weight: bolder; color: #0B3953">及时有效的跟踪 </strong> <br />
		查询行业数据，动态跟踪公司业务发展和竞争环境变化情况。投资永远有不确定性，随时修正和完善投资逻辑。<br /> <br />
		<div align="center">
			<img src="img/pic4.jpg" vspace="20" />
		</div>
	</div>
	<div id="page03" class="rightcontent wordbox" style="display: none;">
		<table style="width: 100%; text-align: left; vertical-align: top;"
			cellpadding="0" cellspacing="0">
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					裘国根</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					中国人民大学经济学硕士。1993年至1995年就职于原君安证券下属投资管理机构，1996年开始职业投资，2001年创立上海重阳投资有限公司，2009年创立上海重阳投资管理有限公司。20年权益投资、固定收益投资和衍生品交易经验，长于权益策略和估值。现任重阳投资执行事务合伙人、首席投资官。
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					陈心</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					芝加哥大学工商管理硕士，CFA，17年金融从业经验。曾先后在中国国际金融有限公司、摩根士丹利、里昂证券等中外金融机构担任固定收益、汽车和银行业高级分析师。对中国金融业与制造业有着丰富的研究经验。2009年加入重阳投资。现任重阳投资合伙人、首席分析师。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					王晓华</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					中国科学院研究生院工学博士。2003年至2007年在中国科学技术大学学习，获工学学士学位，2007年至2012年在中国科学院研究生院学习，获工学博士学位。2012年8月加入重阳投资。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
		</table>
	</div>
	<div id="page04" class="rightcontent wordbox" style="display: none;">
		重阳投研团队现由32人组成，均具有良好的教育背景，其中核心投研人员14人，平均从业时间超过10年。 <br /> <br />
		<table style="width: 100%; text-align: left; vertical-align: top;"
			cellpadding="0" cellspacing="0">
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					裘国根 执行事务合伙人、首席投资官</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					中国人民大学经济学硕士。1993年至1995年就职于原君安证券下属投资管理机构，1996年开始职业投资，2001年创立上海重阳投资有限公司，2009年创立上海重阳投资管理有限公司。20年权益投资、固定收益投资和衍生品交易经验，长于权益策略和估值。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					王庆 合伙人、首席策略师</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					美国马里兰大学经济学博士。曾先后担任国际货币基金组织经济学家、摩根士丹利大中华区首席经济学家、中国国际金融有限公司投资银行部执行负责人。2010-2011年，带领摩根士丹利经济研究团队连续两年获《机构投资者》亚洲区第一名。2013年加入重阳投资。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					陈心 合伙人、首席分析师</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					芝加哥大学工商管理硕士，CFA，17年金融从业经验。曾先后在中国国际金融有限公司、摩根士丹利、里昂证券等中外金融机构担任固定收益、汽车和银行业高级分析师。对中国金融业与制造业有着丰富的研究经验。2009年加入重阳投资。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					谢卓 合伙人、交易部主管</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					复旦大学经济学硕士，16年证券交易经验。1996年起就职于海南港澳信托投资公司。2001年加入重阳投资。</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					贺建青 投资部主管</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					中国人民大学经济学硕士，8年证券分析经验。2006年加入重阳投资，负责家电、汽车、零售、保险行业的研究。2013年起任投资部主管。</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					乔奕 外部合伙人、资深分析师</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					英国雷丁大学金融学硕士，10年证券分析经验。先后在国泰君安证券、花旗集团与Alliance
					Berstein基金公司担任高级分析师，曾获《新财富》食品饮料行业最佳分析师。对消费品行业具有丰富的研究与投资经验。2009年加入重阳投资。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					李静 资深分析师</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					中国人民大学经济学硕士，7年证券分析经验。2006年加入重阳投资，负责交通运输、公用事业等行业的研究。</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					胡敏 资深分析师</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					中国人民大学经济学硕士，7年证券分析经验。2006年加入重阳投资，负责生物医药、纺织服装、农林牧渔业和食品饮料等行业的研究。</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					曹舜 资深交易员</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					西安交通大学货币银行学本科，20年证券交易经验。1993年至2009年就职于华安证券有限公司。2009年加入重阳投资。</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					寇志伟 资深分析师</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					北京大学经济学硕士，6年证券分析经验。2007年7月至2010年2月任南方基金研究员，从事宏观经济及债券市场策略研究。2010年加入重阳投资，负责宏观研究。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					王世杰 资深分析师</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					丹麦科技大学高分子工程硕士，CFA，7年证券分析经验。2006年至2009年历任申银万国证券中小型公司、钢铁行业研究员。2010年加入重阳投资，负责大宗商品及化工行业的研究。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					刘书文 资深分析师</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					北京大学传播学硕士，7年证券从业经验。曾就职于交银施罗德基金管理有限公司，历任机构理财部经理和专户理财部经理。2010年加入重阳投资。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					王晓华 投资经理</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					中国科学院研究生院工学博士。2003年至2007年在中国科学技术大学学习，获工学学士学位，2007年至2012年在中国科学院研究生院学习，获工学博士学位。2012年8月加入重阳投资。
				</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
			<tr>
				<td
					style="width: 100%; font-size: 14px; vertical-align: top; font-weight: bold; font-family: 微软雅黑; color: rgb(0, 51, 102);">
					钱新华 分析师</td>
			</tr>
			<tr>
				<td style="vertical-align: top;">
					复旦大学金融学硕士，CFA。2012年8月加入重阳投资，负责商贸零售及食品饮料研究。</td>
			</tr>
			<tr>
				<td>&nbsp</td>
			</tr>
		</table>
	</div>
	<div id="page05" class="rightcontent wordbox" style="display: none;">
		<br />
		★&nbsp;&nbsp;《中国证券报》2009年、2010年、2011年、2012年、2013年度阳光私募基金管理公司金牛奖。<br />
		<br /> ★&nbsp;&nbsp;私募排排网 2013年度&quot;最值得信赖对冲基金管理人&quot;。<br /> <br />
		★&nbsp;&nbsp;国金证券多空对冲策略2013&quot;年度最佳奖&quot;。<br /> <br />
		★&nbsp;&nbsp;国金证券私募基金2009-2013&quot;五年优秀奖&quot;。<br /> <br />
		★&nbsp;&nbsp;国金证券第五届中国最佳私募基金2010-2012&quot;私募管理人长期优胜奖&quot;。<br /> <br />
		★&nbsp;&nbsp;招商银行第四届托管金眼睛奖2014&quot;年度最佳资产管理公司&quot;。<br /> <br />
		★&nbsp;&nbsp;重阳3期产品获得招商银行第四届托管金眼睛奖&quot;阳光私募连续三年业绩优秀奖&quot;。<br /> <br />
		★&nbsp;&nbsp;大智慧2013年度&quot;中国私募年度百强&quot;。<br /> <br />
		★&nbsp;&nbsp;第一财经金融价值榜2013年&quot;年度私募基金公司&quot;。<br /> <br />
		★&nbsp;&nbsp;《每日经济新闻》&quot;2013中国私募价值榜&quot;年度十佳私募基金。<br /> <br />
		★&nbsp;&nbsp;重阳1期、重阳2期等产品多次获晨星三年期五星评级。<br /> <br />
		★&nbsp;&nbsp;《证券时报》2010年度&quot;两年持续回报明星阳光私募基金公司&quot;奖。<br /> <br />
		★&nbsp;&nbsp;重阳2期荣获《上海证券报》2010年阳光私募&quot;金阳光&quot;综合评价五星产品。<br /> <br />
		★&nbsp;&nbsp;国金证券中国最佳私募基金2009-2010&quot;两年长期优胜奖&quot;。<br /> <br />
		★&nbsp;&nbsp;《中国证券报》金牛阳光私募投资经理（2010）。<br /> <br />
		★&nbsp;&nbsp;第一财经中国阳光私募2010、2012、2013年度最佳管理人金樽奖。<br /> <br />
	</div>
	<div id="page06" class="rightcontent wordbox" style="display: none;">
		上海重阳投资管理有限公司重视专业人才的培养和引进，将以有竞争力的薪酬水平，清晰长远的职业发展规划，诚邀英才加入！<br /> <br />
		<table id="ctl00_cpContent_DataList1" cellspacing="0" border="0"
			style="border-collapse: collapse;">
			<tr>
				<td><strong style="color: #0A3756"> 战略研究部
						助理分析师（实习生）(若干) &nbsp;&nbsp;&nbsp;&nbsp;<a
						href="AppleJob.aspx?id=13" target="_blank">应聘</a>
				</strong><br /> <strong>岗位职责：</strong>
					<div>
						1、协助进行中国和全球宏观经济研究；<br /> 2、协助进行A股投资策略研究；<br /> 3、协助完成银行、地产行业研究；<br />
						4、协助完成其他管理层指定的战略研究课题。
					</div> <strong>岗位要求：</strong>
					<div>
						1、硕士研究生及以上学历；<br /> 2、具备突出的学习和钻研能力、严谨的逻辑分析能力和高效的人际沟通能力；<br />
						3、诚实、敬业，具备工作主动性，具有独立思考和团队合作精神；<br /> 4、具备较强的英语综合使用能力；<br />
						5、具备较强的办公软件如Excel、Word、Powerpoint使用技能；<br />
						6、具备CFA、CPA等相关资格证书者优先考虑。
					</div> <br /></td>
			</tr>
			<tr>
				<td><strong style="color: #0A3756"> 行业研究部
						助理分析师（实习生）(若干) &nbsp;&nbsp;&nbsp;&nbsp;<a
						href="AppleJob.aspx?id=14" target="_blank">应聘</a>
				</strong><br /> <strong>岗位职责：</strong>
					<div>
						1、协助跟踪覆盖行业动态；<br /> 2、基于国内上市公司的研究，提出投资创意，撰写投资建议书；<br />
						3、协助完成投资标的实证调研与跟踪；<br /> 4、协助完成课题研究。
					</div> <strong>岗位要求：</strong>
					<div>
						1、硕士研究生及以上学历；<br /> 2、具备突出的学习和钻研能力、严谨的逻辑分析能力和高效的人际沟通能力；<br />
						3、诚实、敬业，具备工作主动性，具有独立思考和团队合作精神；<br /> 4、具备较强的英语综合使用能力；<br />
						5、具备较强的办公软件如Excel、Word、Powerpoint使用技能；<br />
						6、具备CFA、CPA等相关资格证书者优先考虑。
					</div> <br /></td>
			</tr>
			<tr>
				<td><strong style="color: #0A3756"> 投资部
						基金经理助理（实习生）(若干) &nbsp;&nbsp;&nbsp;&nbsp;<a
						href="AppleJob.aspx?id=15" target="_blank">应聘</a>
				</strong><br /> <strong>岗位职责：</strong>
					<div>
						<p class="MsoNormal" style="margin: 0cm 0cm 0pt">
							<span lang="EN-US" style="font-size: 9pt"><font
								face="Calibri"><span style="mso-spacerun: yes">&nbsp;</span>1</font></span><span
								style="font-size: 9pt; font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin">、协助基金经理构建投资组合；</span><span
								lang="EN-US" style="font-size: 9pt"><o:p></o:p></span>
						</p>
						<span lang="EN-US"
							style="font-size: 9pt; font-family: &amp; amp; quot; Calibri &amp;amp; quot; ,&amp; amp; quot; sans-serif &amp;amp; quot;; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: 'Times New Roman'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span
							style="mso-spacerun: yes">&nbsp;</span>2</span><span
							style="font-size: 9pt; font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: 'Times New Roman'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">、完成基金经理交办的其他工作</span>。
					</div> <strong>岗位要求：</strong>
					<div>
						<p class="MsoNormal" style="margin: 0cm 0cm 0pt">
							<span
								style="font-size: 9pt; font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin">1、硕士研究生或以上学历；</span>
						</p>
						<p class="MsoNormal" style="margin: 0cm 0cm 0pt">
							<span
								style="font-size: 9pt; font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin">2、视野开阔，知识面广，思辨能力出色，抗压能力强，具有成为优秀专业投资管理人的综合潜质；</span><span
								lang="EN-US" style="font-size: 9pt"><o:p></o:p></span>
						</p>
						<p class="MsoNormal" style="margin: 0cm 0cm 0pt">
							<span
								style="font-size: 9pt; font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin"><font
								face="Calibri">3、</font>诚实、敬业，具有良好的沟通能力和团队合作精神；</span><span
								lang="EN-US" style="font-size: 9pt"><o:p></o:p></span>
						</p>
						<p class="MsoNormal" style="margin: 0cm 0cm 0pt">
							<span
								style="font-size: 9pt; font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin">4、具备较强的英语综合使用能力；</span><span
								lang="EN-US" style="font-size: 9pt"><o:p></o:p></span>
						</p>
						<span
							style="font-size: 9pt; font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: 'Times New Roman'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">5、具备</span><span
							lang="EN-US"
							style="font-size: 9pt; font-family: &amp; amp; quot; Calibri &amp;amp; quot; ,&amp; amp; quot; sans-serif &amp;amp; quot;; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: 'Times New Roman'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">CFA</span><span
							style="font-size: 9pt; font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: 'Times New Roman'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">、</span><span
							lang="EN-US"
							style="font-size: 9pt; font-family: &amp; amp; quot; Calibri &amp;amp; quot; ,&amp; amp; quot; sans-serif &amp;amp; quot;; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: 'Times New Roman'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">CPA</span><span
							style="font-size: 9pt; font-family: 宋体; mso-ascii-font-family: Calibri; mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: 'Times New Roman'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">等相关资格证书者优先</span>。
					</div> <br /></td>
			</tr>
			<tr>
				<td><strong style="color: #0A3756"> 交易部 交易员（实习生）(若干)
						&nbsp;&nbsp;&nbsp;&nbsp;<a href="AppleJob.aspx?id=9"
						target="_blank">应聘</a>
				</strong><br /> <strong>岗位职责：</strong>
					<div>
						1、协助执行交易指令；<br /> 2、协助整理交易数据；<br /> 3、协助进行交易系统管理；<br />
						4、完成交易部主管交办的其他工作。
					</div> <strong>岗位要求：</strong>
					<div>
						1、硕士研究生及以上学历；<br /> 2、具有扎实的金融学、经济学基础；<br /> 3、对数字敏感，反应快、领悟力强。<br />
						4、具备较强的沟通能力，具有团队合作精神；<br /> 5、具备较强的英语综合使用能力；<br />
						6、具备较强的办公软件如Excel、Word、Powerpoint使用技能；<br />
						7、具备CFA、CPA、证券从业等相关资格证书者优先考虑。
					</div> <br /></td>
			</tr>
			<tr>
				<td><strong style="color: #0A3756"> 市场部 产品经理（实习生）(若干)
						&nbsp;&nbsp;&nbsp;&nbsp;<a href="AppleJob.aspx?id=7"
						target="_blank">应聘</a>
				</strong><br /> <strong>岗位职责：</strong>
					<div>
						1、协助市场业务的开展与执行;<br /> 2、协助完成产品设计；<br /> 3、协助公司产品信息的发布； <br />
						4、协助公司产品的宣传和推广；<br /> 5、协助完成客户服务工作。
					</div> <strong>岗位要求：</strong>
					<div>
						1、硕士研究生及以上学历；<br /> 2、具有扎实的金融学、经济学基础；<br />
						3、具备较强的沟通能力，具有团队合作精神；<br /> 4、具备较强的英语综合使用能力；<br />
						5、具备较强的办公软件如Excel、Word、Powerpoint使用技能；<br />
						6、具备CFA、CPA等相关资格证书者优先考虑。
					</div> <br /></td>
			</tr>
			<tr>
				<td><strong style="color: #0A3756"> 合规部 合规专员（实习生）(若干)
						&nbsp;&nbsp;&nbsp;&nbsp;<a href="AppleJob.aspx?id=12"
						target="_blank">应聘</a>
				</strong><br /> <strong>岗位职责：</strong>
					<div>
						1、协助推进业务合同的起草、审核、修订和整理归档；<br />
						2、跟踪、整理与公司业务有关的最新法律法规、监管规定和行业自律规则，根据其有关要求提出制订或者修改公司相关制度的建议；<br />
						3、参与审核评价公司各项制度、流程的合规性，确保各项制度、流程符合法律、法规的要求；<br />
						4、参与新业务、新产品、专项事务的法律论证，为新业务的开发提供必要的合规支持，识别和评估业务合规风险；<br />
						5、协助处理公司日常法律、合规事务。
					</div> <strong>岗位要求：</strong>
					<div>
						1、硕士研究生及以上学历；<br /> 2、法律专业背景；<br /> 3、具备金融学、经济学和财务基础；<br />
						4、熟悉证券法、基金法、信托法等相关法律法规；<br /> 5、具有良好的职业操守，工作严谨、细致，善于思考、逻辑思维清晰；<br />
						6、具备较强的文字写作能力、协调沟通能力和团队合作意识；<br /> 7、通过司法考试、证券从业资格考试者优先考虑。
					</div> <br /></td>
			</tr>
			<tr>
				<td><strong style="color: #0A3756"> 公共事业部
						策划专员（实习生）(若干) &nbsp;&nbsp;&nbsp;&nbsp;<a
						href="AppleJob.aspx?id=10" target="_blank">应聘</a>
				</strong><br /> <strong>岗位职责：</strong>
					<div>
						1、协助研究和制定公司的品牌策划，并执行相应的品牌推广计划；<br />
						2、协助团队负责人制定不同阶段的品牌推广策略和方案，媒体选择及投放，营销方案的策划及执行；<br />
						3、协助完成品牌资料库的管理和完善，监督执行品牌使用规范。
					</div> <strong>岗位要求：</strong>
					<div>
						1、硕士研究生及以上学历；<br /> 2、熟练应用AI，PS等相关软件；<br /> 3、具备较强文字能力和沟通能力；<br />
						4、诚实、敬业，具备工作主动性，具有独立思考和团队合作精神；<br /> 5、具备较强的英语综合使用能力；<br />
						6、公共关系、新闻传播、中文专业优先考虑。
					</div> <br /></td>
			</tr>
			<tr>
				<td><strong style="color: #0A3756"> 人力资源部
						人力资源专员（实习生）(若干) &nbsp;&nbsp;&nbsp;&nbsp;<a
						href="AppleJob.aspx?id=16" target="_blank">应聘</a>
				</strong><br /> <strong>岗位职责：</strong>
					<div>
						1、协助完成公司招聘相关事务；<br /> 2、协助完成员工培训相关工作；<br /> 3、协助办理员工社保、公积金等相关业务；<br />
						4、协助完成员工活动的策划及执行。
					</div> <strong>岗位要求：</strong>
					<div>
						1、&nbsp;硕士研究生及以上学历；<br /> 2、&nbsp;具备人力资源管理相关专业知识； <br />
						3、&nbsp;具备较强学习能力，严谨逻辑分析能力和高效的语言表达能力； <br />
						4、&nbsp;具备良好的文字表达能力和沟通、协调能力；<br /> 5、&nbsp; 诚实、敬业，具有团队合作精神； <br />
						6、&nbsp;具备较强的英语综合使用能力； <br />
						7、&nbsp;具备较强办公软件如Excel、Word、PowerPoint 使用技能。
					</div> <br /></td>
			</tr>
			<tr>
				<td><strong style="color: #0A3756"> 行政部
						信息技术专员（实习生）(若干) &nbsp;&nbsp;&nbsp;&nbsp;<a
						href="AppleJob.aspx?id=17" target="_blank">应聘</a>
				</strong><br /> <strong>岗位职责：</strong>
					<div>
						1、进行服务器、网络设备、其它IT硬件设备、日常办公设备的维护及管理；<br />
						2、处理计算机各类软硬件故障，保障及维护网络安全；<br />
						3、协助管理和维护内部信息系统建设，进行CRM、OA、邮件系统、网站和其它业务系统的维护与管理；<br />
						4、使用VBA或其它开发工具，编写程序为业务部门提供支持；<br /> 5、IT经理交办的其它事项。
					</div> <strong>岗位要求：</strong>
					<div>
						1、计算机硕士研究生及以上学历；<br /> 2、有一定计算机机房网络和系统建设经验； <br />
						3、了解交换、路由、防火墙技术，熟悉CISCO、华为等主流厂商的交换机、路由器及防火墙的配置和维护； <br />
						4、熟练运用office等办公软件，有一定的软件开发和系统编程能力；<br /> 5、具备较强的沟通能力，具有团队合作精神；<br />
						6、具备基本的金融知识，了解或熟悉万得、恒生等金融软件者优先；<br /> 7、具备CNNP、MCSA者优先。
					</div> <br /></td>
			</tr>
		</table>
		实习要求<br /> 暑期期间每周至少4天实习，实习地点：上海市世纪大道8号国金中心二期51层，公司提供实习补贴。<br /> <br />
		联系方式<br /> 请2015年应届毕业生登录公司网站（网址:
		http://www.chongyang.net/web/job.aspx）在线递交简历进行申请（请点击所需应聘职位边上的“应聘”，进行填写）或将简历发送到hr@chongyang.net，如有任何问题，欢迎致电021-20216527，联系人：沈小姐。<br />
		<font color="red">请注意每人只能申请一个职位。</font> <br />
	</div>
</div>

<%!private static final Logger logger = Logger
			.getLogger("com.chongyang.index");%>

<jsp:include page="footer.jsp" />

</form>
</body>
</html>