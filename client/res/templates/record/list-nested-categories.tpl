{{#unless isLoading}}
<div class="list-nested-categories">
    <div class="clearfix">
        <div class="btn-group pull-right">
            <a role="button" tabindex="0" class="dropdown-toggle btn btn-text" data-toggle="dropdown">
                <span class="fas fa-ellipsis-h"></span>
            </a>

            <ul class="dropdown-menu dropdown-menu-with-icons">
                {{#if showEditLink}}
                <li>
                    <a
                        href="#{{scope}}"
                        class="action manage-categories-link"
                        data-action="manageCategories"
                    >
                        <span class="fas fa-folder-tree fa-sm"></span><span class="item-text">{{translate 'Manage Categories' scope=scope}}</span>
                    </a>
                </li>
                <li class="divider"></li>
                {{/if}}

                {{#if hasExpandedToggler}}
                    {{#if isExpanded}}
                        <li>
                            <a
                                role="button"
                                tabindex="0"
                                class="category-expanded-toggle-link action"
                                data-action="collapse"
                            ><span class="fas fa-level-up-alt fa-sm fa-flip-horizontal"></span><span class="item-text">{{translate 'Collapse'}}</span></a>
                        </li>
                    {{else}}
                        <li>
                            <a
                                role="button"
                                tabindex="0"
                                class="category-expanded-toggle-link action"
                                data-action="expand"
                            ><span class="fas fa-level-down-alt fa-sm"></span><span class="item-text">{{translate 'Expand'}}</span></a>
                        </li>
                    {{/if}}
                {{/if}}
                {{#unless isExpanded}}
                    <li>
                        <a
                            role="button"
                            tabindex="0"
                            class="navigation-toggle-link action"
                            data-action="toggleNavigationPanel"
                        >
                            {{#if hasNavigationPanel}}
                                <span class="fas fa-arrow-left fa-sm"></span><span class="item-text">{{translate 'Hide Navigation Panel'}}</span>
                            {{else}}
                                <span class="fas fa-arrow-right fa-sm"></span><span class="item-text">{{translate 'Show Navigation Panel'}}</span>
                            {{/if}}
                        </a>
                    </li>
                {{/unless}}
            </ul>
        </div>
        {{#if currentId}}
        <div class="category-item">
            <a
                href="{{upperLink}}"
                class="action folder-icon btn-text"
                data-action="openCategory"
                data-id="{{categoryData.upperId}}"
                title="{{translate 'Up'}}"
            ><span class="fas fa-arrow-up text-soft transform-flip-x"></span></a>
        </div>
        {{/if}}
    </div>

    <div class="grid-auto-fill-xs">
        {{#each list}}
        <div class="category-cell">
            <div class="category-item" data-id="{{id}}">
                <a
                    href="{{link}}"
                    class="action link-gray"
                    data-action="openCategory"
                    data-id="{{id}}"
                    data-name="{{name}}"
                    title="{{name}}"
                ><span class="folder-icon far fa-folder text-soft"></span> <span class="category-item-name">{{name}}</span></a>
            </div>
        </div>
        {{/each}}

        {{#if showMoreIsActive}}
        <div class="category-cell">
            <div class="category-item show-more">
                <span class="category-item-name">
                    <a
                        role="button"
                        tabindex="0"
                        class="action"
                        data-action="showMore"
                        title="{{translate 'Show more'}}"
                    >...</a>
                </span>
            </div>
        </div>
        {{/if}}
    </div>
</div>
{{/unless}}
