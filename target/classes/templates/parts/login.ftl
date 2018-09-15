<#macro login path>
<form action="${path}" method="post">
    <div><label>Имя пользователя: <input type="text" name="username"/></label></div>
    <div><label>Пароль : <input type="password" name="password"/></label></div>
    <div><input type="submit" value="Войти"/></div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="submit" value="Выйти"/>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
</form>
</#macro>
