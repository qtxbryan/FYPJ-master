# FYPJ PlayStore Scraper & Permission Checker

A python script to batch download mobile apps from Google Play Store. It supports batch downloading by collection/categorie (default to Top Free 120) as well as recording the information (such as downloads/version/size/ratings/supported Android version etc.) of downloaded APKs in a csv files.

## Getting Started

### Prerequisites

This project depends on a couple of unofficial Google Play APIs, and here is their installation instruction:

* Look into the [requirements.txt](https://github.com/qtxbryan/requirements.txt) provided

* Ubuntu Linux 

* For database please install [XAMPP](https://www.apachefriends.org/download.html) then after import the sql file provided into database 

## Usage
```
python dbtest.py (-d [app_id] -c [COLLECTION CATEGORY] -s[AppName] -p [AppName.apk] -l)
```
### Available Options
```
  -h, --help            show this help message and exit
  -c [COLLECTION CATEGORY], --collection [COLLECTION]
                        The collection to download from
                        {TOP_FREE,NEW_FREE,GROSSING,TRENDING} (default:
                        TOP_FREE)
  -s [AppName], --search [AppName]
                        Search for a particular package
  -p [app_id.apk], --permission [AppName.apk]
                        Get the App Permission
  -l, --list            List all the category
  
```

### Example Usages

Check the available options:
```
python dbtest.py -h
```

Scrap the top 100 free apps from Game action Category:
```
python db.test.py -c TOP_FREE GAME_ACTION

```
Get the Application permission (U need to have the apk in the root of the folder)
```
python dbtest.py -p com.instagram.android.apk
```
