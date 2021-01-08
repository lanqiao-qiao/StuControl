package lan.qiao.domain;

import java.io.Serializable;

public class Stu implements Serializable
{
    private Integer id;
    private String username;
    private String password;
    private String uid;
    private String sex;
    private Integer age;
    private String college;
    private String profession;
    private String stuclass;
    private Integer isinf;
    private Integer istrue;
    private String enterprise;
    private Integer salary;

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getUid()
    {
        return uid;
    }

    public void setUid(String uid)
    {
        this.uid = uid;
    }

    public String getSex()
    {
        return sex;
    }

    public void setSex(String sex)
    {
        this.sex = sex;
    }

    public Integer getAge()
    {
        return age;
    }

    public void setAge(Integer age)
    {
        this.age = age;
    }

    public String getCollege()
    {
        return college;
    }

    public void setCollege(String college)
    {
        this.college = college;
    }

    public String getProfession()
    {
        return profession;
    }

    public void setProfession(String profession)
    {
        this.profession = profession;
    }

    public String getStuclass()
    {
        return stuclass;
    }

    public void setStuclass(String stuclass)
    {
        this.stuclass = stuclass;
    }

    public Integer getIsinf()
    {
        return isinf;
    }

    public void setIsinf(Integer isinf)
    {
        this.isinf = isinf;
    }

    public Integer getIstrue()
    {
        return istrue;
    }

    public void setIstrue(Integer istrue)
    {
        this.istrue = istrue;
    }

    public String getEnterprise()
    {
        return enterprise;
    }

    public void setEnterprise(String enterprise)
    {
        this.enterprise = enterprise;
    }

    public Integer getSalary()
    {
        return salary;
    }

    public void setSalary(Integer salary)
    {
        this.salary = salary;
    }

    @Override
    public String toString()
    {
        return "Stu{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", uid='" + uid + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", college='" + college + '\'' +
                ", profession='" + profession + '\'' +
                ", stuclass='" + stuclass + '\'' +
                ", isinf=" + isinf +
                ", istrue=" + istrue +
                ", enterprise='" + enterprise + '\'' +
                ", salary=" + salary +
                '}';
    }
}


