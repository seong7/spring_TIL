<!-- array1.jsp -->
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html; charset=EUC-KR"%>
<%
		request.setCharacterEncoding("EUC-KR");
		String arr[] = {"Java", "JSP", "Spring", "Andorid"};
		pageContext.setAttribute("arr", arr);
		
		ArrayList<String> arr1 = new ArrayList<String>();
		//�迭�� �ִ� ���� arr1�� ����
		for(int i=0;i<arr.length;i++){
			arr1.add(arr[i]);
		}
		pageContext.setAttribute("arr1", arr1);
		
		
		// arr = �迭   arr1 = ArrayList 
%>
<b>���α׷��� ����</b><hr width="250" align="left"/>
	
<!-- array �� ArrayList(collection ��ü) ��� ��¹� ���� -->

1.${arr[0]} , ${arr1[0]}<br/>
2.${arr[1]} , ${arr1[1]}<br/>
3.${arr[2]} , ${arr1[2]}<br/>
4.${arr[3]} , ${arr1[3]}<br/>






