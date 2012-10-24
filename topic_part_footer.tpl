	{assign var="oBlog" value=$oTopic->getBlog()}
	{assign var="oUser" value=$oTopic->getUser()}
	{assign var="oVote" value=$oTopic->getVote()}
	{assign var="oFavourite" value=$oTopic->getFavourite()}


		<div class="topic-share" id="topic_share_{$oTopic->getId()}">
			{hookb run="topic_share" topic=$oTopic bTopicList=$bTopicList}
				<div class="yashare-auto-init" data-yashareTitle="{$oTopic->getTitle()|escape:'html'}" data-yashareLink="{$oTopic->getUrl()}" data-yashareL10n="ru" data-yashareType="button" data-yashareQuickServices="yaru,vkontakte,facebook,twitter,odnoklassniki,moimir,lj,gplus"></div>
			{/hookb}
		</div>

    	<div class="info">
			<div class="topic-info-share"><a href="#" class="icon-share" title="{$aLang.topic_share}" onclick="jQuery('#topic_share_{$oTopic->getId()}').slideToggle(); return false;"></a></div>

    		{if $oBlog->getType()!='personal'}
    			{$aLang.topic_pub_in} <a href="{$oBlog->getUrlFull()}" class="title-blog">{$oBlog->getTitle()|escape:'html'}</a> |
    		{/if}

    		{$aLang.topic_tags}:
    		{foreach from=$oTopic->getTagsArray() item=sTag name=tags_list}
    			<a href="{router page='tag'}{$sTag|escape:'html'}/">{$sTag|escape:'html'}</a>{if !$smarty.foreach.tags_list.last}, {/if}
    		{/foreach}

    		{if !$tSingle}
    			| <span class="comments-link">
    				<a href="{$oTopic->getUrl()}#comments" title="{$aLang.topic_comment_read}">{$aLang.topic_comments}:
    				{if $oTopic->getCountComment()>0}
    					{$oTopic->getCountComment()} <span>{if $oTopic->getCountCommentNew()}+{$oTopic->getCountCommentNew()}{/if}</span>
    				{else}{$aLang.topic_comments_no}{/if}</a></span>
    		{/if}
			{hook run='topic_show_info' topic=$oTopic}
		</div>    
		
		{if !$bTopicList}
			{hook run='topic_show_end' topic=$oTopic}
		{/if}
</article> <!-- /.topic -->