#!/bin/bash

# find the user's KUBECONFIG.
# use `-z` to check if the string is empty
if [ -z "${KUBECONFIG}" ]; then
	USER_CONFIG="~/.kube/config"
	echo "KUBECONFIG not set, assuming default in ${USER_CONFIG}"
else
	USER_CONFIG=$KUBECONFIG
fi

# expand the `~`
eval USER_CONFIG=${USER_CONFIG}


# setup gardenctl
eval $(gardenctl kubectl-env zsh)

# run the args passed into this script, which should be a `gardenctl` command to target the cluster.
if [ "$1" = "gardenctl" ]; then
	# run user defined targetting command e.g: `gardenctl target --garden leafcloud-dev --project sadsagas --shoot dev`
	eval $@
else
	echo "Not a gardenctl command"
	exit 1
fi


MERGED_KUBECONFIG=$(mktemp -t XXXXXXX-merged-kubeconfig)

# join the user's and garden kubeconfig's paths
KUBECONFIG="${KUBECONFIG}:${USER_CONFIG}"
kubectl config view --flatten > ${MERGED_KUBECONFIG}

export KUBECONFIG=${MERGED_KUBECONFIG}

echo "Merged garden kubeconfig and ${USER_CONFIG} for this shell session."
echo "\$KUBECONFIG now pointing at ${KUBECONFIG}"

unset USER_CONFIG
unset GARDEN_KUBECONFIG
unset MERGED_KUBECONFIG

echo ""
echo ""
echo ""


kubectl config get-contexts
