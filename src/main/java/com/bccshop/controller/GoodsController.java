package com.bccshop.controller;

import com.bccshop.po.Goods;
import com.bccshop.po.GoodsCategory;
import com.bccshop.service.GoodsService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class GoodsController {
    @RequestMapping(value = "/backstage", method = RequestMethod.GET)
    public String backstage() {
        return "backstage";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "add";
    }

    @RequestMapping(value = "/goodsUpdate", method = RequestMethod.GET)
    public String goodsUpdate() {
        return "update";
    }

    /*
     * @RequestMapping(value = "/display",method = RequestMethod.GET) public String
     * goodsFind(@Param("id")int id,Model model) { System.out.println(id); Goods
     * goods = goodsService.selectById(id); model.addAttribute("goods",goods);
     * return "list";
     *
     * }
     */

    @RequestMapping(value = "/display")
    public String goodsFind(@Param("id") int id, Model model) {
        //System.out.println(id+"555");
        Goods goods = goodsService.selectById(id);
        model.addAttribute("goods", goods);


        return "display";

    }

    @Autowired
    private GoodsService goodsService;


    @RequestMapping(value = "/goods", method = RequestMethod.GET)
    public ModelAndView toMain(@Param("name") String name, Model model) {

        List<Goods> goodslist = goodsService.findByName(name);

        return new ModelAndView("goods", "goodslist", goodslist);
    }

    //通过ID寻找
    @ResponseBody
    @RequestMapping(value = "/find", method = RequestMethod.GET)
    public ModelAndView tofind(@Param("goodsId") int goodsId, Model model) {
        Goods goods = goodsService.selectById(goodsId);
        //model.addAttribute("goods",goods);
        return new ModelAndView("update", "goods", goods);
    }

    //更新数据
    @RequestMapping(value = "/update")
    @ResponseBody
    public String update(HttpServletRequest request) {
        MultipartHttpServletRequest multipartRequest = null;

        if (request instanceof MultipartHttpServletRequest) {
            multipartRequest = (MultipartHttpServletRequest) (request);
        }

        // 获得文件：
        MultipartFile file = (MultipartFile) multipartRequest.getFile("goodsPhoto");
        System.out.println("这是图片"+file);
        //拿值
        int goodsId = Integer.valueOf(multipartRequest.getParameter("goodsId"));
        String goodsName = multipartRequest.getParameter("goodsName");
        Float originalPrice = Float.valueOf(multipartRequest.getParameter("originalPrice"));
        Float goodsPrice = Float.valueOf(multipartRequest.getParameter("goodsPrice"));
        String goodsDescribe = multipartRequest.getParameter("goodsDescribe");
        String goodsCategory1 = multipartRequest.getParameter("cat1");
        String goodsCategory2 = multipartRequest.getParameter("cat2");
        //System.out.println(goodsCategory1+"\t"+goodsCategory2);
        //创建Goods对象
        Goods goods = new Goods();

        goods.setGoodsId(goodsId);
        goods.setGoodsName(goodsName);
        goods.setOriginalPrice(originalPrice);
        goods.setGoodsPrice(goodsPrice);
        goods.setGoodsDescribe(goodsDescribe);
            if (file != null && file.getOriginalFilename() != null && file.getOriginalFilename().length() > 0) {
                //图片服务器路径
                String file_path = request.getServletContext().getRealPath("/resources/img/");
                //原始文件名
                String originalFileName = file.getOriginalFilename();
                //新文件名，添加原始文件名后缀
                String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
                //创建新文件，路径为：图片服务器路径+新文件名
                File newFile = new File(file_path + newFileName);
                System.out.println("文件地址" + file_path + newFileName);
                //将内存中的数据写入磁盘

                try {
                    file.transferTo(newFile);
                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }


                goods.setGoodsPhoto(newFileName);
                //插入商品
                int rows = goodsService.update(goods);
                GoodsCategory cat1 = new GoodsCategory();
                cat1.setCategoryId(goodsId);
                cat1.setCategoryName(goodsCategory1);

                GoodsCategory cat2 = new GoodsCategory();
                cat2.setCategoryId(goodsId);
                cat2.setCategoryName(goodsCategory2);
                if (rows > 0) {
                    goodsService.updateCategory(cat1);
                    goodsService.updateCategory(cat2);
                    return "OK";
                }
                return "NO";
            }
         Goods g = goodsService.selectById(goods.getGoodsId());
            System.out.println(g);
            goods.setGoodsPhoto(g.getGoodsPhoto());

            int row = goodsService.update(goods);

            GoodsCategory cat1 = new GoodsCategory();
            cat1.setCategoryId(goodsId);
            cat1.setCategoryName(goodsCategory1);

            GoodsCategory cat2 = new GoodsCategory();
            cat2.setCategoryId(goodsId);
            cat2.setCategoryName(goodsCategory2);
            if (row > 0) {
                goodsService.updateCategory(cat1);
                goodsService.updateCategory(cat2);
                return "OK";
            }
            return "NO";
    }


    //显示
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public ModelAndView tolist() {

        List<Goods> goodslist = goodsService.list();

        return new ModelAndView("list", "goodslist", goodslist);
    }

    //删除商品
    @RequestMapping(value = "list/delete", method = RequestMethod.GET)
    public String delete(@Param("id") int id, Model model) {
        System.out.println(id);
        int rows = goodsService.deleteGoodsCategory(id);
        if (rows > 0) {
            int row = goodsService.deleteGoods(id);
            model.addAttribute("success", "success");
            return "list";
        }
        model.addAttribute("success", "error");
        return "list";
    }


    @RequestMapping(value = "list/display", method = RequestMethod.GET)
    public String find(@Param("id") int id, Model model) {
        System.out.println(id);

        return "display";
    }


    //插入商品
    @RequestMapping(value = "/goodsInsert")
    @ResponseBody
    public String goodsInsert(HttpServletRequest request) {

        MultipartHttpServletRequest multipartRequest = null;

        if (request instanceof MultipartHttpServletRequest) {
            multipartRequest = (MultipartHttpServletRequest) (request);
        }
        // 获得文件：
        MultipartFile file = (MultipartFile) multipartRequest.getFile("goodsPhoto");
        //System.out.println("这是图片"+file);

        //拿值
        String goodsName = multipartRequest.getParameter("goodsName");
        Float originalPrice = Float.valueOf(multipartRequest.getParameter("originalPrice"));
        Float goodsPrice = Float.valueOf(multipartRequest.getParameter("goodsPrice"));
        String goodsDescribe = multipartRequest.getParameter("goodsDescribe");
        String goodsCategory1 = multipartRequest.getParameter("cat1");
        String goodsCategory2 = multipartRequest.getParameter("cat2");
        //System.out.println(goodsCategory1+"\t"+goodsCategory2);

        //创建Goods对象
        Goods goods = new Goods();

        goods.setGoodsName(goodsName);
        goods.setOriginalPrice(originalPrice);
        goods.setGoodsPrice(goodsPrice);
        goods.setGoodsDescribe(goodsDescribe);


        if (file != null && file.getOriginalFilename() != null && file.getOriginalFilename().length() > 0) {
            //图片服务器路径
            String file_path = request.getServletContext().getRealPath("/resources/img/");
            //原始文件名
            String originalFileName = file.getOriginalFilename();
            //新文件名，添加原始文件名后缀
            String newFileName = UUID.randomUUID() + originalFileName.substring(originalFileName.lastIndexOf("."));
            //创建新文件，路径为：图片服务器路径+新文件名
            File newFile = new File(file_path + newFileName);
            System.out.println("文件地址" + file_path + newFileName);
            //将内存中的数据写入磁盘

            try {
                file.transferTo(newFile);
            } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }


            goods.setGoodsPhoto(newFileName);
            //插入商品
            int rows = goodsService.insert(goods);

            Goods g1 = new Goods();
            g1.setGoodsName(goodsName);
            g1.setOriginalPrice(originalPrice);
            //得到商品ID
            Goods g = goodsService.findId(g1);
            int goodsId = g.getGoodsId();

            GoodsCategory cat1 = new GoodsCategory();
            cat1.setCategoryId(goodsId);
            cat1.setCategoryName(goodsCategory1);

            GoodsCategory cat2 = new GoodsCategory();
            cat2.setCategoryId(goodsId);
            cat2.setCategoryName(goodsCategory2);

            //System.out.println(g.getGoodsId()+"\t"+goodsCategory1+goodsCategory2);
            if (g != null) {
                //插入类别表
                goodsService.insertCategory(cat1);
                goodsService.insertCategory(cat2);
                if (rows > 0) {
                    return "OK";
                } else {
                    return "NO";
                }

            }

        }
        return "NO";
    }
}
