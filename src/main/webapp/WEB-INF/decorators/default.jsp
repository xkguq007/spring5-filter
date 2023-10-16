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
        <div>
            <h2>You can write any property as many times as you wat</h2>
            <div class="content__container">
                <div class="left__container" style="float: left; width: 45%; border: 1px solid; padding: 5px;">
                    <sitemesh:write property="body"></sitemesh:write>
                </div>
                <div class="main__container" style="float: left; width: 45%; border: 1px solid; padding: 5px;">
                    <sitemesh:write property="body"></sitemesh:write>
                </div>
            </div>
        </div>
        <footer style="clear:both; margin-top: 50px">
            Decorated after
        </footer>
    </body>
</html>