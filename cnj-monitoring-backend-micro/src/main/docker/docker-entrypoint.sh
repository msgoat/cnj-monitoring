#!/bin/sh

if [ "$1" = "start" ]
then
	echo "Running Payara Microprofile application with options:"
	echo "JAVA_APPLICATION=${JAVA_APPLICATION}"
	echo "JAVA_APPLICATION_HOME=${JAVA_APPLICATION_HOME}"
	echo "JAVA_OPTS=${JAVA_OPTS}"
	echo "EXT_JAVA_OPTS=${EXT_JAVA_OPTS}"
	echo "DOCKER_JAVA_OPTS=${DOCKER_JAVA_OPTS}"
	echo "PAYARA_JAVA_OPTS=${PAYARA_JAVA_OPTS}"
	echo "PAYARA_ARGUMENTS=${PAYARA_ARGUMENTS}"
	if [ "$PAYARA_LOGGING_FORMAT" = "JSON" ]
	then
	  PAYARA_ARGUMENTS="${PAYARA_ARGUMENTS} --logProperties /home/payara/logging.properties"
	fi
	java ${JAVA_OPTS} ${EXT_JAVA_OPTS} ${DOCKER_JAVA_OPTS} ${PAYARA_JAVA_OPTS} -jar ${JAVA_APPLICATION_HOME}/${JAVA_APPLICATION} ${PAYARA_ARGUMENTS}
else
	exec "$@"
fi

