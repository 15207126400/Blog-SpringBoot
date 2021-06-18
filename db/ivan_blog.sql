/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : ivan_blog

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2020-03-18 11:25:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_articel_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_articel_comment`;
CREATE TABLE `blog_articel_comment` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `article_id` int(32) DEFAULT NULL COMMENT '对应的文章id',
  `comment_id` int(32) DEFAULT NULL COMMENT '对应的留言id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='文章-留言关联表';

-- ----------------------------
-- Records of blog_articel_comment
-- ----------------------------
INSERT INTO `blog_articel_comment` VALUES ('1', '8', '2');
INSERT INTO `blog_articel_comment` VALUES ('2', '8', '3');
INSERT INTO `blog_articel_comment` VALUES ('3', '8', '4');
INSERT INTO `blog_articel_comment` VALUES ('4', '8', '5');
INSERT INTO `blog_articel_comment` VALUES ('5', '8', '6');
INSERT INTO `blog_articel_comment` VALUES ('6', '8', '7');

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) DEFAULT NULL COMMENT '文章大图',
  `title` varchar(50) DEFAULT NULL COMMENT '文章标题',
  `summary` varchar(300) DEFAULT NULL COMMENT '文章简介',
  `is_top` char(1) DEFAULT '2' COMMENT '文章是否置顶(1是 2否)',
  `traffic` int(10) DEFAULT '0' COMMENT '文章访问量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='文章信息表';

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('1', 'https://www.ivan.group/files/2019/12/17/1576569659723212.jpg', '这座城市为什么正以令人震惊的速度下沉？1200万人的首都准备大撤离！', '11月4日，美国正式通知联合国，启动退出《巴黎气候协定》进程。与美国“退群”同时受到关注的，还有全球变暖带来的海平面上升...', '2', '86', '2019-11-28 16:55:37', '2019-12-20 10:54:03');
INSERT INTO `blog_article` VALUES ('2', 'https://www.ivan.group/files/2019/12/02/1575276839928153.jpg', 'Python的秘密', '在朋友圈买下编程课，你上的是Python还是成功学', '2', '25', '2019-12-02 14:48:34', '2019-12-19 13:15:34');
INSERT INTO `blog_article` VALUES ('3', 'https://www.ivan.group/files/2019/12/02/1575276327605364.jpg', '超越Linux！', '超越Linux！华为鸿蒙明年将成“第五大操作系统”，网友：何时超过iOS？', '2', '18', '2019-12-02 15:03:32', '2019-12-19 12:32:26');
INSERT INTO `blog_article` VALUES ('4', 'https://www.ivan.group/files/2019/12/02/1575283189548774.jpg', '一本可陪伴一辈子的笔记本', '可擦可写,可循环利用,支持OCR识别,让你的笔记本变得智能', '2', '101', '2019-12-02 18:39:28', '2019-12-19 14:14:59');
INSERT INTO `blog_article` VALUES ('6', 'https://www.ivan.group/files/2019/12/14/1576315732320890.jpg', '苹果iPhone在华销量大降35％ 导致暴跌三大主因找到', '苹果在华销量大降引关注，据国际投行瑞士信贷的分析师最新报告指出，苹果iPhone手机11月在华出货量同比去年大降35.4%。苹果在华销量...', '2', '20', '2019-12-14 17:26:44', '2019-12-20 08:50:50');
INSERT INTO `blog_article` VALUES ('7', 'https://www.ivan.group/files/2019/12/14/1576316251671994.jpg', '曝马蜂窝裁员40% 有员工称突然接到被裁通知', '【TechWeb】12 月 13 日，有报道称马蜂窝近期启动裁员，裁员比例达 40%。对于该裁员消息，马蜂窝方面暂未给予回应。', '2', '15', '2019-12-14 17:37:20', '2019-12-20 09:35:45');
INSERT INTO `blog_article` VALUES ('8', 'https://www.ivan.group/files/2019/12/14/1576316584769606.jpg', '大众车撞烂法拉利', '大众车撞烂法拉利豪车要赔200万？车险业内人士：要看如何定责...', '2', '89', '2019-12-14 17:40:25', '2019-12-20 09:35:40');
INSERT INTO `blog_article` VALUES ('9', 'https://www.ivan.group/files/2019/12/20/1576839821940690.jpg', '他曾创造多门编程语言，还被比尔·盖茨以300万美元挖角', 'C#之父 Anders Hejlsberg : from Google\r\n\r\n安德斯·海尔斯伯格（Anders Hejlsberg），1960 年出生于丹麦哥本哈根，Turbo Pascal 编译器的主要作者，Delphi、C# 和 TypeScript 之父，.NET 创立者，是一位伟大的计算机科学家。', '2', '7', '2019-12-20 18:52:15', '2019-12-20 11:24:27');
INSERT INTO `blog_article` VALUES ('10', 'https://www.ivan.group/files/2019/12/20/1576840940482304.jpg', 'Uzi领跑微博之夜榜单，Shy哥也位列前五，厂长排名却引网友调侃', '英雄联盟可以说是现在非常有影响力的一款电竞游戏了，在多年的发展历史中，这款游戏也诞生了众多的知名选手和游戏主播，而在我们LPL赛区中，Uzi，厂长和Theshy这三位选手...', '2', '5', '2019-12-20 19:22:20', '2019-12-20 11:24:58');

-- ----------------------------
-- Table structure for blog_article_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_category`;
CREATE TABLE `blog_article_category` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `category_id` int(32) DEFAULT NULL COMMENT '对应的文章分类id',
  `article_id` int(32) DEFAULT NULL COMMENT '对应的文章id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='文章-分类关联表';

-- ----------------------------
-- Records of blog_article_category
-- ----------------------------
INSERT INTO `blog_article_category` VALUES ('7', '7', '4');
INSERT INTO `blog_article_category` VALUES ('9', '9', '2');
INSERT INTO `blog_article_category` VALUES ('10', '3', '3');
INSERT INTO `blog_article_category` VALUES ('24', '6', '6');
INSERT INTO `blog_article_category` VALUES ('25', '10', '7');
INSERT INTO `blog_article_category` VALUES ('26', '11', '8');
INSERT INTO `blog_article_category` VALUES ('30', '8', '1');
INSERT INTO `blog_article_category` VALUES ('31', '18', '1');
INSERT INTO `blog_article_category` VALUES ('32', '19', '1');
INSERT INTO `blog_article_category` VALUES ('42', '2', '9');
INSERT INTO `blog_article_category` VALUES ('43', '20', '9');
INSERT INTO `blog_article_category` VALUES ('44', '23', '9');
INSERT INTO `blog_article_category` VALUES ('48', '18', '10');
INSERT INTO `blog_article_category` VALUES ('49', '21', '10');
INSERT INTO `blog_article_category` VALUES ('50', '22', '10');
INSERT INTO `blog_article_category` VALUES ('51', '24', '10');

