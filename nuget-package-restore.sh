#!/usr/bin/env bash

# manually restore packages because of poor nuget support on mono/linux/mac

fixmvc5registrypermissionerror()
{
	# See http://stackoverflow.com/questions/20512784/asp-net-mvc-3-project-in-xamarin-gives-system-unauthorizedaccessexception-error
	echo "configure /etc/mono/registry for use with MVC5"
	sudo rm -rf /etc/mono/registry
	sudo mkdir /etc/mono/registry
	sudo mkdir /etc/mono/registry/LocalMachine
	sudo chmod g+rwx /etc/mono/registry/
	sudo chmod g+rwx /etc/mono/registry/LocalMachine
}

restorerefernces()
{
	rm -rf ./packages
	mkdir packages

	wget -O Microsoft.AspNet.Razor.zip http://packages.nuget.org/api/v2/package/Microsoft.AspNet.Razor/3.1.2
	unzip Microsoft.AspNet.Razor.zip "lib/*" -d ./packages/Microsoft.AspNet.Razor.3.1.2
	rm -f Microsoft.AspNet.Razor.zip

	wget -O Microsoft.AspNet.WebPages.zip http://packages.nuget.org/api/v2/package/Microsoft.AspNet.WebPages/3.1.2
	unzip Microsoft.AspNet.WebPages.zip "lib/*" -d ./packages/Microsoft.AspNet.WebPages.3.1.2
	rm -f Microsoft.AspNet.WebPages.zip

	wget -O Microsoft.AspNet.Mvc.zip http://packages.nuget.org/api/v2/package/Microsoft.AspNet.Mvc/5.1.2
	unzip Microsoft.AspNet.Mvc.zip "lib/*" -d ./packages/Microsoft.AspNet.Mvc.5.1.2
	rm -f Microsoft.AspNet.Mvc.zip

	wget -O Microsoft.Web.Infrastructure.zip http://packages.nuget.org/api/v2/package/Microsoft.Web.Infrastructure/1.0.0
	unzip Microsoft.Web.Infrastructure.zip "lib/*" -d ./packages/Microsoft.Web.Infrastructure.1.0.0.0
	rm -f Microsoft.Web.Infrastructure.zip

}

fixmvc5registrypermissionerror
restorerefernces

exit

