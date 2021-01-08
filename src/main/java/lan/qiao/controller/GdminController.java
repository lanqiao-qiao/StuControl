package lan.qiao.controller;


import lan.qiao.domain.Gdmin;
import lan.qiao.domain.Stu;
import lan.qiao.service.GdminService;
import lan.qiao.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/gdmin")
public class GdminController
{
    @Autowired
    private GdminService gdminService;
    @Autowired
    private StuService stuService;

    @RequestMapping(value = "/gdminlogin")
    public String GdminLogin()
    {
        return "gdmin/gdminlogin";
    }

    @RequestMapping(value = "gdminlogincheck")
    public ModelAndView GdminLoginCheck(Gdmin gdmin, HttpSession httpSession)
    {
        ModelAndView modelAndView=new ModelAndView();
        Gdmin g=gdminService.findOneByGdmin(gdmin);
        if (g!=null)
        {
            httpSession.setAttribute("GDMIN_SESSION",g);
            if(g.getLevel()==0)
            {
                modelAndView.setViewName("gdmin/g0dmin");
                List<Gdmin> list=gdminService.findAll();
                httpSession.setAttribute("ALL_GDMIN",list);
            }
            else if(g.getLevel()==1)
            {
                modelAndView.setViewName("gdmin/g1dmin");
                //List<Gdmin> list=gdminService.findAll();
                List<Stu> list=stuService.findAll();
                httpSession.setAttribute("STU_GDMIN",list);
            }
            else
            {
                modelAndView.setViewName("gdmin/g2dmin");
                //List<Gdmin> list=gdminService.findAll();
                List<Stu> list=stuService.findallstu();
                httpSession.setAttribute("TRUESTU_GDMIN",list);
            }

        }
        else
        {
            modelAndView.setViewName("gdmin/gdminloginagain");
        }

        return modelAndView;
    }

    @RequestMapping(value = "/deletegdmin")
    public ModelAndView DeleteGdmin(@RequestParam String uid,HttpSession httpSession)
    {
        Integer i=gdminService.delete(uid);
        List<Gdmin> list=gdminService.findAll();
        httpSession.setAttribute("ALL_GDMIN",list);
        ModelAndView modelAndView=new ModelAndView("gdmin/g0dmin");
        return modelAndView;
    }

    @RequestMapping(value = "/deletestu")
    public ModelAndView DeleteStu(@RequestParam String uid,HttpSession httpSession)
    {
        Integer i=stuService.delete(uid);
        List<Stu> list=stuService.findAll();
        httpSession.setAttribute("STU_GDMIN",list);
        ModelAndView modelAndView=new ModelAndView("gdmin/g1dmin");
        return modelAndView;
    }

    @RequestMapping(value="/changegdmin")
    public ModelAndView ChangeAdmin(@RequestParam String uid)
    {
        ModelAndView modelAndView=new ModelAndView("gdmin/gdminupdate");
        Gdmin gdmin=gdminService.findOneByUid(uid);
        modelAndView.addObject("changegdmin",gdmin);
        return modelAndView;
    }

    @RequestMapping(value="/changestu")
    public ModelAndView ChangeStu(@RequestParam String uid)
    {
        ModelAndView modelAndViewnew =new ModelAndView("gdmin/stuupdate");
        Stu stu=stuService.findOneByUid(uid);
        modelAndViewnew.addObject("changestu",stu);
        return modelAndViewnew;
    }

    @RequestMapping(value = "/update")
    public ModelAndView UpdateGdmin(Gdmin gdmin,HttpSession httpSession)
    {
        System.out.println(gdmin.toString());
        Integer i=gdminService.update(gdmin);
        List<Gdmin> list=gdminService.findAll();
        httpSession.setAttribute("ALL_GDMIN",list);
        ModelAndView modelAndView=new ModelAndView("gdmin/g0dmin");
        return modelAndView;
    }

    @RequestMapping(value = "/updatestu")
    public ModelAndView UpdateStu(Stu stu,HttpSession httpSession)
    {
        System.out.println(stu.toString());
        Integer i =stuService.update(stu);
        List<Stu> list=stuService.findAll();
        httpSession.setAttribute("STU_GDMIN",list);
        ModelAndView modelAndView=new ModelAndView("gdmin/g1dmin");
        return modelAndView;
    }

    @RequestMapping(value="/addstu")
    public String AddStu()
    {
        return "gdmin/addstuinf";
    }

    @RequestMapping(value = "/addstuinf")
    public ModelAndView AddStuInf(Stu stu,HttpSession httpSession)
    {
        System.out.println(stu.toString());
        Integer i=stuService.insert(stu);
        List<Stu> list=stuService.findAll();
        httpSession.setAttribute("STU_GDMIN",list);
        ModelAndView modelAndView=new ModelAndView("gdmin/g1dmin");
        return modelAndView;

    }

    @RequestMapping(value = "/stutrue")
    public ModelAndView TrueStu(@RequestParam String uid,HttpSession httpSession)
    {
        Integer i=stuService.truestu(uid);
        List<Stu> list=stuService.findAll();
        httpSession.setAttribute("STU_GDMIN",list);
        ModelAndView modelAndView=new ModelAndView("gdmin/g1dmin");
        return modelAndView;
    }
}
