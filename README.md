# tomcat_docker
Build Tomcat App server

	docker build -t hhuaranga/tomcat .
	docker login
	docker push hhuaranga/tomcat

# Nota
Solo el yaml del despliegue es necesario, los ingress del LB se crean directamente desde Rancher, de momento