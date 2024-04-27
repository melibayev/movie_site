<div class="pm-page">
    <h1>Персональные сообщения</h1>
    <ul class="pm-page_lists e-flex">
        <li>[inbox]Входящие[/inbox]</li>
        <li>[outbox]Отправленные[/outbox]</li>
        <li>[new_pm]Создать[/new_pm]</li>
    </ul>
    <div class="pm-page_status">
        <div>Папки персональных сообщений заполнены на:</div>
        {pm-progress-bar} {proc-pm-limit}% от лимита ({pm-limit} сообщений)
    </div>
    [pmlist]
    <div class="dle-form">
        <h2>Список сообщений</h2>
        {pmlist}
    </div>
    [/pmlist] [readpm]
    <div class="dle-form"><h2>Ваши сообщения</h2></div>
    <div class="pm-item e-flex">
        <div class="pm-item_img"><img src="{foto}" alt="{login}" /></div>
        <div class="pm-item_description e-flex50">
            <div class="pm-item_meta e-flex"><span>{author}</span><span>{group-name}</span><span>{date}</span></div>
            <div class="pm-item_text">{text}</div>
            <div class="pm-item_meta e-flex"><span>[reply]Ответить[/reply]</span><span>[ignore]Игнор[/ignore]</span><span>[complaint]Пожаловаться[/complaint]</span><span>[del]Удалить[/del]</span></div>
        </div>
    </div>
    [/readpm] [newpm]
    <div class="dle-form">
        <h2>Новое сообщение</h2>
        <div class="dle-form_flex">
            <input type="text" name="name" placeholder="Кому" value="{author}" required />
            <input type="text" name="subj" placeholder="Тема" value="{subj}" />
        </div>
        <div class="dle-form_flexno">{editor}</div>
        [question]
        <div class="dle-form_flex">
            {question}
            <input type="text" name="question_answer" id="question_answer" placeholder="Впишите ответ на вопрос" required />
        </div>
        [/question] 
        [sec_code]
        <div class="dle-form_flex">
            {sec_code}
            <div class="dle-form_protec">
                <label for="sec_code">Введите код с картинки:</label>
                <input type="text" name="sec_code" id="sec_code" placeholder="Впишите код с картинки" maxlength="45" required />
            </div>
        </div>
        [/sec_code]
        [recaptcha]
        <div class="dle-form_flex">
            <label for="">Защита от спама</label>
            {recaptcha}
        </div>
        [/recaptcha]
        
    <div class="dle-form_flexno checkbox">
        <label for="outboxcopy">
            <input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" checked />
            Сохранить сообщение в папке "Отправленные"
        </label>
    </div>
    <div class="dle-form_flex">
        <button type="submit" name="add">Отправить</button>
        <button style="background: var(--bg3);margin-left: 20px;" type="button" onclick="dlePMPreview()">Просмотр</button>
    </div>
    [/newpm]
</div>