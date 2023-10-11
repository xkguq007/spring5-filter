<html>
    <head>
        <title>Decorated <sitemesh:write property="title">Default Title</sitemesh:write></title>
        <sitemesh:write property="head"/>
    </head>
    <body>
        <h1>Decorated by custom ConfigurableSiteMeshFilter</h1>
        Decorated-2 before
        <sitemesh:write property="body" />
        Decorated=2 after
    </body>
</html>