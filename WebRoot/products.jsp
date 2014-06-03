<%@page import="com.ow.dto.ProductManagerDto"%>
<%@page import="com.ow.dto.InvestManagerDto"%>
<%@page import="com.ow.dto.ProductInfoDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.sql.*,javax.sql.*,javax.naming.*,com.ow.*"%>

<%
	String pageTitle="产品与服务";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="ctl00_Head1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%= pageTitle %></title>
<link href="css/common.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript"
	src="js/seanObject.js"></script>
<script src="js/common.js" type="text/javascript"></script>
</head>

<%@ include file="header.jsp" %>

<script type="text/javascript">

$(document).ready(function() {
    var k = $G("k");
    
    //alert(k);
    if (k != 2 && k != 3 && k != 4 && k != 5) {
        k = 1;
    }
    k--;
    var leftMenu = $(".subleft>dt").eq(k).find("a:eq(0)");
    leftMenu.click();
});
//点击左边一级标题
function ClickProductLM(th, num) {
    //将所有一级菜单的样式去掉
    var dts = $("dt");
    dts.each(function(i, obj) {
        $(obj).removeClass();
    });
    //当前点击的一级菜单增加样式
    $(th).parent().addClass("xt");
    //将所有二级菜单隐藏
    var dds = $("dd");
    dds.each(function(i, obj) {
        $(obj).hide();
    });
    //显示一级菜单下面的二级菜单
    var dd = $(th).parent().next();
    if (dd.is("dd")) {
        dd.show();
        //默认点击一级菜单下的第一个二级菜单
        var twoLevelMenu = dd.find("a:eq(0)");
        if (twoLevelMenu != typeof (undefined)) {
            twoLevelMenu.click();
        }
    }
    //隐藏所以内容
    var pages = $(".rightcontent");
    pages.each(function(i, obj) {
        $(obj).hide();
    });
    //显示对应的内容
    $("#page0" + num + "s01").show();
}
//点击左边二级菜单的产品
function ClickProduct(th, id) {
    //移除所以产品的选择状态样式
    var products = $(".xt").next().find("a");
    products.each(function(i, obj) {
        $(obj).removeClass("on");
    });
    $(th).addClass("on"); //为点击的产品添加选中样式
    //将点击的产品的产品信息的html添加到tab1中
    var tabHtml = $(".ProductInfo" + id).html();
    $('.tabbox>div').eq(0).html(tabHtml);
    $(".tab>li").eq(0).click();
    //投资经理内容填充和显示
    var tab2Html = $(".InvestManager" + id).html();
    if (tab2Html != undefined && $.trim(tab2Html) != "") {//客户经理有值显示并赋值
        $('.tabbox>div').eq(1).html(tab2Html);
        $(".tab>li").eq(1).show();
    } else {//客户经理没值将tab隐藏
        $(".tab>li").eq(1).hide();
    }
    $(".AccountManagementShow").hide();
    $(".ProductInfoShow").show();
}
//点击专户管理
function ClickAccountManagement() {
    $(".AccountManagementShow").show();
    $(".ProductInfoShow").hide();
}

</script>

<%
	DBDao dbDao = new DBDao();
	dbDao.init();
	
	List<ProductInfoDto> productInfoDtos=dbDao.getProductInfos();

%>

<div class="wapper clearfix">
	<img src="img/product/banner_product.jpg">
