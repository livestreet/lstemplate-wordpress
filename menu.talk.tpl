
<h2>{$aLang.talk_menu_inbox}</h2>

<ul class="switcher">
	<li {if $sEvent=='inbox'}class="active"{/if}><a href="{router page='talk'}">{$aLang.talk_menu_inbox_list}</a></li>
	{if $iUserCurrentCountTalkNew}
		<li {if $sMenuSubItemSelect=='new'}class="active"{/if}><a href="{router page='talk'}inbox/new/">{$aLang.talk_menu_inbox_new}</a></li>
	{/if}
	<li {if $sEvent=='add'}class="active"{/if}><a href="{router page='talk'}add/">{$aLang.talk_menu_inbox_create}</a></li>
	<li {if $sEvent=='favourites'}class="active"{/if}><a href="{router page='talk'}favourites/">{$aLang.talk_menu_inbox_favourites}{if $iCountTalkFavourite} ({$iCountTalkFavourite}){/if}</a></li>
    <li {if $sMenuSubItemSelect=='blacklist'}class="active"{/if}><a href="{router page='talk'}blacklist/">{$aLang.talk_menu_inbox_blacklist}</a></li>  
    {hook run='menu_talk_talk_item'}
</ul>
{hook run='menu_talk'}

<br />