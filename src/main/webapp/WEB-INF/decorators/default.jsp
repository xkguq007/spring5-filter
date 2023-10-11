<html>
    <head>
        <title>Decorated <sitemesh:write property="title">Default Title</sitemesh:write></title>
        <sitemesh:write property="head"/>
    </head>
    <body>
        <h1>Decorated by Default SiteMesh @WebFilter</h1>
        Decorated before
        <sitemesh:write property="body" />
        Decorated after
    </body>
</html>