-- ----------------------------
-- Table structure for blog_article_content
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_content`;
CREATE TABLE `blog_article_content` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `content` longtext COMMENT '文章内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `article_id` int(32) DEFAULT NULL COMMENT '对应文章信息id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='文章内容表';

-- ----------------------------
-- Records of blog_article_content
-- ----------------------------
INSERT INTO `blog_article_content` VALUES ('2', '<p style=\"\">&nbsp; &nbsp; &nbsp; &nbsp;11月4日，美国正式通知联合国，启动退出《巴黎气候协定》进程。<br></p><p>　　与美国“退群”同时受到关注的，还有全球变暖带来的海平面上升。</p><p>　　来自“美国气候中心”发布的科学报告指出，预计在2050年之前，也就是未来31年内，全球各大城市都面临海平面上升带来的威胁。其中，泰国、孟加拉国、印度、越南、印度尼西亚等一些亚洲国家将有超过1/10的民众受到影响。</p><p>　　鉴于这一严峻形势，泰国总理巴育表示，受到人口、污染、交通等困扰，或将考虑从曼谷迁都。</p><p>　　泰国不是第一个表示考虑迁都的东南亚国家。</p><p>　　两个月前，印度尼西亚总统佐科·维多多正式宣布迁都计划，新首都落址在婆罗洲东加里曼丹省，距现首都雅加达约1400公里。据报道，印尼相关部委和地方政府已正式开启迁都筹备工作，计划在2020年前完成设计和法律的制定，2020年底开始施工建设，2024年前启动迁都程序。</p><p>　　现首都雅加达，要被印尼政府抛弃了吗？</p><p><img src=\"https://n.sinaimg.cn/news/crawl/300/w550h550/20191202/3056-ikcacer3219861.jpg\" alt=\"（图为印尼新首都位置，左下角小图中标注了现首都雅加达与新都的相对位置）\"></p><p>（图为印尼新首都位置，左下角小图中标注了现首都雅加达与新都的相对位置）</p><p>　　如果不迁都，总统府就没了……</p><p>　　丹戎普瑞克（Tanjung Priok）是雅加达北部最繁华的海港城之一，这里有180万的合法居民。</p><p>　　索菲亚在富人区拥有一套豪华海景别墅，庭院里有着一汪碧绿的泳池，私人码头就在几米之外。</p><p>　　然而，这一切并没有让在这里生活4年的索菲亚感到舒心。</p><p><img src=\"https://n.sinaimg.cn/news/crawl/59/w550h309/20191202/5a3f-ikcacer3219908.jpg\" alt=\"（图为索菲亚站在她的游泳池旁 图片来源：BBC）\"></p><p style=\"margin-left: 80px;\">（图为索菲亚站在她的游泳池旁 图片来源：BBC）</p><p>　　每6个月，家里的墙壁和柱子上就会出现裂缝，索菲亚就要请维修工加固；</p><p>　　每年一到雨季，她的家就会被淹没，海水涌入并完全覆盖游泳池，所有家具都必须要搬到二楼。</p><p>　　这一切都是地面下沉所导致的。</p><p>　　这样的事情在雅加达并不少见，无论是富人们的豪华海景别墅，还是靠海为生的平常人家。</p><p><img src=\"https://n.sinaimg.cn/news/crawl/206/w478h528/20191202/c69c-ikcacer3219950.jpg\" alt=\"（图为北雅加达 图片来源：BBC）\"></p><p style=\"margin-left: 80px;\">（图为北雅加达 图片来源：BBC）</p><p>　　这座城市为什么会以令人震惊的速度下沉？</p><p><img src=\"https://n.sinaimg.cn/news/transform/200/w640h360/20191202/da71-ikcacer3224428.gif\" alt=\"（图为1977年-2050年雅加达地面下沉的变化，颜色越深代表下沉越严重）\"></p><p style=\"margin-left: 40px;\">（图为1977年-2050年雅加达地面下沉的变化，颜色越深代表下沉越严重）</p><p>　　“始作俑者”正是人类自己。</p><p>　　17世纪，荷兰殖民者侵占印度尼西亚。荷兰人想把雅加达修建成“热带的阿姆斯特丹”，为此铺设街道、开挖水道，解决城市河水带来的问题。那时，有13条河流从雅加达市区内穿行而过。</p><p>　　自1945年印度尼西亚独立之后，雅加达开始了大规模扩张。</p><p>　　没有规划的城市建设让当地的污水管道几近于无，贫民区的简易破烂住房沿着水道、河流越盖越多。急剧扩大的贫民区里没有卫生设施，不供应自来水，也无人清扫垃圾——</p><p>　　每天，居民将从贫民区里运出的垃圾、粪便和其他脏物都倾倒进穿流过雅加达的水道和河流中；</p><p>　　外来投资者们新建的工厂向水道中排放大量废水和化学物质，更是污染了雅加达的饮用水源。</p><p>　　污染严重的水道和河流编织成一张巨大的网，将雅加达人笼罩在其中，迫使他们只能依靠攫取地下水资源满足生活需要。</p><p><img src=\"https://n.sinaimg.cn/news/crawl/59/w550h309/20191202/0fe8-ikcacer3220027.jpg\" alt=\"（图为当地污染严重的河流水源 图片来源：BBC）\"></p><p style=\"margin-left: 80px;\">（图为当地污染严重的河流水源 图片来源：BBC）</p><p>　　要知道，可靠、干净的自来水管道并不是每个雅加达人都使用得起的。</p><p>　　雅加达的自来水供应产业是私有制，推行这一方案的正是前总统苏哈托。</p><p>　　1997年6月，雅加达公营的供水系统交给了外资企业——法国苏伊士集团的PT Pam Lyonnaise Jaya以及英国泰晤士供水集团的PT Thames PAM Jaya。</p><p>　　这两家供水公司垄断雅加达供水服务十多年，不但没有减轻用水危机，反而令其继续恶化：</p><p>　　1998年，自来水价格上涨20%；</p><p>　　2001年，水价又飙升35%；</p><p>　　2003年4月，这两家公司又威胁撕毁与市政府达成的协议，当局不得不满足其将水价提高4成的要求。</p><p>　　水价水涨船高，不仅使穷人越来越用不起水，对于雅加达本地的开发商来说，也是个不小的负担。别无选择的雅加达人，只能自己建造水井从地下深处的含水层中抽水供日常需要。</p><p>　　各级官员发布了很多禁令，严禁开发商违法打井，但是由于监管不严，几乎任何人都可以私自进行地下水开采。</p><p><img src=\"https://n.sinaimg.cn/news/crawl/59/w550h309/20191202/c21b-ikcacer3220068.jpg\" alt=\"（图为雅加达居民抽取地下水的设施 图片来源：BBC）\"></p><p style=\"margin-left: 80px;\">（图为雅加达居民抽取地下水的设施 图片来源：BBC）</p><p>　　无休止的攫取带来了地面沉降的结果。当地下水被过度抽出时，上面的土地就像坐在正在放气的气球上一样下沉。</p><p>　　荷兰水文学家布林克曼（Jan Jaap Brinkman）表示，雅加达必须在2050年之前做到停止所有的地下水开采，才能避免整个城市的下沉。</p><p>　　但这几乎是不可能的。</p><p>　　亨德里（Hendri）是一名房东，在雅加达市中心经营着一家宿舍型公寓。十年间，他一直都是用自己抽取的地下水供应他的租户，他说，每日用水量巨大，最好的办法就是自己挖井供水，如果依靠当局将无法维持生活。</p><p>　　像他这样私自挖井的人，在这条街上并不少见。</p><p>　　塔林大道是雅加达最繁华的商业大街，在这条大街的两旁，到处都是摩天大楼、购物中心和酒店。而当雅加达市政当局视察塔林大道的80座建筑物时却发现，其中56座建筑拥有自己的地下水泵，当中33座属于非法开采。</p><p>　　由于雅加达被大海环抱、境内有13条河流，地面下沉又使得这里特别容易发生洪水。</p><p>　　2007年，雅加达洪灾，曾导致80人死亡，50万人无家可归，并暴发登革热疫情；</p><p>　　2013年，洪水导致雅加达50多个街区被淹，超过2万个家庭住房进水，34万人逃离家园，36人丧生，不仅雅加达市中心以及金融街遭受洪水，总统府也首次遭遇水淹；</p><p>　　每年一到雨季，只要位于高地势郊区的茂物（Bogor）和德博（Depok）降大雨，奔腾的雨水就会注入雅加达河床低的河流，水流回溢，造成周遭村落的水淹之患。</p><p>　　更为严重的是，雅加达还面临着世界各地的沿海城市普遍面临的一个问题——全球变暖导致的海平面上升。</p><p>　　近一个世纪以来，由于气温的升高，地球上几乎所有的陆地冰川都已经开始融化，使得海平面急速上升。</p><p>　　海水热膨胀也是海平面上升的重要影响因素。英国伦敦大学学院和爱丁堡大学的科学家在英国《新科学家》杂志上撰文称，他们对1993年以来的各项统计结果分析后发现，海水热膨胀使海平面每年升高1.6毫米，而南极洲和格陵兰岛以外的冰川和冰盖融化使海平面每年上升0.77毫米。</p><p>　　在过去的30年中，雅加达下沉了近4米。而世界银行此前的研究报告预测称，如果不迁都，十几年后，海平面可能上涨至印尼总统府门前。</p><p>　　如今，印尼政府正打算推动海墙建设项目，在雅加达湾西侧和东侧建造巨大海墙，以避免雅加达沉入海中。</p><p>　　深层次原因是发展不平衡</p><p>　　印尼迁都也并非心血来潮。</p><p>　　早在1957年，考虑到未来人口膨胀的问题，印尼开国总统苏加诺曾提出迁都至加里曼丹岛上的帕朗卡拉亚。</p><p>　　另外两位前总统苏哈托和苏西诺也都曾提出过迁都计划，不过后来都不了了之。</p><p>　　迁都计划背后是更大的发展考量。</p><p>　　印尼全国由大小17508个岛屿组成，素有“万岛之国”之称，其中包括众多大型岛屿（爪哇岛、苏门答腊岛、加里曼丹岛中南部、巴布亚岛西部和苏拉维西岛等）。然而，这些岛屿中，人口分布和经济发展水平都极其不平衡。</p><p>　　面积不占优势的爪哇岛，是人口最稠密的岛屿，聚集了印尼2.6亿总人口的将近60%，全国大部分经济活动都集中于此。</p><p>　　早在西方殖民者到来之前，爪哇岛就是印尼农业最发达地区和经济发展中心。</p><p>　　1602年，荷兰商人在印尼建立东印度公司，进行殖民统治。从此，爪哇一直是荷兰的统治中心。荷兰殖民者也一向把爪哇作为重点经营的地方，以致爪哇的人口猛增，经济开发水平遥遥领先，与国内其他地区的经济差距进一步扩大。</p><p>　　直到今天，爪哇岛一直都是印尼经济发展的主要区域。据印尼《罗盘报》报道，2018年，约占印尼全国总面积6%的爪哇岛，其GDP占到印尼全国GDP的58.48%，而占印尼面积超过六成的中部和东部岛屿（包括中部的加里曼丹岛和东部的苏拉威西岛、马鲁古岛、巴布亚岛等）GDP贡献率却不到17%。</p><p>　　区域发展不平衡，人口和精英都聚集在爪哇岛，巨大的贫富差距也由此产生。而这其中问题最突出的，无疑就是位于爪哇岛西北角的核心城市——雅加达。</p><p>　　16世纪，葡萄牙人先于各国殖民者进入印尼，在和当地国王交涉后，他们选在西爪哇吉利翁河河口的一个小渔村建立自己的小码头。</p><p>　　这个码头，就是今天雅加达北部沿海名胜古迹云集的巽他卡拉巴，而这也成为了雅加达的城市起源。</p><p>　　这个由葡萄牙人建立的港口小城很快在殖民者的建设下成长了起来，此后在本土国王、荷兰东印度公司、英国政府、荷兰政府之间反复易手，成为了东南亚海运商贸的中心城市。</p><p>　　到了1950年荷兰殖民政府退出印尼时，雅加达已经是爪哇岛上最大、最国际化的城市了。</p><p>　　1970年，雅加达人口达到450万，2010年达到950万，现在更是已达1200万人。而这还只是在市区居住的合法常住人口，如果再算上周边的茂物、德波、唐格朗和贝卡西在内，大雅加达地区总人口能达到3000多万，占到印尼总人口的11%。</p><p>　　2018年，英国市场研究机构欧睿国际（Euromonitor International）发布了一份印尼人口发展趋势的调查报告。报告预测，从2017年至2030年，雅加达的人口将有410万的增长，达到3560万人，超越全球人口第一大城市东京跃居榜首。</p><p><img src=\"https://n.sinaimg.cn/news/crawl/139/w550h389/20191202/3a47-ikcacer3220098.jpg\" alt=\"（图为熙熙攘攘的雅加达街头）\"></p><p style=\"margin-left: 160px;\">（图为熙熙攘攘的雅加达街头）</p><p>　　除去历史原因，外来人口源源的不断涌入也是雅加达人口急剧增加的原因。</p><p>　　独立后，印尼经济快速发展，越来越多的外国投资者在苏门答腊岛和加里曼丹岛投资建厂，土地被征用的乡民无处可去，不得不背井离乡来到商业发达的首都雅加达寻求生存的希望。</p><p>　　这些来自乡下的穷人大多在雅加达私自修建的贫民区或者沿水道而修的村落内定居下来，这大大扩充了雅加达的人口规模。</p><p>　　正是在国家这种人口、经济格局极不平衡的背景下，印尼决定把首都迁至爪哇岛外，一大考虑就是希望以此带动印尼中东部地区发展。</p><p>　　印尼国家发展计划部长班邦·布罗佐内戈罗表示，迁都是佐科政府旨在消除爪哇岛与其他地区发展不平衡的重要战略，可以使国家经济发展更加均衡与公平。</p><p>　　雅加达不堪重负</p><p>　　事实上，占有全国畸高比例的人口和经济规模，给雅加达带来繁荣的同时，也让它“重病缠身”，出现一系列的严峻问题！</p><p>　　最直观的影响，就体现在交通上。</p><p>　　雅加达拥堵到什么程度？</p><p>　　大雅加达运输管理机构（BPTJ）数据显示，雅加达居民拥有1300万辆摩托车与440万辆轿车，加上每天往来郊区与市区的车辆，更是远远高于这个数目。</p><p>　　调查显示，雅加达平均每位司机每年启停次数高达33240次，算下来相当于每位司机每天要启停91次，上下班高峰期停车次数高达45次。</p><p>　　据印尼交通部门的统计数据，雅加达每天上下班高峰期的车辆行驶速度只有不到10公里/小时。在最拥堵路段，行驶5公里需要2个多小时甚至更长时间。政府部长经常要警察护送才能准时参加会议。</p><p>　　2018年与2016年同期相比，每个居民每年要额外在路上多堵184个小时。印尼官方数据显示，雅加达地区交通拥堵平均每年导致100万亿印尼盾（约合503亿元人民币）的经济损失。</p><p>　　而公共交通设施的落后，进一步加剧了雅加达的交通拥堵状况。</p><p>　　雅加达城市公交车的运营集中在交通干道，而载客15人左右的小型公共汽车、“三轮摩的”和摩托车作为公交运力的补充，共同承担起了城市公共交通的重任。</p><p>　　由于没有专门的停车站，这些小型公车和“摩的”往往在等候乘客时将车停在路边，占用了本就紧张的道路资源。为抢客源，这些车还常在路中间停车上下人，更是加剧了交通堵塞。</p><p>　　而直到今年3月，雅加达第一条地铁线才正式启用，这很难在短时间内纾解雅加达的拥堵困局。</p><p>　　印尼政府一直在为改善雅加达的交通状况而努力。最近，政府已经计划延长前不久才开通的地铁系统路线，同时还计划建造一个新的环线铁路，以及更多通勤线路、公交专用车道和天桥等，以改善雅加达交通拥堵的问题。</p><p><img src=\"https://n.sinaimg.cn/news/crawl/59/w550h309/20191202/c71f-ikcacer3220141.jpg\" alt=\"（图为当地摩托车导致的交通拥堵）\"></p><p style=\"margin-left: 120px;\">（图为当地摩托车导致的交通拥堵）</p><p>　　人口爆炸、交通拥堵这一系列“城市病”，对当地居民来说造成的最切身的后果，便是糟糕的环境质量。</p><p>　　自2017年以来，雅加达空气质量从未被列入“有利居民健康”的类别。</p><p>　　2019年以来，雅加达日均PM2.5指数仍高达42.4，这对敏感人群的健康很不利。</p><p>　　一些国际组织认为，除了备受诟病的交通之外，雅加达的工业、合法和非法冶炼厂、露天垃圾焚烧厂和燃煤发电厂也是罪魁祸首。</p><p>　　7月，雅加达的一群社会活动家和环保主义者厌倦了呼吸世界上最肮脏的空气，对印尼总统、卫生部、内政和环境部以及雅加达、万丹和西爪哇省的州长提起诉讼。雅加达法律研究所的一位律师解释道：“我们希望通过这一诉讼，政府可以改善现有政策并采取有效措施克服空气污染，因为现行政策不起作用。”</p><p>　　但是，对相关的指控，雅加达政府似乎并不买账。</p><p>　　据《雅加达邮报》报道，雅加达环保局的代理负责人表示相关空气监测数据并不完全准确，标准不同。根据政府在雅加达的空气监测站数据，今年6月的空气质量“还可以”。该负责人还将PM2.5的浓度增加归因于雅加达正在进行的大规模开发项目，“施工项目产生的灰尘对PM2.5的贡献更大，这对发展中的大都市来说是正常的”。</p><p><img src=\"https://n.sinaimg.cn/news/gif_image/668/w428h240/20191202/a3f9-ikcacer3220195.gif\" alt=\"（图为雅加达的洪水 图片来源：BBC）\"></p><p style=\"margin-left: 80px;\">（图为雅加达的洪水 图片来源：BBC）</p><p>　　如果说这些问题还是各国大城市的“共性”问题，雅加达在地理上的“先天缺陷”更使其居住环境雪上加霜。</p><p>　　雅加达所在的爪哇岛是一座火山运动催生的岛屿，现在仍有112座火山，其中35座是活火山。</p><p>　　火山喷发留下厚厚的火山灰土层，为爪哇岛的农作物生长提供了肥沃的土壤，但也留下巨大隐患。</p><p>　　1883年，距离雅加达160公里的喀拉喀托火山爆发，火山灰喷到80公里的高空，并引起强烈的地震和超过30米的海啸。</p><p>　　由于附近无人居住，火山爆发时当场死亡的人数极少，但它激起一连串的海啸和地震潮波，造成爪哇岛和苏门答腊岛的沿岸附近几座城市约3.6万人丧生。</p><p>　　2018年12月23日，喀拉喀托火山再次喷发，印尼相关部门表示，“12·22”印尼巽他海峡海啸可能就是由该火山喷发引发海底滑坡所致。</p><p>　　今年7月，在没有任何预兆的情况下，距离雅加达161公里的唐库班帕拉胡火山喷出气体和火山灰，所幸并未造成人员死亡或严重受伤。&nbsp;</p><p>　　地面下沉、人口稠密、交通拥堵、空气污染、洪水以及各种自然灾害，雅加达不堪重负。</p><p>　　2014年，佐科·维多多当选印尼总统后，深入研究过迁都问题。在今年成功连任后，他带领内阁成员实地考察新首都候选地区，最终决定将首都迁往东加里曼丹地区——北佩纳占巴塞（Penajam Paser Utara）和库泰卡塔内加拉（Kutai Kartanegara）地区。</p><p>　　佐科·维多多表示，印尼政府经过3年的研究认为，东加里曼丹省和与其接壤的的部分地区，在地理方面具有战略意义，遭受洪涝、地震、海啸、森林火灾等灾害的风险较小，是新首都的理想地点。</p><p>　　但这并不意味着政府将抛弃雅加达。</p><p>　　印尼政府计划在未来10年投入400亿美元，挽救这座正在缓慢下沉的城市。</p><p>　　迁都前景仍是未知数</p><p>　　对于印尼来说，迁都可以被视为一项积极的财政政策，毕竟建造一个数百万人居住的新城市，必然需要大规模的基建投资，也将带动许多产业的发展，创造大量就业。</p><p>　　印尼总统佐科·维多多表示，雅加达仍然保留商业和贸易中心的功能，迁移的只有该国的行政总部。搬迁行政中心需花费330亿美元，其中国家将出资19%，其余资金来自公私合作和私人投资，包括标价150万的新政府办公楼和公务员住房。</p><p>　　这一消息受到东加里曼丹省开发商协会的欢迎。该协会表示，预计投资将有所增加。</p><p>　　印尼房地产商协会中央理事会秘书长多多克称，迁都后在新首都要建的房地产如写字楼、酒店、住宅和医院等项目，在未来10年里所需的投资总值估计会达到1000万亿印尼卢比（约合5000亿人民币），因此开发商要抓紧机会进行投资。</p><p>　　然而，事情会如设想的那样顺利发展吗？</p><p>　　来看看印尼迁都的借鉴的对象——巴西的现状。</p><p>　　1960年，巴西把首都从里约热内卢迁入巴西利亚，一个从零开始规划的理想城市。巴西利亚像是个没有殖民地遗址、巴洛克式古典建筑，也没有贫民窟，只有建筑师奥斯卡（Oscar Niemeyer）在这块被誉为“巴西心脏”的空旷高原上留下的近乎完美的现代主义建筑。</p><p>　　同样，只把政治中心迁入新首都的巴西面临着什么样的问题呢？</p><p>　　在巴西利亚，一切都被划分为不同的区域。</p><p>　　从空中看，这座城市像是一架飞机，机翼是巴西利亚官员们居住的场所，机身则是崭新的政府部门所在。</p><p>　　对于生活在这里的人来说，区域分明的巴西利亚更像是政府的办公园区，并不算是一个城市，因为它没有一个城市应该拥有的元素：复杂的街道、住在临街商铺楼上的人们以及紧邻办公室的公寓。</p><p>　　那些公寓大楼，只住进去了富人和更富的人。</p><p><img src=\"https://n.sinaimg.cn/news/crawl/93/w550h343/20191202/9714-ikcacer3220233.jpg\" alt=\"（图为飞机形状的巴西利亚）\"></p><p style=\"margin-left: 160px;\">（图为飞机形状的巴西利亚）</p><p>　　“五年内实现五十年的进步”，这是巴西前总统尤塞利诺·库比切克（Juscelino Kubitschek）为实现国家现代化和工业化计划的战斗口号，巴西利亚的建设就是其中的核心。</p><p>　　然而，这个口号很快就被总统的批判家修改成了“五年内实现五十年的通货膨胀”。</p><p>　　当时的巴西自身国家储蓄值较低，外国投资不足以支持建设新首都。库比切克政权为了解决财政问题，选择了印刷钞票为公共部门支出提供资金，导致政府在短短4年里仓促建设首都的花费，超出了已被膨胀和赤字缠身的巴西经济之承受能力。</p><p>　　再看印尼，迁都同样面临着资金、技术多方面的挑战。</p><p>　　把首都从雅加达搬迁到东加里曼丹省须耗资466万亿印尼盾（约2340亿人民币）。从历史角度看，新首都需50至150年才能发展成财政稳健的城市。</p><p>　　印尼知名经济学家普拉瑟迪安托诺提醒，佐科执政以来上马的各类基建计划已令印尼财政捉襟见肘，私营部门对投资风险较大的长期项目一直十分谨慎，迁都这项佐科政府最为雄心勃勃的计划，在经济上是否可行仍值得商榷。</p><p>　　印尼政府的执行力也被质疑。</p>', '2019-11-29 10:59:14', '2019-12-17 11:41:19', '1');
INSERT INTO `blog_article_content` VALUES ('3', '<p><img alt=\"QQ图片20191202145501.jpg\" src=\"https://www.ivan.group/files/2019/12/02/1575276839928153.jpg\" width=\"1129\" height=\"750\"><br></p><p><font>本文来源：36氪</font></p><p><font>作者：岳佳彤</font></p><p><font>“每天半小时学习编程，0基础入门。”</font></p><p><font>“会Python的人，工作都不会太差。追上同龄人，就现在！”</font></p><p><font>……</font></p><p><font>你的朋友圈应该也出现这过类似的广告，如今，相比从朋友圈买面膜或者零食，上一门编程课，成为社交电商中出现的新物种。而相比其他的编程语言，Python成为今年年度“出圈”最成功的选手。</font></p><p><font>潘石屹前段时间也连发三条微博，把学习Python当成自己的人生礼物。对此，众网友猜测：他说不定是看了朋友圈的Python广告才决定去学的。</font></p><p><b>这个课究竟在学什么</b></p><p><font>为了对此类课程一探究竟，36氪作者报名参与了8.9元的体验课。和很多网络课程一样，首先要添加一名助教老师，并拉入同期的学习群，该群主要为实操课答疑、每日认知课学习、学员之间的交流以及学习打卡，这次作者所在的群为227人。</font></p><p><font>体验课的学习周期为6天，一共设置了4个关卡，学习进度可以自己把握，大概25-30分钟可以学完1关。需通过电脑或者平板上课，课程并不是视频或者直播，而是文字交互式的，每个人的学习是独立的，学完一关才能进入下一关，类似游戏升级。</font></p><p><font>学习的内容主要分为认知课和实操课。认知课是对Python基本概念的介绍，以微信推文的形式分享在群中。实操课需要在电脑端学习，主要讲解基础语法，包括变量和赋值，认知数据的类型，数据进行应用与转换，条件判断与条件嵌套等基础知识。每节课程设置了诸如“千与千寻”、“哈利波特”等场景化模式来增加趣味性。</font></p><p><font>在初步的体验课之后，会让你对Python有个基本的认知，并根据课堂内容能够在其自创平台上进行简单的代码操作，而这种“即时满足感”，会让你想接着往下学习。可惜，万变不离套路。如果要解锁后面的学习内容，需要再交1298元。</font></p><p><font>我向助教要来了价值“1298元”的课程安排。</font></p><p><font>主要分为两部分内容，第一部分是基础语法，主要是掌握函数的用法、了解模块的调用方法等，而第二部分是爬虫精进，主要学习如何使用Python代码登陆网站并爬取信息等技能。每个章节配有相关的实操训练，像爬取天气、电影、食谱信息等应用。</font></p><p><font>如果是对编程一无所知的“小白”，冷不丁一看会被唬住，看起来丰富的课堂内容以及实用的技能，再加上广告中点燃“焦虑”的广告词——“把握AI风口，给自己一个涨薪的选择”，下一步就掏出钱包“冲动消费”。且慢，这个课程含金量究竟有多少？真的能达到广告中所讲的效果？学完之后可以突破职场瓶颈升职加薪，亦或发现新的职业可能实现转型？</font></p><p><b>这个课值不值得买</b></p><p><font>通过调查，购买该课程或有购买意向的学习者主要为以下三种：</font></p><p><font>第一种，如果你是具有一定编程基础的学习者，想通过该课程提升自己的水平，建议不要买。</font></p><p><font>根据目前掌握的信息来看，该课程仅为入门级的Python&nbsp;课程，不会帮助你深入理解编程语言，更不会培养你真正的编程思维。实际上，如果你有其他语言的编程基础，再学Python是十分容易上手的。能否成功运用好Python这门语言，取决于你的数理知识功底是否扎实，而“快餐式”地讲授基础层面的内容，并不能为你打好编程语言基础，更不能为你之后的学习生涯带来实质性的帮助。</font></p><p><font>这个课就像“得到”中薛兆丰讲的经济课，如果专业人士来看，他所讲的理论仅仅是经济学的入门级别，但由于大部分人日常接触较少，很容易一下被唬住。真的想学，只需要花几十块买本真正的专业书，就会知道他讲的仅仅是经济学的边角料而已。</font></p><p><font>第二种，如果你是编程小白，并且不想自己花时间精力去网上搜集学习资料，那么可以把该课作为单纯的入门学习，但网上优质的入门学习资源也十分丰富且性价比高，同样不太建议买。</font></p><p><font>适合初学者的原因是因为该课程有一个明显的特点：上手快，能做到即时反馈。这个课所涉及的内容能做到马上上手开练，对于编程小白，特别是停留在“Python应该在哪里下载”的环节卡住的人来说，会有一定的即时满足感。</font></p><p><font>但是，刚入门的学习者往往会很容易掏钱购买别人包装好的知识点，追求省时省力，但从另一个角度也反映出学习者畏难、怕枯燥、无耐心、自制力弱等缺点，如若连这些问题都无法努力克服，那么在之后漫长的编程学习生涯中也会十分艰辛。</font></p><p><font>还有购买者表示可能花的钱越多，对一个东西投资越高会越有自制力，应该能够认真学完。但其实这只是一个自我安抚的心理作用，并不是沉没成本越大，认真程度就会越高。</font></p><p><font>第三类，如果你希望通过学习该课程增加自身职场竞争力。同样不建议买。</font></p><p><font>这类课程并不能教会你实现复杂编程任务，只能停留在“模仿”的阶段，并不能让你真正对Python语言融会贯通。如果你是一个从来没有接触过编程的“小白”，希望通过Python对办公技能有所提高，实现对繁杂的表格的快速处理，收发邮件等等办公轻应用，倒不如老老实实学好Excel，从头开始学一门不熟悉的语言，这相当于舍近求远。</font></p><p><font>那些说着“Python杀死了Excel”的人，不过是在制造似是而非的职业需求，扩大需求恐慌，以此贩卖焦虑。Excel能满足正常的办公需求，并且在绝大部分情况下都可以匹敌Python。如果你有清晰的处理逻辑，Excel就能搞定，用Python并不能为你减少多少工作量。</font></p><p><font>另外，如果有人想通过该课程就能实现职场转型，只有三个字：不可能。</font></p><p><font>Python只是工作的一个工具，而一个人的工作能力和会使用的工具并没有绝对的关系。我们可以通过学习某种工具拓展自身的整体实力，为你“锦上添花”，绝非在你职场瓶颈期为你“雪中送炭”。</font></p><p><font>尽管现在一些应聘要求中写到“掌握Python的优先考虑”，但一句“擅长Python，具备项目开发编程经验”，并不能真正为你的简历加多少分，只会让你陷入“什么火学什么”的怪圈。</font></p><p><b>一个演变成“成功学”的Python课</b></p><p><font>编程语言这么多，为什么只有Python变成了网红，成为各大培训机构争相培训的热点内容？</font></p><p><b>首先，够潮流。</b><font>主张“简洁主义”的Python，语法简单、语句清晰，可以让初学者“快速入门”，在学习过程中把精力集中在编程对象和思维方法上。被称为“胶水语言”的Python，能够很好地包装和调用其他编程语言写的库，有着最庞大的免费“代码库”，有较丰富的资源并且应用很广泛。</font></p><p><font>随着人工智能概念的大火，其重要的支持语言Python也一路高歌猛进。据TIOBE 2019年一月发布的排行榜显示，Python再次获得TIOBE最佳年度语言排名，也是获奖次数最多的编程语言。</font></p><p><font>但现在越来越多的Python课，打着人工智能的旗号鼓吹起“神效”，蹭一波热度收割一波梦想站在时代风口的韭菜，看他们的广告词——“把握AI风口机遇，给自己一个涨薪选择”。这类包装容易让学习者产生学会Python就掌握了人工智能的错觉，仿佛下一秒就能造出AlphaGo。但人工智能是个很广泛的概念，Python只是涉及到其中的深度学习，在AI开发中，Python只是热门的语言之一，但不是唯一。</font></p><p><b>其次，够简单。</b><font>因为入手极快，几节课就能做出点看起来像模像样的东西，容易使人产生成就感.相比其他语言，Python更容易得到即时反馈，使人产生即时满足感。</font></p><p><font>这两点成为Python培训课泛滥的主要原因，里面鱼龙混杂，有含金量高带有一定公益性的，也有师资力量薄弱，仅仅只为商业利益。霍尼在《我们时代的神经症人格》中指出，“典型的焦虑状态，即由于感到来自外界的强大危险而萌生的一种缺乏防御能力的感觉。”即焦虑来源于自身的恐惧。&nbsp;而五花八门的Python课，正是抓住了人们对于现状或者未来的恐惧，贩卖焦虑。</font></p><p><font>学Python的确有用，但也无需把它捧到神位。这不是治愈焦虑的良药，更不能病急乱投医。</font></p><p><font>“Python不是万能的，任何编程语言都有各自擅长的领域，比如Java的跨平台能力就很强。我大学是学Java和C语言的，但Python火起来了我也学了下，不同的编程范式会让我跳出自己之前的局限，拓展自己思考问题的路径。现在Python已经不新潮了，又出来了其他发展前景更好的语言，我依然在学。”一位互联网大厂的程序员说道，“每次都当你有需求的时候再学永远都会落后一拍，而且无法站在一个高度去选择，解决不同的问题始终是要对症下药的。”</font></p><p><font>“我也看到了朋友圈关于Python的广告，确实太夸张了。这就是一个工具，并不能够拯救人生。找到合适的途径去慢慢摸索学习，真正培养出自己的编程技能是不可能短时间速成的，得脚踏实地。上一次让我有朋友圈Python广告的那种‘人生拯救感’的组织，大概是传销。”</font></p><p><font>当Python被包装成了一门“成功学”，就变成了一碗喝不起的毒鸡汤。</font></p>', '2019-12-02 06:52:24', '2019-12-14 09:33:26', '2');
INSERT INTO `blog_article_content` VALUES ('4', '<p>和AI大咖们一起讨论吧。<br></p><p>今年8月的华为开发者大会上，鸿蒙OS正式亮相，这是全世界第一个基于微内核的全场景分布式操作系统。余承东曾表示：华为手机优先使用安卓生态，一旦受实体名单影响安卓不能用，一两天就可以迁移到鸿蒙OS上来。</p><p><img src=\"https://n.sinaimg.cn/translate/165/w621h344/20191013/5992-ifvwftk3137536.gif\"></p><p>其实，鸿蒙操作系统不仅限于智能手机，还用在包括智能家居产品在内的各种设备中。鸿蒙操作系统也在今年率先用在了荣耀智能电视上。</p><p>近日，市场调研机构Counterpoint最新报告称，鸿蒙操作系统预计明年全球市场份额将达到2%，使其超越Linux成为全球第五大操作系统。Counterpoint进一步指出，鸿蒙OS在中国的份额到今年年底将达到0.1％，到明年年底将达到5％。</p><p>鸿蒙OS明年将超Linux成为第五大操作系统</p><p>目前，Android是全球领先的操作系统，市场份额为39％；其次是Windows，市场份额为35％；苹果的iOS，市场份额为13.87％；macOS，市场份额为5.92％；Linux目前是第五大操作系统，占有0.77％的市场份额。</p><p><img src=\"https://n.sinaimg.cn/translate/117/w550h367/20191202/57b0-ikcacer4677267.jpg\"></p><p>NO.1 Android系统</p><p>Android系统是Google公司开发的全球最知名的操作系统，主要支持手机、电视、数码相机、游戏机、智能手表、平板电脑等移动设备。由于Android系统的开放性以及设备兼容性，在全球范围内积累了不少人气。</p><p>NO.2 Windows系统</p><p>Windows系统是微软公司研发的一套操作系统，于1985年问世，起初仅仅是Microsoft－DOS模拟环境，后续微软不断对系统版本更新升级，由于其具备良好的人机交互感受，支持较多应用软件，对硬件支持良好等特性，受到广大PC用户的喜爱，目前已经成长为个人PC用户桌面级最常用的操作系统。</p><p>NO.3 iOS系统</p><p>在2007年1月9日的Macworld大会上，苹果公司首次公布iOS系统，最初是设计给iPhone使用的，后来陆续嵌套到iPod touch、iPad、Apple Watch等产品上。区别于自由开源的Android系统，iOS系统与之有着本质上的区别，它仅限苹果设备使用。</p><p>NO.4 Mac OS系统</p><p>Mac OS是苹果公司为Mac系列产品开发的专属操作系统，以简单易用和稳定可靠著称，处处体现着简洁的宗旨。从安全性来说，目前世界上疯狂肆虐的计算机病毒几乎都是针对Windows的，由于Mac的产品架构与Windows不同，所以很少受到病毒侵袭。</p><p>NO.5 Linux系统</p><p>Linux系统是一套免费使用和自由传播的类Unix操作系统，是一个基于POSIX和Unix的多用户、多任务、支持多线程和多CPU的操作系统，主要运行Unix工具软件、应用程序和网络协议。</p><p>Joy Tan：鸿蒙OS代码行数更少，安全性更高</p><p>近日，华为公共事务高级副总裁Joy Tan在接受采访时表示，鸿蒙OS代码行数更少，安全性更高。</p><p><img src=\"https://n.sinaimg.cn/translate/338/w728h410/20191202/2582-ikcacer4677269.jpg\"></p><p>Joy Tan表示，鸿蒙操作系统是一个分布式、轻量级、紧凑的操作系统，同时具有强大的功能。比起市场上的其他操作系统，它的代码行数要少得多，所以安全性更高。</p><p>她表示，鸿蒙操作系统与安卓及iOS的目的不同，开发者只需要进行一次应用开发，应用可灵活部署到多个不同的终端。</p><p>“我们在几个月前才刚发布了鸿蒙，现在就已经有市场调研公司Counterpoint Research发布报告，鸿蒙操作系统预计在2020年底超过Linux，成为第五大最受欢迎的智能数字终端操作系统。”</p><p>鸿蒙OS将来可以支持包括Android，Linux和HTML5 在内的各种应用程序。新操作系统使用华为的方舟编译器，并将支持Kotlin，Java，Javascript，C和C ++编程语言。它还将具有经过验证的可信执行环境，以在多个设备之间提供更好的连接安全性。</p><p>早在2017年，华为就开始开发操作系统。目前鸿蒙OS的版本是1.0，2.0计划明年推出，3.0计划2021年推出。明年，我们还应该能够看到它出现在个人电脑上，2022年出现在VR头显上。</p><p>华为鸿蒙：全球第一个基于微内核的分布式OS</p><p>华为消费者业务 CEO 余承东认为—“未来的操作系统应当是微内核架构，可以适配任意终端。”</p><p>今年8月9日的HDC2019华为开发者大会上，余承东正式发布了鸿蒙操作系统——Harmony OS，这是一款基于微内核的全场景分布式OS。</p><p><img src=\"https://n.sinaimg.cn/translate/290/w1080h810/20190820/0d5d-icmpfxa3399488.jpg\"></p><p>余承东表示，安卓有超过1亿行代码，内核就超过2000万行，但一般用户用到的代码不到8%，整体比较冗余，在IoT时代这既没必要也不需要。</p><p>而鸿蒙系统采用了“微内核”的设计理念，区别于安卓等系统的“宏内核”，微内核采用同一套操作平台，针对不同硬件能力的产品进行部署，并采用分布式架构，提升效率。</p><p>“鸿蒙”微内核架构无需root权限，外核服务相互隔离，就没有一个统一的钥匙能够开出所有房间的门，从而有效提升系统级安全。</p><p>余承东还介绍了鸿蒙OS具有如下四方面独到优势：</p><p>分布架构；</p><p>天生流畅；</p><p>内核安全；</p><p>生态共享。</p><p>余承东说鸿蒙OS是“真正实现跨终端的无缝系统”。这是分布式架构首次用于终端OS，实现了跨终端的无缝协同体验。</p><p><img src=\"https://n.sinaimg.cn/translate/290/w1080h810/20191202/a44e-ikcacer4677471.jpg\"></p><p>分布式架构的应用包括分布式任务调度，分布式数据管理，硬件能力虚拟化，分布式软总线。</p><p>“全场景”，这是余承东在介绍鸿蒙OS时的高频词。</p><p><img src=\"https://n.sinaimg.cn/translate/368/w880h288/20191202/29b1-ikcacer4677761.jpg\"></p><p>具体来说，分布式架构可灵活适配全场景的丰富终端形态，不同的终端，包括电脑、手机等GB级的内存、手表、汽车等MB级的，以及门锁等KB级内存非常小的IoT设备，鸿蒙OS系统都能够根据硬件能力进行加载：一套OS能够在不同硬件能力上部署。</p><p>鸿蒙OS架构图</p><p><img src=\"https://n.sinaimg.cn/translate/590/w890h500/20191202/8375-ikcacer4677762.jpg\"></p><p>最后，余承东亮出了鸿蒙OS的架构图，而且是“当前”和“未来”的架构图。</p><p>较为明显的一个区别是，鸿蒙OS未来的架构欲统一内核，将当前的Linux内核、鸿蒙微内核和LiteOS整成一个统一的“鸿蒙微内核”！</p><p>至此，我们可以重看一下鸿蒙的开发历程，以及未来的路标，不得不感叹，鸿蒙OS的未来更让人期待！</p><p><img src=\"https://n.sinaimg.cn/translate/290/w1080h810/20191202/6d0f-ikcacer4678058.jpg\"></p><p>鸿蒙OS开源第一枪，更多开源陆续放出</p><p>此次方舟编译器的开源打响了鸿蒙OS开源的第一枪，首次开源范围是编译器 IR（ Intermediate Representation）、RC（Reference Counting）和多语言设计思想等，用于与业界、学术界沟通交流。</p><p>后续将陆续开源编译器前端、后端，支持其它语言（如 JavaScript）的编译等，当前部分Java语言特性和JVM虚拟机特性的支持未包括在本次开源代码中，包括：annotation、lambda表达式、泛型等。</p><p><img src=\"https://n.sinaimg.cn/translate/80/w1080h1400/20190901/20a2-icxmqsw4811042.jpg\"></p><p>华为消费者 BG 软件部总裁王成录表示方舟编译器代码会陆续开源</p><p>根据之前华为在开发者大会上公布的信息，作为鸿蒙OS的重要工具，方舟编译器从2019年8月开始，将分步骤持续进行开源。</p><p>具体的开源计划如下：</p><p>2020年：开始对Java编译器工具链开源，支持Java程序编译。</p><p>2021年：开始对JavaScript编译器工具链开源，可用于JS程序的编译。</p><p>参考链接：</p><p><a href=\"https://www.gizmochina.com/2019/10/14/harmonyos-market-share-prediction/\">https://www.gizmochina.com/2019/10/14/harmonyos-market-share-prediction/</a></p><p>寒冬里，这个最酷AI创新平台招人啦！新智元邀你2020勇闯AI之巅</p><p>在新智元你可以获得：</p><p>与国内外一线大咖、行业翘楚面对面交流的机会</p><p>掌握深耕人工智能领域，成为行业专家</p><p>远高于同行业的底薪</p><p>五险一金＋月度奖金＋项目奖励＋年底双薪</p><p>舒适的办公环境（北京融科资讯中心B座）</p><p>一日三餐、水果零食</p><p>新智元邀你2020勇闯AI之巅，岗位信息详见海报：</p>', '2019-12-02 07:03:59', '2019-12-14 09:33:36', '3');
INSERT INTO `blog_article_content` VALUES ('5', '<p><img alt=\"\" src=\"https://img-bss.csdn.net/201909060556186847.png\"></p><p><img alt=\"\" src=\"https://img-bss.csdn.net/201909060556338133.png\"><img alt=\"\" src=\"https://img-bss.csdn.net/201909060556432291.png\"></p><p><img alt=\"\" src=\"https://img-bss.csdn.net/201909060557062225.png\"><img alt=\"\" src=\"https://img-bss.csdn.net/201909060557156436.png\"></p><p><img alt=\"\" src=\"https://img-bss.csdn.net/201909060556186847.png\"></p><p><img alt=\"\" src=\"https://img-bss.csdn.net/201909060556338133.png\"><img alt=\"\" src=\"https://img-bss.csdn.net/201909060556432291.png\"></p><p><img alt=\"\" src=\"https://img-bss.csdn.net/201909060557062225.png\"><img alt=\"\" src=\"https://img-bss.csdn.net/201909060557156436.png\"></p>', '2019-12-02 10:39:59', '2019-12-14 09:32:49', '4');
INSERT INTO `blog_article_content` VALUES ('6', '<p><img alt=\"20191112234025453.jpg\" src=\"https://www.ivan.group/files/2019/12/02/1575284402447818.jpg\" width=\"900\" height=\"675\"><br></p><p><span style=\"\">介绍</span></p><p><span style=\"\">最近跟着公司的大佬开发了一款IM系统，类似QQ和微信哈，就是聊天软件。我们有一部分业务逻辑是这样的</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">if (msgType = \"文本\") {</span></p><p><span style=\"\">	// dosomething</span></p><p><span style=\"\">} else if(msgType = \"图片\") {</span></p><p><span style=\"\">	// doshomething</span></p><p><span style=\"\">} else if(msgType = \"视频\") {</span></p><p><span style=\"\">	// doshomething</span></p><p><span style=\"\">} else {</span></p><p><span style=\"\">	// doshomething</span></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">9</span></p><p><span style=\"\">就是根据消息的不同类型有不同的处理策略，每种消息的处理策略代码都很长，如果都放在这种if else代码快中，代码很难维护也很丑，所以我们一开始就用了策略模式来处理这种情况。</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">策略模式还挺简单的，就是定义一个接口，然后有多个实现类，每种实现类封装了一种行为。然后根据条件的不同选择不同的实现类。</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">实现过程</span></p><p><span style=\"\">消息对象，当然真实的对象没有这么简单，省略了很多属性</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">@Data</span></p><p><span style=\"\">@AllArgsConstructor</span></p><p><span style=\"\">public class MessageInfo {</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; // 消息类型</span></p><p><span style=\"\">&nbsp; &nbsp; private Integer type;</span></p><p><span style=\"\">&nbsp; &nbsp; // 消息内容</span></p><p><span style=\"\">&nbsp; &nbsp; private String content;</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">9</span></p><p><span style=\"\">10</span></p><p><span style=\"\">定义一个消息处理接口</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">public interface MessageService {</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; void handleMessage(MessageInfo messageInfo);</span></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">有2个消息处理接口，分别处理不同的消息</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">处理文本消息</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">@Service</span></p><p><span style=\"\">@MsgTypeHandler(value = MSG_TYPE.TEXT)</span></p><p><span style=\"\">public class TextMessageService implements MessageService {</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; @Override</span></p><p><span style=\"\">&nbsp; &nbsp; public void handleMessage(MessageInfo messageInfo) {</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; System.out.println(\"处理文本消息 \" + messageInfo.getContent());</span></p><p><span style=\"\">&nbsp; &nbsp; }</span></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">9</span></p><p><span style=\"\">处理图片消息</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">@Service</span></p><p><span style=\"\">@MsgTypeHandler(value = MSG_TYPE.IMAGE)</span></p><p><span style=\"\">public class ImageMessageService implements MessageService {</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; @Override</span></p><p><span style=\"\">&nbsp; &nbsp; public void handleMessage(MessageInfo messageInfo) {</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; System.out.println(\"处理图片消息 \" + messageInfo.getContent());</span></p><p><span style=\"\">&nbsp; &nbsp; }</span></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">9</span></p><p><span style=\"\">文章写到这，可能大多数人可能会想到要需要如下一个Map, Map&lt;消息类型，消息处理对象&gt;，这样直接根据消息类型就能拿到消息处理对象，调用消息处理对象的方法即可。我们就是这样做的，但是我们不想手动维护这个Map对象，因为每次增加新的消息处理类，Map的初始化过程就得修改</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">我们使用了注解+ApplicationListener来保存这种映射关系，来看看怎么做的把</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">定义一个消息类型的枚举类</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">public enum MSG_TYPE {</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; TEXT(1, \"文本\"),</span></p><p><span style=\"\">&nbsp; &nbsp; IMAGE(2, \"图片\"),</span></p><p><span style=\"\">&nbsp; &nbsp; VIDEO(3, \"视频\");</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; public final int code;</span></p><p><span style=\"\">&nbsp; &nbsp; public final String name;</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; MSG_TYPE(int code, String name) {</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; this.code = code;</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; this.name = name;</span></p><p><span style=\"\">&nbsp; &nbsp; }</span></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">9</span></p><p><span style=\"\">10</span></p><p><span style=\"\">11</span></p><p><span style=\"\">12</span></p><p><span style=\"\">13</span></p><p><span style=\"\">14</span></p><p><span style=\"\">定义一个注解</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">@Documented</span></p><p><span style=\"\">@Inherited</span></p><p><span style=\"\">@Target(ElementType.TYPE)</span></p><p><span style=\"\">@Retention(RetentionPolicy.RUNTIME)</span></p><p><span style=\"\">public @interface MsgTypeHandler {</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; MSG_TYPE value();</span></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">不知道你注意到了没，前面的代码中，每种消息处理类上面都有一个@MsgTypeHandler注解，表明了这个处理类</span></p><p><span style=\"\">处理哪种类型的消息</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">@Service</span></p><p><span style=\"\">@MsgTypeHandler(value = MSG_TYPE.TEXT)</span></p><p><span style=\"\">public class TextMessageService implements MessageService {</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; @Override</span></p><p><span style=\"\">&nbsp; &nbsp; public void handleMessage(MessageInfo messageInfo) {</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; System.out.println(\"处理文本消息 \" + messageInfo.getContent());</span></p><p><span style=\"\">&nbsp; &nbsp; }</span></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">9</span></p><p><span style=\"\">用一个context对象保存了消息类型-&gt;消息处理对象的映射关系</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">@Component</span></p><p><span style=\"\">public class MessageServiceContext {</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; private final Map&lt;Integer, MessageService&gt; handlerMap = new HashMap&lt;&gt;();</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; public MessageService getMessageService(Integer type) {</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; return handlerMap.get(type);</span></p><p><span style=\"\">&nbsp; &nbsp; }</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; public void putMessageService(Integer code, MessageService messageService) {</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; handlerMap.put(code, messageService);</span></p><p><span style=\"\">&nbsp; &nbsp; }</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">9</span></p><p><span style=\"\">10</span></p><p><span style=\"\">11</span></p><p><span style=\"\">12</span></p><p><span style=\"\">13</span></p><p><span style=\"\">14</span></p><p><span style=\"\">最精彩的部分到了</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">@Component</span></p><p><span style=\"\">public class MessageServiceListener implements ApplicationListener&lt;ContextRefreshedEvent&gt; {</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">&nbsp; &nbsp; @Override</span></p><p><span style=\"\">&nbsp; &nbsp; public void onApplicationEvent(ContextRefreshedEvent event) {</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; Map&lt;String, Object&gt; beans = event.getApplicationContext().getBeansWithAnnotation(MsgTypeHandler.class);</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; MessageServiceContext messageServiceContext = event.getApplicationContext().getBean(MessageServiceContext.class);</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; beans.forEach((name, bean) -&gt; {</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MsgTypeHandler typeHandler = bean.getClass().getAnnotation(MsgTypeHandler.class);</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; messageServiceContext.putMessageService(typeHandler.value().code, (MessageService) bean);</span></p><p><span style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; });</span></p><p><span style=\"\">&nbsp; &nbsp; }</span></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">9</span></p><p><span style=\"\">10</span></p><p><span style=\"\">11</span></p><p><span style=\"\">12</span></p><p><span style=\"\">13</span></p><p><span style=\"\">在spring的启动过程中，通过解析注解，将消息类型-&gt;消息处理对象的映射关系保存到MessageServiceContext对象中</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">@Autowired</span></p><p><span style=\"\">MessageServiceContext messageServiceContext;</span></p><p><span style=\"\"><br></span><br></p><p><span style=\"\">@Test</span></p><p><span style=\"\">public void contextLoads() {</span></p><p><span style=\"\">	// 构建一个文本消息</span></p><p><span style=\"\">	MessageInfo messageInfo = new MessageInfo(MSG_TYPE.TEXT.code, \"消息内容\");</span></p><p><span style=\"\">	MessageService messageService = messageServiceContext.getMessageService(messageInfo.getType());</span></p><p><span style=\"\">	// 处理文本消息 消息内容</span></p><p><span style=\"\">	// 可以看到文本消息被文本处理类所处理</span></p><p><span style=\"\">	messageService.handleMessage(messageInfo);</span></p><p><span style=\"\">}</span></p><p><span style=\"\">1</span></p><p><span style=\"\">2</span></p><p><span style=\"\">3</span></p><p><span style=\"\">4</span></p><p><span style=\"\">5</span></p><p><span style=\"\">6</span></p><p><span style=\"\">7</span></p><p><span style=\"\">8</span></p><p><span style=\"\">9</span></p><p><span style=\"\">10</span></p><p><span style=\"\">11</span></p><p><span style=\"\">12</span></p><p><span style=\"\">测试类正常工作，通过策略模式避免了写大量的if else代码，也更容易维护</span></p><p><span style=\"\">————————————————</span></p><p><span style=\"\">版权声明：本文为CSDN博主「Java识堂」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。</span></p><p><span style=\"\">原文链接：<a href=\"https://blog.csdn.net/zzti_erlie/article/details/102988486\">https://blog.csdn.net/zzti_erlie/article/details/102988486</a></span></p>', '2019-12-02 11:00:42', '2019-12-09 03:39:24', '5');
INSERT INTO `blog_article_content` VALUES ('7', '<p>苹果在华销量大降引关注，据国际投行瑞士信贷的分析师最新报告指出，苹果iPhone手机11月在华出货量同比去年大降35.4%。苹果在华销量大降并非颓势初现，苹果在华销量大降的趋势已经持续了两个月，导致苹果在华销量大降的原因主要有三大方面。</p><p><img src=\"http://n.sinaimg.cn/spider20191213/320/w640h480/20191213/38f6-ikrsess5370055.jpg\"></p><p>苹果iPhone在华销量大降35%</p><p>首先，正如该分析师在其报告中指出，中国手机制造商激烈的竞争是苹果销量下滑的原因之一。尽管苹果iPhone 11发布时已经进行了相应的价格调整，并且众多电商平台进行了额度较高的现金补贴促销政策，但苹果iPhone 11系列的性价比依然难跟国产手机相媲美。</p><p>其次，苹果在华销量大降的趋势已经持续两月，而这个时间点就显得相对比较微妙。在经历过双11的补贴促销热潮之后，可以说是提前透支了太多的用户消费需求。该买的早就买了，不会买的自然也不会等到现在。苹果在华销量大降，也是完全可以预期的事情。</p><p><img src=\"http://n.sinaimg.cn/spider20191213/267/w640h427/20191213/0ca4-ikrsess5370054.jpg\"></p><p>苹果iPhone在华销量大降35%</p><p>最后，5G仍旧是iPhone 11的硬伤。尽管目前5G网络和5G应用并没有达到较高的普及程度，但同时也有较大的数据显示中国的5G手机出货量如今正在快速攀升。尤其是在国产手机推出2000元内的5G手机之后，5G已经不再是高贵的代名词。</p><p>令据科技市场研究公司Canalys的数据，今年第二季度，苹果手机出货量同比下降14%，市场份额从去年同期的6.4%降至5.8%。第三季度，苹果中国市场占有率进一步下降至5.2%，而华为的市场主导地位却进一步得到加强，市场份额上升至42.4%。</p><p><img src=\"http://n.sinaimg.cn/spider20191213/253/w640h413/20191213/0bae-ikrsess5370091.jpg\"></p><p>苹果市场份额下滑</p><p>性价比偏低，销量透支，以及最头疼的5G缺失，在这三座大山的重压之下，苹果iPhone 11的销量表现疲软自然也在情理当中。除此之外，一些特定情绪因素也在影响着中国消费者的购买意愿。苹果在华销量大降，苹果如今的日子并不好过。</p><p>尽管苹果通过强大的IOS生态和良好的体验培育了庞大的用户市场，但这并不意味着失去创新的苹果依然会得到用户无条件无限期的支持。毕竟在安卓阵营已经越来越强大的今天，差距在逐渐缩小，甚至正在形成反超。</p><p>苹果要想恢复往日辉煌，仍需要拿出颠覆性的创新产品和满满的诚意才行！</p>', '2019-12-14 09:29:32', '2019-12-17 05:05:35', '6');
INSERT INTO `blog_article_content` VALUES ('8', '<p style=\"text-align: justify;\">【TechWeb】12 月 13 日，有报道称马蜂窝近期启动裁员，裁员比例达 40%。对于该裁员消息，马蜂窝方面暂未给予回应。</p><p style=\"text-align: justify;\"><img src=\"https://x0.ifengimg.com/ucms/2019_50/9D5BDC8A7F7E8E91E9EC1B34B35D85B4EED059E0_w450_h250.jpg\"></p><p style=\"text-align: justify;\">不过，有近期被裁的马蜂窝员工向 TechWeb 透露，其是突然接到公司的裁员通知的，此前工作一切正常。</p><p style=\"text-align: justify;\">今年 4 月，也有媒体报道马蜂窝爆发过一场裁员，裁员人数占整体员工数 10%。</p><p style=\"text-align: justify;\">有了解马蜂窝的业内人士向 TechWeb 透露，今年 4 月的裁员或许和马蜂窝内部架构调整有关，从外部引入的中高管和内部业务磨合并不成功，导致 4 月的一波裁员。而此次年底的裁员，或许和马蜂窝业务商业化摊子铺大、但是探索效果不明晰有关。</p><p style=\"text-align: justify;\">马蜂窝创立于 2006 年，从 2010 年正式开始公司化运营。至今已在旅游内容领域深耕十多年，并获得了多轮资本加持。就在今年 5 月，马蜂窝宣布完成 2.5 亿美元新一轮融资，此轮融资由腾讯领投。</p><p style=\"text-align: justify;\">创业多年的马蜂窝这几年正谋划上市，马蜂窝创始人陈罡在今年早前的一封内部信中曾表示：“马蜂窝将继续吸纳优秀人才，扩大市场投入，在未来一至两年内，力争成为中国最大的旅游流量平台，实现 IPO 上市。”</p><p><br></p><p style=\"text-align: justify;\">近几年，马蜂窝明显加速了旅游内容商业化探索的脚步。今年 5 月马蜂窝获得腾讯投资加持的同时，也和腾讯系旅游平台同程艺龙达成合作，双方打造从 UGC 到一站式出行平台的闭环模式，借助微信平台来加速商业化。</p><p style=\"text-align: justify;\">而就在昨天，马蜂窝刚刚发布了 2020 年“攻略 +”营销战略，提出将立足内容优势，围绕“攻略即服务”的核心理念，深耕兴趣社区与圈层玩法，扩展营销半径与营销场景，构建“种拔一体”决策闭环，打造覆盖内容营销、IP 营销与数字营销的全景营销图谱。</p><p style=\"text-align: justify;\">有分析人士表示，加速商业化变现、同时缩减人员成本开支，来为冲击 IPO 交出一份好看的财报，或者也是此次马蜂窝裁员的原因之一。</p>', '2019-12-14 09:37:58', '2019-12-17 06:05:06', '7');
INSERT INTO `blog_article_content` VALUES ('9', '<p><img src=\"https://inews.gtimg.com/newsapp_bt/0/10971045975/1000\"></p><p>网传图片</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/10971045976/1000\"></p><p>封面新闻记者 宋潇</p><p>大众车把法拉利车头撞烂，需要赔偿两百万？12月7日晚，有网友反映称，在成都世纪城吉瑞五路附近，一辆红色法拉利轿车与一辆大众车相撞，配图称法拉利直接被撞报废。</p><p>记者从网友拍摄的现场图片来看，法拉利车头引擎盖已被撞得面目全非，而大众车除右车门有凹陷之外，车头仍保持完好状态。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/10971045977/1000\"></p><p>网友论坛发帖</p><p>随后，陆续有人“爆”出事件后续：大众车司机为新婚小两口，车辆只购买了交强险而没有商业险，并且，法拉利轿车购买了汽车全险，已按照年限折价“200万”报废，这意味着，大众车驾驶员将背负两百万的债务。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/10971045978/1000\"></p><p>此事被放上网后，针对这两百万的金额以及事故定责等问题，众网友议论纷纷。12月12日，封面新闻记者分别联系上一位从事汽车保险销售的业内人士和法律相关人士，他们认为，目前官方还未公布责任到底如何判定，但广大驾驶员，有必要了解车辆保险事故处理流程及索赔注意事项。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/10971045979/1000\"></p><p>大众车只买了交强险？</p><p>车主朋友:事故责任还在认定中</p><p>此前，有网友在某汽车论坛发帖称，自己是法拉利车主的朋友，大众司机是一对小两口，车只有交强险，没有商业险，法拉利如果按照年限折价200万元报废，那么保险公司将代位追偿。</p><p>但截至12月12日下午三点过，该论坛已经看不到该网友所发帖子。对此，一名自称大众车主同学的网友表示，事发时路口没有红绿灯，属于十字路口，两辆车都是直行，事故责任还在认定中，并不是如发帖者所说，大众车只买了交强险。</p><p>12月12日，记者通过微博私信该网友，截至发稿时未获回复。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/10971045980/1000\"></p><p>交强险、三者险和车损险到底怎么买？</p><p>一位在成都从事多年汽车保险销售的业内人士告诉记者，汽车保险包括交强险、第三者商业责任险、车损险和不计免赔险等一些附加险种。</p><p>如果车主只买了交强险的情况，那么损失多少就应该赔多少，“因为，万一发生了交通事故，保险公司只能赔给被撞的一方，赔款条件是局限的，而交强险是车辆年检资格的基础，一般新车都会买。”</p><p>按照“交强险”的报销范围，那么已购保险机动车发生道路交通事故造成本车人员、被保险人以外的受害人人身伤亡、财产损失，交强险对人身伤害的最高赔偿限额为11万元。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/10971045981/1000\"></p><p>至于网友所说需要赔偿200万左右，业内人士称，如果法拉利发动机确实报废了，只要第三责任险买得足够高，那么赔付150万、200万在理论上是可以达到的，“不过那也要看保险公司会不会全额赔偿。”</p><p>业内人士告诉记者，最终对于事故的责任如何划分等问题，交警部门会经过调查取证，划分全部责任、主要责任、同等责任、次要责任和无责任，“如果现在还在认定当中，外界议论再多也没用。”</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/10971045982/1000\"></p><p>交警还在调查定责</p><p>有截图显示，一位网友在四川某豪车群内发言称，法拉利车主购买的是160万的全车险，车头被撞烂的情况下维修完最多100万，大众车主最多也只用赔50万左右，他认为报道“有点假”。</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/10971045983/1000\"></p><p>对此，四川凡高律师事务所律师林小明告诉记者，目前首要的是应该通过交警事故责任认定，根据责任划分双方车主的责任。如果交强险不够，还有其他车辆责任商业保险，那么也应该由保险公司在保险额度内赔付。</p><p>至于赔付的额度，林小明律师称，车主可以减免对方的赔付额度，但是不得在保险责任范围内免除，如果没赔付前免除，那么保险公司可以不赔；如果已经赔付了车主再说免除责任方的额度，则属于无效承诺，“因为保险公司照样可以在赔付范围内，对过错方进行追责。”</p><p>而对于网友所称“第三责任险能买多高就买多高”的建议，业内人士告诉记者，理论上确实是三责险买得越高越好，但现在一般车主买的都是100万。</p><p>因为，第三责任险为商业险中的第三者责任险，即保险公司根据被保险人在交通事故中所承担的事故责任来确定其赔偿责任，“如果没有足额的三责险作为保障，那么遇着交通事故，涉及对方高额的车辆维修费用，损失可能就大了。”</p>', '2019-12-14 09:41:16', '2019-12-17 06:05:39', '8');
INSERT INTO `blog_article_content` VALUES ('10', '<p><img src=\"https://n.sinaimg.cn/spider20191220/200/w1080h720/20191220/f158-ikyziqw8071718.jpg\"></p><p>C#之父 Anders Hejlsberg : from Google</p><p>少年时教老师学计算机</p><p>安德斯·海尔斯伯格（Anders Hejlsberg），1960 年出生于丹麦哥本哈根，Turbo Pascal 编译器的主要作者，Delphi、C# 和 TypeScript 之父，.NET 创立者，是一位伟大的计算机科学家。</p><p>高中时 Anders 便就读于丹麦第一批提供计算机的中学。第一次接触编程，便一发不可收拾。那会儿还不是 PC 时代，技术上来讲是小型计算机时代。他用的是一台 HP2100，里面具有 32k 的铁氧体磁芯内存，用 Anders 的话说：“打开它你可以看到小的铁氧体磁芯。我们有一个纸带阅读器，一个电传打印机，后来我们有了一个真正的 CRT 终端。”</p><p><img src=\"https://n.sinaimg.cn/spider20191220/535/w800h535/20191220/f4ad-ikyziqw8072096.jpg\"></p><p>HP2100：from Wikipedia</p><p>就这样，他第一次学会了用 ALGOL 类语言编写程序。他可能还不知道往后的日子里他将用计算机改变这个世界。有趣的是，头两个星期是老师教会了他，之后是他教会了老师。用他的话说：“必须通过反复试验来自己发现所有这一切。”</p><p><img src=\"https://n.sinaimg.cn/spider20191220/340/w800h340/20191220/4d02-ikyziqw8072314.jpg\"></p><p>Delphi的开发</p><p>上世纪 80 年代，Anders 为 MS-DOS 和 CP/M 设计了 Pascal 编译器，后来被一个叫 Borland 的公司买下，并改名字为 Turbo Pascal。1986 年他首次认识了 Philippe Kahn（Borland公司创始人），当时 Anders 以汇编语言撰写了 Turbo Pascal 的编译器，而 Philippe 则包办了 Turbo Pascal 的其它部分。</p><p>在 Borland 公司，Anders 继续开发 Turbo Pascal，并且创造了一个奇迹：Delphi。当时 Anders 只要有任何想法，Philippe Kahn 都会全力支持。也因为这个重要力量，才有了后来 Delphi 的面世。</p><p><img src=\"https://n.sinaimg.cn/spider20191220/343/w540h603/20191220/8c26-ikyziqw8072604.jpg\"></p><p>Anders Hejlsberg&nbsp;:&nbsp;from Google</p><p>比尔·盖茨亲自挖角，Anders开启微软生涯</p><p>1996 年，对于 Anders 来说不一般，因为这一年他正面临一个抉择：要不要离开工作了 13 年的Borland去微软？从Turbo Pascal、SideKick 再到 Delphi，Anders 创造了 Borland 的传奇。但是自从 Philippe Kahn 离开 Borland 公司， Anders 失去了强有力的支持，就算他已经看到 Java 语言的潜力，可是新任 CEO 却只想不断加强 Delphi 在 IDE 市场的王者地位。</p><p>在这之前，微软曾多次想挖走 Anders，可惜都没有成功。这一次比尔·盖茨亲自加入到了挖人的行列中，用 130 万美元年薪外加股票期权和分红，总计超过 300 万美元的薪酬，并许诺 Anders 在微软将得到技术上的足够自由和资源支持。Anders 入职微软势在必行。</p><p>当然，据说 Anders 去微软(主要)不是钱的问题，主要原因是当时和 Delphi 开发组的其他成员在修改编译器的问题上发生了争执，他认为自己不再是“不可缺少的人”。</p><p>1996 年，在 Delphi 3 发布前 Anders 离开 Borland 去了微软。在他离职后，Borland 把微软告上了法庭，他们认为微软通过不正当手段吸收新成员，他们说 Anders 当时正在开发“Delphi for Java”。不过这场官司以 Borland 胜利而告终，可是 Anders 那时已经开始为微软工作了。</p><p><img src=\"https://n.sinaimg.cn/spider20191220/400/w800h400/20191220/5058-ikyziqw8072815.jpg\"></p><p>续写技术传奇，创造C#</p><p>1996 年来到微软后，Anders 主抓 Visual J++ 的研发工作。试图在 Visual Studio 平台上打造一个基于虚拟机的语言以及一个可以帮助程序员提高生产力的 IDE。这就是 J++ 语言和 VJ++ 开发工具。很快，在新版 Visual Studio 6.0 中引入了 J++，微软的程序员们似乎找到了抵抗 Java 阵营的工具。他在1999 年被授予“Distinguished Engineer”（卓越工程师）称号。</p><p>由于 Anders 对 Java 的一些想法，改进后的 J++ 也吸引了一批 Java 程序员。这也很快导致了微软与 Sun 公司之间的一场政治斗争。当时开发的产品 Visual J++ 6.0 最终使得微软从 Sun 公司的法官那获得了一个专有语言扩展的法院命令。这也让 Anders 意识到在获得另一个伙伴的许可之上构建未来平台将无法为他们或者是他们的使用者服务。只有帮助微软打造自己的技术平台和编程语言，才能摆脱这种限制。这也是构建&nbsp;.NET框架的起源。当然，更重要的是一种名为 C# 的语言。</p><p>在微软公司把视窗操作系统和软件向网络迁移的新市场战略中，C# 语言是最重要的环节。微软不惜动用了最好的资源。由 Anders 担任了 C# 语言的首席设计师，同时也是微软 .NET 战略构架的重要参与决策者。经过几年时间的埋头苦干，C# 已成为微软反击 Java 语言的最有力武器。</p><p><img src=\"https://n.sinaimg.cn/spider20191220/452/w752h500/20191220/8f19-ikyziqw8073104.jpg\"></p><p>学习C#，让开发更高效</p><p>因为 C# 集 C、C++、Java 的优点于一身，同样也是安全、稳定、简单、优雅的。它在继承 C 和 C++ 强大功能的同时去掉了一些它们的复杂特性。C# 综合了 VB 简单的可视化操作和 C++ 的高运行效率，以其强大的操作能力、优雅的语法风格、创新的语言特性和便捷的面向组件编程的支持成为 .NET 开发的首选语言。</p><p>C# 也使得 C++ 程序员可以高效的开发程序，且因可调用由 C/C++ 编写的本机原生函数，而绝不损失 C/C++ 原有的强大的功能。因为这种继承关系，C# 与 C/C++ 具有极大的相似性，熟悉类似语言的开发者可以很快的转向 C#。</p><p>C# 也一直是游戏开发人员的最爱。几乎一半的游戏都是 Unity 3D 制作的。开发人员可以用 C#&nbsp;构建移动桌面，控制台，电视，VR，AR 和 Web 游戏。简直不要太酷。</p><p>另外，随着 .NET Core 的开源，有一部分人开始关注到了 C#。.NET Core 由 微软开发，是适用于 Windows、Linux 和 macOs 操作系统的免费、开源托管的计算机软件框架。目前在 .NET Foundation(一个非营利的开源组织)下进行管理，由 C# 和 C++ 编写，并采用 MIT 协议作为开源协议。</p><p>它可以满足跨平台需求，能够在Windows、Linux 以及 macOS上运行。Linux 和 macOS 上也都支持微软的编译器 Visual Studio Code。</p><p>作为一个通用的软件开发框架，.NET Core 是非常友好的，它可以与 .NET Framework，Xamarin 和 Mono 兼容，支持各种 Web 流行框架和库，开发人员还可以用它构建各种软件，比如，Web、桌面、移动、云、游戏、物联网等。用途十分广泛。</p><p>所以，也不是势必要你学习 C#，但是如果你要是对它很感兴趣，那不如从这本经典书入门 C# 吧。</p>', '2019-12-20 10:53:39', '2019-12-20 11:24:27', '9');
INSERT INTO `blog_article_content` VALUES ('11', '<p>英雄联盟可以说是现在非常有影响力的一款电竞游戏了，在多年的发展历史中，这款游戏也诞生了众多的知名选手和游戏主播，而在我们LPL赛区中，Uzi，厂长和Theshy这三位选手可以说是人气非常之高了，在不久前开启的微博之夜投票活动中，这三位选手更是让我们见识到了LOL以及电竞这项运动在现在的影响力。</p><p><img src=\"https://n.sinaimg.cn/sinacn20191213ac/290/w640h450/20191213/527c-ikrsess3800581.jpg\" alt=\"Uzi领跑微博之夜榜单，Shy哥也位列前五，厂长排名却引网友调侃\"></p><p>在这次微博之夜的投票中，Uzi，厂长以及Theshy分别都冲到了榜单前十，Uzi和Theshy更是位列前五，其中Uzi甚至是冲到了第一的位置，领跑微博之夜榜单。不得不说，自S3出道直至如今，Uzi已经在职业赛场上征战了七年多的时间，他亲历了英雄联盟赛事茁壮成长的故事，我们众多的LPL观众也亲历了他的故事，看着他一路成长，对于很多LPL的观众而言，Uzi就是自己的一段青春。可以说Uzi就是我们国内LPL赛事非常有代表性的一位选手了。而从另一个角度来看，Uzi能在这次微博之夜投票活动中领跑榜单也证明了我们LOL赛事越来越强大的影响力。</p><p><img src=\"https://n.sinaimg.cn/sinacn20191213ac/224/w640h384/20191213/b864-ikrsess3800578.jpg\" alt=\"Uzi领跑微博之夜榜单，Shy哥也位列前五，厂长排名却引网友调侃\"></p><p>在Uzi之后，我们LPL赛区中年轻选手的代表人物Theshy也位于榜单第五的位置，而另一位元老选手厂长则是紧随其后位列第六，其他两位选手的排名大部分网友都是相当满意的，但关于厂长的排名却有很多网友调侃的表示，厂长票数有点太高了，我们应该精准控制一下，将七酱的排名控制在第七位，可以说是非常真实了。也希望在之后的时间里，这三位选手依旧能在赛场上给我们继续带来精彩的比赛吧。</p><p><img src=\"https://n.sinaimg.cn/sinacn20191213ac/222/w640h382/20191213/3953-ikrsess3800572.jpg\" alt=\"Uzi领跑微博之夜榜单，Shy哥也位列前五，厂长排名却引网友调侃\"></p><p>最后，各位大佬，大家对Uzi，厂长和Theshy这三位选手，对现在的LPL有什么看法呢？欢迎在评论区互动留言哦。</p>', '2019-12-20 11:22:41', '2019-12-20 11:24:55', '10');

-- ----------------------------
-- Table structure for blog_article_picture
-- ----------------------------
DROP TABLE IF EXISTS `blog_article_picture`;
CREATE TABLE `blog_article_picture` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `article_id` int(32) DEFAULT NULL COMMENT '对应的文章id',
  `picture_url` varchar(200) DEFAULT NULL COMMENT '图片访问路径',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='文章图片表';

-- ----------------------------
-- Records of blog_article_picture
-- ----------------------------
INSERT INTO `blog_article_picture` VALUES ('20', '2', 'https://www.ivan.group/files/2019/12/02/1575276210553756.jpg', '2019-12-02 08:43:31', null);
INSERT INTO `blog_article_picture` VALUES ('21', '3', 'https://www.ivan.group/files/2019/12/02/1575276327605364.jpg', '2019-12-02 08:45:28', null);
INSERT INTO `blog_article_picture` VALUES ('22', '2', 'https://www.ivan.group/files/2019/12/02/1575276360377233.jpg', '2019-12-02 08:46:02', null);
INSERT INTO `blog_article_picture` VALUES ('23', '2', 'https://www.ivan.group/files/2019/12/02/1575276507590598.jpg', '2019-12-02 08:48:28', null);
INSERT INTO `blog_article_picture` VALUES ('24', '2', 'https://www.ivan.group/files/2019/12/02/1575276839928153.jpg', '2019-12-02 08:54:00', null);
INSERT INTO `blog_article_picture` VALUES ('25', '1', 'https://www.ivan.group/files/2019/12/02/1575280381778334.jpg', '2019-12-02 09:53:02', null);
INSERT INTO `blog_article_picture` VALUES ('26', '0', 'https://www.ivan.group/files/2019/12/02/1575281719971134.jpg', '2019-12-02 10:15:20', null);
INSERT INTO `blog_article_picture` VALUES ('27', '4', 'https://www.ivan.group/files/2019/12/02/1575283189548774.jpg', '2019-12-02 10:39:50', null);
INSERT INTO `blog_article_picture` VALUES ('28', '5', 'https://www.ivan.group/files/2019/12/02/1575284402447818.jpg', '2019-12-02 11:00:03', null);
INSERT INTO `blog_article_picture` VALUES ('29', '6', 'https://www.ivan.group/files/2019/12/14/1576315732320890.jpg', '2019-12-14 09:28:53', null);
INSERT INTO `blog_article_picture` VALUES ('30', '7', 'https://www.ivan.group/files/2019/12/14/1576316251671994.jpg', '2019-12-14 09:37:32', null);
INSERT INTO `blog_article_picture` VALUES ('31', '8', 'https://www.ivan.group/files/2019/12/14/1576316434205424.jpg', '2019-12-14 09:40:34', null);
INSERT INTO `blog_article_picture` VALUES ('32', '8', 'https://www.ivan.group/files/2019/12/14/1576316584769606.jpg', '2019-12-14 09:43:05', null);

-- ----------------------------
-- Table structure for blog_category
-- ----------------------------
DROP TABLE IF EXISTS `blog_category`;
CREATE TABLE `blog_category` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `number` varchar(10) DEFAULT '0' COMMENT '该分类下的文章数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '分类创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '分类修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='分类信息表';

-- ----------------------------
-- Records of blog_category
-- ----------------------------
INSERT INTO `blog_category` VALUES ('2', 'java', '0', '2019-12-09 15:53:19', '2019-12-14 09:25:12');
INSERT INTO `blog_category` VALUES ('3', 'Linux', '0', '2019-12-09 16:18:05', null);
INSERT INTO `blog_category` VALUES ('6', 'iphone', '0', '2019-12-14 17:25:57', null);
INSERT INTO `blog_category` VALUES ('7', '笔记本', '0', '2019-12-14 17:32:38', null);
INSERT INTO `blog_category` VALUES ('8', '城市', '0', '2019-12-14 17:32:58', null);
INSERT INTO `blog_category` VALUES ('9', 'Python', '0', '2019-12-14 17:33:17', null);
INSERT INTO `blog_category` VALUES ('10', '裁员', '0', '2019-12-14 17:36:49', null);
INSERT INTO `blog_category` VALUES ('11', '汽车事故', '0', '2019-12-14 17:39:15', null);
INSERT INTO `blog_category` VALUES ('16', 'mysql', '0', '2019-12-17 16:03:24', null);
INSERT INTO `blog_category` VALUES ('18', '热搜', '0', '2019-12-17 16:08:08', null);
INSERT INTO `blog_category` VALUES ('19', '时尚', '0', '2019-12-17 16:09:29', null);
INSERT INTO `blog_category` VALUES ('20', '程序员', '0', '2019-12-20 19:23:34', null);
INSERT INTO `blog_category` VALUES ('21', '英雄联盟', '0', '2019-12-20 19:23:42', null);
INSERT INTO `blog_category` VALUES ('22', 'Uzi', '0', '2019-12-20 19:23:49', null);
INSERT INTO `blog_category` VALUES ('23', '编程', '0', '2019-12-20 19:24:15', null);
INSERT INTO `blog_category` VALUES ('24', '游戏', '0', '2019-12-20 19:24:46', null);

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL COMMENT '留言/评论内容',
  `name` varchar(20) DEFAULT NULL COMMENT '用户自己定义的名称',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱,用于回复消息',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `parent_id` int(32) DEFAULT '0' COMMENT '父编号',
  `article_id` int(32) DEFAULT NULL COMMENT '文章id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='留言/评论表';

-- ----------------------------
-- Records of blog_comment
-- ----------------------------
INSERT INTO `blog_comment` VALUES ('29', '111', 'ivan1', '', '2019-12-19 15:28:04', '0', '4');
INSERT INTO `blog_comment` VALUES ('30', '222', 'ivan2', '', '2019-12-19 15:28:12', '29', '4');
INSERT INTO `blog_comment` VALUES ('31', '3333', 'ivan3', '', '2019-12-19 15:28:20', '29', '4');
INSERT INTO `blog_comment` VALUES ('32', '4444', 'ivan4', '', '2019-12-19 15:28:33', '0', '4');
INSERT INTO `blog_comment` VALUES ('33', '的技术拉大手', 'ivan5', 'm15207126400@163.com', '2019-12-19 15:31:05', '0', '4');
INSERT INTO `blog_comment` VALUES ('34', '222', '222', '', '2019-12-19 15:46:12', '0', '4');
INSERT INTO `blog_comment` VALUES ('35', '222', '22', '', '2019-12-19 15:58:25', '0', '3');
INSERT INTO `blog_comment` VALUES ('36', '我是小猪猪', '小文文', '', '2019-12-19 19:28:21', '0', '4');
INSERT INTO `blog_comment` VALUES ('37', '你就是小猪猪', '小飞飞', '', '2019-12-19 19:28:36', '36', '4');
INSERT INTO `blog_comment` VALUES ('38', '的萨达多', '的萨达多', '', '2019-12-19 20:19:50', '29', '4');
INSERT INTO `blog_comment` VALUES ('39', '大萨达萨达萨达', '3333', '', '2019-12-19 20:20:00', '0', '4');
INSERT INTO `blog_comment` VALUES ('40', '偶像!', 'Ivan', '', '2019-12-20 19:06:37', '0', '9');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` int(11) DEFAULT NULL COMMENT '类型编号',
  `type_value` varchar(50) DEFAULT NULL COMMENT '类型值',
  `dict_code` int(11) DEFAULT NULL COMMENT '字典项编号',
  `dict_value` varchar(50) DEFAULT NULL COMMENT '字典项值',
  `status` char(1) DEFAULT NULL COMMENT '启用禁用标识(默认1启用 2禁用)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '1000', '状态', '1', '启用', '1');
