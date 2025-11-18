

.PHONY: create-all
create-all: cluster-create argocd wait-argocd

.PHONY: cluster-create
cluster-create:
	kind create cluster --name backstack-demo --config kind/config.yaml

.PHONY: argocd
argocd:
	kubectl create namespace argocd
	kubectl apply -f https://raw.githubusercontent.com/argoproj/argo-cd/refs/heads/master/manifests/install.yaml -n argocd
	@echo "Argo CD installed successfully!"

.PHONY: wait-argocd
wait-argocd:
	@echo "Waiting for Argo CD server to be ready..."
	kubectl wait --for=condition=available --timeout=180s deployment/argocd-server -n argocd
	@echo "Argo CD server is ready!"

.PHONY: cleanup
cleanup: cluster-destroy

.PHONY: cluster-destroy
cluster-destroy:
	kind delete cluster --name backstack-demo