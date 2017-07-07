<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<link rel="stylesheet" href="/extend/partials/header/header.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/extend/partials/header/header.js"></script>

<header>
  <center>
    <h2>
      <strong>EXTEND</strong>
    </h2>
  </center>
    <div>
      <h1>Job Reference Number: <% out.println("referenceNum"); %></h1>
    </div>
</header>
<input type="checkbox" id="check"/>
  <label id="icone" for="check">
    <img src="/extend/img/icone.png">
  </label>
<div class="bg"></div>
<div class="barra">
  <nav>
    <a href="/extend/pages/cadastro/cadastro.jsp">
      <div class="link">
        <span class="glyphicon">&#x2b;</span>
        Add
      </div>
    </a>
    <a href="/extend/pages/login/login.jsp">
      <div class="link">
        <span class="glyphicon"></span>
        Logoff
      </div>
    </a>
  </nav>
</div>
<br/><br/><br/>