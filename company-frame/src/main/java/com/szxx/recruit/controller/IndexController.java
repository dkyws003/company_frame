package com.szxx.recruit.controller;




import io.swagger.annotations.Api;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


/**
* @ClassName:       返回菜单对应的视图html   有少部分需要返回页面生成的数据在这里
*                   TODO:类文件简单描述
* @Author:          yws
* @CreateDate:      2020/10/25 17:06
* @UpdateUser:      yws
* @UpdateDate:      2020/10/25 17:06
* @Version:         0.0.1
*/
@Api(tags = "视图",description = "负责返回视图")
@Controller
@RequestMapping("/index")
public class IndexController {

    @GetMapping("/login")
    public String logout(){
        return "login";
    }
    /**
     * 进入首页
     * @Author:      yws
     * @CreateDate:  2020/10/25 17:17
     * @UpdateUser:
     * @UpdateDate:  2020/10/25 17:17
     * @Version:     0.0.1
     * @param model
     * @param request
     * @return       java.lang.String
     * @throws
     */
    @GetMapping("/home")
    public String home(Model model, HttpServletRequest request){
        return "home";
    }
    /**
     * 更改密码页面
     * @Author:      yws
     * @CreateDate:  2020/10/25 17:19
     * @UpdateUser:
     * @UpdateDate:  2020/10/25 17:19
     * @Version:     0.0.1
     * @param
     * @return       java.lang.String
     * @throws
     */
    @GetMapping("/users/password")
    public String updatePassword(){
        return "users/update_password";
    }
    /**
     * 用户编辑个人信息 视图
     * @Author:      yws
     * @CreateDate:  2020/10/29 10:38
     * @UpdateUser:
     * @UpdateDate:  2020/10/29 10:38
     * @Version:     0.0.1
     * @param model
     * @return       java.lang.String
     * @throws
     */
    @GetMapping("/users/info")
    public String userDetail(Model model){
        model.addAttribute("flagType","edit");
        return "users/user_edit";
    }
    /**
     * 菜单权限列表  视图
     * @Author:      yws
     * @CreateDate:  2020/10/29 10:38
     * @UpdateUser:
     * @UpdateDate:  2020/10/29 10:38
     * @Version:     0.0.1
     * @param
     * @return       java.lang.String
     * @throws
     */
    @GetMapping("/menus")
    public String menusList(){

        return "menus/menu_list";
    }
    /**
     * 角色列表 操作视图
     * @Author:      yws
     * @CreateDate:  2020/10/29 10:38
     * @UpdateUser:
     * @UpdateDate:  2020/10/29 10:38
     * @Version:     0.0.1
     * @param
     * @return       java.lang.String
     * @throws
     */
    @GetMapping("/roles")
    public String roleList(){
        return "roles/role_list";
    }
    /**
     * 用户列表操作 视图
     * @Author:      yws
     * @CreateDate:  2020/10/29 10:37
     * @UpdateUser:
     * @UpdateDate:  2020/10/29 10:37
     * @Version:     0.0.1
     * @param
     * @return       java.lang.String
     * @throws
     */
    @GetMapping("/users")
    public String userList(){
        return "users/user_list";
    }
    /**
     * 系统操作日志 视图
     * @Author:      yws
     * @CreateDate:  2020/10/29 10:37
     * @UpdateUser:
     * @UpdateDate:  2020/10/29 10:37
     * @Version:     0.0.1
     * @param
     * @return       java.lang.String
     * @throws
     */
    @GetMapping("/logs")
    public String logList(){
        return "logs/log_list";
    }
    /**
     * 组织机构列表 试图
     * @Author:      yws
     * @CreateDate:  2020/10/29 10:36
     * @UpdateUser:
     * @UpdateDate:  2020/10/29 10:36
     * @Version:     0.0.1
     * @param
     * @return       java.lang.String
     * @throws
     */
    @GetMapping("/depts")
    public String deptList(){
        return "depts/dept_list";
    }

    @GetMapping("/403")
    public String error403(){
        return "error/403";
    }
    @GetMapping("/404")
    public String error404(){
        return "error/404";
    }

    @GetMapping("/500")
    public String error405(){
        return "error/500";
    }

    @GetMapping("/main")
    public String indexHome(){
        return "main";
    }

    @GetMapping("/about")
    public String about(){
        return "about";
    }

   /*
   *
   * 需求信息列表
   * */
    @GetMapping("/infos")
    public String candidateInfo(){
        return "info/info_list";
    }
    /*
    * 编辑需求信息
    * */
    @GetMapping("/infos/supplier")
    public String infosSupplier(Model model){
        model.addAttribute("","");
        return "info/info_supplier";
    }
    /*
     * 详细需求信息
     * */
    @GetMapping("/infos/detail")
    public String infosDetail(Model model,String needsId){
        model.addAttribute("needsId",needsId);
        return "info/info_detail";
    }
}
