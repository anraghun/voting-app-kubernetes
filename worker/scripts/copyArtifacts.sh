echo "Copying artifacts ..."

mkdir -p /home/runner/work/voting-app-kubernetes/voting-app-kubernetes/workflow-artifacts/
cp -R /home/runner/work/voting-app-kubernetes/voting-app-kubernetes/worker/* /home/runner/work/voting-app-kubernetes/voting-app-kubernetes/workflow-artifacts/

echo "Finished copying artifacts"

cd /home/runner/work/voting-app-kubernetes/voting-app-kubernetes/workflow-artifacts/
pwd
ls -ltr