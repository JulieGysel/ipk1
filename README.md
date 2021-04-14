# IPK Projekt 1

A simple GET script.

## Usage

There are two ways to run the script:
```
python3 ./fileget -n NAMESERVER -f SURL
```
or
```
chmod +x fileget
./fileget -n NAMESERVER -f SURL
```
where `NAMESERVER` is a IPV4 address and port and `SURL` is the address of the file you wish do download. You can also use `*` instead of the file name to download the whole content of the server. It is however not possible to download the whole content of a specified folder.

The folder structure will be preserved both when you download a specific file and in the case of downloading the whole server.