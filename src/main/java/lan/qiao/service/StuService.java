package lan.qiao.service;

import lan.qiao.domain.Stu;

import java.util.List;

public interface StuService
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
