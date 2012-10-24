{assign var="oBlog" value=$oTopic->getBlog()}
{assign var="oUser" value=$oTopic->getUser()}
{assign var="oVote" value=$oTopic->getVote()}


<article class="topic topic-type-{$oTopic->getType()} js-topic">
	<h2 class="title">
    	{if $oTopic->getPublish() == 0}
    		<i class="icon-tag" title="{$aLang.topic_unpublish}"></i>
    	{/if}

        {if $oTopic->getType() == 'link'}
            &nbsp;<i class="icon-share-alt" title="{$aLang.topic_link}"></i>
        {/if}
		<a href="{$oTopic->getUrl()}" class="title-topic">{$oTopic->getTitle()|escape:'html'}</a>
	</h2>


	<p class="info-short">
		{$aLang.topic_pub} <a href="{router page='archive'}{date_format format="Y" date=$oTopic->getDateAdd()}/{date_format format="m" date=$oTopic->getDateAdd()}/{date_format format="d" date=$oTopic->getDateAdd()}/" class="title-topic" title="{date_format date=$oTopic->getDateAdd() format="H:i"}">{date_format date=$oTopic->getDateAdd() format="j F Y"}</a> {$aLang.topic_by} <a href="{router page='my'}{$oUser->getLogin()}/">{$oUser->getLogin()}</a>
	</p>


	<ul class="actions">
		{if $oUserCurrent and ($oUserCurrent->getId()==$oTopic->getUserId() or $oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getUserIsModerator() or $oBlog->getOwnerId()==$oUserCurrent->getId())}
			<li><a href="{cfg name='path.root.web'}/{$oTopic->getType()}/edit/{$oTopic->getId()}/" title="{$aLang.topic_edit}" class="edit">{$aLang.topic_edit}</a></li>
		{/if}
		{if $oUserCurrent and ($oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getOwnerId()==$oUserCurrent->getId())}
			<li><a href="{router page='topic'}delete/{$oTopic->getId()}/?security_ls_key={$LIVESTREET_SECURITY_KEY}" title="{$aLang.topic_delete}" onclick="return confirm('{$aLang.topic_delete_confirm}');" class="delete">{$aLang.topic_delete}</a></li>
		{/if}
	</ul>