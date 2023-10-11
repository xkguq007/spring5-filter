<html>
    <head>
        <title>Decorated <sitemesh:write property="title">Default Title</sitemesh:write></title>
        <sitemesh:write property="head"/>
    </head>
    <body>
        <header>
            <h3>Decorated by custom ConfigurableSiteMeshFilter</h3>
        </header>
        <sitemesh:write property="body" />
        <footer style="margin-top: 50px">
            <br>Decorated custom after
        </footer>
    </body>
</html>