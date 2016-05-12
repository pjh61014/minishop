<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript">

</script>
</head>
<body onload="test()">
	<form name="login_frm" action="/shop/login.do" method="post">
		<table cellpadding="0" cellspacing=5 width="815" bgcolor=#f3f3f3
			border=0>
			<tr>
				<td bgcolor=#ffffff height=100% align=center valign=top>
					<table cellpadding=0 cellspacing=0 border=0 width=710>

						<input type=hidden name=redirect_url value=''>
						<tr>
							<td>
								<table cellpadding="0" cellspacing=0 width="100%"
									bgcolor=#f7f7f7 border=0>
									<tr>
										<td bgcolor=#ffffff align=center>

											<table cellpadding="0" cellspacing="0" border=0 align=center
												width=678>
												<tr>
													<td align=center width=353>

														<table cellpadding="0" cellspacing="0" border=0 width=353>
															<tr>
																<td>
																	<table cellpadding="0" cellspacing="0" border=0>

																		<tr>
																			<td colspan=3><img
																				src="/shop/images/page_login.gif"></td>
																		</tr>
																		<tr>
																			<td height=25></td>
																		</tr>
																		<tr>
																			<td background="/shop/images/inputBg.gif"><img
																				src="/shop/images/login_id.gif"></td>
																			<td background="/shop/images/inputBg.gif"><input
																				type="text" name="id" size="15" class="grayinput"
																				tabindex=1 style="width: 156;"
																				 value=""></td>
																			<td rowspan=3 style="padding-left: 10" valign=bottom>
																			<input
																				type='image' src="/shop/images/btn_login.gif"
																				border="0" tabindex=3></td>
																		</tr>
																		<tr>
																			<td height=10></td>
																		</tr>
																		<tr>
																			<td background="/shop/images/inputBg.gif"><img
																				src="/shop/images/login_pass.gif"></td>
																			<td background="/shop/images/inputBg.gif"><input
																				type="password" name="passwd" size="15"
																				class="grayinput" tabindex='2' style='width: 156;'>
																			</td>
																		</tr>
																		<tr>
																			<td colspan=3 align=right
																				style="padding-right: 9; padding-top: 12"><span
																				style="display: inline"><label
																					for="member_id_save"><input type="checkbox"
																						name="member_id_save" id="member_id_save"
																						value="T" />아이디저장</label> </span></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td colspan=3></td>
															</tr>

														</table>

													</td>

													<td style="padding-left: 60; padding-top: 60"></td>
												</tr>
												<tr>
													<td colspan=3 style="padding-top: 20" style=padding-left:40></td>
												</tr>
											</table>

										</td>
									</tr>
								</table>
							</td>
						</tr>


						<tr>
							<td height=30></td>
						</tr>
						<tr>
							<td></td>
						</tr>

						<tr>
							<td height=49></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>