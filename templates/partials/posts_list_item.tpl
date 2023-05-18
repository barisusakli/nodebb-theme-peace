<li component="post" class="posts-list-item card shadow-sm border-0 rounded-3 mb-3 {{{if ../deleted }}}deleted{{{ else }}}{{{ if ../topic.deleted }}} deleted{{{ end }}}{{{ end }}}{{{ if ../topic.scheduled }}} scheduled{{{ end }}}" data-pid="{../pid}" data-uid="{../uid}">
    <div class="card-body">
        <h5><a class="topic-title" href="{config.relative_path}/post/{../pid}">
            <span class="text-muted">{{{ if ../isMainPost }}}<i class="fa fa-book"></i>{{{ else }}}<i class="fa fa-reply"></i>{{{ end }}}</span> {../topic.title}
        </a></h5>

        <div class="post-info small d-flex align-items-center mb-2">
            <a class="me-2" href="{config.relative_path}/user/{../user.userslug}">{buildAvatar(../user, "24px", true, "not-responsive rounded")}</a>

            <span class="post-author">
                <a href="{config.relative_path}/user/{../user.userslug}">{../user.displayname}</a>
                <span class="timeago" title="{../timestampISO}"></span>
            </span>
        </div>

        <div component="post/content" class="content">
            {../content}
        </div>

        <a class="" href="{config.relative_path}/category/{./category.slug}">
            <span class="badge rounded-1" style="color:{./category.color}; background-color: {./category.bgColor};"><i class="fa {./category.icon}"></i>&nbsp;{./category.name}</span>
        </a>

        {{{ if ../isMainPost }}}
        {{{ if ../topic.tags.length }}}
        <span class="tag-list">
            {{{ each ../topic.tags }}}
            <!-- IMPORT partials/topic/tag.tpl -->
            {{{ end }}}
        </span>
        {{{ end }}}
        {{{ end }}}
    </div>
</li>