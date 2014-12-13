<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int n1 = Integer.parseInt(request.getParameter("num1"));
		int n2 = Integer.parseInt(request.getParameter("num2"));
		String flag = request.getParameter("flag");
		int sum = 0;
		if(flag.equals("+")){
			sum = n1 + n2;
		}else if(flag.equals("-")){
			sum = n1 - n2;
		}else if(flag.equals("*")){
			sum = n1 * n2;
		}else{
			sum = n1 / n2;
		}
		out.print(sum);
	%>
</body>
</html>