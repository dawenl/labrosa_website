{% set page = "Projects" %}
{% include "header.tpl" %}

{% if projects %}
    <table id="peopleTable">
    {% for project in projects %}
        <tr style="background-color: {{loop.cycle('#EEEEEE', '#FFFFFF') }}">
            <td style="text-align: center;"><a href="{{project.url}}"><img src="{{ project.image }}" style="height: 60px;" /></a></td>
            <td>
                <a href="{{project.url}}">{{ project.name }}</a><br />
                {{ project.description }}
            </td>
        </tr>
    {% endfor %}
    </table>
{% endif %}

{% include "footer.tpl" %}
