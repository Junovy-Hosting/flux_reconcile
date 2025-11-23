# Flux Enhanced CLI

A Go-based enhanced CLI for Flux that provides:

- Real-time Kubernetes event monitoring
- Colored output with emojis
- No job control issues (unlike shell scripts)
- Better error handling and status reporting

## Building

```bash
go build -o flux-enhanced-cli .
```

Or install to your PATH:

```bash
go install .
```

## Usage

```bash
# Reconcile a kustomization
./flux-enhanced-cli --kind kustomization --name my-app --namespace flux-system

# Reconcile a helmrelease
./flux-enhanced-cli --kind helmrelease --name my-app --namespace production

# Reconcile a git source
./flux-enhanced-cli --kind source --name my-repo --namespace flux-system

# Don't wait for completion
./flux-enhanced-cli --kind kustomization --name my-app --wait=false

# Custom timeout
./flux-enhanced-cli --kind kustomization --name my-app --timeout 10m
```
