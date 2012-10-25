<table class="table">
	{if $bUsersUseOrder}
		<thead>
			<tr>
				<td class="cell-name"><a href="{$sUsersRootPage}?order=user_login&order_way={if $sUsersOrder=='user_login'}{$sUsersOrderWayNext}{else}{$sUsersOrderWay}{/if}" {if $sUsersOrder=='user_login'}class="{$sUsersOrderWay}"{/if}>{$aLang.user}</a></td>
				<td>{$aLang.user_date_last}</td>
				<td><a href="{$sUsersRootPage}?order=user_date_register&order_way={if $sUsersOrder=='user_date_register'}{$sUsersOrderWayNext}{else}{$sUsersOrderWay}{/if}" {if $sUsersOrder=='user_date_register'}class="{$sUsersOrderWay}"{/if}>{$aLang.user_date_registration}</a></td>
				<td class="cell-skill" align="center"><a href="{$sUsersRootPage}?order=user_skill&order_way={if $sUsersOrder=='user_skill'}{$sUsersOrderWayNext}{else}{$sUsersOrderWay}{/if}" {if $sUsersOrder=='user_skill'}class="{$sUsersOrderWay}"{/if}>{$aLang.user_skill}</a></td>
				<td class="cell-rating" align="center"><a href="{$sUsersRootPage}?order=user_rating&order_way={if $sUsersOrder=='user_rating'}{$sUsersOrderWayNext}{else}{$sUsersOrderWay}{/if}" {if $sUsersOrder=='user_rating'}class="{$sUsersOrderWay}"{/if}>{$aLang.user_rating}</a></td>
			</tr>
		</thead>
	{else}
		<thead>
			<tr>
				<td class="cell-name">{$aLang.user}</td>
				<td class="cell-date">{$aLang.user_date_last}</td>
				<td class="cell-date">{$aLang.user_date_registration}</td>
				<td class="cell-skill" align="center">{$aLang.user_skill}</td>
				<td class="cell-rating" align="center">{$aLang.user_rating}</td>
			</tr>
		</thead>
	{/if}

	<tbody>
		{if $aUsersList}
			{foreach from=$aUsersList item=oUserList}
				{assign var="oSession" value=$oUserList->getSession()}
				{assign var="oUserNote" value=$oUserList->getUserNote()}
      			<tr>
      				<td><a href="{$oUserList->getUserWebPath()}" class="user">{$oUserList->getLogin()}</a></td>
					<td class="cell-date">{if $oSession}{date_format date=$oSession->getDateLast() format="d.m.y, H:i"}{/if}</td>
					<td class="cell-date">{date_format date=$oUserList->getDateRegister() format="d.m.y, H:i"}</td>
      				<td align="center">{$oUserList->getSkill()}</td>
      				<td align="center"><strong>{$oUserList->getRating()}</strong></td>
      			</tr>
			{/foreach}
		{else}
			<tr>
				<td colspan="5">
					{if $sUserListEmpty}
						{$sUserListEmpty}
					{else}
						{$aLang.user_empty}
					{/if}
				</td>
			</tr>
		{/if}
	</tbody>
</table>


{include file='paging.tpl' aPaging=$aPaging}