import re
import sys
import os
import os.path
import xlrd
import difflib
import json
import DBConnector
import pymysql
from androguard.core.bytecodes.apk import APK

PermissionDeclared = []
PermissionExist = []
DBPermission = []
PermissionCheck = []
DangerousPermission = []
DangerousPermissions = []
PermissionMethod = []

# /home/fypj/Download/testtest
GivenAPK = sys.argv[1]
print("THIS IS THE GIVEN APK " + GivenAPK)
AppName = os.path.splitext(GivenAPK)[0]
title = GivenAPK[:-4]

def getPermissionFromManifest(Apack):
    SetApk = APK(Apack)
    ManifestPermissions = SetApk.get_permissions()

    for permission in ManifestPermissions:
        if "android.permission" in permission:
            PermissionDeclared.append(permission)
            connection = pymysql.connect(host='localhost',user='root',password='',db='dbplaystore')

            try:
                with connection.cursor() as cursor:
                    sql = "SELECT `perm_id`, `name` FROM permissions"
                    try:
                        cursor.execute(sql)
                        result = cursor.fetchall()
                        for row in result:
                            perm_name = row

                            if permission in perm_name:
                                permID = row[0]

                                DBConnector.createDeclaredPermission(title, permID)
                    except Exception as e:
                        print(e)

                connection.commit()
            finally:
                connection.close()
            with open("/home/fypj/Desktop/FYPJ" + AppName + "Declared permissions", "w+") as outfile:
                json.dump(PermissionDeclared, outfile)


def CheckSubFolder(folder):
    for root, directories, files in os.walk(folder):
        for f in files:
            wFile = open("./ActualResults/apipermission/" + f,"w+")

            fullpath = os.path.join(root,f)

            rFile = open(fullpath,"r")

            results = []

            for line in rFile:

                results.append(convertingRawtoMethods(line))
            if results:
                for item in results:
                    wFile.write(item + "\n")



def convertingRawtoMethods(txt):
    re1='[^\s]+\('

    rg = re.compile(re1, re.IGNORECASE|re.DOTALL)

    m = rg.search(txt)

    if m:
        var1 = m.group(0)
        return var1


def grep(pattern, dir):
    r = re.compile(pattern)
    files = [o[0] + "/" + f for o in os.walk(dir) for f in o[2] if os.path.isfile(o[0] + "/" + f)]
    return [l for f in files for l in open(f) if r.search(l)]


def checkPermissionExist(folder):
    if PermissionDeclared:
        for permission in PermissionDeclared:
            my_file = "./ActualResults/apipermission/" + permission

            if os.path.isfile(my_file):
                permissionapifile = open(my_file, "r")
                grepres = []

                for line in permissionapifile:
                    line = line[:-2]

                    if len(line) <= 7:
                        continue
                    getgrep = grep(line, folder)
                    grepres.append(getgrep)

                if grepres:
                    PermissionExist.append(permission)

                    connection = pymysql.connect(host='localhost',user='root',password='',db='dbplaystore')

                    try:
                        with connection.cursor() as cursor:
                            sql = "SELECT `name`, `perm_id` FROM permissions"

                            try:
                                cursor.execute(sql)
                                result = cursor.fetchall()
                                for row in result:
                                    perm_name = row[0]
                                    if permission in perm_name:
                                        permID = row[1]
                                        DBConnector.createExistingPermission(permID, title)
                                        
                            except Exception as e:
                                print(e)
                        connection.commit()
                    finally:
                        connection.close()
                    with open("/home/fypj/Desktop/FYPJ/" + AppName + "Used permissions", "w+") as outfile:
                        json.dump(PermissionExist, outfile)



os.system('./dex2jar-2.0/dex2jar-2.0/d2j-dex2jar.sh' + " " + GivenAPK)

os.chdir('./jd-cli-0.9.2-dist')

os.system('java -jar jd-cli.jar ../' + AppName + '-dex2jar.jar')

os.system('unzip' + " " + AppName + "-dex2jar.src.jar" + " " + "-d ./" + AppName + "-dex2jar.src")

os.chdir('../../../Desktop/FYPJDownloader/testtest')

getPermissionFromManifest(GivenAPK)


DBConnector.readPermission()
CheckSubFolder('./RawResults')

os.chdir('../../../Downloads/FYPJ-master')
checkPermissionExist('./jd-cli-0.9.2-dist/' + AppName + '-dex2jar.src')

print("")
print('Permission Declared in Manifest: ')
print(PermissionDeclared)
print("")

print("Permission that are checked: ")
print(PermissionExist)
print("")

print("")
print("Permission that are over declared: ")
print([item for item in PermissionDeclared if item not in PermissionExist])
print("")

