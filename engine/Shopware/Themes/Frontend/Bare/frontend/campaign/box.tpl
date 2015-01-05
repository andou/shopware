{block name='frontend_campaign_box'}
	{if $campaignsData && !$sCategoryCampaigns}
		{foreach from=$campaignsData item=campaign}
				{block name='frontend_campaign_box_image_link'}
					<div class="campaign-outer-container">
						<a href="{url controller=campaign emotionId=$campaign.id sCategory=$campaign.categoryId}" class="campaign_box" title="{$campaign.name|escape}">
							<img src="{$campaign.landingPageTeaser}" alt="{$campaign.name|escape}" />
						</a>
					</div>
					<div class="space"></div>
				{/block}
		{/foreach}
	{/if}
{/block}