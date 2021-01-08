package lan.qiao.dao;

import lan.qiao.domain.Gdmin;
import lan.qiao.domain.Stu;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StuMapper
{
    Integer insert(Stu stu);
    List<Stu> findAll();
    Stu findOne(Integer id);
    Stu findOneByUid(String uid);
    Stu findOneByStu(Stu stu);
    Integer update(Stu stu);
    Integer delete(String uid);
    Integer truestu(String uid);
    List<Stu> findallstu();

}
