import DBConnector
import api
import argparse
import time
import PermissionChecker

parser = argparse.ArgumentParser(description="Google Play Web Scraper"
                                             "")
parser = argparse.ArgumentParser(description="Google Play Store Web Scraper ")

parser.add_argument('-d', '--details', nargs="?",help = "Show Details of the specified package")

parser.add_argument('-c', '--collections', nargs='+', help="Fetch the package details based on the category"
                                                           "[CollectionID, Category, results, page]")

parser.add_argument('-dv', '--developer' , nargs='+', help="Get all package developed by the developer")

parser.add_argument('-s', '--search', nargs='?', help="Search for a particular package")

parser.add_argument('-l', '--list', action='store_true',help="List all the category")

parser.add_argument('-p', '--permission', nargs= '?', help = "Get the app permissions")


args = vars(parser.parse_args())
app_id = args['details']
collections = args['collections']
developer = args['developer']
search = args['search']
permission = args['permission']

if args['details']:
    date_scraped = time.strftime("%Y-%m-%d %H:%M")
    data = api.details(app_id)
    app_id = data['app_id']
    description = data['description']
    title = data['title']
    url = data['url']
    # Fields taken to create developer record
    developer_id = data['developer_id']
    dev_name = data['developer']
    print(dev_name)
    dev_email = data['developer_email']
    dev_address = data['developer_address']
    dev_url = data['developer_url']
    category = data['category']
    print(category)
    print(developer_id)

    result = DBConnector.readDeveloper(developer_id)
    if result:
        DBConnector.updateDeveloper(developer_id, dev_name, dev_url, dev_email,dev_address)
    else:
        DBConnector.createDeveloper(developer_id, dev_name, dev_url, dev_email, dev_address)

    catResult = DBConnector.readCategory(category)
    print(catResult)

    exist_app = DBConnector.readExistedApp(app_id)
    print("HI", exist_app)

    if exist_app:

        DBConnector.updateAppDetails(app_id, description, title, url, catResult, developer_id, date_scraped)
    else:
        DBConnector.createAppDetails(app_id, description, title, url, catResult, developer_id, date_scraped)

elif args['collections']:
    date_scraped = time.strftime("%Y-%m-%d %H:%M")

    dict_collection = dict()
    dict_collection['collection'] = collections[0]
    dict_collection['category'] = collections[1]
    print("Returned results: ", api.collection(dict_collection['collection'], dict_collection['category']))
    data = api.collection(dict_collection['collection'], dict_collection['category'])

    count = 1

    for x in data:
        print("Accessing data for app", count)
        dataDetails = api.details(x)
        count = count + 1

        for key, value in dataDetails.items():
            print(key, value)

        app_id = dataDetails['app_id']
        description = dataDetails['description']
        developer_id = dataDetails['developer_id']
        dev_name = dataDetails['developer']
        dev_email = dataDetails['developer_email']
        dev_address = dataDetails['developer_address']
        dev_url = dataDetails['developer_url']
        category = dataDetails['category']
        title = dataDetails['title']
        url = dataDetails['url']

        result = DBConnector.readDeveloper(developer_id)

        if result:
            DBConnector.updateDeveloper(developer_id, dev_name, dev_url, dev_email, dev_address)
        else:
            DBConnector.createDeveloper(developer_id, dev_name, dev_url, dev_email, dev_address)

        catResult = DBConnector.readCategory(category)
        print(catResult)

        exist_app = DBConnector.readExistedApp(app_id)
        print(exist_app)

        if exist_app:
            DBConnector.updateAppDetails(app_id, description, title, url, catResult, developer_id, date_scraped)
        else:
            DBConnector.createAppDetails(app_id, description, title, url, catResult, developer_id, date_scraped)

elif args['developer']:
    date_scraped = time.strftime("%Y-%m-%d %H:%M")
    dict_developer = dict()
    dict_developer['developer'] = developer[0]
    print("Returned results: ", api.developer(dict_developer['developer']))
    data = api.developer(dict_developer['developer'])

    count = 1

    for x in data:
        print("Accessing data for app", count)
        dataDetails = api.details(x)
        count = count + 1

        for key, value in dataDetails.items():
            print(key, value)

        app_id = dataDetails['app_id']
        description = dataDetails['description']
        developer_id = dataDetails['developer_id']
        dev_name = dataDetails['developer']
        dev_email = dataDetails['developer_email']
        dev_address = dataDetails['developer_address']
        dev_url = dataDetails['developer_url']
        category = dataDetails['category']
        title = dataDetails['title']
        url = dataDetails['url']

        result = DBConnector.readDeveloper(developer_id)

        if result:
            DBConnector.updateDeveloper(developer_id, dev_name, dev_url, dev_email, dev_address)
        else:
            DBConnector.createDeveloper(developer_id, dev_name, dev_url, dev_email, dev_address)

        catResult = DBConnector.readCategory(category)
        print(catResult)

        exist_app = DBConnector.readExistedApp(app_id)
        print(exist_app)

        if exist_app:
            DBConnector.updateAppDetails(app_id, description, title, url, catResult, developer_id)
        else:
            DBConnector.createAppDetails(app_id, description, title, url, catResult, developer_id)

elif args['search']:
    print(api.search(search))
elif args['list']:
    print(api.categories())
elif args['permission']:
    PermissionChecker.getPermissionFromManifest(permission)
    DBConnector.readPermission()
    PermissionChecker.CheckSubFolder('./RawResults')

    PermissionChecker.checkPermissionExist('./jd-cli-0.9.2-dist/' + PermissionChecker.AppName + '-dex2jar.src')

    print("")
    print("Permission Declared in Manifest :")
    print(PermissionChecker.PermissionDeclared)
    print("")
    # print "Permission checked in file and database :"
    # print (PermissionCheck)
    # print ""
    print("Permission that are checked :")
    print(PermissionChecker.PermissionExist)
    print("")
    # print "Permission that are dangerous :"
    # print (DangerousPermissions)
    print("")
    print("Permission that are over declared :")
    print([item for item in PermissionChecker.PermissionDeclared if item not in PermissionChecker.PermissionExist])
    print("")
