<!--  operators.jsp -->
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
		pageContext.setAttribute("J", 31);
		pageContext.setAttribute("S", 8);
		pageContext.setAttribute("P", 22);
%>
<b> J= ${J}, S= ${S}, P= ${P}</b>
<b>��� ������</b><hr width="250" align="left"/>
${J+S}
&#36{J+S} = ${J+S}<br/>
<!-- &#36   =   $  -->
&#36;{J-S} = ${J-S}<br/>
&#36;{J*S} = ${J*S}<br/>
&#36;{J/S} = ${J/S}<br/>
&#36;{J%S} = ${J%S}<p/>

<b>�� ������</b><hr width="250" align="left"/>
&#36;{J < S} = ${J lt S}<br/> <!-- lt : less than -->
&#36;{J > S} = ${J gt S}<br/><!-- gt : greater than -->
&#36;{S <= P} = ${S le P}<br/><!-- le : less equal -->
&#36;{S >= P} = ${S ge P}<br/>
&#36;{(10*10)==100} = ${(10*10) eq 100}<br/>
&#36;{(10*10)!=100} = ${(10*10) ne 100}<p/>
 <!-- less / greater �� ��ü�� ������ ������ -->


<b>�� �� ���� ������</b><hr width="250" align="left"/>
&#36;{J > P && P < S} : ${J>P and P<S}<br/>
&#36;{J > P || P < S} : ${J>P or P<S}<br/>
&#36;{!(J == P)} : ${not(J==P)}<br/>
&#36;{(J == S)?"����":"�ٸ���"} : ${(J == S)?"����":"�ٸ���"}<br/>
