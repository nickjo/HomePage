package org.art.inside.domain;

import org.apache.ibatis.type.Alias;

@Alias("board")
public class BoardVO {
	String name;
	int age;
	String sex;
	String local;
	int deptno;
	
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	
	@Override
	public String toString(){
		return "Board=[name:" + name + ", age:" + age + ", sex:" + sex + ", local:" + local + ", deptno:" + deptno + "]";
	}
}
