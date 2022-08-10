This is an example project to start developing asp mvc 5 sites using mono 6.12 and ubuntu 20.04 or newer.

I highly recommend using the latest version of mono and monodevelop from http://www.mono-project.com/download/#download-lin.

Required steps to use this example.

* Open Site.sln in [rider](https://www.jetbrains.com/rider/) of if on windows visual studio


To configure nginx to serve this project see https://github.com/majorsilence/NginxAspMvcHosting.

To host in docker run  __build_docker.sh__ whatever.




# Site Publish using Mono

See https://github.com/majorsilence/MonoWebPublisher/releases

Building a legacy .netframework asp.net project on linux or mac can be done with mono and msbuild but publishing fails.   See the open source MonoWebPublisher project for a small utility to do the same thing.   Download the nuget package and add it to your private feed or extract the MonoWebPublisher.exe file and place it wherever.

Powershell example

```powershell
#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
$CURRENTPATH = $pwd.Path

nuget install "MonoWebPublisher" -Source https://YourPrivateNugetFeed -OutputDirectory ./packages
docker run -v ${CURRENTPATH}:/src mono:6.12 sh -c 'cd /src && ls && nuget restore YourSolution.sln && msbuild /property:Configuration=Release YourSolution.sln && mono /src/packages/MonoWebPublisher.1.0.0/lib/net48/MonoWebPublisher.exe /src/YourProjectSubfolder/YourProject.csproj /src/YourProjectSubfolder/bin/app.publish'

docker build --no-cache -f ./Dockerfile -t your_docker_image_name --rm=true .
```
