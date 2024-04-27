[group=5]
<div class="header-user js-header-login"><span>Войти</span></div>
<div class="user-login">
    <form class="user-login_content" method="post">
        <div class="user-login_close"><i class="fa-regular fa-xmark"></i></div>
        <h2>Вход в аккаунт</h2>
        <div class="dle-form_float">
            <input type="text" name="login_name" required="" />
            <label for="login_name">Логин</label>
        </div>
        <div class="dle-form_float">
            <input type="password" name="login_password" id="login_password" required="" />
            <label for="login_password">Пароль</label>
        </div>
        <a class="user-login_lost" href="{lostpassword-link}">Забыли пароль?</a>
        <div class="user-login_btn">
            <button onclick="submit();" type="submit">Войти</button>
            <a href="{registration-link}">Регистрация</a>
        </div>
        <input name="login" type="hidden" id="login" value="submit">
        <div class="user-login_soc e-flex">
            <span>Или войдите через соц.сети</span>
            [google]<a href="{google_url}"><img src="{THEME}/dleimages/soc/google.svg"></a>[/google]
            [yandex]<a href="{yandex_url}"><img src="{THEME}/dleimages/soc/yandex.svg"></a>[/yandex]
            [vk]<a href="{vk_url}"><img src="{THEME}/dleimages/soc/vk.svg"></a>[/vk]
        </div>
    </form> 
</div>
[/group]

[not-group=5]
<div class="header-user js-header-user">
    <img src="{foto}" alt="{login}" />
    <div class="user_menu">
        <div class="user_menu-avatar e-flex">
            <img src="{foto}" alt="{login}" />
            <div class="user_menu-name">{login}<span>{group}</span></div>
        </div>
        <ul class="user-menu_link">
            [admin-link]
            <li><a href="{admin-link}" target="_blank"><i class="fa-regular fa-screwdriver-wrench"></i>Админпанель</a></li>
            [/admin-link]
            <li><a href="{addnews-link}"><i class="fa-regular fa-newspaper"></i>Добавить статью</a></li>
            <li><a href="{profile-link}"><i class="fa-regular fa-user-large"></i> Мой аккаунт</a></li>
            <li><a href="{pm-link}"><i class="fa-regular fa-bell"></i> Сообщения</a></li>
            <li><a href="{favorites-link}"><i class="fa-regular fa-heart"></i> Закладки</a></li>
            <li><a href="{logout-link}"><i class="fa-regular fa-arrow-right-from-bracket"></i> Выход</a></li>
        </ul>
    </div>
</div>
[/not-group]