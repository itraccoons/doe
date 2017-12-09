[![HitCount](http://hits.dwyl.io/itraccoons/doe.svg)](http://hits.dwyl.io/itraccoons/doe)

### Project: doeZen ( Doezen Executions, Do Experiments, DevOps Environment)

Increasing perfomance by automating routing tasks.
Wrap your routine into own simple CLI

Platform: bash (macOS)
(not fully POSIX compliant because some bashism inplace)

### Quickstart

cd ~ && git clone https://github.com/itraccoons/doe.git

or

(curl -fsSL https://doe.cloud/get | sh (broken now) - let me know if it's will be usefull for you)


### Using DOE
    $ doe _self init
    $ . ~/.bash_profile
    $ doe _self create -m docker -f env -o c: -l shell
    $ nano ~/doe/modules/docker/docker.create
    $ doe docker env -c up


Oleksii Kucheruk
Thu Dec  7 22:52:01 2017
