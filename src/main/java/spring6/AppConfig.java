package spring6;

import javax.servlet.*;
import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.sitemesh.config.MetaTagBasedDecoratorSelector;
import org.sitemesh.webapp.WebAppContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import java.util.EnumSet;
import java.util.logging.Logger;

public class AppConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

    private final static Logger logger = Logger.getLogger(AbstractAnnotationConfigDispatcherServletInitializer.class.getName());

    private ConfigurableSiteMeshFilter siteMeshFilter() {
        return new ConfigurableSiteMeshFilter() {
            @Override
            protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
                MetaTagBasedDecoratorSelector decoratorSelector = new MetaTagBasedDecoratorSelector<WebAppContext>();
                decoratorSelector.put("/*", "/WEB-INF/decorators/default2.jsp");
                builder.setCustomDecoratorSelector(decoratorSelector);
            }
        };
    }

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        FilterRegistration sitemesh = null;
        for (FilterRegistration filterRegistration : servletContext.getFilterRegistrations().values()) {
            if (filterRegistration.getClassName().equals("org.sitemesh.config.ConfigurableSiteMeshFilter")) {
                sitemesh = filterRegistration;
            }
        }

        if (sitemesh != null) {
            logger.severe(String.format("*** '%s' filter already registered by your Application Server ***", sitemesh.getName()));
        } else {
            sitemesh = servletContext.addFilter("configurableSiteMeshFilter", siteMeshFilter());
            sitemesh.addMappingForUrlPatterns(EnumSet.of(DispatcherType.REQUEST, DispatcherType.ERROR), false, "/*");
        }
        super.onStartup(servletContext);
    }

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[] { SpringConfig.class };
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    protected String[] getServletMappings() {
        return new String[] {"/"};
    }

//    @Override
//    protected Filter[] getServletFilters() {
//        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
//        characterEncodingFilter.setEncoding("UTF-8");
//        return new Filter[] { characterEncodingFilter, siteMeshFilter() };
//    }
}
