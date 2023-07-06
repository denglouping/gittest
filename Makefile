PKG_NAME = bcs-k8s
VER = v0.0.1
CURRENT_VERSION = release-$(VER)

clean:
	-rm ./bcs-k8s-release-$(VER).tar.gz

build:clean
	find . -not -path "*/.git/*" -a -not -path "*/bin/*" -a -not -path "*/image/*" -a -not -path "*/Makefile" -type f -print0
	tar -czvf bcs-k8s-release-$(VER).tar.gz ./* --exclude=bin --exclude=image --exclude=Makefile --exclude=\..*
