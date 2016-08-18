package com.wangzhixuan.controller.bus;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wangzhixuan.commons.base.BaseController;
import com.wangzhixuan.commons.utils.PageInfo;
import com.wangzhixuan.model.bus.ComputerInfo;
import com.wangzhixuan.service.bus.AbstractService;

/***
 * 十三所二三〇厂涉密内网计算机台账
 * @author kate
 *
 */
@Controller
@RequestMapping("/computerManage")
public class ComputerManageController extends BaseController {
	private static Logger LOGGER = LoggerFactory.getLogger(ComputerManageController.class);
    @Resource(name="computerManageImpl")
    private AbstractService computerManageImpl;

    /**
     * 用户管理页
     *
     * @return
     */
    @RequestMapping(value = "/manager", method = RequestMethod.GET)
    public String manager() {
        return "bus/computerManage";
    }

    /**
     * 用户管理列表
     *
     * @param userVo
     * @param page
     * @param rows
     * @param sort
     * @param order
     * @return
     */
    @RequestMapping(value = "/dataGrid", method = RequestMethod.POST)
    @ResponseBody
    public Object dataGrid(ComputerInfo computerInfo, Integer page, Integer rows, String sort, String order) {
        PageInfo pageInfo = new PageInfo(page, rows);
        Map<String, Object> condition = new HashMap<String, Object>();
        if (StringUtils.isNoneBlank(computerInfo.getDepname())) {
            condition.put("depname", computerInfo.getDepname());
        }
        if (StringUtils.isNoneBlank(computerInfo.getResperson())) {
            condition.put("resperson", computerInfo.getResperson());
        }
        if (StringUtils.isNoneBlank(computerInfo.getDevno())) {
            condition.put("devno", computerInfo.getDevno());
        }
        pageInfo.setCondition(condition);
        try {
			computerManageImpl.findDataGrid(pageInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账分页查询失败,失败的原因是:",e);
		}
        return pageInfo;
    }

    /**
     * 添加用户页
     *
     * @return
     */
    @RequestMapping(value = "/addPage", method = RequestMethod.GET)
    public String addPage() {
        return "bus/computerManageAdd";
    }

    /**
     * 添加用户
     *
     * @param userVo
     * @return
     */
    @SuppressWarnings("unchecked")
	@RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public Object add(ComputerInfo computerInfo) {
    	try {
			computerManageImpl.addEntity(computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据添加失败,失败的原因是:",e);
		}
        return renderSuccess("添加成功");
    }

    /**
     * 编辑用户页
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/editPage")
    public String editPage(String id, Model model) {
    	ComputerInfo computerInfo;
		try {
			computerInfo = (ComputerInfo) computerManageImpl.findById(id);
			model.addAttribute("computerInfo", computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据根据ID查询失败，失败的原因是:",e);
		}
        return "bus/computerManageEdit";
    }

    /**
     * 编辑用户
     *
     * @param userVo
     * @return
     */
    @RequestMapping("/edit")
    @ResponseBody
    public Object edit(ComputerInfo computerInfo) {
       
    	try {
			computerManageImpl.updateEntity(computerInfo);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据根据更新失败，失败的原因是:",e);
		}
        return renderSuccess("修改成功！");
    }

   
    /**
     * 删除用户
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    @ResponseBody
    public Object delete(String id) {
    	try {
			computerManageImpl.deleteById(id);
		} catch (Exception e) {
			LOGGER.error("十三所二三〇厂涉密内网计算机台账数据删除失败，失败的原因是:",e);
		}
        return renderSuccess("删除成功！");
    }
}
