<h2>{$aLang.user_menu_profile_favourites}</h2>

<ul class="switcher">
	<li {if $sMenuSubItemSelect=='topics'}class="active"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}favourites/topics/">{$aLang.user_menu_profile_favourites_topics}  {if $iCountTopicFavourite} ({$iCountTopicFavourite}) {/if}</a>
	</li>
	<li {if $sMenuSubItemSelect=='comments'}class="active"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}favourites/comments/">{$aLang.user_menu_profile_favourites_comments}  {if $iCountCommentFavourite} ({$iCountCommentFavourite}) {/if}</a>
	</li>

	{hook run='menu_profile_favourite_item' oUserProfile=$oUserProfile}
</ul>
<br />

{hook run='menu_profile_favourite' oUserProfile=$oUserProfile}
