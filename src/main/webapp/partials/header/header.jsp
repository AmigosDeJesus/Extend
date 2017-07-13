<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/extend/partials/header/header.css"/>
<header>
  <center>
    <h2>
      <strong>EXTEND</strong>
    </h2>
  </center>
</header>
<input type="checkbox" id="check"/>
  <label id="icone" for="check">
    <img src="/extend/img/icone.png">
  </label>
<div class="bg"></div>
<div class="barra">
  <nav>
    <script>
      if(document.location.href.toString().indexOf("/home/home") !== -1) {
        document.write("<a href=\"\/extend\/pages\/cadastro\/cadastro\">");
        document.write(" <div class=\"link\">");
        document.write("  <span class=\"glyphicon\">&#x2b;<\/span>");
        document.write("    Add");
        document.write(" <\/div>");
        document.write("<\/a>");
        document.write("<a href=\"\/extend\/pages\/login\/login.jsp\">");
        document.write(" <div class=\"link\">");
        document.write("   <span class=\"glyphicon\"><\/span>");
        document.write("    Logoff");
        document.write(" <\/div>");
        document.write("<\/a>");
      }
      else if(document.location.href.toString().indexOf("/cadastro/cadastro") !== -1) {
        document.write("<a href=\"\/extend\/pages\/home\/home\">");
        document.write(" <div class=\"link\">");
        document.write("  <span class=\"glyphicon\"><\/span>");
        document.write("    Home");
        document.write(" <\/div>");
        document.write("<\/a>");
        document.write("<a href=\"\/extend\/pages\/login\/login.jsp\">");
        document.write(" <div class=\"link\">");
        document.write("   <span class=\"glyphicon\"><\/span>");
        document.write("    Logoff");
        document.write(" <\/div>");
        document.write("<\/a>");
      }
    </script>
  </nav>
</div>
<br/><br/><br/>