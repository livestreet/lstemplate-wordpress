<div class="comments comment-list">
	{foreach from=$aComments item=oComment}
		{assign var="oUser" value=$oComment->getUser()}
		{assign var="oTopic" value=$oComment->getTarget()}
		{assign var="oBlog" value=$oTopic->getBlog()}


		<div class="comment">
			<div class="comment-inner">
				<a href="{$oUser->getUserWebPath()}"><img src="{$oUser->getProfileAvatarPath(48)}" alt="avatar" width="40px" class="avatar" /></a>

				<div class="path">
					<a href="{$oTopic->getUrl()}">{$oTopic->getTitle()|escape:'html'}</a>
					<a href="{$oTopic->getUrl()}#comments">{$oTopic->getCountComment()}</a>
					<a href="{$oTopic->getUrl()}#comment{$oComment->getId()}">#</a>
				</div>


				<div class="info">
					<span class="username"><a href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a></span>
					<span class="date"><time datetime="{date_format date=$oComment->getDate() format='c'}">{date_format date=$oComment->getDate() hours_back="12" minutes_back="60" now="60" day="day H:i" format="j F Y, H:i"}</time></span>
				</div>


				<div class="content">
					{if $oComment->isBad()}
						<div style="color: #aaa;">{$oComment->getText()}</div>
					{else}
						{$oComment->getText()}
					{/if}
				</div>
			</div>
		</div>     
		</section>
	{/foreach}
</div>


{include file='paging.tpl' aPaging=$aPaging}