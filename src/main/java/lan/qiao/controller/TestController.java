package lan.qiao.controller;


import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController
{
    @RequestMapping(value = "/22")
    public String To22()
    {
        return "11";
    }
}
