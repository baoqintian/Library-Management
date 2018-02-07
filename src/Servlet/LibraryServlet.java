package Servlet;

import Bean.Library;
import Service.LibraryService;
import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;
import page.PageBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
public class LibraryServlet extends BaseServlet{
    private LibraryService libraryService=new LibraryService();

    public String add(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        //把Map转换成指定类型的Bean对象。通常用来获取表单数据
        Library library= CommonUtils.toBean(request.getParameterMap(),Library.class);
            library.setId(CommonUtils.uuid());//随机生成ID
            //String[] p={request.getParameter("name"),request.getParameter("author")};
            //判断表单数据是否为空
            String parameters=request.getParameter("name");
            if(parameters==""){
                return "/add.jsp";
            }else {
                libraryService.add(library);
                request.setAttribute("message","添加数据成功！");
            }

        return "/message.jsp";
    }
    //删除
    public String delete(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        //得到要删除的商品的ID
        String id = request.getParameter("id");
        libraryService.delete(id);

        //设定删除成功之后的信息
        request.setAttribute("message", "Delete Product Successfully");
        return "/message.jsp";
    }
    /*edit操作需要两个操作：显示商品已保存的信息以及编辑商品信息，
   显示商品信息方法名为preEdit,显示商品已保存的信息，
   编辑方法名为edit，编辑商品信息及保存.
 */
    public String preEdit(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        //得到要编辑的商品的ID,查询到此商品的信息
        String id = request.getParameter("id");
        Library library = libraryService.find(id);      //查询到商品的信息
        //判断表单数据是否为空
        String parameters=request.getParameter("name");
        if(parameters==""){
            return "/edit.jsp";
        }else {
            request.setAttribute("library", library);
            return "/edit.jsp";
        }
        //设定查询到商品信息之后的操作

    }

    public String edit(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        /*方法和add方法类似，将得到的请求参数
          和product进行mapping，进行更新
         */
        Library library = CommonUtils.toBean(request.getParameterMap(), Library.class);
        libraryService.edit(library);

        //设定编辑成功之后的信息
        request.setAttribute("message", "Edit Product Successfully");
        return "/message.jsp";
    }
    //在编写showAll方法之前，需要先编写getPageCode和getURL方法
    private int getPageCode(HttpServletRequest request){
        //得到关于页码的参数，如果没有，就设置为1
        String value = request.getParameter("pageCode");
        if(value == null || value.trim().isEmpty()){
            return 1;
        }
        return Integer.parseInt(value);
    }

    //只需要得到在请求中页码(PageCode)之前的内容
    private String getUrl(HttpServletRequest request){
        String contextPath = request.getContextPath();
        String servletPath = request.getServletPath();
        String queryString = request.getQueryString();

        //queryString为查询字符串,需要去掉页码信息部分
        if (queryString.contains("&pageCode=")) {
            int index = queryString.lastIndexOf("&pageCode=");
            queryString = queryString.substring(0, index);
        }
        return contextPath + servletPath + "?" + queryString;
    }

    //显示当前的所有商品信息
    public String showAll(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException{
        int pageCode = getPageCode(request);
        int pageRecord = 10;        //每页10项记录

        PageBean<Library> pageBean = libraryService.showAll(pageCode, pageRecord);
        //得到请求的url
        pageBean.setUrl(getUrl(request));

        //设置页面内容
        request.setAttribute("pageBean",pageBean);
        return "/content.jsp";
    }
    /*如果查询的内容有中文，需要设置IDEA，Tomcat
     以及MySQL的编码方式为"utf-8",否则会有乱码
    */
    public String query(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        //得到请求参数，进行mapping
        Library library = CommonUtils.toBean(request.getParameterMap(), Library.class);

        int pageCode = getPageCode(request);
        //每页10项记录
        int pageRecord = 10;

        PageBean<Library> pageBean = libraryService.query(library, pageCode, pageRecord);

        pageBean.setUrl(getUrl(request));

        //设定页面内容
        request.setAttribute("pageBean",pageBean);
        return "/content.jsp";
    }
}
