<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link type="text/css" rel="stylesheet" href="DashboardStyle.css">
<link type="text/css" rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
<title>Work On It</title>
</head>
<body>
	<div id="wrapper">
		<header>
			
			<nav>
			<form id="loginform" action="Login" method="post">
	            <ul>
	                <li><input type="text" name="username" placeholder="username" required></li>
	                <li><input type="password" name="password" placeholder="password" required></li>
	                <li><button id="loginbutton" type="submit" value="login"><span>Login</span></button></li>
	            </ul>
	         </form>  
	         
	         
	          
	        </nav>
	        <img id="logo" src="images/lg.big.png" alt="logo">
		</header>
		
		<div id="content">
		 <section id="subhead">
			<h1>Affidati anche tu a Work On it e risparmia tempo.<br> 
			Organizza e ottimizza il lavoro del tuo team. <br>
			Diventa SMART!</h1>
		</section> 
			<section id="sectionlogo">
				<img id="logobig" src="images/logo.png" alt="logo">
				<h2>Your best Project Management solution</h2>
			</section>
			<div id="right">
				<span id="title2">Prova Work On it.</span><br>
				<article id="start">
					<section id="section1">
					
					<h3>Work on It risolve i problemi critici che ogni azienda deve affrontare
					nella sua fase di crescita</h3>
					</section>
					<button id="startbutton"><span>Inizia Subito!</span></button><br>		
					<h3 id="oppure"><span>oppure</span></h3>
					<section id="section2">
						<span>Stai cercando il tuo team??</span><br><br>
						<form action="product" method="get">
							<input id="formteam" type="text" name="team" placeholder="nome team" required><i class="fa fa-search fa-2x" aria-hidden="true"></i>
						</form>
						
							
					</section>
				</article>
			</div>	
		</div>	
		
		<footer>
		<br>
		<ul>
			<li><a href="#">Home</a>  |</li>
			<li>  <a href="#">About us</a>  |</li>
			<li>  <a href="#">Listino</a>  |</li>
			<li>  <a href="#">Policy</a>  |</li>
			<li>  <a href="#">Contatti</a></li>
		</ul><br>
		<p><span id="copyright">©2017 Work on it. Tutti i diritti riservati. Informativa sulla privacy & Condizioni per l'utilizzo del servizio.</span></p>
		</footer>
	</div>
</body>
</html>