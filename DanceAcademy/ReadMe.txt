If you are using a custom-named instance of Microsoft SQL Server Express, 
you will need to browse the web.config, files in the demos for connectionString parameter entries, 
and replace any occurrence of the default instance name ("SYSTEM") with your custom instance name. 
You also need to update the connection string in HomeController.cs and LoginController.cs files under the Controller folder.