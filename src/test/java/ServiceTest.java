import lan.qiao.domain.Gdmin;
import lan.qiao.domain.Stu;
import lan.qiao.service.GdminService;
import lan.qiao.service.StuService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class ServiceTest
{
    @Autowired
    StuService stuService;
    GdminService gdminService;

    @Test
    public void userServiceTest01()
    {
        //1.加载配置文件
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //2.从spring的IOC容器获取已经注入的service
        stuService = classPathXmlApplicationContext.getBean("stuService", StuService.class);
        //3.调用service提供的方法
        List<Stu> stus = stuService.findAll();
        for(Stu stu:stus)
        {
            System.out.println(stu);
        }
    }

    @Test
    public void userServiceTest02()
    {
        //1.加载配置文件
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //2.从spring的IOC容器获取已经注入的service
        stuService = classPathXmlApplicationContext.getBean("stuService", StuService.class);
        //3.调用service提供的方法
        Stu stu=stuService.findOneByUid("5418");
        System.out.println(stu);
    }

    @Test
    public void userServiceTest03()
    {
        //1.加载配置文件
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //2.从spring的IOC容器获取已经注入的service
        gdminService = classPathXmlApplicationContext.getBean("gdminService", GdminService.class);
        //3.调用service提供的方法
        List<Gdmin> list=gdminService.findAll();
        System.out.println(list);
    }

    @Test
    public void userServiceTest04()
    {
        //1.加载配置文件
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //2.从spring的IOC容器获取已经注入的service
        gdminService = classPathXmlApplicationContext.getBean("gdminService", GdminService.class);
        //3.调用service提供的方法
        Gdmin gdmin=gdminService.findOneByUid("001");
        System.out.println(gdmin);
    }

    @Test
    public void userServiceTest05()
    {
        //1.加载配置文件
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //2.从spring的IOC容器获取已经注入的service
        gdminService = classPathXmlApplicationContext.getBean("gdminService", GdminService.class);
        //3.调用service提供的方法
        //Gdmin gdmin=gdminService.findOneByUid("001");
        //System.out.println(gdmin);
        Integer i=gdminService.delete("006");
        System.out.println(i);
    }

    @Test
    public void userServiceTest06()
    {
        //1.加载配置文件
        ClassPathXmlApplicationContext classPathXmlApplicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //2.从spring的IOC容器获取已经注入的service
        gdminService = classPathXmlApplicationContext.getBean("gdminService", GdminService.class);

        Gdmin g=new Gdmin();
        g.setId(8);
        g.setUsername("g44");
        g.setPassword("1");
        g.setUid("004");
        g.setLevel(2);
        Integer i=gdminService.update(g);
        System.out.println(i);

        //insert into gdmin(username, password, uid, level) value ('g4','1','004',2);
    }
}