INSERT INTO `sys_dict` VALUES ('2', '1000', '状态', '2', '禁用', '1');
INSERT INTO `sys_dict` VALUES ('3', '1001', '文章是否置顶', '1', '是', '1');
INSERT INTO `sys_dict` VALUES ('4', '1001', '文章是否置顶', '2', '否', '1');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '操作人名称',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作内容',
  `method` varchar(100) DEFAULT NULL COMMENT '方法名',
  `create_time` datetime DEFAULT NULL COMMENT '操作时间',
  `ip` varchar(20) DEFAULT NULL COMMENT '操作地址的ip',
  `operate_url` varchar(50) DEFAULT NULL COMMENT '操作的访问地址',
  `operate_by` varchar(20) DEFAULT NULL COMMENT '操作的浏览器',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=825 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-11-29 05:01:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('2', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 06:49:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('3', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:49:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('4', 'admin', '查询日志列表操作', 'com.ivan.blog.controller.LogController.logList', '2019-11-29 06:49:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('5', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-11-29 06:49:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('6', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 06:49:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('7', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:49:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('8', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:49:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('9', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-11-29 06:49:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('10', 'admin', '查询日志列表操作', 'com.ivan.blog.controller.LogController.logList', '2019-11-29 06:49:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('11', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-11-29 06:49:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('12', 'admin', '新增或修改数据字典操作', 'com.ivan.blog.controller.DictController.insertOrUpdate', '2019-11-29 06:49:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('13', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-11-29 06:49:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('14', 'admin', '新增或修改数据字典操作', 'com.ivan.blog.controller.DictController.insertOrUpdate', '2019-11-29 06:49:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('15', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-11-29 06:49:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('16', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 06:50:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('17', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:51:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('18', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-11-29 06:51:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('19', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:51:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('20', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-11-29 06:51:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('21', 'admin', '查询日志列表操作', 'com.ivan.blog.controller.LogController.logList', '2019-11-29 06:51:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('22', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-11-29 06:51:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('23', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 06:51:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('24', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:51:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('25', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 06:52:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('26', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:52:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('27', 'admin', '新增或修改用户信息操作', 'com.ivan.blog.controller.UserController.insertOrUpdate', '2019-11-29 06:52:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('28', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:52:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('29', 'yanfei2', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 06:52:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('30', 'yanfei2', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:52:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('31', 'yanfei2', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-11-29 06:52:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('32', 'yanfei2', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:52:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('33', 'yanfei2', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:52:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('34', 'yanfei2', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 06:52:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('35', 'yanfei2', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-11-29 06:52:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('36', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 06:52:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('37', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:52:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('38', 'admin', '删除用户信息操作', 'com.ivan.blog.controller.UserController.userDel', '2019-11-29 06:52:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('39', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:52:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('40', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 06:56:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('41', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:56:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('42', 'admin', '新增或修改用户信息操作', 'com.ivan.blog.controller.UserController.insertOrUpdate', '2019-11-29 06:56:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('43', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:56:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('44', 'yanfei2', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 06:56:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('45', 'yanfei2', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:56:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('46', 'yanfei2', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:56:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('47', 'yanfei2', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-11-29 06:56:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('48', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 06:56:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('49', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:56:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('50', 'admin', '删除用户信息操作', 'com.ivan.blog.controller.UserController.userDel', '2019-11-29 06:56:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('51', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 06:56:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('52', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 07:03:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('53', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 07:03:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('54', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-11-29 07:03:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('55', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:03:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('56', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-11-29 07:03:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('57', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 07:09:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('58', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 07:09:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('59', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 07:23:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('60', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:23:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('61', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:25:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('62', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:26:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('63', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:28:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('64', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:28:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('65', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:28:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('66', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:29:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('67', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:30:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('68', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:31:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('69', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 07:31:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('70', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 07:33:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('71', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:33:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('72', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:33:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('73', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:34:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('74', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:38:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('75', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:38:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('76', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:41:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('77', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 07:44:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('78', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 07:44:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('79', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 07:45:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('80', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 07:45:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('81', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 07:45:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('82', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 08:00:44', '127.0.0.1', null, null);
INSERT INTO `sys_log` VALUES ('83', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:00:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('84', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 08:28:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('85', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 08:29:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('86', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:29:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('87', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 08:29:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('88', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 08:30:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('89', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:37:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('90', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:37:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('91', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:37:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('92', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:37:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('93', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:39:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('94', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:40:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('95', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:40:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('96', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:41:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('97', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:41:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('98', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:42:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('99', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:43:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('100', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 08:46:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('101', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:46:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('102', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:46:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('103', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:48:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('104', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:48:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('105', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 08:48:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('106', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:49:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('107', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:49:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('108', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 08:49:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('109', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 08:50:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('110', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:50:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('111', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 08:50:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('112', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:51:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('113', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 08:52:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('114', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:52:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('115', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:52:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('116', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:53:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('117', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 08:53:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('118', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 09:39:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('119', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 09:39:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('120', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 09:40:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('121', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 09:40:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('122', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 09:40:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('123', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 09:41:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('124', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 09:59:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('125', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 09:59:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('126', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 09:59:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('127', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 10:02:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('128', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 10:02:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('129', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:02:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('130', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 10:03:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('131', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 10:05:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('132', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:06:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('133', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 10:06:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('134', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-29 10:06:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('135', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:06:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('136', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 10:14:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('137', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 10:15:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('138', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 10:17:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('139', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 10:36:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('140', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-11-29 10:36:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('141', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-11-29 10:36:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('142', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:36:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('143', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 10:36:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('144', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-29 10:36:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('145', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:36:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('146', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 10:38:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('147', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:38:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('148', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 10:38:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('149', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-29 10:38:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('150', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:38:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('151', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 10:45:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('152', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:45:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('153', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 10:45:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('154', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-29 10:45:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('155', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:45:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('156', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:46:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('157', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:46:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('158', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:48:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('159', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:48:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('160', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:48:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('161', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-29 10:59:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('162', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:59:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('163', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-29 10:59:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('164', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-29 10:59:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('165', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-29 10:59:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('166', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-30 02:36:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('167', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 02:36:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('168', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 02:38:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('169', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 02:40:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('170', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 02:42:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('171', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-30 02:45:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('172', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 02:45:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('173', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 02:47:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('174', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 02:48:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('175', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 02:48:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('176', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 02:55:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('177', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-11-30 03:01:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('178', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:01:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('179', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-30 03:01:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('180', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-30 03:02:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('181', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:02:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('182', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:02:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('183', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-30 03:02:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('184', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-30 03:03:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('185', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:03:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('186', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-30 03:06:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('187', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-30 03:06:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('188', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:06:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('189', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:06:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('190', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:08:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('191', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:09:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('192', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-30 03:09:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('193', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-30 03:09:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('194', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:09:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('195', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-11-30 03:10:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('196', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-30 03:10:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('197', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:10:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('198', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:12:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('199', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:12:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('200', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:13:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('201', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:13:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('202', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-11-30 03:25:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('203', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:25:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('204', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-11-30 03:26:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('205', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-02 03:07:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('206', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 03:07:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('207', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 03:07:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('208', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 03:07:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('209', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 03:08:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('210', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 03:08:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('211', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-02 03:14:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('212', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 03:14:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('213', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 03:14:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('214', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 03:15:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('215', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 03:15:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('216', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-02 03:16:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('217', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 03:16:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('218', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 03:16:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('219', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 03:16:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('220', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 03:16:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('221', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-02 06:47:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('222', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-12-02 06:47:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('223', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-02 06:47:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('224', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 06:47:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('225', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 06:48:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('226', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 06:48:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('227', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 06:52:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('228', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 06:52:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('229', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 06:59:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('230', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 07:00:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('231', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-02 07:02:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('232', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 07:02:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('233', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 07:02:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('234', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 07:02:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('235', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 07:02:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('236', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 07:03:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('237', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 07:03:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('238', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 07:03:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('239', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 07:03:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('240', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 07:04:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('241', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 07:04:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('242', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 07:04:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('243', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 07:04:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('244', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-02 08:30:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('245', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:30:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('246', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:31:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('247', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 08:31:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('248', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:31:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('249', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 08:42:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('250', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:43:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('251', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:43:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('252', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 08:43:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('253', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 08:43:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('254', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:43:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('255', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 08:45:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('256', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 08:45:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('257', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:45:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('258', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 08:45:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('259', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:45:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('260', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 08:46:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('261', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-02 08:48:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('262', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:48:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('263', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 08:48:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('264', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 08:48:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('265', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:48:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('266', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 08:48:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('267', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:48:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('268', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 08:54:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('269', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 08:54:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('270', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 08:54:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('271', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 09:53:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('272', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 09:53:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('273', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 09:53:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('274', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 09:54:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('275', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 09:54:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('276', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 10:15:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('277', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 10:16:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('278', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 10:16:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('279', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 10:39:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('280', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 10:39:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('281', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 10:39:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('282', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 10:39:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('283', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 10:40:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('284', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 10:42:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('285', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 10:42:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('286', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 10:59:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('287', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 10:59:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('288', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-02 11:00:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('289', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-02 11:00:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('290', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-02 11:00:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('291', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-06 09:13:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('292', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-06 09:13:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('293', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-06 09:17:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('294', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-06 09:17:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('295', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 02:09:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('296', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 02:09:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('297', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 02:10:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('298', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 02:10:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('299', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 02:10:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('300', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 02:10:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('301', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 02:11:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('302', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-09 02:12:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('303', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 02:12:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('304', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 03:39:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('305', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-09 03:39:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('306', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 03:39:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('307', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 06:09:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('308', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:10:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('309', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:10:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('310', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-12-09 06:10:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('311', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-09 06:10:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('312', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-09 06:11:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('313', 'admin', '查询日志列表操作', 'com.ivan.blog.controller.LogController.logList', '2019-12-09 06:11:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('314', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-12-09 06:11:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('315', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:11:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('316', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:12:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('317', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:13:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('318', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:14:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('319', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:14:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('320', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:14:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('321', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:15:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('322', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:16:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('323', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:16:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('324', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:18:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('325', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:19:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('326', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:20:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('327', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:20:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('328', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:20:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('329', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:22:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('330', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:24:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('331', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:24:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('332', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:24:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('333', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 06:24:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('334', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 07:06:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('335', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 07:06:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('336', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 07:47:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('337', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-09 07:48:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('338', 'admin', '新增或修改权限信息操作', 'com.ivan.blog.controller.PermissionController.insertOrUpdate', '2019-12-09 07:48:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('339', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-09 07:48:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('340', 'admin', '新增或修改权限信息操作', 'com.ivan.blog.controller.PermissionController.insertOrUpdate', '2019-12-09 07:49:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('341', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-09 07:49:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('342', 'admin', '新增或修改权限信息操作', 'com.ivan.blog.controller.PermissionController.insertOrUpdate', '2019-12-09 07:49:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('343', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-09 07:49:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('344', 'admin', '新增或修改权限信息操作', 'com.ivan.blog.controller.PermissionController.insertOrUpdate', '2019-12-09 07:50:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('345', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-09 07:50:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('346', 'admin', '新增或修改权限信息操作', 'com.ivan.blog.controller.PermissionController.insertOrUpdate', '2019-12-09 07:51:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('347', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-09 07:51:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('348', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-09 07:51:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('349', 'admin', '新增或修改角色信息操作', 'com.ivan.blog.controller.RoleController.insertOrUpdate', '2019-12-09 07:51:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('350', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-09 07:51:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('351', 'admin', '新增或修改角色信息操作', 'com.ivan.blog.controller.RoleController.insertOrUpdate', '2019-12-09 07:51:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('352', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-09 07:51:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('353', 'text', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 07:51:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('354', 'text', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 07:51:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('355', 'text', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 07:51:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('356', 'text', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 07:51:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('357', 'text', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 07:51:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('358', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 07:51:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('359', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 07:51:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('360', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-09 07:51:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('361', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 07:51:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('362', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-09 07:53:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('363', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 07:53:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('364', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 07:55:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('365', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 08:06:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('366', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:06:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('367', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:06:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('368', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:07:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('369', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:08:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('370', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:08:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('371', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:08:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('372', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:08:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('373', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:17:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('374', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-09 08:18:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('375', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:18:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('376', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-09 08:18:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('377', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:18:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('378', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:18:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('379', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:19:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('380', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:19:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('381', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:19:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('382', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:19:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('383', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 08:24:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('384', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:24:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('385', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:24:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('386', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-09 08:24:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('387', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:24:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('388', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 08:26:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('389', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:26:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('390', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:26:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('391', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:26:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('392', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-09 08:27:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('393', 'admin', '新增或修改权限信息操作', 'com.ivan.blog.controller.PermissionController.insertOrUpdate', '2019-12-09 08:27:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('394', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-09 08:27:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('395', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 08:27:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('396', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:27:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('397', 'admin', '删除分类信息操作', 'com.ivan.blog.controller.CategoryController.categoryDel', '2019-12-09 08:27:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('398', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:28:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('399', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:28:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('400', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:28:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('401', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-09 08:28:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('402', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:28:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('403', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:28:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('404', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-09 08:28:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('405', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:28:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('406', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:29:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('407', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 08:47:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('408', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:50:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('409', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-09 08:51:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('410', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-09 08:51:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('411', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:51:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('412', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-09 08:52:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('413', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-14 03:50:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('414', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 03:50:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('415', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 03:50:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('416', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 03:50:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('417', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 03:50:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('418', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-14 09:23:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('419', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:25:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('420', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:25:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('421', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-14 09:25:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('422', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:25:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('423', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:25:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('424', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-14 09:25:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('425', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:25:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('426', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-14 09:25:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('427', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:25:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('428', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-14 09:25:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('429', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:25:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('430', 'admin', '删除分类信息操作', 'com.ivan.blog.controller.CategoryController.categoryDel', '2019-12-14 09:26:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('431', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:26:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('432', 'admin', '删除分类信息操作', 'com.ivan.blog.controller.CategoryController.categoryDel', '2019-12-14 09:26:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('433', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:26:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('434', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:26:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('435', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:26:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('436', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:26:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('437', 'admin', '删除文章信息操作', 'com.ivan.blog.controller.ArticleController.articleDel', '2019-12-14 09:27:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('438', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:27:14', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('439', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-14 09:28:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('440', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:29:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('441', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:29:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('442', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:31:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('443', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:31:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('444', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:32:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('445', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:32:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('446', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-14 09:32:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('447', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:32:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('448', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:32:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('449', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:32:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('450', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:32:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('451', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:32:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('452', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-14 09:32:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('453', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:32:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('454', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:33:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('455', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:33:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('456', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:33:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('457', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:33:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('458', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-14 09:33:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('459', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:33:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('460', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:33:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('461', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:33:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('462', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:33:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('463', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:33:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('464', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:33:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('465', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:36:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('466', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-14 09:36:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('467', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:36:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('468', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:36:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('469', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:37:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('470', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:37:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('471', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-14 09:37:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('472', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:37:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('473', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:37:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('474', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:39:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('475', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-14 09:39:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('476', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-14 09:39:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('477', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:39:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('478', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:40:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('479', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:40:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('480', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-14 09:40:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('481', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:41:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('482', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:41:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('483', 'admin', '富文本文件上传', 'com.ivan.blog.controller.ArticleController.upload', '2019-12-14 09:43:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('484', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-14 09:43:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('485', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-14 09:43:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('486', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-16 06:11:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('487', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:11:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('488', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:11:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('489', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:16:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('490', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:16:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('491', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:17:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('492', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:17:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('493', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:18:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('494', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:19:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('495', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:32:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('496', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:33:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('497', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:34:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('498', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:37:13', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('499', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:37:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('500', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:37:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('501', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:38:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('502', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:40:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('503', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:40:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('504', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:43:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('505', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 06:48:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('506', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 07:03:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('507', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 07:12:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('508', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-16 08:07:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('509', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:07:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('510', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-16 08:08:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('511', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:08:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('512', 'admin', '删除文章信息操作', 'com.ivan.blog.controller.ArticleController.articleDel', '2019-12-16 08:08:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('513', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:08:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('514', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:10:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('515', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:11:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('516', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:13:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('517', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:13:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('518', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:14:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('519', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:14:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('520', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:15:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('521', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:15:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('522', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:16:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('523', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:16:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('524', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:16:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('525', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:17:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('526', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:17:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('527', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:18:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('528', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:18:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('529', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:19:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('530', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:19:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('531', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:19:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('532', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:24:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('533', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:24:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('534', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:28:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('535', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-16 08:58:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('536', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 08:58:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('537', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-16 09:04:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('538', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:04:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('539', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-16 09:05:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('540', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:05:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('541', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:09:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('542', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:09:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('543', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:09:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('544', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:09:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('545', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:09:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('546', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:09:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('547', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:14:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('548', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:14:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('549', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:15:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('550', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:15:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('551', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:16:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('552', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 09:16:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('553', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-16 11:02:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('554', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 11:02:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('555', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 11:03:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('556', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 11:03:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('557', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 11:03:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('558', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 11:03:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('559', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 11:04:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('560', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-16 11:14:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('561', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 11:14:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('562', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-16 11:14:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('563', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 03:05:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('564', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:05:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('565', 'admin', '删除文章信息操作', 'com.ivan.blog.controller.ArticleController.articleDel', '2019-12-17 03:05:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('566', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:05:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('567', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:05:37', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('568', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 03:05:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('569', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:05:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('570', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:06:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('571', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:06:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('572', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:07:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('573', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:07:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('574', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:07:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('575', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:07:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('576', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:07:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('577', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 03:35:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('578', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:35:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('579', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:35:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('580', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:35:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('581', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:37:54', '127.0.0.1', null, null);
INSERT INTO `sys_log` VALUES ('582', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:38:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('583', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:39:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('584', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:39:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('585', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:40:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('586', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:40:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('587', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:41:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('588', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:41:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('589', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:41:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('590', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:47:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('591', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:49:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('592', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:49:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('593', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:50:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('594', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:51:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('595', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:51:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('596', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:53:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('597', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:53:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('598', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:54:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('599', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 03:54:59', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('600', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:55:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('601', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:55:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('602', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:55:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('603', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:55:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('604', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:55:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('605', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:56:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('606', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:56:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('607', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:56:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('608', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:56:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('609', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:56:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('610', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:56:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('611', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 03:56:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('612', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 04:44:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('613', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 04:44:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('614', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 04:47:10', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('615', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 04:47:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('616', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 04:48:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('617', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 04:48:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('618', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 04:49:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('619', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 04:49:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('620', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 04:55:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('621', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 04:56:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('622', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 05:01:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('623', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:01:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('624', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 05:02:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('625', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:02:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('626', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 05:04:38', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('627', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:04:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('628', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 05:04:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('629', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:04:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('630', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:05:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('631', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:05:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('632', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:05:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('633', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:05:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('634', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:05:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('635', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 05:05:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('636', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 05:05:36', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('637', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 06:04:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('638', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:04:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('639', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:04:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('640', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:04:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('641', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:04:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('642', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 06:05:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('643', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:05:07', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('644', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:05:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('645', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:05:12', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('646', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:05:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('647', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:05:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('648', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:05:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('649', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:05:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('650', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:05:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('651', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:05:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('652', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 06:05:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('653', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:05:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('654', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:05:44', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('655', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:05:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('656', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:05:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('657', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:06:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('658', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:06:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('659', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 06:56:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('660', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:56:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('661', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 06:56:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('662', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 06:56:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('663', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 07:05:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('664', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:05:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('665', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:06:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('666', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:09:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('667', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:11:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('668', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 07:13:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('669', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:13:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('670', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 07:14:54', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('671', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:14:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('672', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 07:21:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('673', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:21:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('674', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 07:23:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('675', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:23:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('676', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 07:25:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('677', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:25:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('678', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:32:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('679', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:34:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('680', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:38:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('681', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:39:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('682', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 07:43:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('683', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:43:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('684', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 07:43:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('685', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 07:45:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('686', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-12-17 07:45:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('687', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:45:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('688', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:47:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('689', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 07:47:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('690', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:47:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('691', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:49:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('692', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:49:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('693', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:49:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('694', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:50:11', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('695', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:50:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('696', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:51:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('697', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:52:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('698', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:53:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('699', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:53:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('700', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:53:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('701', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:53:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('702', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:54:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('703', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:54:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('704', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:56:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('705', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:56:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('706', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:56:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('707', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:57:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('708', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:57:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('709', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 07:58:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('710', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 07:58:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('711', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 08:01:00', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('712', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 08:01:01', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('713', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 08:01:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('714', 'admin', '删除文章信息操作', 'com.ivan.blog.controller.ArticleController.articleDel', '2019-12-17 08:01:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('715', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 08:01:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('716', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 08:01:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('717', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:02:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('718', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:03:17', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('719', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-17 08:03:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('720', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:03:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('721', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:03:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('722', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 08:03:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('723', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:03:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('724', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-17 08:04:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('725', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:04:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('726', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 08:07:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('727', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:07:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('728', 'admin', '删除分类信息操作', 'com.ivan.blog.controller.CategoryController.categoryDel', '2019-12-17 08:07:51', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('729', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:07:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('730', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-17 08:08:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('731', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:08:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('732', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 08:08:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('733', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-12-17 08:08:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('734', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-17 08:08:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('735', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-17 08:09:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('736', 'admin', '查询日志列表操作', 'com.ivan.blog.controller.LogController.logList', '2019-12-17 08:09:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('737', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-12-17 08:09:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('738', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:09:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('739', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-17 08:09:30', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('740', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 08:09:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('741', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 08:42:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('742', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 08:42:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('743', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 08:42:57', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('744', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 08:42:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('745', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 08:43:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('746', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 08:43:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('747', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 10:01:23', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('748', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 10:15:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('749', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 11:41:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('750', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 11:41:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('751', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-17 11:41:19', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('752', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 11:41:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('753', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 13:29:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('754', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-17 13:29:32', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('755', 'admin', '新增或修改权限信息操作', 'com.ivan.blog.controller.PermissionController.insertOrUpdate', '2019-12-17 13:30:24', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('756', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-17 13:30:25', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('757', 'admin', '新增或修改权限信息操作', 'com.ivan.blog.controller.PermissionController.insertOrUpdate', '2019-12-17 13:30:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('758', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-17 13:30:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('759', 'admin', '新增或修改权限信息操作', 'com.ivan.blog.controller.PermissionController.insertOrUpdate', '2019-12-17 13:31:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('760', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-17 13:31:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('761', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-17 13:31:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('762', 'admin', '新增或修改角色信息操作', 'com.ivan.blog.controller.RoleController.insertOrUpdate', '2019-12-17 13:31:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('763', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-17 13:31:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('764', 'admin', '新增或修改角色信息操作', 'com.ivan.blog.controller.RoleController.insertOrUpdate', '2019-12-17 13:31:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('765', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-17 13:31:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('766', 'admin', '查询用户列表操作', 'com.ivan.blog.controller.UserController.userList', '2019-12-17 13:31:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('767', 'admin', '查询角色列表操作', 'com.ivan.blog.controller.RoleController.roleInfo', '2019-12-17 13:31:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('768', 'admin', '查询权限列表操作', 'com.ivan.blog.controller.PermissionController.permissionList', '2019-12-17 13:31:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('769', 'admin', '查询日志列表操作', 'com.ivan.blog.controller.LogController.logList', '2019-12-17 13:31:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('770', 'admin', '查询数据字典列表操作', 'com.ivan.blog.controller.DictController.dictList', '2019-12-17 13:31:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('771', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 13:31:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('772', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 13:31:56', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('773', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 13:32:02', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('774', 'admin', '查询评论列表操作', 'com.ivan.blog.controller.CommentController.commentList', '2019-12-17 13:32:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('775', 'admin', '查询评论列表操作', 'com.ivan.blog.controller.CommentController.commentList', '2019-12-17 13:32:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('776', 'admin', '查询评论列表操作', 'com.ivan.blog.controller.CommentController.commentList', '2019-12-17 13:32:20', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('777', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-17 13:32:29', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('778', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 13:32:31', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('779', 'admin', '查询评论列表操作', 'com.ivan.blog.controller.CommentController.commentList', '2019-12-17 13:32:33', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('780', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-17 13:32:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('781', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-17 14:35:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('782', 'admin', '查询评论列表操作', 'com.ivan.blog.controller.CommentController.commentList', '2019-12-17 14:35:08', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('783', 'admin', '查询评论列表操作', 'com.ivan.blog.controller.CommentController.commentList', '2019-12-17 14:35:45', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('784', 'admin', '查询评论列表操作', 'com.ivan.blog.controller.CommentController.commentList', '2019-12-17 14:36:03', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('785', 'admin', '查询评论列表操作', 'com.ivan.blog.controller.CommentController.commentList', '2019-12-17 14:36:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('786', 'admin', '查询评论列表操作', 'com.ivan.blog.controller.CommentController.commentList', '2019-12-17 14:36:52', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('787', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-19 13:07:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('788', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-19 13:07:58', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('789', 'admin', '用户登录操作', 'com.ivan.blog.controller.LoginController.submitLogin', '2019-12-20 10:49:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('790', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 10:49:06', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('791', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-20 10:52:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('792', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 10:52:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('793', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-20 10:53:39', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('794', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 10:53:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('795', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-20 11:03:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('796', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:03:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('797', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-20 11:22:21', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('798', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:22:22', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('799', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-20 11:22:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('800', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:22:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('801', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-20 11:23:26', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('802', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-20 11:23:34', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('803', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-20 11:23:35', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('804', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-20 11:23:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('805', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-20 11:23:43', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('806', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-20 11:23:49', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('807', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-20 11:23:50', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('808', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:23:53', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('809', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-20 11:24:04', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('810', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:24:05', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('811', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-20 11:24:09', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('812', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-20 11:24:15', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('813', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-20 11:24:16', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('814', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:24:18', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('815', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-20 11:24:27', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('816', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:24:28', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('817', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-20 11:24:40', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('818', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:24:41', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('819', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-20 11:24:42', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('820', 'admin', '新增或修改分类信息操作', 'com.ivan.blog.controller.CategoryController.insertOrUpdate', '2019-12-20 11:24:46', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('821', 'admin', '查询分类列表操作', 'com.ivan.blog.controller.CategoryController.categoryList', '2019-12-20 11:24:47', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('822', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:24:48', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('823', 'admin', '新增或修改文章信息操作', 'com.ivan.blog.controller.ArticleController.insertOrUpdate', '2019-12-20 11:24:55', '0:0:0:0:0:0:0:1', null, null);
INSERT INTO `sys_log` VALUES ('824', 'admin', '查询文章信息列表操作', 'com.ivan.blog.controller.ArticleController.articleList', '2019-12-20 11:24:55', '0:0:0:0:0:0:0:1', null, null);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `permission` varchar(50) DEFAULT NULL COMMENT '权限',
  `url` varchar(255) DEFAULT NULL COMMENT '请求url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('1', '用户管理', '用户查询', 'user:list', '/user/userList');
INSERT INTO `sys_permission` VALUES ('2', '用户管理', '用户新增', 'user:add', '/user/userAdd');
INSERT INTO `sys_permission` VALUES ('3', '用户管理', '用户编辑', 'user:put', '/user/userPut');
INSERT INTO `sys_permission` VALUES ('4', '用户管理', '用户删除', 'user:del', '/user/userDel');
INSERT INTO `sys_permission` VALUES ('5', '角色管理', '角色查询', 'role:list', '/role/roleList');
INSERT INTO `sys_permission` VALUES ('6', '角色管理', '角色新增', 'role:add', '/role/roleAdd');
INSERT INTO `sys_permission` VALUES ('7', '角色管理', '角色编辑', 'role:put', '/role/rolePut');
INSERT INTO `sys_permission` VALUES ('8', '角色管理', '角色删除', 'role:del', '/role/roleDel');
INSERT INTO `sys_permission` VALUES ('9', '权限管理', '权限查询', 'permission:list', '/permission/permissionList');
INSERT INTO `sys_permission` VALUES ('10', '权限管理', '权限新增', 'permission:add', '/permission/permissionAdd');
INSERT INTO `sys_permission` VALUES ('11', '权限管理', '权限编辑', 'permission:put', '/permission/permissionPut');
INSERT INTO `sys_permission` VALUES ('12', '权限管理', '权限删除', 'permission:del', '/permission/permissionDel');
INSERT INTO `sys_permission` VALUES ('13', '日志管理', '日志查询', 'log:list', '/log/logList');
INSERT INTO `sys_permission` VALUES ('14', '日志管理', '日志删除', 'log:del', '/log/logDel');
INSERT INTO `sys_permission` VALUES ('15', '数据字典管理', '数据字典查询', 'dict:list', '/dict/dictList');
INSERT INTO `sys_permission` VALUES ('16', '数据字典管理', '数据字典新增', 'dict:add', '/dict/dictAdd');
INSERT INTO `sys_permission` VALUES ('17', '数据字典管理', '数据字典编辑', 'dict:put', '/dict/dictPut');
INSERT INTO `sys_permission` VALUES ('18', '数据字典管理', '数据字典删除', 'dict:del', '/dict/dictDel');
INSERT INTO `sys_permission` VALUES ('19', '文章管理', '文章查询', 'article:list', '/article/articleList');
INSERT INTO `sys_permission` VALUES ('20', '文章管理', '文章新增', 'article:add', '/article/articleAdd');
INSERT INTO `sys_permission` VALUES ('21', '文章管理', '文章编辑', 'article:put', '/article/articlePut');
INSERT INTO `sys_permission` VALUES ('22', '文章管理', '文章删除', 'article:del', '/article/articleDel');
INSERT INTO `sys_permission` VALUES ('23', '分类管理', '分类查询', 'category:list', '/category/categoryList');
INSERT INTO `sys_permission` VALUES ('24', '分类管理', '分类新增', 'category:add', '/category/categoryAdd');
INSERT INTO `sys_permission` VALUES ('25', '分类管理', '分类编辑', 'category:put', '/category/categoryPut');
INSERT INTO `sys_permission` VALUES ('26', '分类管理', '分类删除', 'category:del', '/category/categoryDel');
INSERT INTO `sys_permission` VALUES ('27', '评论管理', '评论查询', 'comment:list', '/comment/commentList');
INSERT INTO `sys_permission` VALUES ('28', '评论管理', '评论删除', 'comment:del', '/comment/commentDel');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `permission_ids` varchar(255) DEFAULT NULL COMMENT '权限id组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '测试用户', '只有查询权限,无法执行任何操作', '23,15,19,13,9,1,5,27');
INSERT INTO `sys_role` VALUES ('2', '管理员', '管理员拥有全部权限', '23,24,25,26,15,16,17,18,19,20,21,22,13,14,9,10,11,12,1,2,3,4,5,6,7,8,27,28');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色编号',
  `permission_id` int(11) DEFAULT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 COMMENT='角色-权限表';

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('178', '1', '23');
INSERT INTO `sys_role_permission` VALUES ('179', '1', '15');
INSERT INTO `sys_role_permission` VALUES ('180', '1', '19');
INSERT INTO `sys_role_permission` VALUES ('181', '1', '13');
INSERT INTO `sys_role_permission` VALUES ('182', '1', '9');
INSERT INTO `sys_role_permission` VALUES ('183', '1', '1');
INSERT INTO `sys_role_permission` VALUES ('184', '1', '5');
INSERT INTO `sys_role_permission` VALUES ('185', '1', '27');
INSERT INTO `sys_role_permission` VALUES ('186', '2', '23');
INSERT INTO `sys_role_permission` VALUES ('187', '2', '24');
INSERT INTO `sys_role_permission` VALUES ('188', '2', '25');
INSERT INTO `sys_role_permission` VALUES ('189', '2', '26');
INSERT INTO `sys_role_permission` VALUES ('190', '2', '15');
INSERT INTO `sys_role_permission` VALUES ('191', '2', '16');
INSERT INTO `sys_role_permission` VALUES ('192', '2', '17');
INSERT INTO `sys_role_permission` VALUES ('193', '2', '18');
INSERT INTO `sys_role_permission` VALUES ('194', '2', '19');
INSERT INTO `sys_role_permission` VALUES ('195', '2', '20');
INSERT INTO `sys_role_permission` VALUES ('196', '2', '21');
INSERT INTO `sys_role_permission` VALUES ('197', '2', '22');
INSERT INTO `sys_role_permission` VALUES ('198', '2', '13');
INSERT INTO `sys_role_permission` VALUES ('199', '2', '14');
INSERT INTO `sys_role_permission` VALUES ('200', '2', '9');
INSERT INTO `sys_role_permission` VALUES ('201', '2', '10');
INSERT INTO `sys_role_permission` VALUES ('202', '2', '11');
INSERT INTO `sys_role_permission` VALUES ('203', '2', '12');
INSERT INTO `sys_role_permission` VALUES ('204', '2', '1');
INSERT INTO `sys_role_permission` VALUES ('205', '2', '2');
INSERT INTO `sys_role_permission` VALUES ('206', '2', '3');
INSERT INTO `sys_role_permission` VALUES ('207', '2', '4');
INSERT INTO `sys_role_permission` VALUES ('208', '2', '5');
INSERT INTO `sys_role_permission` VALUES ('209', '2', '6');
INSERT INTO `sys_role_permission` VALUES ('210', '2', '7');
INSERT INTO `sys_role_permission` VALUES ('211', '2', '8');
INSERT INTO `sys_role_permission` VALUES ('212', '2', '27');
INSERT INTO `sys_role_permission` VALUES ('213', '2', '28');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('6', 'admin', 'd3c59d25033dbf980d29554025c23a75', 'Ivan', '', '');
INSERT INTO `sys_user` VALUES ('7', 'text', '5512f5c4bfbc6c8a8bcc86d8d00304ff', '张三', '', '');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户编号',
  `role_id` int(11) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户-角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('4', '6', '2');
INSERT INTO `sys_user_role` VALUES ('6', '7', '1');

-- ----------------------------
-- Table structure for sys_view
-- ----------------------------
DROP TABLE IF EXISTS `sys_view`;
CREATE TABLE `sys_view` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL COMMENT '访问ip',
  `create_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='浏览量表';

-- ----------------------------
-- Records of sys_view
-- ----------------------------
