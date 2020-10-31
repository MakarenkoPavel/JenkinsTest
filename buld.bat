@echo off
msbuild EmptyProject.sln /p:Configuration=Release;Platform=x64 /maxcpucount:%NUMBER_OF_PROCESSORS% /nodeReuse:false"