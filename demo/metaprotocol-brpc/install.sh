# Copyright Aeraki Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

BASEDIR=$(dirname "$0")

kubectl create ns meta-brpc
kubectl label namespace meta-brpc istio-injection=enabled --overwrite=true
kubectl apply -f $BASEDIR/brpc-sample.yaml -n meta-brpc
kubectl apply -f $BASEDIR/service.yaml -n meta-brpc