<div class="glovofull-head e-flex">
    <a href="/"><i class="fa-regular fa-angle-left"></i></a>
    <div class="glovofull-head_title">
        <h2>{title}</h2>
        <span class="e-nowrap">{short-story}</span>
    </div>
    <a class="trailer-btn"><i class="fa-brands fa-google-play"></i>Трейлер</a>
    <a class="favmod[favmod={news-id}] active[/favmod]" data-id="{news-id}">
        <i class="favmod-add far fa-heart"></i>
        <i class="favmod-unset fas fa-heart"></i>
    </a>
</div>
<div class="glovofull-bg">
    <div data-vbg="[xfvalue_trailer]" data-vbg-mobile="true" data-vbg-mute-button="true" data-vbg-load-background="false">
        [xfvalue_posterbg]
        <div class="glovofull-bg_over e-center">
            <a class="e-btn">Смотреть трейлер</a>
            <span>Для продолжения нажмите на кнопку</span>
        </div>
    </div>
    <iframe src="[xfvalue_trailer]" frameborder="0" allowfullscreen></iframe>
</div>

<div class="glovofull e-flex">
    [xfvalue_poster]
    <div class="glovofull-detal e-flex50">
    	<ul>
        	<li><span>Дата релиза:</span><span>[xfvalue_year]</span></li>
        	<li><span>Страна:</span><span>[xfvalue_countries]</span></li>
        	<li><span>Режиссер:</span><span>[xfvalue_director]</span></li>
        	<li><span>Актеры:</span><span>[xfvalue_actors]</span></li>
    	</ul>
    	<p class="expand-text" data-rows="5">{full-story}</p>
    </div>
</div>

<div class="dle-comm">
    <h2>Комментарии</h2>
    {addcomments}<br>{comments}<br>{navigation}
    [not-comments]<div class="dle-comm_no">Комментариев пока нет.</div>[/not-comments]
</div>

<div class="trailer-modal">
    <div class="trailer-modal_heading e-flex">
        <h4>{title} - трейлер</h4>
        <div class="trailer-modal_close"><i class="fal fa-times"></i></div>
    </div>
    <div class="trailer-modal_iframe"><iframe src="[xfvalue_trailer]" frameborder="0" allowfullscreen></iframe></div>
</div>

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery("[data-vbg]").youtube_background();
    });
</script>