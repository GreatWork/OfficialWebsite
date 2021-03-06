#插入测试数据
#1、推荐信息表
insert into RecommendInfo(recAuthor,recTitle,recInfo) values("作者1","标题1","在城市化这个大题目下，有的话讲起来有把握，有的很没有把握。我先从比较有把握的命题开始，这就是中国的城市化还有很大的潜力。
不妨先看几个数据。2013年中国GDP中，农业的份额占10.1%，但同年农村户籍口占总人口还高达65%。如果这65％的人口只分享10%的总产出，那恐怕天都会塌下来。幸亏实际情况不是这样的。今天很多农村户口的人已经进了城镇，以工商为业，也常住在城镇。这部分人约占总人口的17%，总数当在2亿以上。减去这部分常住城镇的农村户籍人口，常住在农村的还有多少？6.24亿，占总人口的48%。要是这48%的人分享10%的总产出，经济也非常失衡。所幸很多人常住农村，但从事的是非农业活动，包括现在不少通勤人口住在农村，但每天到城镇工作。这部分没有很精确的统计，或可估计为占总人口的15%－20%。这样，还有约30%的总人口分享10%的总产出。整体看，现在我国城乡居民收入的差距依然有3倍之高。
城乡居民的人均收入差距很大，本身是城镇化的动力，因为人往高处走是不可抗拒的规律。这也是我们讨论城市化问题的微观基础。特别是农村人口不断更新，受教育的年轻人在增加，80后、90后、以后还有00后，他们必定会对这个差距做出反应，一定还会有很多人往收入的高处走。从这点看，说中国的城镇化方兴未艾，是满有把握的。
");
#2、产品信息表
insert into ProductInfo values("安洪1期","经理1","产品经理1","<P>保管人：<I>保管人1</P><P>投资经理：<I>经理1</P><P>其他信息：<I>不妨先看几个数据。2013年中国GDP中，农业的份额占10.1%，但同年农村户籍口占总人口还高达65%。如果这65％的人口只分享10%的总产出，那恐怕天都会塌下来。幸亏实际情况不是这样的。今天很多农村户口的人已经进了城镇，以工商为业，也常住在城镇。这部分人约占总人口的17%，总数当在2亿以上。减去这部分常住城镇的农村户籍人口，常住在农村的还有多少？6.24亿，占总人口的48%。要是这48%的人分享10%的总产出，经济也非常失衡。所幸很多人常住农村，但从事的是非农业活动，包括现在不少通勤人口住在农村，但每天到城镇工作。这部分没有很精确的统计，或可估计为占总人口的15%－20%。这样，还有约30%的总人口分享10%的总产出。整体看，现在我国城乡居民收入的差距依然有3倍之高。</P>");
insert into ProductInfo values("安洪2期","经理1,经理2","产品经理2","<P>保管人：<I>保管人2</P><P>投资经理：<I>经理2</P><P>其他信息：<I>不妨先看几个数据。2013年中国GDP中，农业的份额占10.1%。</P>");
insert into ProductInfo values("安洪3期","经理3","产品经理2","<P>保管人：<I>保管人3</P><P>投资经理：<I>经理3</P><P>其他信息：<I>不妨先看几个数据。2013年中国GDP中，农业的份额占10.1%。</P>");
#3、投资经理表
insert into InvestManager values("经理1","经理1，**大学毕业。。。。");
insert into InvestManager values("经理2","经理2， **大学毕业。。。。");
insert into InvestManager values("经理3","经理3， **大学毕业。。。。");
#4、产品经理表
insert into ProductManager values("产品经理1","025-66666666");
insert into ProductManager values("产品经理2","025-66666667");
#5、视点
insert into ViewPoint(author,title,content,creatTime) values("测试","宏观分析报告：中国经济转型呈现积极信号","一季度GDP增速回落至7.4%，数据好于市场预期的同时，也引发了对数据真实性的质疑。我们认为，大可不必以阴谋论的角度解读数据。一季度经济数据呈现出明显的分化格局，在房地产产业链疲弱、工业生产增速下行的情况下，第三产业依然保持了较快增长，就业、居民收入继续向好，经济转型呈现了积极信号。
事实上，一季度经济数据呈现出冰火两重天的格局。一季度带动经济下行的主要是房地产及其上游的相关行业。从宏观数据上看，一季度房地产销售面积同比下降7.5%，房屋新开工面积同比下降25.2%，房地产开发投资增速由去年的19.8%降至16.8%，房地产行业创造的GDP增速也由去年的6.6%降至3.0%。与房地产相关的钢铁、水泥、煤炭等中上游行业同样受到了较大冲击，无论是产量增速还是企业利润，都出现了大幅下滑。从微观来看，春节后各地楼盘降价的新闻不断，银行信贷条件的收紧也造成了个别房地产开发商资金链断裂。客观的说，在房地产行业景气度下行的情况下，未来经济仍面临较大的下行压力。
但是，一季度经济中的亮点同样不容忽视。一季度全国新增城镇就业374万人，好于去年同期的342万人。一季度居民人均名义可支配收入同比增长11.1%，不仅高于7.9%的名义GDP增速，也高于9.3%的全国公共财政收入增速。经济发展的最终目的是为了创造就业，改善人民生活。在经济增速下行的情况下，就业并未受到影响，居民在国民收入分配中的占比进一步提高，都是经济转型的积极迹象。
在良好的就业和居民收入增长支撑下，一季度第三产业增加值占国内生产总值的比重为49.0%，比上年同期提高1.1个百分点，高于第二产业4.1个百分点。一季度最终消费支出占GDP的比重升至64.9%，比去年同期提高1.1个百分点。
事实上，即使是房地产相关行业的下滑，也是经济结构调整的题中之义。今年以来房地产销售及开工的下降主要原因在于信贷条件的收紧。央行及银监会加强了对信托、银行同业业务等表外融资的监管，意在抑制非理性的融资需求，在降低系统性金融风险的同时，平抑社会融资成本。更重要的是，以兴业银行为代表的金融机构由于房地产行业资产占比过高，主动收缩了房地产产业链相关融资。正是在商业银行风险偏好主动下降的背景下，我们看到了目前货币市场利率宽松，而企业融资成本大幅分化的局面。前瞻的看，年内房地产产业链仍然面临着下滑，产能过剩行业中高杠杆的企业也存在资金链断裂的风险，但只要托底政策得当，不会演化为系统性金融风险。
就A股市场而言，客观的说在经济转型中受损的行业仍然在指数中占有较大的比例。一季度名义GDP同比仅增长7.9%，较去年四季度的9.7%大幅下降；且居民收入和财政收入增长均快于名义GDP增速，不利于上市公司的总体利润。但是，居民就业和收入的平稳增长将带来经济转型中新的赢家，而非理性融资需求的挤出和融资成本的下行将有利于这些企业估值提升。",now());







#6、资讯
insert into NewsInfo(author,title,content,creatTime) values("测试","房地产投资属性降低","Q：近期关于房地产市场的新闻较多，5月12日央行开会要求商业银行支持房贷，请问重阳投资对未来房价走势的看法以及资产配置的建议？
A：人民银行副行长刘士余在5月12日主持召开了住房金融服务专题座谈会，从合理配置信贷资源、科学合理定价、提高服务效率、有效防范信贷风险、建立信息沟通机制五大方面要求银行进一步改善住房金融服务工作，这一举动被一些市场人士解读为“救市”的开始。
重阳投资认为，中央政府对于房价的态度没有根本变化，从“底线思维”出发，我们认为政策当局会容忍房价进行结构性调整，以促进经济转型。本次央行的表态，可以解读为防范房价出现超调；在流动性未出现实质性宽松的情况下，难以扭转房价调整的大趋势。从资产配置的角度看，配置房地产的黄金时间已经过去，截至2013年10月，全社会居民财富中，房地产的占比从2007年底的44%上升到了49%，已经明显超配；相比之下，上市公司权益类资产占比从2007年底的23%下降到8%，A股估值和居民权益资产配置均处历史低位。站在现在的时间点看，优质权益类资产未来相当长一段时间增值的空间会大于房地产资产。",now());
insert into NewsInfo(author,title,content,creatTime) values("测试","政策定力激发微观活力","一季度的经济数据显示，经济增长放缓趋势比较明显。实际GDP增速是同比7.4%，季度环比折年率为5.6%左右。经济下行的压力主要是房地产及其上游的相关行业。
从宏观数据上看，一季度房地产销售面积同比下降7.5%，房屋新开工面积同比下降25%，房地产开发投资同比增速由去年的20%降至17%，房地产行业创造的GDP同比增速也由去年的6.6%降至3%。与房地产相关的钢铁、水泥、煤炭等中上游行业同样受到了较大冲击，无论是产量增速还是企业利润，都出现了较大幅下滑。
前瞻地看，整体经济增长的下行压力恐怕还会持续相当长的时间。一方面，房地产行业景气度下行应该是大概率事件；另一方面，鉴于生产者价格指数PPI已经陷入通缩逾24个月，表明工业企业在去产能的压力下，已经一定程度上丧失议价能力，投资意愿低下可想而知。因此，固定资产投资这一多年来影响中国经济增长波动的主要因素，其增速进一步放缓恐怕也是在所难免。
鉴于此，自从一季度经济数据发布以来，相当多的分析人士开始呼吁通过降银行存款准备金等政策措施对经济实施刺激；同时，市场参与者对政策可能放松的预期也在生成，其变化开始成为影响近期二级市场资产价格表现的一个重要因素之一。
然而，决策层在宏观经济政策取向上却表现出了相当强的“定力”。在4月25日召开的政治局会议明确强调：“保持宏观政策的连续性和稳定性，财政政策和货币政策都要坚持现有政策基调”，不采取全面货币或财政政策刺激的信号相当清晰，同时暗示会通过针对性较强的定向政策支持某些重点领域的项目。
笔者认为，当前的宏观政策取向是理性的。政策上展现的“定力”可以帮助检验甚至激发实体经济微观层面的活力。
首先，客观地看，中国经济出现的这些最新变化应该是经济结构转型的必然结果。尤其是，当前经济中的一些亮点不容忽视。一季度全国新增城镇就业374万人，好于去年同期的342万人。一季度居民人均名义可支配收入同比增长11.1%，不仅高于7.9%的名义GDP增速，也高于9.3%的全国公共财政收入增速。经济发展的最终目的是为了创造就业，改善人民生活。
在经济增速下行的情况下，就业并未受到影响，居民在国民收入分配中的占比进一步提高，这些都是经济转型的积极迹象。在良好的就业和居民收入增长支撑下，一季度第三产业增加值占国内生产总值的比重为49%，比上年同期提高1.1个百分点，高于第二产业4.1个百分点。一季度最终消费支出占GDP的比重升至64.9%，比去年同期提高1.1个百分点。
其次，事实上，即使是房地产相关行业的下滑，也是经济结构调整的题中之义。今年以来房地产销售及开工的下降主要原因在于信贷条件的收紧。央行及银监会加强了对信托、银行同业业务等表外融资的监管，意在抑制非理性的融资需求，在降低系统性金融风险的同时，平抑社会融资成本。更重要的是，一些金融机构由于房地产行业资产占比过高，主动收缩了房地产产业链相关融资。正是在商业银行风险偏好主动下降的背景下，我们看到了目前货币市场利率宽松，而企业融资成本大幅分化的局面。前瞻地看，年内房地产产业链仍然面临着下滑，产能过剩行业中高杠杆的企业也存在资金链断裂的风险，但只要托底政策得当，不会演化为系统性金融风险。
第三，一个成功的经济转型必然是以成功的“存量调整”为核心内容。在中国现有体制机制下，只有保持政策定力，才能有效节制增量，金融机构和实体企业才有动力做存量调整，做减法而不是做加法。节制增量可以帮助检验存量资产质量。增量有限的前提下，那些现金流不能覆盖利息支出的项目，将无法通过借新还旧来维持存量债务。根本上消除了那些“僵尸企业”和“僵尸金融机构”赖以生存的基础，才能为有活力企业开拓出更大的发展空间，有效降低后者的融资成本。
最后，当前是经济结构调整的关键时期，一些处境困难的行业和企业时常处在纠结之中：是“断尾求生”从而实现主动转型，还是抱着政策博弈的心态“死扛硬挺”指望坚持到政策放松那一刻。在这个意义上，政策层面的“定力”可以有效管理预期，减少微观主体参与政策博弈的不确定性，帮助加速实现微观企业转型。
笔者认为，宏观政策上展现的“定力”和理性，也会给金融和资本市场注入活力和理性。
首先，经济转型成功实现将会帮助降低中国经济的中长期均衡利率水平，从而有利于资本市场的发展。事实上，经济转型的积极变化已经初步显现，这些变化对未来市场资金需求将产生深远影响。
从我国一季度经济数据看，第三产业对GDP贡献度为51.1%，连续第三个季度持平或高于第二产业。大多数服务业资本密度低，服务业比重上升意味着未来经济增长对资金边际需求将逐步降低。另外，随着经济结构调整、落后产能被淘汰出局，存量资金的利用效率将得到提升，第二产业在未来发展中的资金边际需求也将逐步降低。不难预见，更加活跃的服务业和更加高效的制造业将会大幅降低中国未来经济增长对资金需求的依赖度，有助于降低全社会资金成本。
其次，在政策“定力”的作用下，银行的风险意识和风险定价能力开始显现。2013年6月后，国内货币市场利率水平经历了系统性上升，流动性紧张。进入2014年后，银行间市场流动性骤然宽松。然而, 与此同时房地产、钢铁等行业企业资金链断裂的报道也在2014年时有出现。于是出现了银行间市场“钱松”与实体经济“钱紧”并存。“钱松”的关键是银行同业业务融资需求下降。在货币和监管政策引导下，尤其是经历了6月和12月两次“钱荒”的冲击，商业银行主动收缩了同业业务，货币市场的融资需求大幅下降。商业银行负债端融资需求的下降，必然意味着资产端对实体经济流动性投放的收缩，形成了广义流动性的“钱紧”。
事实上，银行间市场与实体经济“钱松”与“钱紧”是结构性的：对于财务稳健、现金流良好的企业，似乎并不存在“钱紧”的情况，感受到“钱紧”的正是经济转型被弱化的企业，这是商业银行风险定价能力提升的表现，也是利率市场化推进的必然结果和取得阶段性成功的标志。
第三，保持政策“定力”可以帮助有序打破中国金融产品中普遍存在的刚性兑付预期。
前些年发行的信托理财产品相继进入到期兑付阶段，除非政策环境突变宽松，其中必然有相当多低质量的项目无法实现全额兑付。然而，当前在信托产品和债券市场普遍存在着“刚性兑付”现象。表明这些金融产品的核心风险定价功能失灵。
系统性风险是客观存在，无法被消除只能被分散和转移。表面普遍存在的“刚性兑付”，并不意味着经济系统固有的内在风险被消除了。风险因素只是没有通过有效的风险定价由投资者承担，而是被不适当地转嫁给第三方。在当前的各种投资产品中，恐怕只有股票市场上“买者自负”的理念深入人心，投资者没有“刚性兑付”预期。
鉴于此，股票市场上已经成为“风险洼地”，承担了“不可承受之重”：A股市场过度地、显性地反映了系统性风险，具体表现为当前股票市场的风险溢价过高。打破信托等债性产品的“刚性兑付”会提升全市场的风险定价效率，尤其是降低股票市场上被扭曲的风险溢价。值得关注的是，债券市场似乎已先知先觉，最近长期高等级债的价格明显反弹，同时信用利差也在扩大，预示着债券和股票市场之间的风险溢价扭曲开始被修正。
最后，笔者认为，在更一般意义上，随着政策日益理性，资本市场终将回归理性。全球金融危机之后的若干年里，中国的政策周期缩短，政策力度波动加大。鉴于政府政策和公共部门在中国经济的巨大影响力，近年来中国资本市场表现得有失理性，可能一定程度上是政策层面上缺乏足够理性和定力的反映。既然十八届三中全会确立了市场机制在资源配置中起决定性作用的原则，也相应地对宏观政策环境的稳定性提出了更高的要求。
需要明确的是，政策定力激发微观活力的一个重要前提，是不能引发系统性金融风险快速上升。
系统性金融风险的评估须要基于宏观脆弱性分析做出判断。在这个问题上，中国社科院和国际货币基金组织的最新研究成果很有参考价值，他们的结论大体一致: 一方面，尽管近年来中国全社会整体负债率上升较快，但资产负债表的资产方也在扩张，以至于中国的主权资产净值始终为正值且呈上升趋势，这意味着，中国发生类似于欧洲主权债务危机的风险极小；另一方面，中国的全社会杠杆率虽高于金砖国家，但远低于主要发达经济体，而且这与中国全社会储蓄率远高于金砖国家是一致的，从而杠杆率总体上处在温和、可控的范围内。
毋庸讳言，近年来中国的系统性金融风险似乎有所上升，但同时政策制定者的“底线思维”意识也越来越强，对系统性风险的关注度也在上升。
从政策意愿看，2014年中央经济工作会议把“着力防控债务风险”列为2014年六大政策目标之一，决心可鉴。同时，4月25日的政治局会议也重申：“统筹处理好稳增长、促改革、调结构、惠民生、防风险的关系。”从政策掌控力看，中国银行系统高达20%的存准率，央行持有的近4万亿美元的天量外汇储备，以及中国政府仍然相对债务水平都意味着：如果有必要，政策层面有充足的运作空间，把系统性风险的隐患消灭在萌芽状态。
来源：《财经》    2014年5月13日",now());
insert into NewsInfo(author,title,content,creatTime) values("测试","经济转型将降低中长期资金价格","问：今年以来银行间国债收益率曲线整体下移并呈现陡峭化，重阳投资目前对未来资金价格的变化如何判断？
答：的确，自年初以来，一年期国债收益率收缩63个基点，十年期国债收益率收缩22个基点。我们认为，国债收益率曲线的变化并非缘于货币供应的增加，而是实体经济中的变化改变了市场资金的流向。中央政府对地方融资平台管控的加强和房地产市场的降温减缓了增量资金的流入，对宏观经济趋于谨慎判断的银行进而也降低了信用风险敞口而将更多资金配置到短期国债。
我们判断，银行间国债收益率曲线的变动只反映了资金流向改变的第一步。年初至今，仅是短期资金市场的供求局面发生了逆转，长端利率的变化不大，信用债收益率曲线的变化则更不明显。但是可以预期的是，随着我国经济结构调整深化，改变国债收益率曲线短端的积极因素将逐渐影响到长端，从而拉低收益率曲线的长端利率。同样，伴随市场完成自我出清的进程，信用债收益利差也将逐渐分化。
事实上，经济转型的积极变化已经初步显现，这些变化对未来市场资金需求将产生深远影响。从我国一季度经济数据看，第三产业对GDP贡献度为51.1%，连续第3个季度持平或高于第二产业。大多数服务业资本密度低，服务业比重上升意味着未来经济增长对资金边际需求将逐步降低。另外，随着经济结构调整、落后产能被淘汰出局，存量资金的利用效率将得到提升，第二产业在未来发展中的资金边际需求也将逐步降低。不难预见，更加活跃的服务业和更加高效的制造业将会大幅降低我国未来经济增长对资金需求的依赖度，从而帮助降低中长期资金价格。",now());
insert into NewsInfo(author,title,content,creatTime) values("测试","未来两年投资策略的最优象限","感谢中证报给予重阳投资这个荣誉！过去一年，重阳投资取得了些许的成绩，这与广大客户的信任、业界友人的支持、以及重阳全体员工的努力是分不开的。中国资本市场进入了一个新的发展时期，对于未来，我们深感任重道远。
今天我报告的是一个投资策略，前面有一个定语“未来两年”，为什么要加“未来两年”呢？大家都知道，当前中国经济社会处于转型的关键时期，党的十八届三中全会通过的《中共中央关于全面深化改革若干重大问题的决定》中谈到，到2020年要实现国家治理体系和治理能力的现代化，2020年距离现在还有六年时间，再过两年就只剩下四年时间，2014、2015年对于2020年实现总目标就显得非常关键。投资策略必须与国家全面深化改革的总形势以及国家的关键阶段相吻合，所以我想着重谈谈未来两年的投资策略。
重阳投资平常的投研框架会从盈利、利率、制度和风险偏好四个方面来谈，不久前我发表的一篇文章《弯道超越》是从六个方面来讲，今天我做了一点变化，从经济转型和制度变革两个方面切入来谈投资策略。
未来两年投资策略有两大支点，一是经济转型，一是制度变革。
两者既相通又相互独立。为什么说相通呢？因为制度变革的目的是为了促进经济社会的转型，可以说，制度变革是一种手段，它的目的是为了促进经济社会的转型。《决定》60条336项的改革措施都属于制度变革，令人鼓舞。但另外一方面两者又相对独立，尤其是在资本市场，我们都知道游戏规则的改变对于资本市场的影响有多大，制度变革就意味着游戏规则的改变。
第二点我想谈一谈重阳团队对经济转型的理解。经济转型这两年在股票市场中已有充分反映，新兴产业类公司，如创业板的公司表现的都非常好，这是经济转型预期在股价上的表现。这很正确，我也认同。但同时，我觉得对经济转型不能作狭义的理解，而应该放到更广阔的范围去理解。经济转型不仅代表新兴产业的诞生发展，也包括传统产业的整合、转型与升级，两者应当是并重的，比如在欧美国家，有代表新经济的苹果、谷歌、Facebook，也有代表所谓传统经济的沃尔玛、西门子、汇丰，以及与金融行业相关的高盛。中国同样如此，现在已经有大家认为的转型标杆，如腾讯、阿里等新兴产业公司的代表，相信通过这一次包括国企改革在内的全面深化改革，中国未来也会出现刚才我们所谈到的传统行业中很有竞争力的公司。这是我和重阳团队对经济转型的理解。
制度变革的范围非常广，与资本市场关系最大的是两项，一项是股票发行注册制，另一项是人民币资本项目可自由兑换。
证监会肖刚主席在博鳌论坛上表示，IPO注册制改革草案年底出台。他还说，如果2015年《证券法》修改完成，那么注册制就能实施。为什么注册制影响很大？我们都知道供求关系对于市场来说有多么重要，因为价格是由供求关系决定的，注册制的重要恰恰在于将改变市场的供求关系，尤其是结构性供求关系。所以要对注册制的影响给予充分的重视。
为什么要谈到资本项目可兑换对股票市场的影响？原因在于如果资本项目不开放，那么A股市场是相对封闭的。只有资本市场开放了，A股市场才有可能融入全球的金融体系。4月10日，李克强总理宣布的沪港通实际上也是稳步推进人民币资本项目可自由兑换的一步。4月11日，证监会新闻发言人还表示，沪港通之后或会推出深港通，而且将是更高层次的互联互通。
目前来看，经济转型和制度变革这两个支点中，市场对经济转型的关注度很高，但是对制度变革的影响预期还不足。在股票市场，如果都有预期的利好，就不是利好，只有没有预期的利好才是利好，反过来利空也是一样。所以，市场对制度变革的预期不足，我们就更要重视制度变革。
基于刚才讲的两大支点的分析，我想到了时间管理中象限的概念，即时间管理的横轴是紧迫性，纵轴是重要性。紧迫又重要的工作是第一考虑，在目前的市场环境下，怎样构建一个最佳的投资组合呢？如果把经济转型和制度变革一个作为横轴，一个作为纵轴，这两条轴分成四个象限，组合中最优的象限是第一象限，也就是我们选择的股票，构建的投资组合，要既受益于经济转型，也受益于制度变革。最次的选择是第三象限，它是制度变革和经济转型的输家，这是我们要极力规避的。
第三部分向大家报告一下重阳对未来两年投资策略的核心观点。两年的时间在投资上是中期的概念，它不是短期的，也不是长期的。
第一，基于我们对估值、政策、利率、资产配置、时间周期等因素的分析，认为以沪深300为代表的指数出现中级反弹的几率极高。估值，处于历史低点。政策，很多人强调中国股市是政策市，现在政府态度很明确，希望股市好，不是为了股市好而让股市好，而是目前中国发展的关键阶段，资本市场承担了很重要的任务，现在金融去杠杆化，光减负债很痛苦，而要加资本、加权益，则必须有发达、健康的资本市场。
自去年6月底“钱荒”出现以后，无风险利率从去年年底到现在在下行，同业拆借和回购利率、一年期国债收益率都大幅下行。现在很多人说资金比较紧，这恰恰是利率市场化走向深入的标志。高风险的企业去贷款，利率很高，这是正确的，不能再向以前那样，不管贷款人的风险大小都是一个利率。所以无风险利率下行也支持反弹。
基于各种原因，目前房产的投资属性在下降，过去吸纳了很多资金的固定收益类理财产品的吸引力也在下降，这些都是利好股市的。
再从时间周期来看，从2008年次贷危机至今，2009年有一个大反弹，当年8月份上证综指达到3478点。之后市场跌了五年，股票市场有内在的运行规律，简而言之就是涨高了肯定要跌，跌多了肯定要涨，或者涨久了肯定要跌，跌久了肯定要涨。目前的时间周期已经跌了五年了。再看另一个时间周期，上证综指处于1849点-2550点这个非常狭窄的区间也已经三年，有一个反弹不为过。
基于以上五个方面的因素考虑，重阳投资认为今年出现中级反弹的几率挺高，应该说目前已经初露端倪。
第二，我想说，在市场对制度变革的阵痛未有充分预期，以及中国经济转型取得突破性进展之前，A股出现系统性牛市的几率极低。未来两年我个人觉得制度变革的阵痛还没有出现，中国经济现在还处于转型的关键时期，没有取得突破性进展。只要这两个状语条件不具备，出现系统性牛市的概率不大。
第三，在目前这样一个特殊时期、关键时期、历史时期，尽管前景光明，但是前行道路中的风险和挑战不可忽视，所以在投资策略方面一定要攻守并重或者防守反击。经济转型和制度变革会构成四个象限，这个时候的反弹极有可能是结构性反弹，第一象限是受益者，如果是第三象限，可能就会输掉。",now());
insert into NewsInfo(author,title,content,creatTime) values("测试","IPO“二次重启”可能催化市场风格转换","问：近日，证监会网站公布了A股28家IPO排队企业的预先披露材料，IPO开闸在即；重阳投资如何看待IPO的“二次重启”给A股市场可能带来的影响？
答：证监会自本月19日起开始IPO预披露，这意味着新股发审重启即将开始。我们认为，从整体上来说，IPO的重启短期内可能对市场情绪略有影响，而中长期则会推动市场走向更加理性；与此同时，IPO重启可能催化A股市场的风格转换，市场结构将会进一步分化：一方面，此前由于供给受限而引发大幅上涨的板块，将随着本次IPO的“二次重启”以及注册制的渐行渐近，而可能面临越来越大的调整压力；另一方面，主板优质低估值蓝筹股受IPO重启的影响则会相对小很多。未来两年A股投资策略有两大支点，一是经济转型，一是制度变革。当前市场对经济转型的关注度很高，但是对制度变革的影响预期相对不足。随着IPO的“二次重启”以及不久前出台的“沪港市场互联互通”等一系列具体制度变革措施的相继出台，将会有越来越多的市场参与者开始关注这些影响深远的制度变革对股票市场影响。",now());
