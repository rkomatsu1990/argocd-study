{{/* Define o nome completo da aplicação */}}
{{- define "helm-app.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/* Nome simples */}}
{{- define "helm-app.name" -}}
{{- .Chart.Name -}}
{{- end }}