{namespace name="frontend/listing/listing_actions"}

{block name="frontend_listing_filter_facet_radio"}
    <div class="filter-panel filter--radio facet--{$facet->getFacetName()}"
         data-filter-type="radio">

        {block name="frontend_listing_filter_facet_radio_flyout"}
            <div class="filter-panel--flyout">

                {block name="frontend_listing_filter_facet_radio_title"}
                    <label class="filter-panel--title" for="{$facet->getFieldName()}">
                        {$facet->getLabel()}
                    </label>
                {/block}

                {block name="frontend_listing_filter_facet_radio_icon"}
                    <span class="filter-panel--icon"></span>
                {/block}

                {block name="frontend_listing_filter_facet_radio_content"}
                    <div class="filter-panel--content">

                        {block name="frontend_listing_filter_facet_radio_list"}
                            <ul class="filter-panel--option-list">

                                {foreach $facet->getValues() as $option}

                                    {block name="frontend_listing_filter_facet_radio_list_option"}
                                        <li class="filter-panel--option">

                                            {block name="frontend_listing_filter_facet_radio_list_input"}
                                                <span class="filter-panel--radio">
                                                    <input type="radio"
                                                           id="__{$facet->getFieldName()}__{$option->getId()}"
                                                           name="{$facet->getFieldName()}"
                                                           value="{$option->getId()}"
                                                           {if $option->isActive()}checked="checked" {/if}/>

                                                    <span class="radio--state">&nbsp;</span>
                                                </span>
                                            {/block}

                                            {block name="frontend_listing_filter_facet_radio_list_label"}
                                                <label class="filter-panel--label"
                                                       for="__{$facet->getFieldName()}__{$option->getId()}">
                                                    {$option->getLabel()} &nbsp;
                                                </label>
                                            {/block}
                                        </li>
                                    {/block}
                                {/foreach}

                                {block name="frontend_listing_filter_facet_radio_list_option_reset"}
                                    <li class="filter-panel--option">
                                        <span class="filter-panel--radio">
                                            <input type="radio"
                                                   id="__{$facet->getFieldName()}__reset"
                                                   name="{$facet->getFieldName()}"
                                                   value="0"
                                                   {if !$option->isActive()}checked="checked" {/if}/>

                                            <span class="radio--state">&nbsp;</span>
                                        </span>

                                        <label class="filter-panel--label"
                                               for="__{$facet->getFieldName()}__reset">
                                            {s name="ListingFilterVoteReset"}Alle Produkte{/s}
                                        </label>
                                    </li>
                                {/block}
                            </ul>
                        {/block}
                    </div>
                {/block}
            </div>
        {/block}
    </div>
{/block}