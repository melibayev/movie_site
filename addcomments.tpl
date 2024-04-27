<div class="dle-form" id="add-comments-form">
    {editor} 
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
    [not-logged]
    <div class="dle-form_flex">
        <input type="text" maxlength="35" name="name" id="name" placeholder="Ваше имя" />
        <input type="text" maxlength="35" name="mail" id="mail" placeholder="Ваш e-mail (необязательно)" />
    </div>
    [/not-logged]
    <button class="e-btn e-flex50" name="submit" type="submit">Добавить комментарий</button>
</div>