</div>
<div class="wapper clearfix overhide">
	<dl class="subleft">
		<dt class="xt">
			<a href="javascript:void(0);"
				onclick="ClickProductLM(this,&#39;1&#39;);">信托产品</a>
		</dt>
		<dd style="">

			<%
				for (int i = 0; i < productInfoDtos.size(); i++) {
			%>
			<a href="javascript:void(0);"
				onclick="ClickProduct(this,&#39;<%=i + 1%>&#39;);" class="on"><%=productInfoDtos.get(i).getName()%></a>
			<%
				}
			%>
		
		<dt>
			<a href="javascript:void(0);"
				onclick="ClickProductLM(this,&#39;2&#39;);">认购流程</a>
		</dt>
		<dt>
			<a href="javascript:void(0);"
				onclick="ClickProductLM(this,&#39;3&#39;);">常见问题</a>
		</dt>
		<dt>
			<a href="javascript:void(0);"
				onclick="ClickProductLM(this,&#39;4&#39;);">产品咨询</a>
		</dt>
	</dl>
	<div id="page01s01" class="rightcontent" style="">
		<div class="ProductInfoShow">
			<ul class="tab">
				<li class="">产品说明</li>
				<li class="on">投资经理介绍</li>
			</ul>
			<div class="tabbox">
				<div id="tab1" style="display: none;"></div>
				<div id="tab2" class="wordbox" style="display: block;"></div>
			</div>
		</div>

		<%
			for (int i = 0; i < productInfoDtos.size(); i++) {
		%>
		<div class="ProductInfo<%=i + 1%>" style="display: none;">
			<br>
			<table style="border-collapse: collapse; color: #7b7b7b"
				cellspacing="0" cellpadding="0" border="0">
				<tbody>

					<%
						String proInfo = productInfoDtos.get(i).getInfo();
						String[] subInfos = PageUtil.getParagraphs(proInfo);

							for (int j = 0; j < subInfos.length; j++) {

								String title = subInfos[j].split("<I>")[0];
								String content = subInfos[j].split("<I>")[1];
					%>
					<tr style="height: 7.75pt">
						<td
							style="height: 7.75pt; border-top-color: #ece9d8; padding-bottom: 0cm; border-bottom-color: #ece9d8; padding-top: 0cm; padding-left: 5.4pt; border-right-color: #ece9d8; padding-right: 5.4pt; width: 122.4pt; background-color: transparent; border-left-color: #ece9d8"
							valign="top" width="163">
							<div align="left">
								<span style="font-size: 9pt"><%=title%></span>
							</div>
						</td>
						<td
							style="height: 7.75pt; border-top-color: #ece9d8; padding-bottom: 0cm; border-bottom-color: #ece9d8; padding-top: 0cm; padding-left: 5.4pt; border-right-color: #ece9d8; padding-right: 5.4pt; width: 288pt; background-color: transparent; border-left-color: #ece9d8"
							valign="top" width="384">
							<div>
								<span style="font-size: 9pt"><%=content%></span>
							</div>
						</td>
					</tr>

					<%
						}
					%>
				</tbody>
			</table>
		</div>
		<%
			}
		%>
		<div class="AccountManagementShow"
			style="display: none; padding-top: 20px;">
			重阳投资目前担任多只专户信托计划的投资顾问，为客户提供专属证券投资顾问服务。<br> 咨询电话：86 21 2021 6640
		</div>

		<!--重阳1期投资经理简介 -->

		<%
			for (int i = 0; i < productInfoDtos.size(); i++) {

				String manager = productInfoDtos.get(i).getInvestManager();

				int idx = manager.indexOf(",");

				ArrayList<String> managerList = new ArrayList<String>();

				if (-1 == idx) {

					managerList.add(manager);

				} else {

					String[] mStrings = manager.split(",");
					for (int t = 0; t < mStrings.length; t++) {

						managerList.add(mStrings[t]);
					}
				}
		%>


		<div class="InvestManager<%=i + 1%>" style="display: none;">

			<%
				for (int j = 0; j < managerList.size(); j++) {

						String mgrName = managerList.get(j);

						String mgrInfo = "";

						InvestManagerDto investManagerDto=dbDao.getInvestManagerDto(mgrName);
						
						if(investManagerDto==null) continue;
						
			%>

			<%
				if (j == 0) {
			%>
			<h3><%=investManagerDto.getName()%></h3>
			<p><%=investManagerDto.getInfo()%></p>

			<%
				} else {
			%>
			<br> <b><%=investManagerDto.getName()%></b><br>
			<p><%=investManagerDto.getInfo()%></p>

			<%
				}
					}
			%>
		</div>

		<%
			}
		%>

	</div>

	<div id="page02s01" class="rightcontent" style="display: none;">
		<div>
			<b>认购流程</b><br> <b>1.委托人签署信托合同：</b>委托人在产品规定的有效时间范围内，跟信托公司、投资顾问或代销机构联系，获取信托合同进行签署，并提交相关证件；<br>
			<b>2.委托人汇款：</b>委托人在产品规定的有效时间范围内，将认购资金及认购费用，通过银行汇款到该信托产品指定的托管银行帐户；<br>
			<b>3.委托人取得合同：</b>在认购产品成立后，或日常开放日认购后，在合同规定的N个（一般为10个）工作日内，委托人将取得由信托公司签署并盖章的有效合同。<br>
			<br> <b>备注：</b><br> <b>若委托人为自然人，需提供以下资料：</b><br>
			（1）委托人的身份证明文件（身份证或护照）复印件一式两份；<br>
			（2）委托人的信托利益分配账户（户名需与身份证为同一人）复印件一式两份（该账户应与合同上填写的信托利益分配账户为同一账户）；<br>
			（3）委托人的信托资金划入认购账户的银行汇款凭证复印件一式一份，并在汇款备注中注明：“XX认购重阳XX期”；<br>
			（4）以上复印件上均需客户本人签字，并注明：“仅供认购重阳XX期信托计划”。<br> <br> <b>若认购人为法人，则需要提供以下资料：</b><br>
			（1） 委托人的法人营业执照副本复印一式两份；<br> （2） 法定代表人有效身份证件复印件一式两份；<br> （3）
			法定代表人证明书一式两份；<br> （4） 委托人信托利益分配账户（银行开户证明，户名应为法人全称）复印一式两份；<br>
			（5） 委托人的信托资金划入认购账户的银行划款凭证复印一式一份，在汇款备注中注明：“XX认购重阳XX期”；<br> （6）
			若授权他人（经办人）签字的情况，还需要提供经法定代表人签字并加盖公章的<br>
			法定代表人授权委托书一式两份，以及经办人有效身份证件复印件一式两份；<br> （7）
			以上所有复印件上均需加盖公章，并注明：“仅供认购重阳XX期信托计划”。 <br> <br>
		</div>
		<img src="img/product/nav03s01pic.gif" width="607" height="595"><br>
		<br>
	</div>
	<div id="page03s01" class="rightcontent" style="display: none;">
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						1、什么是私募基金？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>私募基金是通过非公开发行方式、面向少数机构投资者或者富有的个人投资者募集资金而设立的基金。</p>
						<p>按照组织形式，可以分为契约型、公司型、合伙型私募基金；按照投资对象，可分为私募股权投资基金和私募证券投资基金。</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						2、什么是阳光私募基金？“阳光私募”的称呼因何而来？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							“阳光私募”并非特指证券类信托产品，在行业的发展过程中，以信托产品、银行理财产品或者以有限合伙基金等合法合规的方式，通过非公开方式向高端投资者募集资金，主要投资于证券市场（不限于证券市场），定期向投资者公布业绩的投资基金都被约定俗成地称为“阳光私募”。
						</p>
						<p>
							区别于传统的私募基金运作，“阳光私募”的基金成立、相关的信托关系、资金保管关系都受到《中华人民共和国信托法》等相关法律的要求，这也使得整个行业走入“阳光下”，进入了一个规范的运作时期。
						</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						3、阳光私募基金与公募基金有何区别？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							作为主要都是投资于二级市场且都有可查证业绩的基金，阳光私募基金与公募基金相比在很多方面都有着显著差异，尤其体现在如下几个方面：</p>
						<p>
							1）两者的盈利模式完全不同。公募基金根据所管理的基金规模提取管理费；阳光私募则主要依靠超额收益的业绩提成。这也决定了，对阳光私募来说，业绩是报酬的基础，必须追求稳定的，正的绝对收益，才能获得生存和发展；
						</p>
						<p>
							2）在投资对象和范围上，阳光私募具有更大的灵活性。公募基金必须在相关法律法规允许的框架内设立和运作，在投资品种、投资比例、投资于基金类型的匹配上有严格的限制，比如在任何市场条件下的最低持仓都不得低于60%。而阳光私募的投资限制完全由协议约定，管理人可以在协议约定的范围内根据市场状况和自己的分析判断决定是否投资、投资比例等，更加灵活地应对市场变动。
						</p>
						<p>
							3）产品的设立方式和信息披露要求不同。公募基金对产品设立和信息披露有着严格的限定和要求。但阳光私募的设立受法律限制较少，对信息披露的要求相对较低，可以与特定投资者私下约定信息披露的要求、时间、方式等，具有较强的保密性。
						</p>
						<p></p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						4、阳光私募产品是否跟公募基金一样进行信息披露？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							公募基金对信息披露有非常严格的要求，其投资目标、投资组合等信息都要披露，净值每天进行发布；而阳光私募产品对信息披露的要求更加灵活，具有较强的保密性，除了定期发布净值和运作报告外，也根据信托公司和投资顾问的需求更富个性化。
						</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						5、什么是证券投资集合资金信托计划？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							证券投资集合资金信托计划属于阳光私募基金，是借助信托公司的平台发行，经过监管机构备案的信托业务品种。证券投资集合资金信托计划的资金由银行进行托管，证券由证券公司托管，并在银监会的监管下，投资于证券市场，定期发布业绩。
						</p>
						<p>
							从法律结构来看，阳光私募证券投资基金其实是一个信托产品，通过信托合同来框定各方的权利与义务，共有四方参与：私募基金公司作为信托公司的投资顾问，提出投资建议；信托公司是产品发行的法律主体，提供产品运作的平台，并承担监管之责；银行作为资金托管人，保证资金的安全；证券公司作为证券的托管人，保障证券的安全。
						</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						6、阳光私募产品（证券投资集合资金信托计划）如何保证资金的安全性？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							阳光私募产品的资金由保管人（保管银行）进行保管，证券由证券经纪人（交易券商）托管，投资顾问（阳光私募公司）只负责投资顾问服务，不直接接触资金，不存在资金挪用的可能性。
						</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						7、阳光私募的产品净值为何是由信托公司来公布？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							信托公司是阳光私募产品的发起方，负责产品的运营管理。估值基准日的产品净值，是由信托公司负责定期对信托计划资产进行估值，对产品的费用进行核算后，计算得出并对外发布。
						</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						8、阳光私募的固定信托管理费和银行托管费如何收取？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							阳光私募产品一般定期（月度或季度）开放，固定信托管理费和银行托管费通常按照合同规定的费率（年化）分摊至各开放日收取，计提基数为开放日当天的信托计划资产总值。
						</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						9、阳光私募产品的浮动业绩报酬如何提取？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							阳光私募产品将针对净值创新高的部分提取浮动业绩报酬。例如，产品初始发行面值为1元：1）若第一个估值基准日扣除当期信托管理费和银行保管费之后，产品单位值为1.2元，则针对（1.2-1）=0.2元部分提取业绩报酬；2）若第一个估值基准日扣除当期信托管理费和银行保管费之后，产品单位值为0.98元，则不收取业绩报酬；若至第二个估值基准日扣除当期信托管理费和银行保管费之后，产品单位值为1.06元，则针对（1.06-1）=0.06元部分提取业绩报酬。
						</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						10、信托公司公布的产品净值是已经扣除业绩提成的净值吗？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>是的，信托公司公布的净值是扣除信托管理费、银行托管费、律师费等费用，以及业绩提成之后的净值，是客户实际所得。</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						11、阳光私募产品能否部分赎回？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							可以，但赎回后留存市值通常来说必须是证券投资集合资金信托计划合同内要求的最低金额（通常为300万元，具体的金额要求以信托公司合同文本为准），否则必须全部赎回。
						</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						12、为什么证券投资集合资金信托计划只能有50个300万元以下的名额？机构投资者是否占用名额？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>根据中国银行业监督管理委员会令 2007 年 第3 号
							《信托公司集合资金信托计划管理办法》第二章第5条规定，单一信托计划自然人人数不得超过50人，合格的机构投资者数量不受限制。</p>
						<p>因此，300万元以下的名额只能有50个，而机构投资者则不受此限制，也不会占用50个自然人的名额。</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						13、申购、赎回的时间和净值依据？</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							阳光私募产品一般定期开放（月度或季度）。若当期有申购需求，申购资金最迟必须在开放日当天到达信托合同指定账户，申购资金的份额核算以开放日当天净值为准；若当期有赎回需求，一般在开放日之前5天必须提交赎回申请（具体时间由信托公司自行规定），赎回时的净值以开放日当天净值为准。
						</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
		<table width="625" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr>
					<td align="left" style="color: #0D3956; font-weight: bolder">
						14、净值高于面值的情况下，如果全额赎回是否会导致赎回款项低于初始认购资金？如果产品净值低于认购时的信托单位净值，是否还要赎回费？
					</td>
				</tr>
				<tr>
					<td align="left" valign="top" style="text-indent: 2em">
						<p>
							一般来说，如果信托合同规定，产品在准封闭期之内赎回需要支付相关费用，那么当客户有赎回意向时，需要缴纳相应的赎回费。但若收取赎回费用之后客户的全额赎回款项低于其初始认购资金，则信托公司会相应调整赎回费用，使客户的赎回款项等于其初始认购资金。
						</p>
						<p>如果信托单位净值低于或等于客户初始认购时的单位净值，则赎回费用为零。</p>
						<p>具体规定请参看各信托公司的信托合同。</p> <br>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div id="page04s01" class="rightcontent" style="display: none;">
		<table width="625" border="0" cellspacing="1" cellpadding="0"
			bgcolor="#ECEEED">
			<tbody>
				<tr
					style="color: White; font-weight: bolder; background-color: rgb(11, 57, 83);">
					<td align="center">产品名称</td>
					<td align="center">产品经理</td>
					<td align="center">联系电话</td>
				</tr>
				
			<%
				
				List<ProductManagerDto> proMgrs=dbDao.getProductManagerDtos();
			
				for(ProductManagerDto proMgr:proMgrs){
					
					List<String> proNames=dbDao.getProductNames(proMgr.getName());
					int flag=1;
					for(String curProName : proNames){	
				
						if(flag==1){
				
			%>
				<tr bgcolor="#FFFFFF">
					<td align="center"><%= curProName %></td>
					<td align="center" rowspan="<%= proNames.size() %>"><%= proMgr.getName() %></td>
					<td align="center" rowspan="<%= proNames.size() %>"><%= proMgr.getPhoneNumber() %></td>
				</tr>
				
				<%
						}else{
				%>
				<tr bgcolor="#FFFFFF">
					<td align="center"><%= curProName %></td>
				</tr>
				
			<%
						}
						
						flag++;
					}
					
				}
			%>
				
			</tbody>
		</table>
	</div>
	
	<%
		dbDao.close();
	%>
	
</div>

<jsp:include page="footer.jsp" />

</form>
</body>
</html>