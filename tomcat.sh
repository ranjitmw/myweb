mv target/myweb*.war target/myweb.war

sftp ec2-user@13.233.208.193 <<EOF

rm /opt/tomcat/webapps/myweb*
put target/myweb.war  /opt/tomcat/webapps/
bye
EOF
ssh ec2-user@13.233.208.193 sudo service tomcat restart
echo "DONE WITH TOMCAT"
