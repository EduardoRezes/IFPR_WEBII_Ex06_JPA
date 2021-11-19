<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Working in Canada!</title>

<style>
body{

}

#main{
	width: 300px;
	border: 2px solid red;
	background: #D3D3D3;
	margin: 0 auto;
	padding: 10px;

}

h2{
	text-align: center;
	color: blue;
	
	margin-bottom: 100px;
}

h1{
	font-size: 56px;
	text-align: center;
}



</style>
</head>
	<body>
	<% String name = (String) request.getAttribute("nameAttr"); %>
	<% String language = (String) request.getAttribute("languageAttr"); %>
	<% String[] skills = (String[]) request.getAttribute("skillsAttr"); %>
	
	<h1>Work in Canada</h1>
	<h2>Registration successfully Complete!!!</h2>
		<div id="main">

			<p><strong>Name:</strong>  <%out.print(name); %></p><br/>
			
			<p><strong>Native Language:</strong>  <%out.print(language);%></p><br />
			
			<p><strong>Skills:</strong></p>
			<%for(String sk : skills) {%>
				<ul>
					<li><%out.print(sk); %></li>
				</ul>		
			<%}%>
		</div>
	</body>
</html>