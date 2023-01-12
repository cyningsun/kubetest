# kubetest
Kubetest is a repo built for kubernetes feature test. Each feature will be arranged in a unique directory with:
- README.md: introduce the background and how the case works
- Makefile: commands needed when running test case
- xxx.yaml: spec of testcase.

## For macos
As you may know, Docker Desktop on macOS runs a Linux VM in the background to run containers on macOS (since containers are a Linux concept). However, that VM is well hidden from view and you typically only interact with it when you start Docker Desktop or when you need to clean up images in the VM itself.

The most canonical way to get terminal access to the virtual machine (create a sh process in the virtual machine and get tty from it), you need the following command.
``` sh
docker run -it --privileged --pid=host debian nsenter -t 1 -m -u -n -i sh
```
This approach will create a container and will join it to the namespace of the host, after which it will create a new shell in the namespace of the init (pid 1) by executing the nsenter command. This will not change much with the later releases since it relies on stabile docker features to get the access to the vm. In the example I had used debian, but you can replace this with any image that has nsenter (ex. alpine, busybox, etc.)

refer: [How do I access the Docker CE virtual machine on MacOS BigSur?](https://stackoverflow.com/questions/66669224/how-do-i-access-the-docker-ce-virtual-machine-on-macos-bigsur)