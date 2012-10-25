{foreach from=$aReplyWall item=oReplyWall}
	{assign var="oReplyUser" value=$oReplyWall->getUser()}
	<div id="wall-reply-item-{$oReplyWall->getId()}" class="js-wall-reply-item comment wall-comment-reply">

    	<a href="{$oReplyUser->getUserWebPath()}"><img src="{$oReplyUser->getProfileAvatarPath(48)}" alt="avatar" width="40px" class="avatar" /></a>

    	<div class="info">
    		<span class="username"><a href="{$oReplyUser->getUserWebPath()}">{$oReplyUser->getLogin()}</a></span>
            {if $oReplyWall->isAllowDelete()}
			    <a href="#" onclick="return ls.wall.remove({$oReplyWall->getId()});" class="delete">{$aLang.wall_action_delete}</a>
			{/if}
    		<br />
    		<div class="date"><time datetime="{date_format date=$oReplyWall->getDateAdd() format='c'}">{date_format date=$oReplyWall->getDateAdd() hours_back="12" minutes_back="60" now="60" day="day H:i" format="j F Y, H:i"}</time></div>
    	</div>

    	<div class="content">
		    {$oReplyWall->getText()}
    	</div>   
	</div>
{/foreach}