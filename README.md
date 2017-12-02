[![HitCount](http://hits.dwyl.io/itraccoons/doe.svg)](http://hits.dwyl.io/itraccoons/doe)

### Project: doeZen ( Doezen Executions, Do Experiments, DevOps Environment)

Increasing perfomance by automating routing tasks.
Wrap your routine into own simple CLI

Platform: macOS
(not fully POSIX compliant because some bashism inplace)

### Quickstart

cd ~ && git clone https://github.com/itraccoons/doe.git

or

curl -fsSL https://doe.cloud/get | sh (broken now)


### Using DOE
    $ doe _self create -m docker -f env -o c: -l shell
    $ doe docker env -c up
    $ doe docker env -c ssh
    $ doe docker env -c halt
    $ cd $(doe docker env -c pwd)


Oleksii Kucheruk
Sat Dec  2 19:22:47 2017