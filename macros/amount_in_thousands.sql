{% macro amount_in_thousands(column_name) %}
    {{ column_name }} / 1000
{% endmacro %}