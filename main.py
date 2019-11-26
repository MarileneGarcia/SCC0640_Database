#!/usr/bin/python
import psycopg2
from termcolor import colored
from configparser import ConfigParser
import sys
import interface
from tkinter import *

connection = None
cursor = None

def run_sql(filename):
	global connection, cursor

	file = open(filename, 'r')
	sql = file.read()
	file.close()

	text = colored('Executando ' + filename, 'green')
	print (text)

	commands = sql.split(';')
	
	for command in commands[:-1]:
		if (len(command)>0):
			command = command + ';'
			try:
				cursor.execute(command)
			except(Exception, psycopg2.DatabaseError) as error:
				text = colored('ERRO', 'yellow', attrs=['reverse', 'blink'])
				print('\n' + text + command)
				print('\n' + str(error))

 
def config(filename='database.ini', section='postgresql'):
    parser = ConfigParser()
    parser.read(filename)
 
    db = {}
    if parser.has_section(section):
        params = parser.items(section)
        for param in params:
            db[param[0]] = param[1]
    else:
        raise Exception('Section {0} not found in the {1} file'.format(section, filename))
 
    return db

def insert(table, values):
    global connection
    global curso

    print("Executando INSERT...")
    
    values_content = ""
    for index, value in enumerate(values):
        if (index < len(values) - 1):
            values_content += "'" + str(value) + "'" + ", "
        else:
            values_content += "'" + str(value) + "'"

    
    query = "INSERT INTO " + table + " VALUES (" + values_content + ");"
    text = colored('QUERY:', 'yellow', attrs=['reverse', 'blink'])
    print("\n" + text + " " + query)

    try:
        cursor.execute(query)
        result = 1

    except Exception as error:
        text = colored('ERRO:', 'yellow', attrs=['reverse', 'blink'])
        print("")
        print(str(error))
        result = -1  

    return result


def connect():
	global connection, cursor

	try:
		params = config()
 
		print('Connecting to the PostgreSQL database...')
		connection = psycopg2.connect(**params)
		connection.autocommit = True
      
		cursor = connection.cursor()
        
		print('PostgreSQL database version:')
		cursor.execute('SELECT version()')
 
		db_version = cursor.fetchone()
		print(db_version)

		print('Conectado com sucesso!')
       
	except (Exception, psycopg2.DatabaseError) as error:
		print(error)
		sys.exit()



def main():
	global connection, cursor

	connect()

	run_sql('drop.sql')
	run_sql('create_tables.sql')
	run_sql('insert.sql')

	# ==== Conexão interface ======== 
	root = Tk()
	interface.atribuir(cursor,connection)
	interface.Application(root)
	root.mainloop()
	# ===============================

	cursor.close()
	 
 
if __name__ == '__main__':
	main()
    
