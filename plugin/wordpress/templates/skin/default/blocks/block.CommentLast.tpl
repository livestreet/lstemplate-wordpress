<div class="block">
	<h2>{$aLang.plugin.wordpress.block_comment_last}</h2>
	
	<ul>
		{foreach from=$wp_aCommentsLast item=oCommentItem}
			{assign var="oUser" value=$oCommentItem->getUser()}
			{assign var="oTopic" value=$oCommentItem->getTarget()}
			{assign var="oBlog" value=$oTopic->getBlog()}
			
			<li>
				<a href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a>&nbsp;&#8594;
				<a href="{$oTopic->getUrl()}#comment{$oCommentItem->getId()}">{$oTopic->getTitle()|escape:'html'}</a>
				{$oTopic->getCountComment()}
			</li>			
		{/foreach}
	</ul>
	
	<div class="bottom">
		<a href="{router page='comments'}" class="all-comments">{$aLang.block_stream_comments_all}</a>
	</div>
</div>