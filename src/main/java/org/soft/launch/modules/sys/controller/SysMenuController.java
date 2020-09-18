package org.soft.launch.modules.sys.controller;


import org.soft.launch.kernel.tools.AjaxResult;
import org.soft.launch.kernel.tools.Const;
import org.soft.launch.kernel.tools.Data;
import org.soft.launch.kernel.tools.UUID;
import org.soft.launch.modules.sys.entity.Icon;
import org.soft.launch.modules.sys.entity.SysMenu;
import org.soft.launch.modules.sys.service.IIconService;
import org.soft.launch.modules.sys.service.ISysMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

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
public class SysMenuController {
    
    @Autowired
    private AjaxResult ajaxResult;
    @Autowired
    private ISysMenuService menuService;
    @Autowired
    private IIconService iconService;


    /**
     * 跳转登录界面
     * @return
     */
    @GetMapping("/permission")
    public String permission(){
        return "manager/permission/permissionList";
    }


    /**
     * 异步加载权限树
     * @param session
     * @return
     */
    @GetMapping("/permissionList")
    @ResponseBody
    public Object permissionList(HttpSession session, Integer id){
        List<SysMenu> menus = menuService.selectAll();
        if(id != null){
            List<SysMenu> atList = menuService.selectByRoleId(id);
            for(SysMenu info : menus){
                for(SysMenu at : atList){
                    if(info.getId().equals(at.getId())){
                        info.setChecked(true);
                    }
                }
            }
        }
        HashMap<String, Object> rest = new HashMap<>();
        rest.put("code",0);
        rest.put("msg","ok");
        rest.put("data",menus);

        return rest;
    }

    /**
     * 跳转页面
     * @param type
     * @param id
     * @param model
     * @return
     */
    @GetMapping("/addPermission")
    public String addPermission(String type, Long id, Model model, HttpSession session){
        //加载icon列表,存入session
        if(session.getAttribute(Const.ICON) == null){
            List<Icon> iconList = iconService.selectAll();
            session.setAttribute(Const.ICON,iconList);
        }
        if("edit".equals(type)){
            SysMenu menu = menuService.selectById(id);
            model.addAttribute(Const.TREEMENU,menu);
        }else if("add".equals(type)){
            model.addAttribute("pid",id); //设为父id
        }else if("addParent".equals(type)){
            return "manager/permission/addParentNode";
        }
        return "manager/permission/addPermission";
    }

    /**
     * 添加修改权限
     * @param menu
     * @return
     */
    @PostMapping("/addPermission")
    @ResponseBody
    public AjaxResult submitAddPermission(SysMenu menu){
        SysMenu byName = menuService.selectByName(menu.getName());
        SysMenu byUrl = menuService.selectByUrl(menu.getUrl());

        if(menu.getId() !=null){
            //修改
            if(byName != null && !byName.getId().equals(menu.getId())){
                ajaxResult.ajaxFalse("权限名已存在");
                return ajaxResult;
            }
            if(byUrl != null && !byUrl.getId().equals(menu.getId())){
                ajaxResult.ajaxFalse("地址已存在");
                return ajaxResult;
            }
            int count = menuService.editByPermission(menu);
            if(count > 0){
                ajaxResult.ajaxTrue("修改成功");
            }else{
                ajaxResult.ajaxFalse("修改失败");
            }
        }else{
            //添加
            if(byName != null){
                ajaxResult.ajaxFalse("权限名已存在");
                return ajaxResult;
            }
            if(byUrl != null){
                ajaxResult.ajaxFalse("地址已存在");
                return ajaxResult;
            }
            //若是添加父节点
            if(menu.getPid().equals(-1L)){
                menu.setUrl("-1");
            }
            menu.setId(UUID.getTsid256());
            int count = menuService.insertPermission(menu);
            if(count > 0){
                ajaxResult.ajaxTrue("添加成功");
            }else{
                ajaxResult.ajaxFalse("添加失败");
            }
        }
        return ajaxResult;
    }

    /**
     * 删除权限
     * @param data
     * @return
     */
    @PostMapping("/delPermission")
    @ResponseBody
    public AjaxResult delPermission(Data data){
        List<SysMenu> SysMenuList = menuService.selectByPid(data.getIds().get(0));
        if(SysMenuList.size() !=0 ){
            ajaxResult.ajaxFalse("请先删除子节点");
            return ajaxResult;
        }
        int count = menuService.delByPermissionIds(data.getIds());
        if(count >= data.getIds().size()){
            ajaxResult.ajaxTrue("删除成功");
        }else{
            ajaxResult.ajaxFalse("删除失败");
        }
        return ajaxResult;
    }

    /**
     * 给角色分配权限
     * @param data
     * @param id
     * @return
     */
    @PostMapping("/allotPer")
    @ResponseBody
    public AjaxResult allotPre(Data data,Long id){
        int count = menuService.updateRolePermission(data.getIds(),id);
        if(count >= data.getIds().size()){
            ajaxResult.ajaxTrue("分配成功");
        }
        return ajaxResult;
    }
}
