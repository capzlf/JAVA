<sql id="someSQL">
        id,name
</sql>
<select id="selectSome" >
        select
       <include refid="someSQL"/>
        from t
 </select> 
