###############################################################################
# Because of changing helm-repo to public redis repository,
# we have to redefine it back 
###############################################################################
echo Waiting for ges-redis pod being in ready status 
kubectl wait pod --selector app.kubernetes.io/instance=ges-redis \
	--for condition=ready --timeout=180s