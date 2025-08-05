#/bin/bash
TAM=$(( RANDOM % 25+15 ))
CLAVE=$(openssl rand -base64 $TAM)
REST="MYSQL_ROOT_PASSWORD=$CLAVE"
FILE=$(find $HOME -type f -name "*.env" 2>/dev/null -print|head -n1)
ORIG=$(cat $FILE)

sed -i "s|${ORIG}|${REST}|g" "$FILE" 
