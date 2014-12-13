<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
<%
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String flag = request.getParameter("flag");
		int sum = 0;
		int n1 = 0;
		int n2 = 0;
		if(num1 != null && num2 != null && flag != null){
		n1 = Integer.parseInt(num1);
		n2 = Integer.parseInt(num2);
			if(flag.equals("+")){
				sum = n1 + n2;
			}else if(flag.equals("-")){
				sum = n1 - n2;
			}else if(flag.equals("*")){
				sum = n1 * n2;
			}else{
				sum = n1 / n2;
			}
		}
	%>
	<form action="MyCal.jsp" method = "post">
		<input type = "text" name = "num1" value = "<%= n1%>">
		<select name = "flag">
			<option>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		<input type = "text" name = "num2" value = "<%= n2%>">
		<input type = "submit" value = "send">
	</form>
	计算结果是<%= sum %>
</body>
</html>