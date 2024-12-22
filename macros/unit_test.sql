{% macro unit_test(seedfile,sourcefile) %}

    {% if var('to_test',false) ==  true %}
        {{seedfile}}
    {% else %}
        {{sourcefile}}
    {% endif %}
{% endmacro %}