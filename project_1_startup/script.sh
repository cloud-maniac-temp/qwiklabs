#/bin/sh
echo "Running a script"

echo "Project Id: $1"
echo "creating dev gke cluster"
gcloud beta container clusters create gek-dev --zone us-central1-a --async
echo "creating staging gke cluster"
gcloud beta container clusters create gek-staging --zone us-central1-a --async
echo "creating prod gke cluster"
gcloud beta container clusters create gek-prod --zone us-central1-a

echo "creating ns in gke cluster"
gcloud container clusters get-credentials gek-dev --zone us-central1-a && kubectl create ns sample-app
gcloud container clusters get-credentials gek-staging --zone us-central1-a && kubectl create ns sample-app
gcloud container clusters get-credentials gek-prod --zone us-central1-a && kubectl create ns sample-app
echo "creating wi in gke cluster"
gcloud container clusters get-credentials gek-dev --zone us-central1-a && kubectl create serviceaccount wi-dev --namespace sample-app
gcloud container clusters get-credentials gek-staging --zone us-central1-a && kubectl create serviceaccount wi-staging --namespace sample-app
gcloud container clusters get-credentials gek-prod --zone us-central1-a && kubectl create serviceaccount wi-prod --namespace sample-app