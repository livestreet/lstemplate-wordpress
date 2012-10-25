
<div class="author-info">
	{hook run='profile_top_begin' oUserProfile=$oUserProfile}

	<a href="{$oUserProfile->getUserWebPath()}"><img src="{$oUserProfile->getProfileAvatarPath(48)}" alt="avatar" class="avatar" /></a>
	<strong>{$aLang.author_nickname}:</strong> {$oUserProfile->getLogin()}<br />
	{if $oUserProfile->getProfileName()}<strong>{$oUserProfile->getProfileName()|escape:'html'}</strong><br />{/if}
	{if $oUserProfile->getProfileAbout()}{$oUserProfile->getProfileAbout()}<br />{/if}<br />

	{if $iCountTopicUser}<a href="{router page='my'}{$oUserProfile->getLogin()}/">{$aLang.user_menu_publication_blog}</a> ({$iCountTopicUser})<br />{/if}
	{if $iCountCommentUser}<a href="{router page='my'}{$oUserProfile->getLogin()}/comment/">{$aLang.user_menu_publication_comment}</a> ({$iCountCommentUser}){/if}

	{hook run='profile_top_end' oUserProfile=$oUserProfile}
</div>