{assign var="sidebarPosition" value='left'}
{include file='header.tpl'}

{include file='actions/ActionProfile/profile_top.tpl'}
<h2>{$aLang.user_menu_profile_stream}</h2>
<br />

{if count($aStreamEvents)}
	<ul class="stream-list" id="stream-list">
	{include file='actions/ActionStream/events.tpl'}
	</ul>

	{if !$bDisableGetMoreButton}
		<input type="hidden" id="stream_last_id" value="{$iStreamLastId}" />
		<a class="stream-get-more" id="stream_get_more" href="javascript:ls.stream.getMoreByUser({$oUserProfile->getId()})">{$aLang.stream_get_more} &darr;</a>
	{/if}
{else}
	{$aLang.stream_no_events}
{/if}



{include file='footer.tpl'}