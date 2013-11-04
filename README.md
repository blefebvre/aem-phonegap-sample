Simple AEM + PhoneGap Sample
======

This a content package project generated using the simple-content-package-archetype.

Building
--------

This project uses Maven for building. Common commands:

From the project directory, run ``mvn -PautoInstallPackage clean install`` to build the bundle and content package and install to a CQ instance.

Using with VLT
--------------

To use vlt with this project, first build and install the package to your local CQ instance as described above. Then cd to `src/main/content/jcr_root` and run

    vlt --credentials admin:admin checkout -f ../META-INF/vault/filter.xml --force http://localhost:4502/crx

Once the working copy is created, you can use the normal ``vlt up`` and ``vlt ci`` commands.

Specifying CRX Host/Port
------------------------

The CRX host and port can be specified on the command line with:
mvn -Dcrx.host=otherhost -Dcrx.port=5502 <goals>

Edit the app content
--------------------

Once installed, open the [top-level app page](http://localhost:4502/cf#/content/bruce/app/app-content.html) to edit the app.

There's only one page in this app but others added as descendants will be included automatically by content sync. 

Configure PhoneGap build
-------------------------

Create a new Cloud Service config under PhoneGap Build in the [tools UI](http://localhost:4502/miscadmin#/etc/cloudservices/phonegap-build).

Open up the new config and enter your PhoneGap build credentials.

Return to [the app](http://localhost:4502/cf#/content/bruce/app/app-content.html). Via the Sidekick, open the 'Page' tab and select 'Page Properties...'.

In the popup, head to the 'Cloud Services' tab. Click the 'Add Service' button. Select 'PhoneGap Build' from the list and click OK. From the 'PhoneGap Build' dropdown, select the config you created in the previous step. Click OK.

Build your app with PhoneGap build
----------------------------------

Head to the [workflow UI](http://localhost:4502/libs/cq/workflow/content/console.html). Select the 'Initiate PhoneGap Build' workflow. Click the 'Start' button. For the 'Payload' field, navigate to content/bruce/app/app-content. Click OK. Click OK again to kick off the workflow.

You should now see your app building on [PhoneGap build](https://build.phonegap.com/apps).