---
layout: page
title: Course Archives
footer: false
---
<div id="blog-archives">
{% for post in site.posts %}
    {% if post.tags contains 'course' %}
        <article>
            {% include archive_post.html %}
        </article>
	{% endif %}
{% endfor %}
</div>