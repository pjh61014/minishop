<%@page import="java.util.ArrayList"%>
<%@page import="product.dto.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link type="text/css" href="/minishop/common/css/master.css"
	rel="stylesheet" media="screen,print" />
<link type="text/css" href="/minishop/common/css/print.css"
	rel="stylesheet" media="print" />
<link type="text/css" href="/minishop/common/css/mall.css"
	rel="stylesheet" media="screen,print" />
	<% //�������� �������� ������ ������
	
	ArrayList<ProductDTO> list=(ArrayList<ProductDTO>)request.getAttribute("productlist");
	
	int size = list.size();
	
	
	%>
	
</head>
<body>
	<!-- categoryGroupArea : ��ǰī�װ��� �� �з� END -->
	<span><a href="/minishop/prdlist.do">����</a></span>
	<!---------------- ��ǰ ��ȸ ��� ����Ʈ ���� ���� -------------->
	<div class="goodsListArea">
		<!-- ��ȸ ��� �޼��� �� ���� -->
		<div class="goodsListHead">
			<p>
				��<span><%=size%></span> ���� ��ǰ�� �ֽ��ϴ�.
			</p>
			<ul>
				<li class="first selected"><a href="#"
					onclick="dataSort( 1, 'PR_INDATE desc' ); return false;">��ϼ�</a></li>
				<li class=""><a href="#"
					onclick="dataSort( 2, 'NVL( PRLP_SALEPRICE1, 0) desc' ); return false;">�������ݼ�</a></li>
				<li class=""><a href="#"
					onclick="dataSort( 3, 'NVL( PRLP_SALEPRICE1, 0) asc' ); return false;">�������ݼ�</a></li>
				<li class=""><a href="#"
					onclick="dataSort( 4, 'PR_NAME asc' ); return false;">��ǰ����</a></li>
				<li class="typeGallery"><a href="#"
					onclick="dataViewType( 2 );return false;"> <img
						src="/minishop/images/icn_gllry_2.gif" alt="������ ��" />
				</a></li>
				<li class="typeList"><a href="#"
					onclick="dataViewType( 1 );return false;"> <img
						src="/minishop/images/icn_list_2.gif" alt="����Ʈ ��" />
				</a></li>
				<li class="last"><select name="r_limitrow"
					onchange="pageLimitRow();" title="����">
						<option value="10">10��</option>
						<option value="20" selected='selected'>20��</option>
						<option value="50">50��</option>
						<option value="100">100��</option>


				</select></li>
			</ul>
		</div>
		<div class="boardAreaList">
			<!-- ��ǰ����Ʈ [����Ʈ ��] ���� -->

			<!-- ��ǰ����Ʈ [����Ʈ ��] �� -->

			<!-- ��ǰ����Ʈ [������ ��] ���� -->
	
			<ul class="goodsAreaG">
				<!-- *��ǰ ������� -->
			<% for(int i=0; i<list.size();i++) 
				
				{ ProductDTO pro = list.get(i);
			%>
				<li><a href="#" class="goodsLink"
					onclick="formGetSubmit( '/commerce/foffice/product/product.lime', 'r_prcode=G4135_F0002_X0004_K0040' )">
						<img src="/minishop/images/product/<%=pro.getImg_gen_file_nm()%>" alt="��ǰ"
						class="photo" /><br /> <span class="proPrice1"> <%=pro.getPrd_nm()%></span>
				</a><br /> <span class="proPrice2"><%=pro.getSell_prc_unit()%>��</span>

					<ul class="bIcon">


						<li><a href="#"
							onclick="basketIn( 'G4135_F0002_X0004_K0040' );return false;"><img
								src="../../include/image/foffice/icon/bcon_cart.gif" alt="��ٱ���" /></a></li>
						<li><a href="#" onclick="imageZoom( '1010' );"><img
								src="../../include/image/foffice/icon/bcon_zoom.gif" alt="Ȯ�뺸��" /></a></li>

					</ul></li>
	

			<%} %>


			</ul>
		</div>
	</div>
	<!---------------- ��ǰ ��ȸ ��� ����Ʈ ���� �� ------icn_gllry_2.gif----- icn_list_2.gif--->
</body>
</html>