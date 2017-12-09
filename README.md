[![HitCount](http://hits.dwyl.io/itraccoons/doe.svg)](http://hits.dwyl.io/itraccoons/doe)

### Project: doeZen ( Doezen Executions, Do Experiments, DevOps Environment)

Increasing perfomance by automating routing tasks.
Wrap your routine into own simple CLI

Platform: bash (macOS)
(not fully POSIX compliant because some bashism inplace)

### Quickstart

cd ~ && git clone https://github.com/itraccoons/doe.git

or

curl -fsSL https://doe.cloud/get | sh
//experimental - let me know if it's usefull for you


### Using DOE
    $ ~/doe/bin/doe _self init
    $ . ~/.bash_profile
    $ doe <TAB><TAB>
    $ doe _self create -m docker -f env -o c:h -l shell
    $ nano ~/doe/modules/docker/docker.create
    $ doe docker env -c up


Oleksii Kucheruk
Sat Dec  9 17:26:59 2017
