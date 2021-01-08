package lan.qiao.dao;

import lan.qiao.domain.Gdmin;
import lan.qiao.domain.Stu;

import java.util.List;

public interface GdminMapper
{
    List<Gdmin> findAll();
    Gdmin findOneByGdmin(Gdmin gdmin);
    Gdmin findOneByUid(String uid);
    Integer delete(String uid);
    Integer update(Gdmin gdmin);
}
