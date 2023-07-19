{% for link in site.data.navigation.main %}
  {% if link.right %}
    <a class="normal right" target="_self" href="{{ link.url }}">{{ link.title }}</a>
    {% else %}
    <a class="normal" target="_self" href="{{ link.url }}">{{ link.title }}</a>
  {% endif %}
{% endfor %}

