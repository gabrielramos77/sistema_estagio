# Usa um Tomcat pronto com Java 17
FROM tomcat:10.1-jdk17

# Remove os aplicativos de exemplo que vêm no Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia o SEU arquivo para ser o site principal
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Expõe a porta padrão
EXPOSE 8080

# Inicia o servidor
CMD ["catalina.sh", "run"]