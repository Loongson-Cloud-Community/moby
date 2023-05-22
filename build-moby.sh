export CGO_ENABLE=1
export GOPATH=~/go
export DOCKER_BUILDTAGS+="seccomp selinux" #Enable seccomp+selinux 
rm -rf ~/go/src/github.com/docker
mkdir -p ~/go/src/github.com/docker
ln -s /home/moby ~/go/src/github.com/docker/docker
pushd /home/moby
VERSION=23.0.4 PRODUCT=docker hack/make.sh  binary   #statuc
#VERSION=23.0.4 PRODUCT=docker hack/make.sh dynbinary #dynamic
popd
