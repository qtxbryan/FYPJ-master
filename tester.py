import scraper
import api
import argparse
import DBConnector

parser = argparse.ArgumentParser(description="Google Play Web Scraper"
                                             "")
parser = argparse.ArgumentParser(description="Google Play Store Web Scraper ")

parser.add_argument('-d', '--details', nargs="?",help = "Show Details of the specified package")

parser.add_argument('-c', '--collections', nargs='+', help="Fetch the package details based on the category"
                                                           "[CollectionID, Category, results, page]")

parser.add_argument('-dv', '--developer' , nargs='+', help="Get all package developed by the developer")

parser.add_argument('-s', '--search', nargs='?', help="Search for a particular package")

parser.add_argument('-l', '--list', action='store_true',help="List all the category")

args = vars(parser.parse_args())
app_id = args['details']
collections = args['collections']
developer = args['developer']
search = args['search']

if args['details']:
    print("Accessing details of the application")
    # GET THE AN APP DATA THAT IS SCRAPED
    data = api.details(app_id)
    # Loop through the dictionary and store in a variable for database fields
    for key, value in data.items():
        print(key, value)
    # Fields taken: app_id, title ......
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

    # Check for existing record in db
    if result: # if exist then update else create developer record
        DBConnector.updateDeveloper(developer_id, dev_name, dev_url, dev_email, dev_address)
    else:
        DBConnector.createDeveloper(developer_id, dev_name,dev_url, dev_email, dev_address)

    catResult = DBConnector.readCategory(category)

    if catResult:
        cat_id = "SELECT `categoryID` FROM category WHERE  `name` = category"

    # Check for collection and category table using the variable taken from above
        # if exist then get the catID and colID
    # Check for existing app record in db
        # if exist then update else create app record using the fields taken from above

    f1 = open('./testfile', 'w+')
    f1.write("%s" %api.details(app_id))
    f1.close()
elif args['collections']:
    dict_collection = dict()
    dict_collection['collection']=collections[0]
    dict_collection['category']= collections[1]
    print(api.collection(dict_collection['collection'], dict_collection['category']))
    f2 = open('./categoryfile', 'w+')
    f2.write("%s" %api.collection(dict_collection['collection'], dict_collection['category']))
    f2.close()
elif args['developer']:
    dict_developer = dict()
    dict_developer['developer'] = developer[0]
    print(api.developer(dict_developer['developer']))
    f3 = open('./developerfile', 'w+')
    f3.write('%s' %api.developer(dict_developer['developer']))
    f3.close()
elif args['search']:
    print(api.search(search))
elif args['list']:
    print(api.categories())


