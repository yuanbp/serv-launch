package org.soft.launch.modules.sys.controller;


import org.soft.launch.kernel.config.ReloadSecuritySource;
import org.soft.launch.kernel.tools.AjaxResult;
import org.soft.launch.kernel.tools.Const;
import org.soft.launch.kernel.tools.Data;
import org.soft.launch.kernel.tools.PageBean;
import org.soft.launch.kernel.tools.UUID;
import org.soft.launch.modules.sys.entity.SysRole;
import org.soft.launch.modules.sys.service.ISysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author metinform
 * @since 2020-09-17
 */
@Controller
@RequestMapping("/manager")
public class SysRoleController {

    @Autowired
    private AjaxResult ajaxResult;
    @Autowired
    private ISysRoleService roleService;

    @Autowired
    private ReloadSecuritySource reloadSecuritySource;

    @GetMapping("/role")
    public String role() {
        return "manager/role/roleList";
    }

    /**
     * 异步加载角色列表
     *
     * @param pageno
     * @param pagesize
     * @param rid
     * @return
     */
    @RequestMapping("/roleList")
    @ResponseBody
    public Object roleList(@RequestParam(value = "page", defaultValue = "1") Integer pageno,
                           @RequestParam(value = "limit", defaultValue = "5") Integer pagesize,
                           String rid) {
        Map<String, Object> paramMap = new HashMap();
        paramMap.put("pageno", pageno);
        paramMap.put("pagesize", pagesize);

        //判断是否为空
        if (!StringUtils.isEmpty(rid) && !"0".equals(rid)) {
            paramMap.put("rid", rid);
        }

        PageBean<SysRole> pageBean = roleService.queryPage(paramMap);

        Map<String, Object> rest = new HashMap();
        rest.put("code", 0);
        rest.put("msg", "");
        rest.put("count", pageBean.getTotalsize());
        rest.put("data", pageBean.getDatas());
        return rest;
    }


    /**
     * 删除角色
     *
     * @param data
     * @return
     */
    @PostMapping("/delRole")
    @ResponseBody
    public AjaxResult delRole(Data data) {
        int count = roleService.delByRoleIds(data.getIds());
        if (count >= data.getIds().size()) {
            ajaxResult.ajaxTrue("删除成功");
            reloadSecuritySource.getReloadSecuritySource();
        } else {
            ajaxResult.ajaxFalse("存在管理员拥有此角色,无法删除");
        }
        return ajaxResult;
    }

    /**
     * 跳转添加角色页面
     *
     * @param type
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/addRole")
    public String addRole(String type, Long id, Model model) {
        if (type != null && "edit".equals(type)) {
            SysRole role = roleService.selectById(id);
            model.addAttribute(Const.ROLE, role);
        }
        return "manager/role/addRole";
    }


    /**
     * 添加角色
     *
     * @param role
     * @return
     */
    @PostMapping("/addRole")
    @ResponseBody
    public AjaxResult submitAddRole(SysRole role) {
        SysRole byName = roleService.selectByName(role.getName());
        if(role.getId() !=null){
            //修改角色
            if(byName != null && !byName.getId().equals(role.getId())){
                //与修改角色一样，但存在数据库中，表示后来改的角色已存在
                ajaxResult.ajaxFalse("角色已存在");
                return ajaxResult;
            }
            int count = roleService.editByRole(role);
            if(count > 0){
                ajaxResult.ajaxTrue("修改成功");
            }else{
                ajaxResult.ajaxFalse("修改失败");
            }
        }else{
            //添加角色
            if(byName != null){
                //与原角色不一样，但存在数据库中，表示后来改的角色已存在
                ajaxResult.ajaxFalse("角色已存在");
                return ajaxResult;
            }
            role.setId(UUID.getTsid256());
            int count = roleService.insertRole(role);
            if(count > 0){
                ajaxResult.ajaxTrue("添加成功");
            }else{
                ajaxResult.ajaxFalse("添加失败");
            }
        }
        reloadSecuritySource.getReloadSecuritySource();
        return ajaxResult;
    }

    @GetMapping("/allotPer")
    public String allotPer(Long id, Model model) {
        model.addAttribute("id", id);
        return "/manager/role/allotPer";
    }
}
