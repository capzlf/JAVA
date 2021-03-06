mybatis xml 文件中对于重复出现的sql 片段可以使用标签提取出来,在使用的地方使用标签引用即可具体用法如下:

<sql id="someSQL">
        id,name
</sql>
<select id="selectSome" >
        select
       <include refid="someSQL"/>
        from t
 </select> 

在中可以使用${}传入参数,如下:

<sql id="someSQL">
        ${tableName}.id,${tableName}.name
</sql>
<select id="selectSome" >
        select
       <include refid="someSQL"><property name="tableName" value="t"/></include>
        from t
 </select> 

对于多个xml文件需要同时引用一段相同的 可以在某个xml 中定义这个 sql 代码片段,在需要引用的地方使用全称引用即可,例子如下:

ShareMapper.xml
<mapper namespace="com.company.ShareMapper">       
    <sql id="someSQL">
       id,name
    </sql>          
</mapper>

CustomMapper.xml
<mapper namespace="com.company.CustomMapper">       
    <select id="selectSome" >
        select
       <include refid="com.company.ShareMapper.someSQL"/>
        from t
    </select>          
</mapper>

------

mybatis中refid是什么意思
1、首先定义一个sql标签，一定要定义唯一id<sql id="Base_Column_List" >name,age</sql>
2、然后通过id引用
<select id="selectAll">
select 
<include refid="Base_Column_List" />
    from student
</select>
这个<include refid="Base_Column_List" />会自动把上面的代码贴过来.
