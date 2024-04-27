<div class="dle-form">
    <h1>Добавить пост</h1>
    <div class="dle-form_flex">
        <label for="title">Заголовок:</label>
        <input type="text" id="title" name="title" value="{title}" maxlength="150" placeholder="Введите заголовок" required />
        {*<input class="btn" title="Найти похожие" onclick="find_relates(); return false;" type="button" value="Найти похожие" />*}
    </div>
    [urltag]
    <div class="dle-form_flex">
        <label for="alt_name">URL статьи:</label>
        <input type="text" name="alt_name" value="{alt-name}" maxlength="150" placeholder="URL новости" />
    </div>
    [/urltag]
    <div class="dle-form_flex">
        <label for="category">Рубрика</label>
        <select name="catlist[]" id="category" onchange="onCategoryChange(this)">
            <option value="0">Выберите рубрику</option>
            <option value="2">Новости</option>
            <option value="3">Акции и скидки</option>
            <option value="4">Проекты для After Effects</option>
            <option value="5">Проекты для Premiere Pro</option>
            <option value="6">Проекты для Photoshop</option>
            <option value="7">Модули для DLE</option>
            <option value="8">Доп. файлы</option>
        </select>
    </div>
    
   {*<div class="dle-form_flex">
        <label for="category">Рубрика</label>
    {category}
    </div>*}
    
    <button style="background: var(--color1);" onclick="$('.dle-form_vote').toggle();return false;">Добавить опрос</button>
    <div class="dle-form_vote e-none">
        <div class="dle-form_flexno">
            <label for="vote_title">Заголовок:</label>
            <input type="text" name="vote_title" value="{votetitle}" maxlength="150" placeholder="Заголовок опроса" />
        </div>
        <div class="dle-form_flexno">
            <label for="frage">Сам вопрос:</label>
            <input type="text" name="frage" value="{frage}" maxlength="150" placeholder="Сам вопрос" />
        </div>
        <div class="dle-form_flexno">
            <label for="vote_body">Варианты ответов (Каждая новая строка является новым вариантом ответа):</label>
            <textarea name="vote_body" rows="10">{votebody}</textarea>
        </div>
        <div class="dle-form_flexno checkbox">
            Разрешить выбор нескольких вариантов 
            <input class="" type="checkbox" name="allow_m_vote" value="1" {allowmvote} />
        </div>  
    </div>
    
    <div class="dle-form_flexno">
        <label for="short_story">Краткое описание</label>
        [not-wysywyg]
        <div class="bb-editor">
            {bbcode}
            <textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="10" required>{short-story}</textarea>
        </div>
        [/not-wysywyg]
        {shortarea}
    </div>
    
    <div class="dle-form_flexno">
        <label for="full_story">Полное описание</label>
        [not-wysywyg]
        <div class="bb-editor">
            {bbcode}
            <textarea name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="12">{full-story}</textarea>
        </div>
        [/not-wysywyg]
        {fullarea}
    </div>
    
    <div class="dle-form_flexno">
        <table style="width:100%">{xfields}</table>
    </div>
    <div class="dle-form_flexno">
        <label for="alt_name">Ключевые слова</label>
        <input placeholder="Вводите через запятую" type="text" name="tags" id="tags" value="{tags}" maxlength="150" autocomplete="off">
    </div>
    <div class="dle-form_flexno">{admintag}</div>
    
    [question]
    <div class="dle-form_flex">
        <label id="dle-question" for="question_answer">{question}</label>
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
    
    <div class="dle-form_flex">
        <button class="btn" type="submit" name="add"><b>Отправить</b></button>
        <button class="btn-dark" onclick="preview()" type="submit" name="nview"><b>Предпросмотр</b></button>
    </div>
    
    <script type="text/jаvascript">
$(document).ready(function(){
  if( dle_group != 1 ) {
    $('#xfield_holder_panel').hide();}
    $('a[href^="#"], *[data-href^="#"]').on('click', function(e){
        e.preventDefault();
        var t = 600;
        var d = $(this).attr('data-href') ? $(this).attr('data-href') : $(this).attr('href');
        $('html,body').stop().animate({ scrollTop: $(d).offset().top-140 }, t);
    });
    $('.selectpicker').selectpicker();
    jQuery('#content, #sidebar').theiaStickySidebar({
      additionalMarginTop: 70,
      additionalMarginBottom: 30
    });
});
</script>