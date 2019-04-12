{{ "{{" }}/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/{{ "}}" }}
{{ "{{" }}- define "{{ cookiecutter.chart_name }}.fullname" -{{ "}}" }}
{{ "{{" }}- $name := default .Chart.Name .Values.nameOverride -{{ "}}" }}
{{ "{{" }}- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -{{ "}}" }}
{{ "{{" }}- end -{{ "}}" }}

{{ "{{" }}/*
Create chart name and version as used by the chart label.
*/{{ "}}" }}
{{ "{{" }}- define "{{ cookiecutter.chart_name }}.chart" -{{ "}}" }}
{{ "{{" }}- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -{{ "}}" }}
{{ "{{" }}- end -{{ "}}" }}
