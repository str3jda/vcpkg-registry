# vcpkg-registry use

- [SHA512 for vcpkg_from_github] 
	- download tar.gz of target commit
	- git hash xxx.tar.gz

- default port version (/versions/baseline.json)
	- sets version of latest commits of each lib, which user downloads by default (=> update to latest on each new version)
	- "baseline": the same what vcpkg.json has
	- "port-version": the same what vcpkg.json has

- port versions (/versions/x-/xxx.json)
	- add new versions always on top (DON'T remove old versions)
	- "git-tree": git rev-parse HEAD:ports/xxx


https://devblogs.microsoft.com/cppblog/registries-bring-your-own-libraries-to-vcpkg/
