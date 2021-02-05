# rubycounter

installing keel

```bash
helm repo add keel https://charts.keel.sh
helm repo update
helm upgrade --install keel --namespace=kube-system keel/keel
kubectl --namespace=kube-system get pods -l "app=keel"
helm repo add webhookrelay https://charts.webhookrelay.com
helm repo update
# export RELAY_KEY=blah
# export RELAY_SECRET=blah
helm upgrade --install webhookrelay-operator webhookrelay/webhookrelay-operator --set credentials.key=$RELAY_KEY --set credentials.secret=$RELAY_SECRET
helm list
# create webhookrelay_cr.yaml
kubectl apply -f webhookrelay_cr.yaml
```
