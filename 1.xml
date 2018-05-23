
mybatis xml 文件中对于重复出现的sql 片段可以使用标签提取出来,在使用的地方使用标签引用即可具体用法如下:

<sql id="someSQL">
        id,name
</sql>
<select id="selectSome" >
        select
       <include refid="someSQL"/>
        from t
 </select> 
