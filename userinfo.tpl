<div class="user-info">
    <div class="user-info_bg"><img id="user-info_bg" src="{THEME}/images/bg.jpg"></div>
    <div class="user-info_flex e-flex">
        <div class="user-info_profile e-flex">
            <div class="user-info_avatar">
            [online]<div class="user-info_status user-info_status-on"></div>[/online] 
            [offline]<div class="user-info_status user-info_status-off"></div>[/offline]
            <img src="{foto}" alt="">
            </div>
             <h3>{usertitle}</h3>
            <div class="user-info_group">{status} [time_limit]&nbsp;В группе до: {time_limit}[/time_limit]</div>
        </div>
        <div class="user-info_detail">
            <div class="user-info_datareg">На сайте с {registration}</div>
            <div class="user-info_info e-flex">
                <div class="user-info_info-punkt"><span>{news-num}</span>Публикаций</div>
                <div class="user-info_info-punkt"><span>{comm-num}</span>Комментариев</div>
                [fullname]<div class="user-info_info-punkt"><span>{fullname}</span>Полное имя</div>[/fullname]
                [signature]<div class="user-info_info-punkt"><span>{signature}</span>Подпись</div>[/signature]
            </div>
            <p>[not-info]Добавь краткую информация о себе в настройках[/not-info][info]{info}[/info]</p>
        </div>
        <div class="user-info_btn">
            [not-logged]{pm}[/not-logged]{email}
            [not-logged]<a href="javascript:ShowOrHide('options')">Изменить профиль</a>[/not-logged]
        </div>
    </div>
</div>

<div id="options" class="dle-form e-none">
    <h2>Редактирование профиля:</h2>
    <div class="dle-form_flex">
        <label>Ваше имя:</label>
        <input type="text" name="fullname" value="{fullname}" placeholder="Ваше Имя" />
    </div>
    <div class="dle-form_flex">
        <label>Ваш E-Mail:</label>
        <input type="text" name="email" value="{editmail}" placeholder="Ваш E-Mail: {editmail}" />
    </div>
    <div class="dle-form_flex">
        <label>Старый пароль:</label>
        <input type="password" name="altpass" placeholder="Старый пароль" />
    </div>
    <div class="dle-form_flex">
        <label>Новый пароль:</label>
        <input type="password" name="password1" placeholder="Новый пароль" />
    </div>
    <div class="dle-form_flex">
        <label>Повторите пароль:</label>
        <input type="password" name="password2" placeholder="Повторите Новый пароль" />
    </div>
    <div class="dle-form_flexno">
        <label>Блокировка по IP (Ваш IP: {ip}):</label>
        <textarea name="allowed_ip" style="height: 160px;" rows="5" class="f_textarea">{allowed-ip}</textarea>
        <span style="color: red; font-size: 12px;">
            * Внимание! Будьте бдительны при изменении данной настройки. Доступ к Вашему аккаунту будет доступен только с того IP-адреса или подсети, который Вы укажете. Вы можете указать несколько IP адресов, по одному адресу на каждую строчку. Пример: 192.48.25.71 или 129.42.*.*
        </span>
    </div>
    <div class="dle-form_flex">
        <label>Аватар:</label>
        <input type="file" name="image" size="28" />
        <input type="checkbox" name="del_foto" id="del_foto" value="yes" />Удалить аватар
    </div>
    <div class="dle-form_flex">
        <label>Сервис <a href="http://www.gravatar.com/" target="_blank">Gravatar</a>:</label>
        <input type="text" name="gravatar" value="{gravatar}" placeholder="Укажите E-Mail в этом сервисе" />
    </div>
    <div class="dle-form_flexno">
        <label>Место жительства:</label>
        <input type="text" name="land" value="{land}" placeholder="Место жительства" />
    </div>
    <div class="dle-form_flexno">
        <label>Часовой пояс:</label>
        {timezones}
    </div>
    <div class="dle-form_flexno">
        <label>О себе:</label>
        <textarea name="info" rows="5" style="height: 80px;">{editinfo}</textarea>
    </div>
    <div class="dle-form_flexno">
        <label>Подпись:</label>
        <textarea name="signature" rows="5" style="height: 80px;">{editsignature}</textarea>
    </div>
    <div class="dle-form_flexno">
        <label>Список игнорируемых пользователей:</label>
        {ignore-list}
    </div>
    <div class="dle-form_flexno">
        {xfields}
    </div>
    <div class="dle-form_flexno">
        <div class="checkbox">{hidemail}</div>
        <div class="checkbox"><input type="checkbox" id="subscribe" name="subscribe" value="1" /> <label for="subscribe">Отписаться от подписанных новостей</label></div>
        <div class="checkbox">{twofactor-auth}</div>
        <div class="checkbox">{comments-reply-subscribe}</div>
        <div class="checkbox">{unsubscribe}</div>
    </div>
    <button class="e-btn" name="submit" type="submit">Отправить</button>
    <input name="submit" type="hidden" id="submit" value="submit"/><br><br>
</div>