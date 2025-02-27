<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!--css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/nav.css">
    <!--js-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>


</head>
<body >
<jsp:useBean id="regist" class="beans.RegisterBean" scope="application"></jsp:useBean>


<nav class="navbar navbar-expand-lg  custom-bg">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">M-I-K</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="Ecommerce/E_register.html">E-ShoP</a>
        </li>
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Catogories
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
            <li><a class="dropdown-item" href="game.html">game</a></li>
            <li><a class="dropdown-item" href="Ecommerce/E_register.html">E-COMM</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="about.jsp">About</a>
        </li>
        
      </ul>
        
        <ul class="navbar-nav ml-auto">
         <li class="nav-item active">
                <a class="nav-link" href="userprofile.jsp"><div class="col-md-0">
                
                
                
                
                <div class="col-md-0 border-right">
            <div class="d-flex flex-column align-items-center text-center p-0 py-0">
            <img class="rounded-circle mt-1" 
            width="15px" 
            src="data:image/jpeg;base64,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">
            </div>
        </div>
                
                
                
                 <jsp:getProperty property="name" name="regist"/></div></a>
            </li>
        
            <li class="nav-item active">
                <a class="nav-link" href="logout.jsp">logout</a>
            </li>
            
            
        </ul>

      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

</body>
</html>