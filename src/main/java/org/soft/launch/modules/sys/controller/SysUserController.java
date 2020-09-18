package org.soft.launch.modules.sys.controller;


import org.soft.launch.kernel.tools.AjaxResult;
import org.soft.launch.kernel.tools.Const;
import org.soft.launch.kernel.tools.Data;
import org.soft.launch.kernel.tools.PageBean;
import org.soft.launch.kernel.tools.UUID;
import org.soft.launch.modules.sys.entity.SysUser;
import org.soft.launch.modules.sys.service.ISysRoleService;
import org.soft.launch.modules.sys.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
@Controller
@RequestMapping("/manager")
public class SysUserController {

    @Autowired
    private AjaxResult ajaxResult;
    @Autowired
    private ISysUserService userService;
    @Autowired
    private ISysRoleService roleService;
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    /**
     * 跳转管理员页面
     * @return
     */
    @GetMapping("/admin")
    public String admin(){
        return "manager/admin/adminList";
    }

    /**
     * 异步加载管理员列表
     * @param pageno
     * @param pagesize
     * @param username
     * @param phone
     * @param email
     * @return
     */
    @RequestMapping("/adminList")
    @ResponseBody
    public Object adminList(@RequestParam(value = "page", defaultValue = "1") Integer pageno,
                            @RequestParam(value = "limit", defaultValue = "5") Integer pagesize,
                            String username,String phone,String email,String rid){
        Map<String,Object> paramMap = new HashMap();
        paramMap.put("pageno",pageno);
        paramMap.put("pagesize",pagesize);

        //判断是否为空
        if(!StringUtils.isEmpty(username)) {
            paramMap.put("username",username);
        }
        if(!StringUtils.isEmpty(phone)) {
            paramMap.put("phone",phone);
        }
        if(!StringUtils.isEmpty(email)) {
            paramMap.put("email",email);
        }
        if(!StringUtils.isEmpty(rid) && !"0".equals(rid)) {
            paramMap.put("rid",rid);
        }

        PageBean<SysUser> pageBean = userService.queryPage(paramMap);

        Map<String,Object> rest = new HashMap();
        rest.put("code", 0);
        rest.put("msg", "");
        rest.put("count",pageBean.getTotalsize());
        rest.put("data", pageBean.getDatas());
        return rest;
    }

    /**
     * 跳转添加管理员页面
     * @return
     */
    @GetMapping("/addAdmin")
    public String addAdmin(String type, Long id, Model model){
        if(type != null && "edit".equals(type)){
            SysUser admin = userService.selectById(id);
            model.addAttribute(Const.ADMIN,admin);
        }
        return "manager/admin/addAdmin";
    }

    /**
     * 添加管理员  修改管理员
     * @param admin
     * @param status
     * @return
     */
    @PostMapping("/addAdmin")
    @ResponseBody
    public AjaxResult submitAddAdmin(SysUser admin,String status){
        SysUser byName = userService.selectByName(admin.getUsername());
        SysUser byEmail = userService.selectByEmail(admin.getEmail());
        if(admin.getRid() == 0){
            ajaxResult.ajaxFalse("请选择角色");
            return ajaxResult;
        }
        //on 表示通过 null 表示待审核
        admin.setStatus(status != null?1:0);
        if(admin.getId() !=null) {
            //修改管理员
            if (byName != null && !byName.getId().equals(admin.getId())) {
                //与修改用户名一样，但存在数据库中，表示后来改的用户名已存在
                ajaxResult.ajaxFalse("用户名已存在");
                return ajaxResult;
            }
            if (byEmail != null && !byEmail.getId().equals(admin.getId())) {
                //与修改邮箱一样，但存在数据库中，表示后来改的邮箱已存在
                ajaxResult.ajaxFalse("邮箱已存在");
                return ajaxResult;
            }
            int count = userService.editBySysUser(admin);
            if (count > 0) {
                ajaxResult.ajaxTrue("修改成功");
            } else {
                ajaxResult.ajaxFalse("修改失败");
            }
        } else {
            //添加管理员
            if(byName != null){
                //与原用户名不一样，但存在数据库中，表示后来改的用户名已存在
                ajaxResult.ajaxFalse("用户名已存在");
                return ajaxResult;
            }
            if(byEmail != null){
                //与原邮箱不一样，但存在数据库中，表示后来改的邮箱已存在
                ajaxResult.ajaxFalse("邮箱已存在");
                return ajaxResult;
            }
            admin.setId(UUID.getTsid256());
            admin.setCreateTime(LocalDateTime.now());
            admin.setPassword(passwordEncoder.encode("12345678")); // 设置默认密码
            int count = userService.insertSysUser(admin);
            if(count > 0){
                ajaxResult.ajaxTrue("添加成功");
            }else{
                ajaxResult.ajaxFalse("添加失败");
            }
        }
        return ajaxResult;
    }

    /**
     * 删除管理员
     * @param data
     * @return
     */
    @PostMapping("/delAdmin")
    @ResponseBody
    public AjaxResult delAdmin(Data data){
        int count = userService.delBySysUserIds(data.getIds());
        if(count >= data.getIds().size()){
            ajaxResult.ajaxTrue("删除成功");
        }else{
            ajaxResult.ajaxFalse("删除失败");
        }
        return ajaxResult;
    }
}
