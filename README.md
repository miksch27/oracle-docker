# Oracle-docker

..based on the link https://ronekins.com/2020/10/07/oracle-19c-on-docker-and-kubernetes-part-1-getting-started/

I try to get a PIVOT query in my oracle implementation.

A valid Oracle Singel Sign On and
A confirming the Oracle Enterprise Licence is a prerequisit

a login to containter-registry.oracle.com worked:

> C:\docker login container-registry.oracle.com
> Username: userid@yourdomain.com
> Password:
> Login Succeeded

a download started with this command:

> C:\Users\Chris>docker pull container-registry.oracle.com/database/enterprise:latest
> latest: Pulling from database/enterprise
> .......6196: Pull complete
> 3b3cb34bf3a: Pull complete
> 14616be8a89: Downloading [=============> ] 873.1MB/3.221GB
> ...a44db682: Download complete
