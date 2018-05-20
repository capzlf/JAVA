# JAVA
1、首先定义一个sql标签，一定要定义唯一id<sql id="Base_Column_List" >name,age</sql>
2、然后通过id引用
<select id="selectAll">
select 
<include refid="Base_Column_List" />
    from student
</select>
这个<include refid="Base_Column_List" />会自动把上面的代码贴过来
