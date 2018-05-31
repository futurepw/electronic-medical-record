<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" version="1.0" encoding="gb2312" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>中医住院病案首页</title>
				<style>
					.td3{
						BORDER-RIGHT: #f6f6f6 1px solid; /* 显示右边框为1px，如果不想显示就为0px */
						border-top: #fff 0px solid; /* 显示上边框为1px，如果不想显示就为0px */
						BORDER-LEFT: #f9f9f9 1px solid;/* 显示左边框为1px，如果不想显示就为0px */
						BORDER-BOTTOM: #f5f5f5 0px solid;/* 显下右边框为1px，如果不想显示就为0px */
					}
				</style>
			</head>
			<body>
				<!-- 病案首页 -->
				<table width="95%" border="0" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr style="text-decoration: none;text-align:center">
						<td class="td3">
							<h4>医疗机构:<xsl:value-of select="病案首页/病案页头/医疗机构"/></h4>
						</td>
						<td class="td3">
							<h4>(组织机构代码:<xsl:value-of select="病案首页/病案页头/组织机构代码"/>）</h4>
						</td>
					</tr>
					</tbody>
				</table>
				<!-- 病案页头 -->
				<table width="95%" border="0" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3">
							<h4>医疗付费方式:<xsl:value-of select="病案首页/病案页头/医疗付费方式"/></h4>
						</td>
						<td style="text-decoration: none;text-align:center">
							<h1><xsl:value-of select="病案首页/病案页头/标题"/></h1>
						</td>
					</tr>
					<tr>
						<td class="td3">健康卡号:<xsl:value-of select="病案首页/病案页头/健康卡号"/></td>
						<td style="text-decoration: none;text-align:center">第<xsl:value-of select="病案首页/病案页头/住院次数"/>次住院</td>
						<td class="td3">病案号:<xsl:value-of select="病案首页/病案页头/病案号"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 姓名信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>姓名:</strong><xsl:value-of select="病案首页/个人信息/姓名"/></td>
						<td class="td3"><strong>性别:</strong><xsl:value-of select="病案首页/个人信息/性别"/> 1.男 2.女</td>
						<td class="td3"><strong>出生日期:</strong><xsl:value-of select="病案首页/个人信息/出生日期/年"/>年<xsl:value-of select="病案首页/个人信息/出生日期/月"/>月<xsl:value-of select="病案首页/个人信息/出生日期/日"/>日</td>
						<td class="td3"><strong>年龄:</strong><xsl:value-of select="病案首页/个人信息/年龄/非新生儿/年龄"/></td>
						<td class="td3"><strong>国籍:</strong><xsl:value-of select="病案首页/个人信息/年龄/国籍"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 年龄信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3">（年龄不足1周岁的）<strong>年龄:</strong><xsl:value-of select="病案首页/个人信息/年龄/新生儿/年龄"/>月</td>
						<td class="td3"><strong>新生儿出生体重:</strong><xsl:value-of select="病案首页/个人信息/年龄/新生儿/新生儿出生体重"/>克</td>
						<td class="td3"><strong>新生儿入院体重:</strong><xsl:value-of select="病案首页/个人信息/年龄/新生儿/新生儿入院体重"/>克</td>
					</tr>
					</tbody>
				</table>
				<!-- 出生地信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>出生地:</strong><xsl:value-of select="病案首页/个人信息/地址/出生地/省"/>省（区、市）<xsl:value-of select="病案首页/个人信息/地址/出生地/市"/>市<xsl:value-of select="病案首页/个人信息/地址/出生地/县"/>县</td>
						<td class="td3"><strong>籍贯:</strong><xsl:value-of select="病案首页/个人信息/地址/籍贯/省"/>省（区、市）<xsl:value-of select="病案首页/个人信息/地址/籍贯/市"/>市</td>
						<td class="td3"><strong>民族:</strong><xsl:value-of select="病案首页/个人信息/地址/民族"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 身份证信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>身份证号:</strong><xsl:value-of select="病案首页/个人信息/身份证号"/></td>
						<td class="td3"><strong>职业:</strong><xsl:value-of select="病案首页/个人信息/职业"/></td>
						<td class="td3"><strong>婚姻:</strong><xsl:value-of select="病案首页/个人信息/婚姻"/> 1.未婚 2.已婚 3.丧偶4.离婚 9.其他</td>
					</tr>
					</tbody>
				</table>
				<!-- 现住址信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>现住址:</strong><xsl:value-of select="病案首页/个人信息/地址/现住址/省"/>省（区、市）<xsl:value-of select="病案首页/个人信息/地址/现住址/市"/>市<xsl:value-of select="病案首页/个人信息/地址/现住址/县"/>县</td>
						<td class="td3"><strong>电话:</strong><xsl:value-of select="病案首页/个人信息/地址/现住址/电话"/></td>
						<td class="td3"><strong>邮编:</strong><xsl:value-of select="病案首页/个人信息/地址/现住址/邮编"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 户口信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>户口地址:</strong><xsl:value-of select="病案首页/个人信息/地址/户口地址/省"/>省（区、市）<xsl:value-of select="病案首页/个人信息/地址/户口地址/市"/>市<xsl:value-of select="病案首页/个人信息/地址/户口地址/县"/>县</td>
						<td class="td3"><strong>邮编:</strong><xsl:value-of select="病案首页/个人信息/地址/户口地址/邮编"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 工作单位信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>工作单位及地址:</strong><xsl:value-of select="病案首页/个人信息/地址/工作单位及地址/地址"/></td>
						<td class="td3"><strong>单位电话:</strong><xsl:value-of select="病案首页/个人信息/地址/工作单位及地址/单位电话"/></td>
						<td class="td3"><strong>邮编:</strong><xsl:value-of select="病案首页/个人信息/地址/工作单位及地址/邮编"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 联系人信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>联系人姓名:</strong><xsl:value-of select="病案首页/个人信息/联系人/姓名"/></td>
						<td class="td3"><strong>关系:</strong><xsl:value-of select="病案首页/个人信息/联系人/关系"/></td>
						<td class="td3"><strong>地址:</strong><xsl:value-of select="病案首页/个人信息/联系人/地址"/></td>
						<td class="td3"><strong>电话:</strong><xsl:value-of select="病案首页/个人信息/联系人/电话"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 入院途径信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>入院途径:</strong><xsl:value-of select="病案首页/入院信息/入院途径"/> 1.急诊 2.门诊 3.其他医疗机构转入 9.其他</td>
					</tr>
					</tbody>
				</table>
				<!-- 治疗类别信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>治疗类别:</strong><xsl:value-of select="病案首页/入院信息/治疗类型"/> 1.中医（ 1.1 中医 1.2民族医） 2.中西医 3.西医</td>
					</tr>
					</tbody>
				</table>
				<!-- 入院时间信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>入院时间:</strong><xsl:value-of select="病案首页/入院信息/时间/入院时间/年"/>年<xsl:value-of select="病案首页/入院信息/时间/入院时间/月"/>月<xsl:value-of select="病案首页/入院信息/时间/入院时间/日"/>日<xsl:value-of select="病案首页/入院信息/时间/入院时间/时"/>时</td>
						<td class="td3"><strong>入院科别:</strong><xsl:value-of select="病案首页/入院信息/科别/入院科别/科别"/></td>
						<td class="td3"><strong>病房:</strong><xsl:value-of select="病案首页/入院信息/科别/入院科别/病房"/></td>
						<td class="td3"><strong>转科科别:</strong><xsl:value-of select="病案首页/入院信息/科别/入院科别/转科科别"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 出院时间信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>出院时间:</strong><xsl:value-of select="病案首页/入院信息/时间/出院时间/年"/>年<xsl:value-of select="病案首页/入院信息/时间/出院时间/月"/>月<xsl:value-of select="病案首页/入院信息/时间/出院时间/日"/>日<xsl:value-of select="病案首页/入院信息/时间/出院时间/时"/>时</td>
						<td class="td3"><strong>出院科别:</strong><xsl:value-of select="病案首页/入院信息/科别/出院科别/科别"/></td>
						<td class="td3"><strong>病房:</strong><xsl:value-of select="病案首页/入院信息/科别/出院科别/病房"/></td>
						<td class="td3"><strong>实际住院:</strong><xsl:value-of select="病案首页/入院信息/科别/出院科别/实际住院"/>天</td>
					</tr>
					</tbody>
				</table>
				<!-- 门（急）诊诊断（中医诊断）信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>门（急）诊诊断（中医诊断）:</strong><xsl:value-of select="病案首页/入院信息/诊断/中医/中医诊断"/></td>
						<td class="td3"><strong>疾病编码:</strong><xsl:value-of select="病案首页/入院信息/诊断/中医/疾病编码"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 门（急）诊诊断（西医诊断）信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>门（急）诊诊断（西医诊断）:</strong><xsl:value-of select="病案首页/入院信息/诊断/西医/西医诊断"/></td>
						<td class="td3"><strong>疾病编码:</strong><xsl:value-of select="病案首页/入院信息/诊断/西医/疾病编码"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 试试临床路径信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>实施临床路径:</strong> <xsl:value-of select="病案首页/入院信息/实施临床路径"/> 1. 中医 2. 西医 3 否</td>
						<td class="td3"><strong>使用医疗机构中药制剂:</strong><xsl:value-of select="病案首页/入院信息/使用医疗机构中药药剂"/> 1.是 2. 否</td>
					</tr>
					</tbody>
				</table>
				<!-- 使用中医治疗设备信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>使用中医诊疗设备:</strong><xsl:value-of select="病案首页/入院信息/使用中医治疗设备"/> 1.是 2. 否</td>
						<td class="td3"><strong>使用中医诊疗技术:</strong><xsl:value-of select="病案首页/入院信息/使用中医治疗技术"/> 1. 是 2. 否</td>
						<td class="td3"><strong>辨证施护:</strong><xsl:value-of select="病案首页/入院信息/辩证施护"/> 1.是 2. 否</td>
					</tr>
					</tbody>
				</table>
				<!-- 诊断表格（主病，主证）信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr style="text-decoration: none;text-align:center">
						<td><strong>出院中医诊断</strong></td>
						<td><strong>疾病编码</strong></td>
						<td><strong>入院病情</strong></td>
						<td><strong>出院西医诊断</strong></td>
						<td><strong>疾病编码</strong></td>
						<td><strong>入院病情</strong></td>
					</tr>
					<xsl:apply-templates select="/病案首页/诊断信息"/>	
					</tbody>
				</table>
				<!-- 入院病情信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>入院病情:</strong><xsl:value-of select="病案首页/诊断信息/入院病情"/> 1.有，2.临床未确定，3.情况不明，4.无</td>
						<td class="td3">
							<table width="100%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;"
								   align="center">
								<tbody>
								<tr>
									<td class="td3">@</td>
									<td class="td3">@</td>
									<td class="td3">@</td>
								</tr>
								</tbody>
							</table>
						</td>
					</tr>
					</tbody>
				</table>
				<!-- 损伤、中毒的外部原因信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>损伤、中毒的外部原因:</strong><xsl:value-of select="病案首页/其他信息/外部原因/损伤或中毒的外部原因"/></td>
						<td class="td3"><strong>疾病编码:</strong><xsl:value-of select="病案首页/其他信息/外部原因/疾病编码"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 病理诊断信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>病理诊断:</strong><xsl:value-of select="病案首页/其他信息/病理/病理诊断"/></td>
						<td class="td3"><strong>疾病编码:</strong><xsl:value-of select="病案首页/其他信息/病理/疾病编码"/></td>
						<td class="td3"><strong>病理号:</strong><xsl:value-of select="病案首页/其他信息/病理/病理号"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 药物过敏信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>药物过敏:</strong><xsl:value-of select="病案首页/其他信息/药物过敏"/>1.无 2.有，过敏药物:</td>
						<td class="td3"><strong>死亡患者尸检:</strong><xsl:value-of select="病案首页/其他信息/死亡患者尸检"/> 1.是 2.否</td>
					</tr>
					</tbody>
				</table>
				<!-- 血型信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>血型:</strong><xsl:value-of select="病案首页/其他信息/血型"/> 1.A 2.B 3.O 4.AB 5.不详 6.未查</td>
						<td class="td3"><strong>Rh:</strong><xsl:value-of select="病案首页/其他信息/Rh"/> 1.阴 2.阳 3.不详 4.未查</td>
					</tr>
					</tbody>
				</table>
				<!-- 医师信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>科主任:</strong><xsl:value-of select="病案首页/医生信息/科主任"/></td>
						<td class="td3"><strong>主任（副主任）医师:</strong><xsl:value-of select="病案首页/医生信息/医师"/></td>
						<td class="td3"><strong>主治医师:</strong><xsl:value-of select="病案首页/医生信息/主治医师"/></td>
						<td class="td3"><strong>住院医师:</strong><xsl:value-of select="病案首页/医生信息/住院医师"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 护士信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>责任护士:</strong><xsl:value-of select="病案首页/医生信息/责任护士"/></td>
						<td class="td3"><strong>进修医师:</strong><xsl:value-of select="病案首页/医生信息/进修医师"/></td>
						<td class="td3"><strong>实习医师:</strong><xsl:value-of select="病案首页/医生信息/实习医师"/></td>
						<td class="td3"><strong>编码员:</strong><xsl:value-of select="病案首页/医生信息/编码员"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 病案质量信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>病案质量:</strong><xsl:value-of select="病案首页/质量信息/病案质量"/> 1.甲 2.乙 3.丙</td>
						<td class="td3"><strong>质控医师:</strong><xsl:value-of select="病案首页/质量信息/质控医生"/></td>
						<td class="td3"><strong>质控护士:</strong><xsl:value-of select="病案首页/质量信息/质控护士"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 日期信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>日期:</strong><xsl:value-of select="病案首页/质量信息/日期/年"/>年<xsl:value-of select="病案首页/质量信息/日期/月"/>月<xsl:value-of select="病案首页/质量信息/日期/日"/>日</td>
					</tr>
					</tbody>
				</table>
				<!-- 手术表格信息信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
						<tr style="text-decoration: none;text-align:center">
							<td><strong>手术及操作编码</strong></td>
							<td><strong>手术及操作日期</strong></td>
							<td><strong>手术级别</strong></td>
							<td><strong>手术及操作名称</strong></td>
							<td>
								<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
									<tbody>
									<tr style="text-decoration: none;text-align:center">
										<td><strong>手术及操作医师</strong></td>
									</tr>
									</tbody>
								</table>
								<table width="100%" border="1" cellpadding="0" cellspacing="0" align="center">
									<tbody>
									<tr style="text-decoration: none;text-align:center">
										<td><strong>
											术者
										</strong></td>
										<td><strong>
											Ⅰ助
										</strong></td>
										<td><strong>
											Ⅱ助
										</strong></td>
									</tr>
									</tbody>
								</table>
							</td>
							<td><strong>切口愈合等级</strong></td>
							<td><strong>麻醉方式</strong></td>
							<td><strong>麻醉医师</strong></td>
						</tr>
						<xsl:apply-templates select="病案首页/手术信息" mode="a"/>
					</tbody>
				</table>
				<!-- 离院方式、费用及其他信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
					<tr>
						<td class="td3"><strong>离院方式:</strong><xsl:value-of select="病案首页/离院信息/离院方式"/> 1.医嘱离院 2.医嘱转院，拟接收医疗机构名称:______________________________</td>
					</tr>
					<tr>
						<td class="td3">3.医嘱转社区卫生服务机构/乡镇卫生院，拟接收医疗机构名称:_______________4.非医嘱离院5.死亡9.其他</td>
					</tr>
					<tr>
						<td class="td3">
							是否有出院31天内再住院计划:<xsl:value-of select="病案首页/离院信息/是否有出院31天内再住院计划"/> 1.无 2.有，目的:___________
						</td>
					</tr>
					<tr>
						<td class="td3">
							颅脑损伤患者昏迷时间: 入院前 <xsl:value-of select="病案首页/离院信息/颅脑损伤患者昏迷时间/入院/天"/>天<xsl:value-of select="病案首页/离院信息/颅脑损伤患者昏迷时间/入院/小时"/>小时<xsl:value-of select="病案首页/离院信息/颅脑损伤患者昏迷时间/入院/分钟"/>分钟 入院后<xsl:value-of select="病案首页/离院信息/颅脑损伤患者昏迷时间/出院/天"/>天<xsl:value-of select="病案首页/离院信息/颅脑损伤患者昏迷时间/出院/小时"/>小时<xsl:value-of select="病案首页/离院信息/颅脑损伤患者昏迷时间/出院/分钟"/>分钟
						</td>
					</tr>
					<tr>
						<td class="td3"><strong>住院费用（元）:总费用</strong><xsl:value-of select="病案首页/费用信息/住院费用/总费用"/>（自付金额:<xsl:value-of select="病案首页/费用信息/住院费用/自付金额"/>）</td>
					</tr>
					<tr>
						<td class="td3"><strong>1.综合医疗服务类:</strong>（1）一般医疗服务费:<xsl:value-of select="病案首页/费用信息/综合医疗服务类/一般医疗服务费/一般医疗服务费"/>（中医辨证论治费:<xsl:value-of select="病案首页/费用信息/综合医疗服务类/一般医疗服务费/中医辨证论治费"/>中医辨证论治会诊费:<xsl:value-of select="病案首页/费用信息/综合医疗服务类/一般医疗服务费/中医辨证论治会诊费"/>）（2）一般治疗操作费:<xsl:value-of select="病案首页/费用信息/综合医疗服务类/一般医疗操作费"/>（3）护理费:<xsl:value-of select="病案首页/费用信息/综合医疗服务类/护理费"/>（4）其他费用:<xsl:value-of select="病案首页/费用信息/综合医疗服务类/其他费用"/>
						</td>
					</tr>
					<tr>
						<td class="td3"><strong>2.诊断类:</strong>（5）病理诊断费:<xsl:value-of select="病案首页/费用信息/诊断类/病理诊断费"/>（6）实验室诊断费:<xsl:value-of select="病案首页/费用信息/诊断类/实验室诊断费"/>（7）影像学诊断费:<xsl:value-of select="病案首页/费用信息/诊断类/影像学诊断费"/>（8）临床诊断项目费:<xsl:value-of select="病案首页/费用信息/诊断类/临床诊断项目费"/>
						</td>
					</tr>
					<tr>
						<td class="td3"><strong>3.治疗类:</strong>（9）非手术治疗项目费:<xsl:value-of select="病案首页/费用信息/治疗类/非手术治疗项目费/非手术治疗项目费"/>（临床物理治疗费:<xsl:value-of select="病案首页/费用信息/治疗类/非手术治疗项目费/临床物理治疗费"/>）（10）手术治疗费:<xsl:value-of select="病案首页/费用信息/治疗类/手术治疗费/手术治疗费"/>（麻醉费:<xsl:value-of select="病案首页/费用信息/治疗类/手术治疗费/麻醉费"/> 手术费:<xsl:value-of select="病案首页/费用信息/治疗类/手术治疗费/手术费"/>）
						</td>
					</tr>
					<tr>
						<td class="td3"><strong>4.康复类:</strong>（11）康复费:<xsl:value-of select="病案首页/费用信息/康复类/康复费"/></td>
					</tr>
					<tr>
						<td class="td3"><strong>5.中医类（中医和民族医医疗服务）</strong>（12）中医诊断:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医诊断"/>（13）中医治疗:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医治疗/中医治疗"/>（中医外治:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医治疗/中医外治"/>	中医骨伤:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医治疗/中医骨伤"/>针刺与灸法:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医治疗/针刺与灸法"/>中医推拿治疗:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医治疗/中医推拿治疗"/>中医肛肠治疗:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医治疗/中医肛肠治疗"/>中医特殊治疗:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医治疗/中医特殊治疗"/>）（14）中医其他:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医其他/中医其他"/>（中药特殊调配加工:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医其他/中药特殊调配加工"/>辨证施膳:<xsl:value-of select="病案首页/费用信息/中医类中医和民族医医疗服务/中医其他/辨证施膳"/>）
						</td>
					</tr>
					<tr>
						<td class="td3"><strong>6.西药类:</strong>（15）西药费:<xsl:value-of select="病案首页/费用信息/西药类/西药费/西药费"/>（抗菌药物费用:<xsl:value-of select="病案首页/费用信息/西药类/西药费/抗菌药物费用"/>）</td>
					</tr>
					<tr>
						<td class="td3"><strong>7.中药类:</strong>（16）中成药费:<xsl:value-of select="病案首页/费用信息/中药类/中成药费/中成药费"/>（医疗机构中药制剂费:<xsl:value-of select="病案首页/费用信息/中药类/中成药费/医疗机构中药制剂费"/>）（17）中草药费:<xsl:value-of select="病案首页/费用信息/中药类/中草药费"/></td>
					</tr>
					<tr>
						<td class="td3"><strong>8.血液和血液制品类:</strong>（18）血费:<xsl:value-of select="病案首页/费用信息/血液和血液制品类/血费"/>（19）白蛋白类制品费:<xsl:value-of select="病案首页/费用信息/血液和血液制品类/白蛋白类制品费"/>（20）球蛋白类制品费:<xsl:value-of select="病案首页/费用信息/血液和血液制品类/球蛋白类制品费"/>（21）凝血因子类制品费:<xsl:value-of select="病案首页/费用信息/血液和血液制品类/凝血因子类制品费"/>（22）细胞因子类制品费:<xsl:value-of select="病案首页/费用信息/血液和血液制品类/细胞因子类制品费"/>
						</td>
					</tr>
					<tr>
						<td class="td3"><strong>9.耗材类:</strong>（23）检查用一次性医用材料费:<xsl:value-of select="病案首页/费用信息/耗材类/检查用一次性医用材料费"/>（24）治疗用一次性医用材料费:<xsl:value-of select="病案首页/费用信息/耗材类/治疗用一次性医用材料费"/>（25）手术用一次性医用材料费:<xsl:value-of select="病案首页/费用信息/耗材类/手术用一次性医用材料费"/>
						</td>
					</tr>
					<tr>
						<td class="td3"><strong>10.其他类:</strong>（26）其他费:<xsl:value-of select="病案首页/费用信息/其他类/其他费"/></td>
					</tr>
					</tbody>
				</table>
				<!-- 备注及说明信息 -->
				<table width="95%" border="1" cellpadding="0" cellspacing="0" style="table-layout: fixed;" align="center">
					<tbody>
						<tr>
							<td class="td3"><strong>备注信息:</strong></td>
						</tr>
						<tr>
							<td class="td3"><strong>说明:</strong>（一）医疗付费方式  1.城镇职工基本医疗保险  2.城镇居民基本医疗保险 3.新型农村合作医疗 4.贫困救助  5.商业医疗保险  6.全公费  7.全自费  8.其他社会保险  9.其他</td>
						</tr>
						<tr>
							<td class="td3">（二）凡可由医院信息系统提供住院费用清单的，住院病案首页中可不填写“住院费用”。</td>
						</tr>
					</tbody>
				</table>
			</body>
		</html>	
	</xsl:template>
	<xsl:template match="手术信息"  mode="a">
		<xsl:for-each select="手术">
			<tr style="text-decoration: none;text-align:center">
				<td><xsl:value-of select="手术及操作编码"/></td>
				<td><xsl:value-of select="手术及操作日期"/></td>
				<td><xsl:value-of select="手术级别"/></td>
				<td><xsl:value-of select="手术及操作名称"/></td>
				<td><xsl:value-of select="手术及操作医生/术者"/>，<xsl:value-of select="手术及操作医生/助理一"/>，<xsl:value-of select="手术及操作医生/助理二"/></td>
				<td><xsl:value-of select="切口愈合等级"/></td>
				<td><xsl:value-of select="麻醉方式"/></td>
				<td><xsl:value-of select="麻醉医师"/></td>
			</tr>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="/病案首页/诊断信息">
		<xsl:for-each select="中医诊断">
			<xsl:call-template name="value1">		
				<xsl:with-param name="zyzd" select="诊断"/>
			</xsl:call-template></xsl:for-each>
			<xsl:for-each select="西医诊断">
				<xsl:call-template name="value2">		
					<xsl:with-param name="xyzd" select="诊断"/>
				</xsl:call-template>
			</xsl:for-each>	
		</xsl:template>
	<xsl:template name="value1">
		<xsl:param name="zyzd"/>
		<tr>		
			<td><strong>主病:<xsl:value-of select="$zyzd/出院中医诊断/主病"/></strong></td>
			<td><xsl:value-of select="$zyzd/入院病情"/></td>
			<td><xsl:value-of select="$zyzd/疾病编码"/></td>
			<td><strong>主证:<xsl:value-of select="$zyzd/出院中医诊断/主证"/></strong></td>
			<td><xsl:value-of select="$zyzd/入院病情"/></td>
			<td><xsl:value-of select="$zyzd/疾病编码"/></td>
		</tr>				
	</xsl:template>
	<xsl:template name="value2">	
		<xsl:param name="xyzd"/>
		<tr>
			<td><strong>主要诊断:<xsl:value-of select="$xyzd/出院西医诊断/主要诊断"></xsl:value-of></strong></td>
			<td><xsl:value-of  select="$xyzd/入院病情"/></td>
			<td><xsl:value-of  select="$xyzd/疾病编码"/></td>
			<td><strong>其他诊断:<xsl:value-of select="$xyzd/出院西医诊断/其他诊断"></xsl:value-of></strong></td>
			<td><xsl:value-of  select="$xyzd/入院病情"/></td>
			<td><xsl:value-of  select="$xyzd/疾病编码"/></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>
