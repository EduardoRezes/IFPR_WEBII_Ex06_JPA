<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Registration</title>
		<style>
			body{
				background: #A9A9A9 ;
			}
			
			h1{
				text-align: center;
				font-size: 56px;
			}
			
			h2{
				font-size: 28px;
			}
			
			#nome-id{
				
				padding: 5px;
				width: 300px;
			}
			
			label{
			
				font-size: 20px;
			}
			
			#submit{
				padding: 5px;
				width: 150px;
				border: 3px solid red;
				border-radius: 10px;
			}
			
			
		</style>
	</head>
	<body>
		<h1>Work in Canada</h1>
		<h2>Form job opportunity:</h2>
		<form action="form" method="get" enctype="multipart/form-data">

			<label for="name-id" style="font-weight:bold">First Name:</label><br/><br />
			<input id="name-id" type="text" name="name" value="First Name">
			
			<br />
			<br />

			<h3>Choose native language:</h3>
			<input type="radio" checked="checked" name="language" value="portuguese"><label>Portuguese</label><br />
			<input type="radio" name="language" value="spanish"><label>Spanish</label><br />
			<input type="radio" name="language" value="english"><label>English</label><br />
			
			<br />
			<br />
			
			<h3>Choose your skills that you have:</h3>
			<input type="checkbox" name="habilidades" value="Java"><label>Java</label><br />
			<input type="checkbox" name="habilidades" value="JavaScript"><label>JavaScript</label><br />
			<input type="checkbox" name="habilidades" value="HTML"><label>HTML</label><br />
			<input type="checkbox" name="habilidades" value="CSS"><label>CSS</label><br />
			
			<br />
			<br />
			
			<input id="submit" type="submit" value="submit" />			
		</form>
	</body>
</html>