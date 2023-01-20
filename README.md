# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## How to Deploy to Sqlite 3
- From your Project Folder, Enter Command **npm install sqlite3 -d**
- Deploy your initial csv data to sqlite using commsnd **cds deploy --to sqlite**

## Create Fiori Application from Template
- Navigate to Homepage and click **Create from Template**
- Select Application Type **SAP Fiori Elements**
- Select **List Report Page**
- select Data Source **Use Local CAP Project**
- Give your CAP Foler Path
- Select odata service **productshop (Nodejs)**
- Select main entity **Product**
- in application namespace give **ns**

## ## MTA Deployment -> Develop -> Build --> Deploy

-  cds add hana,mta,xsuaa,approuter --for production
-  npm update --package-lock-only
-  mbt build -t gen --mtar mta.tar
-  cf deploy gen/mta.tar

## Tutorials for GIT
- git init ---> Mandatory task to initlise the GIT
- git remote add origin https://github.com/btpchamp/capchamp.git -> to add origin
- git remote rm origin --> Delete your exisitng origin
- git help / git help -a
- git remote -v 
- git status
- git add . //add 
- git branch
- git commit -m "git knowledge"
- git checkout -b "git-rampup"
- git push origin git-rampup






