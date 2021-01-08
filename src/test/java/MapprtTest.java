import lan.qiao.dao.GdminMapper;
import lan.qiao.dao.StuMapper;
import lan.qiao.domain.Gdmin;
import lan.qiao.domain.Stu;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class MapprtTest
{
    private InputStream resourceAsStream;
    private SqlSessionFactory sqlSessionFactory;
    private SqlSession sqlSession;
    private lan.qiao.dao.StuMapper stuMapper;
    private GdminMapper gdminMapper;


    @Before
    public void init() throws IOException//初始化方法
    {
        System.out.println("测试方法正在运行");
        //1.加载mybatis主配置文件
        resourceAsStream= Resources.getResourceAsStream("mybatis.xml");
        //2.创建Sqlsessionfactory对象
        sqlSessionFactory=new SqlSessionFactoryBuilder().build(resourceAsStream);
        //3.创建sqlSession对象 相当于connectiond对象
        sqlSession=sqlSessionFactory.openSession(true);//事物自动提交
        //4.获得对应的映射(mapper)
        stuMapper = sqlSession.getMapper(StuMapper.class);
        gdminMapper = sqlSession.getMapper(GdminMapper.class);
        System.out.println("测试方法hai在运行");
    }
    @After
    public void destory() throws IOException
    {
        System.out.println("测试方法haihai在运行");
        //6.关闭资源
        //sqlSession.close();
        resourceAsStream.close();
    }

    @Test
    public void TestFindAll()
    {
        List<Stu> list=stuMapper.findAll();
        for(Stu stu:list)
        {
            System.out.println(stu);
        }
    }

    @Test
    public void TestFindOne()
    {
        Stu stu;
        stu=stuMapper.findOne(1);
        System.out.println(stu);

    }

    @Test
    public void TestFindOneByUid()
    {
        Stu stu;
        stu=stuMapper.findOneByUid("5418");
        System.out.println(stu);

    }

    @Test
    public void TestFindOneByStu()
    {
        Stu stu=new Stu();
        stu.setUid("5418");
        stu.setPassword("1");
        Stu stu2=stuMapper.findOneByStu(stu);
        System.out.println(stu2);

    }

    @Test
    public void TestFindAllGdmin()
    {
        List<Gdmin> list=gdminMapper.findAll();
        for(Gdmin g:list)
        {
            System.out.println(g);
        }
    }

    @Test
    public void TestAddStu()
    {
        Stu stu=new Stu();
        stu.setUid("5421");
        stu.setUsername("李哥4");
        stu.setPassword("2");
        stu.setSex("女");
        stu.setAge(27);
        stu.setCollege("计算机学院");
        stu.setProfession("计科");
        stu.setStuclass("一班");
        stu.setEnterprise("Li");
        stu.setSalary(55555);
        stu.setIsinf(1);
        stu.setIstrue(1);

        stuMapper.insert(stu);


       // insert into stu(username, password,uid,sex,age,college,profession,stuclass,enterprise,salary,isinf,istrue) value
       //     ('李哥3','2','5420','男','26','zzuli','computer','games','MiHaYo','300000',0,0);
    }
}
