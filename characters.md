---
layout: default
title: Characters
---

# Characters

{% for character in site.characters %}
  <p><a href="{{ character.url }}"><strong>{{ character.name }}</strong></a>: Level {{ character.level }}, {{ character.race }} {{ character.class }}</p>
{% endfor %}
