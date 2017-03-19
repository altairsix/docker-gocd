#!/bin/bash

set -eu 

mkdir -p ${HOME}/.ssh

if [ -n "${PRIVATE_KEY}" ] ; then
	echo "${PRIVATE_KEY}" > ${HOME}/.ssh/id_rsa
	chmod 400 ${HOME}/.ssh/id_rsa
fi

if [ -n "${PUBLIC_KEY}" ] ; then
	echo "${PUBLIC_KEY}" > ${HOME}/.ssh/id_rsa.pub
	chmod 400 ${HOME}/.ssh/id_rsa.pub
fi

$*

