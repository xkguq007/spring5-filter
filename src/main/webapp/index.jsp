<html>
  <head>
    <title>Hello World</title>
  </head>
  <body>
    <h1>Hello</h1>
    <div>
      World! <br /> See <a href="/example.jsp">Example using Meta Tag</a>
    </div>
    <div class="content__container">
      <div class="left__container" style="float: left; width: 45%; border: 1px solid; padding: 5px;">
        <%@ include file="/WEB-INF/includes/left.jsp" %>
      </div>
      <div class="main__container" style="float: left; width: 45%; border: 1px solid; padding: 5px;">
        <%@ include file="/WEB-INF/includes/home.jsp" %>
      </div>
    </div>
  </body>
</html>
