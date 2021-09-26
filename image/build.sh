podman build -t quay.io/apoczeka/shellshock:latest .
podman login -u apoczeka@redhat.com quay.io
podman push quay.io/apoczeka/shellshock:latest
podman logout quay.io
