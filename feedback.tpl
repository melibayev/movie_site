<div class="dle-form">
    <h1>Обратная связь</h1>
    [not-logged]
    <div class="dle-form_flex">
        <label>Ваше имя:</label>
        <input type="text" maxlength="35" name="name" placeholder="Ваше имя" />
    </div>
    <div class="dle-form_flex">
        <label>Ваш E-Mail:</label>
        <input type="text" maxlength="35" name="email" placeholder="Ваш E-Mail" />
    </div>
    [/not-logged]
    {*<div class="dle-form_flex">
        <label>Выберите кому:</label>
        {recipient}
    </div>*}
    <div class="dle-form_flexno e-none">
        <input type="hidden" name="recip" value="1" />
    </div>
    <div class="dle-form_flexno">
        <label>Тема сообщения:</label>
        <input type="text" maxlength="45" name="subject" placeholder="Тема сообщения" />
    </div>
    <div class="dle-form_flexno">
        <label>Ваше письмо:</label>
        <textarea name="message" style="height: 160px;"></textarea>
    </div>
    [attachments]
    <div class="dle-form_flex">
        <label>Прикрепить файлы:</label>
        <input name="attachments[]" type="file" multiple />
    </div>
    [/attachments] 
    [question]
    <div class="dle-form_flex">
        {question}
        <input type="text" name="question_answer" id="question_answer" placeholder="Впишите ответ на вопрос" required />
    </div>
    [/question] 
    [sec_code]
    <div class="dle-form_flex">
        {code}
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
    <button class="e-flex50" name="send_btn" type="submit">Отправить</button>
</div>