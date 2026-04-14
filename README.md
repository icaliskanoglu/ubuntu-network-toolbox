# ubuntu-network-toolbox

`ubuntu-network-toolbox` is an Ubuntu LTS based Docker image with a broad set of networking and troubleshooting tools preinstalled.

It is designed for:
- DNS and connectivity testing
- Route/path diagnostics
- Packet capture and traffic inspection
- Port scanning and service checks
- General Linux network troubleshooting in CI, dev, and ops workflows

## Included tools

The image currently includes (non-exhaustive):

- **DNS and name resolution:** `dig`, `nslookup` (`dnsutils`), `whois`
- **HTTP and transfer:** `curl`, `wget`
- **Connectivity and path diagnostics:** `ping` (`iputils-ping`), `mtr`, `traceroute`
- **Interface, routes, and link inspection:** `ip` (`iproute2`), `ifconfig`, `netstat` (`net-tools`), `ethtool`
- **Port and service testing:** `nc` (`netcat-openbsd`), `telnet`, `socat`
- **Scanning and discovery:** `nmap`, `arping`
- **Traffic capture and throughput:** `tcpdump`, `iftop`, `iperf3`
- **Firewall and packet filtering:** `iptables`, `nft`
- **L2 networking and virtualization helpers:** `bridge-utils`, `vlan`
- **System and support utilities:** `ssh` (`openssh-client`), `openssl`, `jq`, `lsof`, `procps`

Base image: `ubuntu:24.04` (latest LTS at the time of writing).

## Usage

### Pull from GHCR

```bash
docker pull ghcr.io/<owner>/<repo>:latest
```

### Run interactively

```bash
docker run --rm -it ghcr.io/<owner>/<repo>:latest
```

### Build locally

```bash
docker build -t ubuntu-network-toolbox:local .
docker run --rm -it ubuntu-network-toolbox:local
```

## GitHub Actions publishing

This repository includes a workflow that:
- builds the image on pull requests (build-only check),
- builds and publishes to GHCR on pushes to `main`,
- publishes version tags on Git tags like `v1.0.0`.

Published image name format:
- `ghcr.io/<owner>/<repo>:latest`
- `ghcr.io/<owner>/<repo>:main`
- `ghcr.io/<owner>/<repo>:vX.Y.Z` (for tags)

## License

Licensed under the MIT License. See `LICENSE`.
