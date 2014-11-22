This is an example project to start developing asp mvc 5 sites using mono 3.2.8 and ubuntu 14.04 or newer.

I highly recommend using the latest version of mono and monodevelop from http://www.mono-project.com/download/#download-lin.

Required steps to use this example.

* Run ./nuget-package-restore.sh
* Open Site.sln in monodevelop 4.0.12 or newer


To configure nginx to serve this project see https://github.com/majorsilence/NginxAspMvcHosting.

# Nuget
Requires nuget packages are downloaded.  Run:

```bash
./nuget-package-restore.sh
```

This will download and extract the required mvc nuget packages to the packages folder.  This script is used as I have found that the nuget addin for monodevelop and nuget on mono in general does not always work well.


