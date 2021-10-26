from mysql.connector import Error
import mysql.connector as msql

def detail_siswa():
    try:
        conn = msql.connect(host='172.104.191.186', user='root', password='root')
        if conn.is_connected():
            cursor = conn.cursor()
    except Error as e:
        print("Error while connecting to MySQL", e)

    try:
        conn = msql.connect(host='172.104.191.186', database='cbt_jatim', user='root', password='root')
        if conn.is_connected():
            cursor = conn.cursor()
            cursor.execute(f"SELECT `tampilan`.`id_siswa`, `tampilan`.`nrp`, `tampilan`.`nama`,`tampilan`.`Fisika`,`tampilan`.`Kimia`,`tampilan`.`Matematika`,`tampilan`.`Biologi`,`tampilan`.`Agama`,`tampilan`.`Bahasa Indonesia`,`tampilan`.`Bahasa Inggris` FROM `tampilan`;")
            record = cursor.fetchall()
            return record
    except Error as e:
        print("Error while connecting to MySQL", e)