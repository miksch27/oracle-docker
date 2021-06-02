# Oracle-docker

..based on the link

https://ronekins.com/2020/10/07/oracle-19c-on-docker-and-kubernetes-part-1-getting-started/
and
https://ronekins.com/2020/10/10/oracle-19c-on-docker-and-kubernetes-part-2-running-oracle-on-docker/

I try to get a PIVOT query in a new oracle implementation.

A valid Oracle Singel Sign On and a confirming about Oracle Enterprise Licence is a prerequisit for the following download

a login to containter-registry.oracle.com worked:

> C:\> docker login container-registry.oracle.com
> Username: userid@yourdomain.com
> Password:
> Login Succeeded

a download started with this command:

> C:\> docker pull container-registry.oracle.com/database/enterprise:latest
> latest: Pulling from database/enterprise
> .......6196: Pull complete
> 3b3cb34bf3a: Pull complete
> 14616be8a89: Downloading [=============> ] 873.1MB/3.221GB
> ...a44db682: Download complete

After this command is finished, doublecheck it via:

> C:\> docker images
> ...
> container-registry.oracle.com/database/enterprise latest 6ee1b2e4403f 5 months ago 7.87GB
> ...

This command start the container from this new image. It uses my-env.txt in my case. It contains password, sid..

> C:\> docker run -d --env-file my-env.txt --name oracele19ee -p 1521:1521 -p 5500:5500 container-registry.oracle.com/database/enterprise
> 7c0fe17cfb58119e1afe93e99cecb7b0be4345988ead370734071a3a9f14f5c6
> C:\>

I don't know if -p ${LISTENER}:1521 -p ${OEM}:5500 on Windows 10 pwsh works.

After a while the database was installed:

> C:\> docker logs oracele19ee --follow

Check the ports

> C:\> docker port oracele19ee

Following executes and exits sqlplus

> C:\> docker exec -it oracele19ee sqlplus
> SQL> exit  
> Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production
> Version 19.3.0.0.0
> C:\>

The following pipes DDLs to the new instance

> C:\> docker exec -it oracele19ee sqlplus

> C:\> docker stop oracele19ee  
> oracele19ee
> C:\> docker unpause oracele19ee  
> Error response from daemon: Container f9992f29eefb211baf112a8a62e30fea82ba3b2a82303890c0dbf54717dfc8a5 is not paused
> C:\> docker start oracele19ee  
> oracele19ee
> C:\>

Das ist die letzte Zeile dieser Beschreibung
