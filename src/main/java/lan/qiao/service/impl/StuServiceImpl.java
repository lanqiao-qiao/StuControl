package lan.qiao.service.impl;

import lan.qiao.dao.StuMapper;
import lan.qiao.domain.Stu;
import lan.qiao.service.StuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "stuService")
public class StuServiceImpl implements StuService
{
    @Autowired
    StuMapper stuMapper;

    @Override
    public List<Stu> findAll()
    {
        return stuMapper.findAll();
    }

    @Override
    public Stu findOne(Integer id)
    {
        return stuMapper.findOne(id);
    }

    @Override
    public Stu findOneByUid(String uid)
    {
        return stuMapper.findOneByUid(uid);
    }

    @Override
    public Stu findOneByStu(Stu stu)
    {
        return stuMapper.findOneByStu(stu);
    }

    @Override
    public Integer update(Stu stu)
    {
        return stuMapper.update(stu);
    }

    @Override
    public Integer delete(String uid)
    {
        return stuMapper.delete(uid);
    }

    @Override
    public Integer insert(Stu stu)
    {
        stu.setIsinf(0);
        stu.setIstrue(0);
        return stuMapper.insert(stu);
    }

    @Override
    public Integer truestu(String uid)
    {
        return stuMapper.truestu(uid);
    }

    @Override
    public List<Stu> findallstu()
    {
        return stuMapper.findallstu();
    }
}
