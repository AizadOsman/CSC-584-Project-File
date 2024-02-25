package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminLeaveRequest_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>EMS | Admin</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar\">\n");
      out.write("            <div class=\"navdiv\">\n");
      out.write("                <div class=\"logo\"><a href=\"\"></a><b>EMS</b> Admin</div>\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"adminHome.jsp\">Home</a></li>\n");
      out.write("                    <li><a href=\"adminLeaveRequest.jsp\" class=\"active\">Leave Request</a></li>\n");
      out.write("                    <li><a href=\"adminMyTeam.jsp\">My Team</a></li>\n");
      out.write("                    <button onclick=\"window.location.href = 'adminLogin.jsp';\"><b>Logout</b></button>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    \n");
      out.write("    .logo{\n");
      out.write("        color: white;\n");
      out.write("        font-size: 20px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    body{\n");
      out.write("       background-color: #f4f4f4;\n");
      out.write("       margin: 0;\n");
      out.write("       padding: 0;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("     .navbar{\n");
      out.write("        background-color: #242526;\n");
      out.write("        padding-right: 15px;\n");
      out.write("        padding-left: 15px;\n");
      out.write("        font-family: Century Gothic;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .navdiv{\n");
      out.write("        display: flex;\n");
      out.write("        align-items: center;\n");
      out.write("        justify-content: space-between;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    li {\n");
      out.write("        list-style: none;\n");
      out.write("        display: inline-block;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    li  :hover{\n");
      out.write("        color: #5499C7;\n");
      out.write("        transition-duration: 0.4s;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    li a {\n");
      out.write("        color: white;\n");
      out.write("        font-size: 18px;\n");
      out.write("        font-weight: bold;\n");
      out.write("        margin-right: 25px;\n");
      out.write("        text-decoration: none;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .active {\n");
      out.write("        color: #5499C7;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    button{\n");
      out.write("        border-radius: 25px;\n");
      out.write("        padding: 10px 10px 10px 10px;\n");
      out.write("        background-color: #ABB2B9;\n");
      out.write("        color: #566573;\n");
      out.write("        cursor: pointer;\n");
      out.write("        transition-duration: 0.4s;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    button:hover{\n");
      out.write("        background-color: #5499C7;\n");
      out.write("        color:white;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("</style>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_sql_setDataSource_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_0 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_0.setParent(null);
    _jspx_th_sql_setDataSource_0.setVar("myDatasource");
    _jspx_th_sql_setDataSource_0.setDriver("org.apache.derby.jdbc.ClientDriver");
    _jspx_th_sql_setDataSource_0.setUrl("jdbc:derby://localhost:1527/EMS");
    _jspx_th_sql_setDataSource_0.setUser("app");
    _jspx_th_sql_setDataSource_0.setPassword("app");
    int _jspx_eval_sql_setDataSource_0 = _jspx_th_sql_setDataSource_0.doStartTag();
    if (_jspx_th_sql_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
    return false;
  }
}
