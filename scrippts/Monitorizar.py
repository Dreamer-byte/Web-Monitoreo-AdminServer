#!/bin/python3
import paramiko
import argparse

host=""
user = ""
parser = argparse.ArgumentParser(description='Monitorizacion de servidores con ssh')
parser.add_argument('-u', '--user', help='usuario para conectarse')
parser.add_argument('-ip', '--host', help='direccion ip del host')
parser.add_argument('-m', '--memoria',help='monitoriozar memoria',required=False)
parser.add_argument('-d', '--disco',help='monitoriozar disco',required=False)

args = parser.parse_args()

if args.user == None: 
    print("Se necesita un usuario")
else:
    user = args.user
    print(user)

if args.host == None:
    print("se necesita una direcion ip.")
else:
    host = args.host
    print(host)

if host and user:
    datos = dict(hostname=host, username=user)
    ssh_client = paramiko.SSHClient() 
    ssh_client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh_client.connect(**datos)
    shell = ssh_client.invoke_shell()

    entrada, salida, error = ssh_client.exec_command('ls -l') 
    print(salida.read().decode())
    
    
    shell.close()
    ssh_client.close()
