function menuHamburguer() {

    var x = document.title

    switch (x) {

        case "Adicionar Sensor":
        
            <a href="/extend/pages/cadastro/cadastro.jsp">
            <div class="link">
            <span class="glyphicon">&#x2b;</span>
            Add
            </div>
            </a>
            break;

        case "Extend":

            <a href="/extend/pages/login/login.jsp">
            <div class="link">
            <span class="glyphicon"></span>
            Logoff
            </div>
            </a>
            break;

        case "Login":

            <a href="/extend/pages/login/login.jsp">
            <div class="link">
            <span class="glyphicon"></span>
            Logoff
            </div>
            </a>
    }
}