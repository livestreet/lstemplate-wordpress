<ul class="menu">
	<li {if ($sMenuItemSelect=='topic' or $sMenuItemSelect=='blog') and $sMenuSubItemSelect!='saved'}class="active"{/if}>
		<a href="{router page='topic'}add/">{$aLang.topic_menu_add}</a>
          {if ($sMenuItemSelect=='topic' or $sMenuItemSelect=='blog') and $sMenuSubItemSelect!='saved'}
          	<ul class="sub-menu">
          		<li {if $sMenuSubItemSelect=='topic'}class="active"{/if}><a href="{router page='topic'}add/">{$aLang.topic_menu_add_topic}</a></li>
          		<li {if $sMenuSubItemSelect=='question'}class="active"{/if}><a href="{router page='question'}add/">{$aLang.topic_menu_add_question}</a></li>
          		<li {if $sMenuSubItemSelect=='link'}class="active"{/if}><a href="{router page='link'}add/">{$aLang.topic_menu_add_link}</a></li>
          		<li {if $sMenuSubItemSelect=='photoset'}class="active"{/if}><a href="{router page='photoset'}add/">{$aLang.topic_menu_add_photoset}</a></li>
          		{hook run='menu_create_topic_item'}
          		<li {if $sAction=='blog'}class="active"{/if}><a href="{router page='blog'}add/">{$aLang.topic_menu_add_blog}</a></li>
              	{if $iUserCurrentCountTopicDraft}
              		<a href="{router page='topic'}saved/" class="drafts">{$aLang.topic_menu_saved} ({$iUserCurrentCountTopicDraft})</a>
              	{/if}
          	</ul>
          {/if}
	</li>

	<li {if $sMenuSubItemSelect=='saved'}class="active"{/if}>
		<a href="{router page='topic'}saved/">{$aLang.topic_menu_saved}</a>
		{if $sMenuSubItemSelect=='saved'}
			<ul class="sub-menu" >
				{hook run='menu_topic_action_saved_item'}
			</ul>
		{/if}
	</li>

	{hook run='menu_topic_action'}
</ul>




