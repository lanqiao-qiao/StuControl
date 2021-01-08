package lan.qiao.controller;

import lan.qiao.domain.Stu;
import lan.qiao.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.sound.midi.MidiEvent;

@Controller
@RequestMapping(value = "/stu")
public class StuController
{
    @Autowired
    private StuService stuService;

    @RequestMapping(value = "/stulogin")
    //@ResponseBody
    public String StuLogIn()
    {
        System.out.println("jinru");
        return "stu/stulogin";
    }



    @RequestMapping(value = "/stulogincheck")
    public ModelAndView StuLoginCheck(Stu stu, HttpSession httpSession)
    {
        ModelAndView modelAndView=new ModelAndView();

        Stu OneByStu=stuService.findOneByStu(stu);
        if(OneByStu!=null)
        {
            System.out.println("已找到");
            httpSession.setAttribute("STU_SESSION",OneByStu);
            modelAndView.setViewName("stu/stuinf");
        }
        else
        {
            modelAndView.setViewName("stu/stuloginagain");
        }


        return modelAndView;
    }

    @RequestMapping(value = "/stuupdateinf")
    public ModelAndView StuUpdateInf(Stu stu,HttpSession httpSession)
    {
        System.out.println(stu.toString());
        ModelAndView modelAndView=new ModelAndView();
        int a=stuService.update(stu);
        httpSession.setAttribute("STU_SESSION",stu);
        modelAndView.setViewName("stu/stuinf");
        return modelAndView;
    }
}
