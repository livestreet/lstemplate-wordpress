
<h2>{$aLang.topic_menu_add}</h2>

<ul class="switcher">
    <li {if $sAction=='topic' and $sEvent!='saved'}class="active"{/if}><a href="{router page='topic'}add/">{$aLang.topic_menu_add_topic}</a></li>
    <li {if $sAction=='question'}class="active"{/if}><a href="{router page='question'}add/">{$aLang.topic_menu_add_question}</a></li>
    <li {if $sAction=='link'}class="active"{/if}><a href="{router page='link'}add/">{$aLang.topic_menu_add_link}</a></li>
    <li {if $sAction=='photoset'}class="active"{/if}><a href="{router page='photoset'}add/">{$aLang.topic_menu_add_photoset}</a></li>
    {hook run='menu_create_topic_item'}
    <li {if $sAction=='blog'}class="active"{/if}><a href="{router page='blog'}add/">{$aLang.blog_menu_create}</a></li>
    <li {if $sEvent=='saved'}class="active"{/if}><a href="{router page='topic'}saved/">{$aLang.topic_menu_saved}</a></li>
	{hook run='menu_topic_action'}
</ul>
{hook run='menu_create' sMenuItemSelect=$sMenuItemSelect sMenuSubItemSelect=$sMenuSubItemSelect}
<br />