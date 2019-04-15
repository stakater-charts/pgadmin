{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "pgadmin.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- /*
  
*/ -}}
{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "pgadmin.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "pgadmin.labels.selector" -}}
app: {{ template "pgadmin.name" . }}
group: {{ .Values.pgadmin.labels.group }}
provider: {{ .Values.pgadmin.labels.provider }}
{{- end -}}

{{- define "pgadmin.labels.stakater" -}}
{{ template "pgadmin.labels.selector" . }}
version: "{{ .Values.pgadmin.labels.version }}"
{{- end -}}

{{- define "pgadmin.labels.chart" -}}
chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
release: {{ .Release.Name | quote }}
heritage: {{ .Release.Service | quote }}
{{- end -}}
