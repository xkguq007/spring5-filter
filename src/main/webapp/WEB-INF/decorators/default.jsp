<html>
    <head>
        <title>Decorated <sitemesh:write property="title">Default Title</sitemesh:write></title>
        <sitemesh:write property="head"/>
    </head>
    <body>
        <header>
            <h3>Decorated by Default SiteMesh @WebFilter</h3>
        </header>
        <sitemesh:write property="body" />
        <footer style="margin-top: 50px">
            Decorated after
        </footer>
    </body>
</html>