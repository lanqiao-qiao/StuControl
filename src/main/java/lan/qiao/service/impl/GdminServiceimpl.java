package lan.qiao.service.impl;

import lan.qiao.dao.GdminMapper;
import lan.qiao.domain.Gdmin;
import lan.qiao.service.GdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "gdminService")
public class GdminServiceimpl implements GdminService
{
    @Autowired
    GdminMapper gdminMapper;

    @Override
    public List<Gdmin> findAll()
    {
        return gdminMapper.findAll();
    }

    @Override
    public Gdmin findOneByGdmin(Gdmin gdmin)
    {
        return gdminMapper.findOneByGdmin(gdmin);
    }

    @Override
    public Gdmin findOneByUid(String uid)
    {
        return gdminMapper.findOneByUid(uid);
    }

    @Override
    public Integer delete(String uid)
    {
        return  gdminMapper.delete(uid);
    }

    @Override
    public Integer update(Gdmin gdmin)
    {
        return gdminMapper.update(gdmin);
    }
}
