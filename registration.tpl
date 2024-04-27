<div class="dle-form">
    <h1>[registration]Регистрация[/registration][validation]Продолжение регистрации[/validation]</h1>
    [registration]<p>Регистрация на нашем сайте позволит Вам быть его полноценным участником.
    Вы сможете добавлять новости на сайт, оставлять свои комментарии, просматривать скрытый текст и многое другое.
    <br>В случае возникновения проблем с регистрацией, обратитесь к <a href="/index.php?do=feedback">администратору</a> сайта.
    </p>[/registration]
    [validation]<p>Ваш аккаунт был зарегистрирован на нашем сайте,
    однако информация о Вас является неполной, поэтому ОБЯЗАТЕЛЬНО заполните дополнительные поля в Вашем профиле.<br>
    </p>[/validation]<br>
    
    [registration]
    <div class="dle-form_flexno">
        <label for="name">Логин</label>
        <div class="dle-form_flex">
            <input type="text" name="name" id="name" class="form-control" required>
            <button class="btn btn-outline-dark btn-sm mt-3" title="Проверить" onclick="CheckLogin(); return false;">Проверить</button>
        </div>
        <div id="result-registration"></div>
    </div>
    <div class="dle-form_flexno">
        <label for="password1">Пароль</label>
        <input type="password" name="password1" id="password1" class="form-control" required>
    </div>
    <div class="dle-form_flexno">
        <label for="password2">Повторите пароль</label>
        <input type="password" name="password2" id="password2" class="form-control" required>
    </div>
    <div class="dle-form_flexno">
        <label for="email">E-mail</label>
        <input type="email" name="email" id="email" class="form-control" required>
    </div>
    
    [question]
    <div class="dle-form_flex">
        <label id="dle-question" for="question_answer">{question}</label>
        <input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" required>
    </div>
    [/question] 
    [sec_code]
    <div class="dle-form_flex">
        {reg_code}
        <div class="dle-form_protec">
            <label for="sec_code">Введите код с картинки:</label>
            <input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
        </div>
    </div>
    [/sec_code]
    [recaptcha]
    <div class="dle-form_flex">
        <label for="">Защита от спама</label>
        {recaptcha}
    </div>
    [/recaptcha]
    [/registration]
    
    [validation]
    <div class="dle-form_flex">
        <label for="fullname">Ваше имя</label>
        <input type="text" id="fullname" name="fullname">
    </div>
    <div class="dle-form_flex">
        <label for="land">Место жительства</label>
        <input type="text" id="land" name="land">
    </div>
    <div class="dle-form_flex">
        <label for="image">О себе</label>
        <textarea id="info" name="info" rows="5"></textarea>
    </div>
    <div class="dle-form_flex">
        <label for="image">Аватар</label>
        <input type="file" id="image" name="image">
    </div>
    <div class="dle-form_flexno">
        <table class="xfields">{xfields}</table>
    </div>
    [/validation]
    
    <button class="btn btn-dark" name="submit" type="submit">Зарегистрироваться</button>