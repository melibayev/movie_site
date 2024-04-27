<header>
    <div class="header-container container">
        <a href="/" class="header-logo"><span>Ovvo</span></a>
        <div class="header-menu mobmenu">
            <a href="#">Что нового?</a>
            <a href="#">Фильмы</a>
            <a href="#">Сериалы</a>
            <a href="#">Мультфильмы</a>
        </div>
        
        <div class="header-search">
            <div class="header-search_icon"><i class="fa-regular fa-magnifying-glass"></i></div>
            <form action="/search/" id="fullsearch" method="post">
                <input type="hidden" name="do" value="search" />
                <input type="hidden" name="subaction" value="search" />
            	<input id="story" name="story" placeholder="Поиск по сайту" autocomplete="off" />
                <a class="header-search_close"><i class="fa-regular fa-xmark"></i></a>
        	</form>
            <div class="search__rezo"></div>
        </div>
        
        {login}
        <i class="fa-regular fa-bars-sort mobmenu-btn active"></i>
    </div>
</header>