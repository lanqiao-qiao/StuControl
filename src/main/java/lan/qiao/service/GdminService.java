package lan.qiao.service;

import lan.qiao.domain.Gdmin;

import java.util.List;

public interface GdminService
{
    List<Gdmin> findAll();
    Gdmin findOneByGdmin(Gdmin gdmin);
    Gdmin findOneByUid(String uid);
    Integer delete(String uid);
    Integer update(Gdmin gdmin);
}
