from flask import Flask, jsonify
import pymysql

app = Flask(__name__)

@app.route("/")
def index():
    return "This is root!"



@app.route("/api/<app_name>")
def getAppPermission(app_name):
    connection = pymysql.connect(
        host='localhost',
        user='root',
        password='',
        db='dbplaystore'
    )

    try:
        with connection.cursor() as cursor:
            sql = "SELECT `app_id` FROM app WHERE title = %s"
            sql2 = "SELECT `perm_exist`.`perm_id`, `permissions`.`name` FROM perm_exist INNER JOIN permissions ON perm_exist.perm_id = permissions.perm_id WHERE `app_id` = %s"

            try:
                cursor.execute(sql, (app_name))
                app_id = cursor.fetchall()
                print(app_id)

                cursor.execute(sql2, (app_id))
                result = cursor.fetchall()
                print(result)

                return jsonify(result)

            except Exception as e:
                print(e)
                print("Something wrong with retrieving appid")
        connection.commit()
    finally:
        connection.close()


if __name__ == '__main__':
    app.run(host ='0.0.0.0', port=5000)