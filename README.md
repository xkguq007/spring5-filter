# Example Showing SiteMesh is Already Configured when using AbstractAnnotationConfigDispatcherServletInitializer



```
gradlew tomcatRun
```

You should see the message:

```
SEVERE: *** '@FILTERNAME@' filter already registered by your Application Server ***
```

So there is no need to configure the filter other than adding `sitemesh3.xml` to your `/WEB-INF` folder or 
you can just add a metatag to pages you want decorated.

```html

```