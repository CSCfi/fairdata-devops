---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
# Fairdata GitOps Master Repository

## pages:

{% for item in site.data.navigation%}
<a href="{{ item.link }}" {% if page.url == item.link %}{% endif %}>
      {{ item.name }}
    </a>
{% endfor %}