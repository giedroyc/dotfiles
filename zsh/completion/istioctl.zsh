#compdef istioctl

# -----------------------------------------------------------------------------
# The BSD-3-Clause License
#
# Copyright (c) 2018, Koichi Shiraishi
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of que nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
# -----------------------------------------------------------------------------
#
# istio.io/istio/istioctl/cmd/istioctl (github.com/istio/istio/istioctl/cmd/istioctl)
#
# -----------------------------------------------------------------------------
#
# Istio configuration command line utility.
#
# Create, list, modify, and delete configuration resources in the Istio
# system.
#
# Available routing and traffic management configuration types:
#
# 	[routerule ingressrule egressrule destinationpolicy]
#
# See https://istio.io/docs/reference/ for an overview of routing rules
# and destination policies.
#
# Usage:
#   istioctl [command]
#
# Available Commands:
#   context-create Create a kubeconfig file suitable for use with istioctl in a non kubernetes environment
#   create         Create policies and rules
#   delete         Delete policies or rules
#   deregister     De-registers a service instance
#   experimental   Experimental commands that may be modified or deprecated
#   gen-deploy     Generates the configuration for Istio's control plane.
#   get            Retrieve policies and rules
#   help           Help about any command
#   kube-inject    Inject Envoy sidecar into Kubernetes pod resources
#   proxy-config   Retrieves proxy configuration for the specified pod [kube only]
#   register       Registers a service instance (e.g. VM) joining the mesh
#   replace        Replace existing policies and rules
#   version        Prints out build version information
#
# Flags:
#   -h, --help                          help for istioctl
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# Use "istioctl [command] --help" for more information about a command.
#
# -----------------------------------------------------------------------------
#
# Create a kubeconfig file suitable for use with istioctl in a non kubernetes environment
#
# Usage:
#   istioctl context-create --api-server http://<ip>:<port> [flags]
#
# Examples:
# # Create a config file for the api server.
# istioctl context-create --api-server http://127.0.0.1:8080
#
#
# Flags:
#       --api-server string   URL for Istio api server
#       --context string      Kubernetes configuration file context name (default "istio")
#   -h, --help                help for context-create
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# Create policies and rules
#
# Usage:
#   istioctl create [flags]
#
# Examples:
# istioctl create -f example-routing.yaml
#
# Flags:
#   -f, --file string   Input file with the content of the configuration objects (if not set, command reads from the standard input)
#   -h, --help          help for create
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# Delete policies or rules
#
# Usage:
#   istioctl delete <type> <name> [<name2> ... <nameN>] [flags]
#
# Examples:
# # Delete a rule using the definition in example-routing.yaml.
# istioctl delete -f example-routing.yaml
#
# # Delete the rule productpage-default
# istioctl delete routerule productpage-default
#
#
# Flags:
#   -f, --file string   Input file with the content of the configuration objects (if not set, command reads from the standard input)
#   -h, --help          help for delete
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# De-registers a service instance
#
# Usage:
#   istioctl deregister <svcname> <ip> [flags]
#
# Flags:
#   -h, --help   help for deregister
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# Experimental commands that may be modified or deprecated
#
# Usage:
#   istioctl experimental [command]
#
# Available Commands:
#   convert-networking-config Convert networking configs from v1alpha1 to v1alpha3
#
# Flags:
#   -h, --help   help for experimental
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# Use "istioctl experimental [command] --help" for more information about a command.
#
# -----------------------------------------------------------------------------
#
# istioctl gen-deploy produces deployment files to run the minimum Istio control for the set of features requested by the --feature flag. If no features are provided, we create deployments for the default control plane: Pilot, Mixer, CA, and Ingress Proxies, with mTLS enabled.
#
# Usage:
#   istioctl gen-deploy [flags]
#
# Examples:
# istioctl gen-deploy --features routing,policy,sidecar-injector -o helm
#
# Flags:
#       --debug                      If true, uses debug images instead of release images
#   -f, --features stringArray       List of Istio features to enable. Accepts any combination of "mtls", "telemetry", "routing", "ingress", "policy", "sidecar-injector".
#       --helm-chart-dir string      The directory to find the helm charts used to render Istio deployments. -o yaml uses these to render the helm chart locally. (default ".")
#   -h, --help                       help for gen-deploy
#       --hyperkube-hub string       The container registry to pull Hyperkube images from (default "quay.io/coreos/hyperkube")
#       --hyperkube-tag Hyperkube    The tag to use to pull the Hyperkube container (default "0.4.0")
#       --ingress-node-port uint16   If provided, Istio ingress proxies will run as a NodePort service mapped to the port provided by this flag. Note that this flag is ignored unless the "ingress" feature flag is provided too.
#   -o, --out string                 Output format. Acceptable values are'helm' to produce contents of values.yaml or 'helm' to produces Kubernetes deployments (default "helm")
#       --values string              Path to the Helm values.yaml file used to render YAML deployments locally when --out=yaml. Flag values are ignored in favor of using the file directly.
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# Retrieve policies and rules
#
# Usage:
#   istioctl get <type> [<name>] [flags]
#
# Examples:
# # List all route rules
# istioctl get routerules
#
# # List all destination policies
# istioctl get destinationpolicies
#
# # Get a specific rule named productpage-default
# istioctl get routerule productpage-default
#
#
# Flags:
#   -h, --help            help for get
#   -o, --output string   Output format. One of:yaml|short (default "short")
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# Help provides help for any command in the application.
# Simply type istioctl help [path to command] for full details.
#
# Usage:
#   istioctl help [command] [flags]
#
# Flags:
#   -h, --help   help for help
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# kube-inject manually injects envoy sidecar into kubernetes
# workloads. Unsupported resources are left unmodified so it is safe to
# run kube-inject over a single file that contains multiple Service,
# ConfigMap, Deployment, etc. definitions for a complex application. Its
# best to do this when the resource is initially created.
#
# k8s.io/docs/concepts/workloads/pods/pod-overview/#pod-templates is
# updated for Job, DaemonSet, ReplicaSet, and Deployment YAML resource
# documents. Support for additional pod-based resource types can be
# added as necessary.
#
# The Istio project is continually evolving so the Istio sidecar
# configuration may change unannounced. When in doubt re-run istioctl
# kube-inject on deployments to get the most up-to-date changes.
#
# To override the sidecar injection template built into istioctl, the
# parameters --injectConfigFile or --injectConfigMapName can be used.
# Both options override any other template configuration parameters, eg.
# --hub and --tag.  These options would typically be used with the
# file/configmap created with a new Istio release.
#
# Usage:
#   istioctl kube-inject [flags]
#
# Examples:
#
# # Update resources on the fly before applying.
# kubectl apply -f <(istioctl kube-inject -f <resource.yaml>)
#
# # Create a persistent version of the deployment with Envoy sidecar
# # injected.
# istioctl kube-inject -f deployment.yaml -o deployment-injected.yaml
#
# # Update an existing deployment.
# kubectl get deployment -o yaml | istioctl kube-inject -f - | kubectl apply -f -
#
# # Create a persistent version of the deployment with Envoy sidecar
# # injected configuration from kubernetes configmap 'istio-inject'
# istioctl kube-inject -f deployment.yaml -o deployment-injected.yaml --injectConfigMapName istio-inject
#
#
# Flags:
#       --coreDump                     Enable/Disable core dumps in injected Envoy sidecar (--coreDump=true affects all pods in a node and should only be used the cluster admin) (default true)
#       --debug                        Use debug images and settings for the sidecar
#       --emitTemplate                 Emit sidecar template based on parameterized flags
#   -f, --filename string              Input Kubernetes resource filename
#   -h, --help                         help for kube-inject
#       --hub string                   Docker hub (default "unknown")
#       --imagePullPolicy string       Sets the container image pull policy. Valid options are Always,IfNotPresent,Never.The default policy is IfNotPresent. (default "IfNotPresent")
#       --includeIPRanges string       Comma separated list of IP ranges in CIDR form. If set, only redirect outbound traffic to Envoy for IP ranges. Otherwise all outbound traffic is redirected
#       --injectConfigFile string      injection configuration filename. Cannot be used with --injectConfigMapName
#       --injectConfigMapName string   ConfigMap name for Istio sidecar injection, key should be "config".This option overrides any other sidecar injection config options, eg. --hub
#       --meshConfigFile string        mesh configuration filename. Takes precedence over --meshConfigMapName if set
#       --meshConfigMapName string     ConfigMap name for Istio mesh configuration, key should be "mesh" (default "istio")
#   -o, --output string                Modified output Kubernetes resource filename
#       --setVersionString string      Override version info injected into resource
#       --sidecarProxyUID uint         Envoy sidecar UID (default 1337)
#       --tag string                   Docker tag (default "unknown")
#       --verbosity int                Runtime verbosity (default 2)
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# Retrieves the static/bootstrap proxy configuration for the specified pod when running in Kubernetes.
# Support for other environments to follow.
#
# Usage:
#   istioctl proxy-config <pod-name> [flags]
#
# Aliases:
#   proxy-config, pc
#
# Examples:
# # Retrieve config for productpage-v1-bb8d5cbc7-k7qbm pod
# istioctl proxy-config productpage-v1-bb8d5cbc7-k7qbm
#
# Flags:
#   -h, --help   help for proxy-config
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# Registers a service instance (e.g. VM) joining the mesh
#
# Usage:
#   istioctl register <svcname> <ip> [name1:]port1 [name2:]port2 ... [flags]
#
# Flags:
#   -a, --annotations stringSlice   List of string annotations to apply if creating a service/endpoint; e.g. -a foo=bar,test,x=y
#   -h, --help                      help for register
#   -l, --labels stringSlice        List of labels to apply if creating a service/endpoint; e.g. -l env=prod,vers=2
#   -s, --serviceaccount string     Service account to link to the service (default "default")
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# Replace existing policies and rules
#
# Usage:
#   istioctl replace [flags]
#
# Examples:
# istioctl replace -f example-routing.yaml
#
# Flags:
#   -f, --file string   Input file with the content of the configuration objects (if not set, command reads from the standard input)
#   -h, --help          help for replace
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------
#
# Prints out build version information
#
# Usage:
#   istioctl version [flags]
#
# Flags:
#   -h, --help    help for version
#   -s, --short   Displays a short form of the version information
#
# Global Flags:
#   -i, --istioNamespace string         Istio system namespace (default "istio-system")
#   -c, --kubeconfig string             Kubernetes configuration file (default "$KUBECONFIG else $HOME/.kube/config")
#       --log_as_json                   Whether to format output as JSON or in plain console-friendly format
#       --log_callers                   Include caller information, useful for debugging
#       --log_output_level string       The minimum logging level of messages to output, can be one of "debug", "info", "warn", "error", or "none" (default "info")
#       --log_rotate string             The path for the optional rotating log file
#       --log_rotate_max_age int        The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default 30)
#       --log_rotate_max_backups int    The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default 1000)
#       --log_rotate_max_size int       The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)
#       --log_stacktrace_level string   The minimum logging level at which stack traces are captured, can be one of "debug", "info", "warn", "error", or "none" (default "none")
#       --log_target stringArray        The set of paths where to output the log. This can be any path as well as the special values stdout and stderr (default [stdout])
#   -n, --namespace string              Config namespace
#   -p, --platform string               Istio host platform (default "kube")
#
# -----------------------------------------------------------------------------

function _istioctl() {
  local context curcontext=$curcontext state line ret=1
  declare -A opt_args

  local -a commands
  commands=(
  'context-create:Create a kubeconfig file suitable for use with istioctl in a non kubernetes environment'
  'create:Create policies and rules'
  'delete:Delete policies or rules'
  'deregister:De-registers a service instance'
  'experimental:Experimental commands that may be modified or deprecated'
  "gen-deploy:Generates the configuration for Istio's control plane."
  'get:Retrieve policies and rules'
  'help:Help about any command'
  'kube-inject:Inject Envoy sidecar into Kubernetes pod resources'
  {proxy-config,pc}:'Retrieves proxy configuration for the specified pod [kube only]'
  'register:Registers a service instance (e.g. VM) joining the mesh'
  'replace:Replace existing policies and rules'
  'version:Prints out build version information'
  )

  local -a configuration_types
  configuration_types=(
  'routerule:traffic routing.'
  'egressrule:describe the properties of a service outside Istio.'
  'destinationpolicy:client/caller-side policies that determine how to handle traffic bound to a particular destination service.'
  'httpapispec'
  'httpapispecbinding'
  'quotaspec'
  'quotaspecbinding'
  'servicerole'
  'servicerolebinding'
  'virtualservice'
  'gateway'
  'serviceentry'
  'destinationrule'
  'policy'
  )

  local -a _global_flags
  _global_flags=(
  {-i,--istioNamespace}'[Istio system namespace (default: "istio-system")]:istio-system namespace'
  {-c,--kubeconfig}'[Kubernetes configuration file (default: "\$KUBECONFIG else \$HOME/.kube/config")]:kubeconfig file:_files'
  '--log_as_json[Whether to format output as JSON or in plain console-friendly format]'
  '--log_callers[Include caller information, useful for debugging]'
  '--log_output_level[The minimum logging level of messages to output. (default: "info")]:log level:(debug info warn error none)'
  '--log_rotate[The path for the optional rotating log file]:rotate log file:_files'
  '--log_rotate_max_age[The maximum age in days of a log file beyond which the file is rotated (0 indicates no limit) (default: 30)]:rotate max age'
  '--log_rotate_max_backups[The maximum number of log file backups to keep before older files are deleted (0 indicates no limit) (default: 1000)]:rotate max backups'
  '--log_rotate_max_size[The maximum size in megabytes of a log file beyond which the file is rotated (default 104857600)]:rotate max size'
  '--log_stacktrace_level[The minimum logging level at which stack traces are captured. (default "none")]:stacktrace level:(debug info warn error none)'
  '--log_target[The set of paths where to output the log. This can be any path as well as the special values stdout and stderr]:log output path:_files'
  {-n,--namespace}'[Config namespace]:namespace'
  {-p,--platform}'[Istio host platform (default: "kube")]:platform' 
  )

  local -a _help_flag
  _help_flag=(
  {-h,--help}'[help for create]'
  )

  _arguments -C \
    "1: :{_describe 'istioctl command' commands}" \
    '*:: :->args' \
    && ret=0

    case $words[1] in
      # istioctl context-create --api-server http://<ip>:<port> [flags]
      context-create)
        _arguments \
          '--api-server[URL for Istio api server]:istio api server url]' \
          '--context[Kubernetes configuration file context name (default "istio")]:context name' \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      # istioctl create [flags]
      create)
        _arguments \
          {-f,--file}'[Input file with the content of the configuration objects (if not set, command reads from the standard input)]:file:_files' \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      # istioctl delete <type> <name> [<name2> ... <nameN>] [flags]
      delete)
        _arguments \
          {-f,--file}'[Input file with the content of the configuration objects (if not set, command reads from the standard input)]:file:_files' \
          "1: :{_describe 'configuration types' configuration_types}" \
          "2:rules:"
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      # istioctl deregister <svcname> <ip> [flags]
      deregister)
        _arguments \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      experimental)
        local -a experimental_cmd
        experimental_cmd=(
        'convert-networking-config:Convert networking configs from v1alpha1 to v1alpha3'
        )
        _arguments \
          "1: :{_describe 'experimental subcommand' experimental_cmd}" \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      # istioctl gen-deploy [flags]
      # istioctl gen-deploy --features routing,policy,sidecar-injector -o helm
      gen-deploy)
        _arguments \
          '--debug[If true, uses debug images instead of release images]' \
          {-f,--features}'[List of Istio features to enable.]:feature:(mtls telemetry routing ingress policy sidecar-injector)]' \
          '--helm-chart-dir[The directory to find the helm charts used to render Istio deployments. -o yaml uses these to render the helm chart locally. (default ".")]:string' \
          '--hyperkube-hub[The container registry to pull Hyperkube images from (default "quay.io/coreos/hyperkube")]:string' \
          '--hyperkube-tag[The tag to use to pull the Hyperkube container (default "0.4.0")]:Hyperkube tag' \
          '--ingress-node-port[If provided, Istio ingress proxies will run as a NodePort service mapped to the port provided by this flag.]:ingress node port' \
          {-o,--out}"[Output format. Acceptable values are 'yaml' to produce contents of values.yaml or 'helm' to produces Kubernetes deployments (default \"helm\")]:output format:(yaml helm)" \
          '--values[Path to the Helm values.yaml file used to render YAML deployments locally when --out=yaml.]:values' \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      # istioctl get <type> [<name>] [flags]
      #
      # List all route rules
      #   $ istioctl get routerules
      # List all destination policies
      #   $ istioctl get destinationpolicies
      # Get a specific rule named productpage-default
      #   $ istioctl get routerule productpage-default
      get)
        if (( CURRENT == 2 )); then
          _arguments "*: :{_describe 'configuration types' configuration_types}"
        else
          _arguments "*:rules:($(istioctl get $words[2] | awk 'NR>1 {print $1}'))"
        fi

        _arguments \
          {-o,--output}'[Output format. (default "short")]:output format:(yaml short)' \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      # istioctl kube-inject [flags]
      #
      # Update resources on the fly before applying.
      #   $ kubectl apply -f <(istioctl kube-inject -f <resource.yaml>)
      #
      # Create a persistent version of the deployment with Envoy sidecar injected.
      #   $ istioctl kube-inject -f deployment.yaml -o deployment-injected.yaml
      #
      # Update an existing deployment.
      #   $ kubectl get deployment -o yaml | istioctl kube-inject -f - | kubectl apply -f -
      #
      # Create a persistent version of the deployment with Envoy sidecar injected configuration from kubernetes configmap 'istio-inject'
      #   $ istioctl kube-inject -f deployment.yaml -o deployment-injected.yaml --injectConfigMapName istio-inject
      kube-inject)
        _arguments \
          '--coreDump[Enable/Disable core dumps in injected Envoy sidecar (--coreDump=true affects all pods in a node and should only be used the cluster admin) (default true)' \
          '--debug[Use debug images and settings for the sidecar' \
          '--emitTemplate[Emit sidecar template based on parameterized flags' \
          {-f,--filename}'[Input Kubernetes resource filename]:resource filename:_files' \
          '--hub[Docker hub (default "unknown")]:docker hub' \
          '--imagePullPolicy[Sets the container image pull policy.(default "IfNotPresent")]:image pull policy:(Always IfNotPresent Never)' \
          '--includeIPRanges[Comma separated list of IP ranges in CIDR form. If set, only redirect outbound traffic to Envoy for IP ranges. Otherwise all outbound traffic is redirected]:include IP ranges' \
          '--injectConfigFile[injection configuration filename. Cannot be used with --injectConfigMapName]:injection configuration file:_files' \
          '--injectConfigMapName[ConfigMap name for Istio sidecar injection, key should be "config".This option overrides any other sidecar injection config options, eg. --hub]:Istio sidecar injection ConfigMap name' \
          '--meshConfigFile[mesh configuration filename. Takes precedence over --meshConfigMapName if set]:mesh config file:_files' \
          '--meshConfigMapName[ConfigMap name for Istio mesh configuration, key should be "mesh" (default "istio"):Istio mesh ConfigMap name' \
          {-o,--output}'[Modified output Kubernetes resource filename]:output resource filename:_files' \
          '--setVersionString[Override version info injected into resource]:resource version' \
          '--sidecarProxyUID[Envoy sidecar UID (default 1337)]:Envoy UID' \
          '--tag[Docker tag (default "unknown")]:Docker tag' \
          '--verbosity[Runtime verbosity (default 2)]:verbose level' \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      # istioctl proxy-config <pod-name> [flags]
      #
      # Retrieve config for productpage-v1-bb8d5cbc7-k7qbm pod
      #   $ istioctl proxy-config productpage-v1-bb8d5cbc7-k7qbm
      proxy-config)
        _arguments \
          "1:pod-name" \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      # istioctl register <svcname> <ip> [name1:]port1 [name2:]port2 ... [flags]
      register)
        _arguments \
          {-a,--annotations}'[List of string annotations to apply if creating a service/endpoint; e.g. -a foo=bar,test,x=y]:annotations' \
          {-l,--labels}'[List of labels to apply if creating a service/endpoint; e.g. -l env=prod,vers=2]:labels' \
          {-s,--serviceaccount}'[Service account to link to the service (default "default")]:service account' \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      replace)
        _arguments \
          {-f,--file}'[Input file with the content of the configuration objects (if not set, command reads from the standard input)]:configuration file:_files' \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        ;;

      version)
        _arguments \
          {-s,--short}'[Displays a short form of the version information]' \
          ${_help_flag[@]} \
          ${_global_flags[@]}
        # _arguments \
        #   {-s,--short}'[Displays a short form of the version information]' \
        #   ${_help_flag[@]}
        # _values 'global flags' ${_global_flags[@]}
        ;;

      help)
        _arguments "1: :{_describe 'command' commands}"
        ;;
    esac

  return ret
}

_istioctl "$*"

# vim:ft=zsh:et:sts=2:sw=2