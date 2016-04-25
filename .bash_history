psql

exit
psql
sudo nano /etc/postgresql/9.4/main/pg_hba.conf
psql
sudo nano /etc/postgresql/9.3/main/pg_hba.conf
sudo nano /etc/postgresql/9.4/main/pg_hba.conf
psql
sudo service postgresql restart
psql
sudo nano /etc/postgresql/9.4/main/postgresql.conf 
invoke-rc.d postgresql restart
sudo nano /etc/postgresql/9.4/main/pg_hba.conf
invoke-rc.d postgresql reload 
sudo reboot
psql
sudo nano /etc/postgresql/9.4/main/pg_hba.conf
invoke-rc.d postgresql reload 
sudo reboot
sudo apt-get update
sudo passwd postgres
ssh-keygen
sudo apt-get install phppgadmin
sudo nano /etc/apache2/conf.d/phppgadmin
exit
ls
exit
pgpsql
psql
sudo apt-get install unzip
quit
logout
sudo apt-get install libpq-dev
ls /usr/local/include/
find . -type f -name "postgres.h"
find / -type f -name "postgres.h"
sudo find / -type f -name "postgres.h"
locate postgresql
locate postgresql/*.h
locate *.h
sudo apt-get install -f libpq-dev
sudo apt-get update
sudo apt-get upgrade 
sudo apt-get install cowsay
cowsay Welcome
fortune
sudo apt-get install fortune
fortune | cowsay
vi /etc/bash.bashrc
sudo vi /etc/bash.bashrc
fortune | xcowsay
sudo vi /etc/bash.bashrc
logout
adduser test
sudo adduser test
su - postgres
q
psql
su - test
sudo apt-get install postgresql-plpython-8.4
psql --v
psql -v
psql --version
sudo apt-get install postgresql-plpython-9.4
logout
sudo apt-get install postgresql-9.3 libpq-dev
sudo apt-get install postgresql libpq-dev
sudo apt-get install postgresql-9.3 postgresql-server-dev-9.3 libpq-dev
sudo apt-get install postgresql-9.3 postgresql-server-dev libpq-dev
sudo apt-get install postgresql-server-dev
sudo apt-get install postgresql-9.3 postgresql-server-dev-9.3 libpq-dev
sudo apt-get install postgresql-9.1 postgresql-server-dev-9.1 libpq-dev
SUDO apt-get install postgresql-9.4
sudo apt-get install postgresql-9.4
locate postgres.h
locate . postgres.h
find . postgres.h
ls /usr/lib/
vi .bash
ls -a
cat .bashrc 
vi /etc/bash.bashrc 
mv /etc/bash.bashrc oldbashrc
sudo mv /etc/bash.bashrc oldbashrc
logout
ls /etc
vim /etc/hosts
vi /etc/hosts
nslookup spacefc.net
logout
vi /etc/hostname 
sudo vi /etc/hostname 
logout
sudo /etc/init.d/hostname restar
sudo /etc/init.d/hostname restart
sudo service hostname restart
sudo vi /etc/hosts
sudo service hostname restar
sudo service hostname restart
sudo reboot
psql
logout
psql
chuser
logout
who
logout
psql
pwd
ls
cd SyntheticData/
ls
pwd
psql
logout
python
lohout
logout
psql
ls
mv pgcluu /dev/null 
rm -rf pgcluu/
ls
rm -rf __MACOSX/
rm -rf oldbashrc 
ls
psql
./hilbert.py 
python
psql
python -v
psql
ls -lrt
psql
ls
mkdir temp
cd temp/
wget https://github.com/dalibo/pgbadger/archive/v7.3.zip
unzip v7.3.zip 
ls
cd pgbadger-7.3/
ls
cd ..
rm -rf *
ls
wget https://github.com/dalibo/pgbadger/archive/v8.0.tar.gz
ls
tar xzf v8.0.tar.gz 
cd pgbadger-8.0/
perl Makefile.PL 
make && sudo make install
psql
vi  /etc/postgresql/9.4/main/postgresql.conf
cd /etc/postgresql/9.4/main
ls
~/temp/pgbadger-8.0/
cd ~/temp/pgbadger-8.0/
ls
/etc/postgresql/9.4/main
mv new_conf /etc/postgresql/9.4/main
sudo mv new_conf /etc/postgresql/9.4/main
cd /etc/postgresql/9.4/main
ls
mv postgresql.conf postgresql.conf.old
sudo mv postgresql.conf postgresql.conf.old
mv new_conf postgresql.conf
sudo mv new_conf postgresql.conf
sudo reboot
ls
logout
ls
mv uniform_* SyntheticData/
ls
cd SyntheticData/
ls
psql
cd ..
psql
sudo -u postgres psql postgres
sudo /etc/init.d/postgresql restart
psql
sudo /etc/init.d/postgresql reload
psql
cd /etc/postgresql/9.4/main
ls
mv postgresql.conf postgresql.conf.new
sudo mv postgresql.conf postgresql.conf.new
sudo mv postgresql.conf.old postgresql.conf
sudo reboot
psql
logout
psql
ls
cd SyntheticData/
rm -rf *
ls
psql
top
psql
ls
cd PyScripts/
ls
cat hilbert.py 
psql
cd SyntheticData/
ls
ls      DROP TABLE uniform_2 CASCADE;
psql
psql 
psql
cd SyntheticData/
ls
ls RangeQ_2_4.txt 
cat RangeQ_2_4.txt 
ls RangeQ_2_4.txt 
cat RangeQ_2_4.txt 
top
cat RangeQ_2_4.txt 
cat RangeQ_4_4.txt 
psql
top
sudo reboot
cd SyntheticData/
mkdir PQ1000000
dc ..
cd ..
ls
cd sdb/
ls
git commit
git commit all
git commit push
git push
git status 
git add
git commit -m "1000000 Point Data, and PL_PYTHON code"
git push origin
git checkout master
git merge
git push
git push origin master
git push
git add *
git commit -a -m "1000000 Point Data, and PL_PYTHON code"
git push
psql
cd SyntheticData/
ls 
mkdir uniform_data_100k
psql
dropdb sdb
createdb sdb
psql
ls
cd ls
cd uniform_data_100k
ls
psql
ls
mv u_* uniform_*
mv u_16_100000.txt uniform_16_100000.txt
mv u_2_100000.txt uniform_2_100000.txt
mv u_4_100000.txt uniform_4_100000.txt
mv u_8_100000.txt uniform_8_100000.txt
psql
psql 
top
cd SyntheticData/
ls
cd PQ1000000/
ls
CREATE OR REPLACE FUNCTION PQ_D(DATA_CATEGORY text,NDIM integer,SIZE integer)
AS $$
import csv
import sys
import math
grid_edge=1024
totalPoints=grid_edge**ndim
order=int(math.log(totalPoints,4))
sys.path.append('/home/sdb/PyScripts')
import hilbert
with open('/home/sdb/SyntheticData/PQ1000000/u_'+str(ndim)+'_'+str(size)+'.txt', 'rU') as f:
return rowCount
$$ LANGUAGE plpythonu;
CREATE OR REPLACE FUNCTION PQ_D(DATA_CATEGORY text,NDIM integer,SIZE integer)
AS $$
import csv
import sys
import math
grid_edge=1024
totalPoints=grid_edge**ndim
order=int(math.log(totalPoints,4))
sys.path.append('/home/sdb/PyScripts')
import hilbert
with open('/home/sdb/SyntheticData/PQ1000000/u_'+str(ndim)+'_'+str(size)+'.txt', 'rU') as f:
return rowCount
$$ LANGUAGE plpythonu;
top
git add *
git commit -a -m "1000000 Point Queries"
git push
\q
logout
top
who
top
psql 
du
df
psql
git commit -a -m "1000000 Point Qutip
top
who
screen
sudo apt-get install screen
man screen
psql
python
psql
psql
psql
top
1
aw1quit
quit
exit
git commit -a -m "minor changes"
git add *
git commit -a -m "minor changes"
git push
git lfs install
ls
cd temp/
ls
wget https://github.com/github/git-lfs/releases/download/v1.2.0/git-lfs-linux-amd64-1.2.0.tar.gz
ls
tar =xvzf git-lfs-linux-amd64-1.2.0.tar.gz 
tar -xvzf git-lfs-linux-amd64-1.2.0.tar.gz 
cd git-lfs-1.2.0/
./install.sh 
sudo ./install.sh 
git lfs install
sudo git lfs install
cd ..
git lfs install
sudo git lfs install
git add *
git commit -a -m "minor changes"
rm temp
rm -f temp
rm -c temp
rm -v temp
rm -r temp
ls
git commit -a -m "minor changes"
git add *
git commit -a -m "minor changes"
git push
psql
cd java/
ls
java TestPointsUniform.java
cat TestPointsUniform.java
ls
javac TestPointsUniform.java
ls
java TestPointsUniform.class
java TestPointsUniform 
java TestPointsUniform uniform 2 100 false
sudo apt-get install libpostgresql-jdbc-java
java TestPointsUniform uniform 2 100 false
sudo apt-get install ftp
sudo apt install vsftpd
exit
screen
pwd
cd java/
javac MC2.java
ls
java
cat MC2.java 
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
sudo apt-get install vim
vim MC2.java 
javac MC2.java
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
psql
vim MC2.java 
javac MC2.java
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
vim MC2.java 
javac MC2.java
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
vim MC2.java 
javac MC2.java
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
vim MC2.java 
javac MC2.java
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
psql
cd /etc/postgresql/
ls
cd 9.4/
cd main/
ls
vim postgresql.conf
sudo aptitude install tomcat7
cd ~/te
cd ~/
ls
mkdir temp
c temp/
cd temp/
wget https://jdbc.postgresql.org/download/postgresql-9.4.1208.jre6.jar
mv postgresql-9.4.1208.jre6.jar /etc/tomcat7/
sudo mv postgresql-9.4.1208.jre6.jar /etc/tomcat7/
cd /etc/tomcat7/
ls
mv postgresql-9.4.1208.jre6.jar ~/java/
ls
cd ~/ja
cd ~/java/
ls
export CLASSPATH=./*.jar:
java MC2.java
javax MC2.java
javac MC2.java
java MC2
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
vim MC2.java 
java -Djdbc.drivers=org.postgresql.Driver MC2
java -Djdbc.drivers=org.postgresql.Driver MC2 u_10000_2 mortongj_u_10000_2 2 8 false
vim MC2.java 
java -Djdbc.drivers=org.postgresql.Driver MC2 u_10000_2 mortongj_u_10000_2 2 8 false
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
echo $CATALINA_HOME/lib
echo $CATALINA_HOME
cd /usr/share/tomcat7
ls
cd ~/java/*.jar .
cd ~/java/ ./
mv ~/java/*.jar .
sudo mv ~/java/*.jar .
ls
cd bin
ls
cd ..
ls
mv postgresql-9.4.1208.jar lib/
sudo mv postgresql-9.4.1208.jar lib/
ls
ls lib/
cd bin/
ls
cd ~/java/
javac MC2.java
java -Djdbc.drivers=org.postgresql.Driver MC2 u_10000_2 mortongj_u_10000_2 2 8 false
javac MC2.java
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
sudo reboot
exit
exit
psql
quit
exit
exit
screen -r
psql
cd java/
java MC2 u_10000_2 mortongj_u_10000_2  8 false
exit
screeen
screen
java MC2 u_10000_2 mortongj_uniform_2 2 8 false
cd java/
java MC2 u_10000_2 mortongj_uniform_2 2 8 false
java MC2 uniform_2 mortongj_uniform_2 2 8 false
java MC2 uniform_2 mortongj_u_2 2 8 false
psql
java MC2 uniform_2 mortongj_u_2 2 8 false
java MC2 u_10000_4 mortongj_u_10000_4  8 false
cd java/
java MC2 u_10000_4 mortongj_u_10000_4  8 false
java MC2 u_10000_4 mortongj_u_10000_4 16 false
java MC2 u_10000_2 mortongj_u_10000_2 2 8 false
java MC2 uniform_2 mortongj_u_2 2 8 false
cd java
ls
java MC2 u_10000_2 mortongj_u_10000_2 8 false
java MC2 uniform_2 mortongj_2 8 false
java MC2 uniform_2 mortongj_2 2 8 false
java MC2 uniform_2 mortongj_u_2 2 8 false
java MC2 uniform_4 mortongj_u_4 4 8 false
java MC2 uniform_8 mortongj_u_8 8 8 false
java MC2 uniform_16 mortongj_u_16 8 8 false
select count(*) from mortongj_u_8;
psql
top
screeen
screen
493
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '707', 'dim1': '686', 'id': '67443'}]>
494
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '970', 'dim1': '478', 'id': '22487'}]>
495
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '791', 'dim1': '912', 'id': '81947'}]>
496
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '636', 'dim1': '687', 'id': '13721'}]>
497
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '313', 'dim1': '540', 'id': '61492'}]>
498
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '288', 'dim1': '612', 'id': '21868'}]>
499
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '773', 'dim1': '252', 'id': '32340'}]>
500
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '266', 'dim1': '170', 'id': '27788'}]>
501
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '692', 'dim1': '533', 'id': '44456'}]>
502
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '957', 'dim1': '145', 'id': '83304'}]>
503
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '585', 'dim1': '204', 'id': '78548'}]>
504
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '724', 'dim1': '252', 'id': '68025'}]>
505
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '815', 'dim1': '868', 'id': '40427'}]>
506
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '333', 'dim1': '57', 'id': '99123'}]>
507
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '987', 'dim1': '961', 'id': '68105'}]>
508
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '992', 'dim1': '18', 'id': '84094'}]>
509
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '754', 'dim1': '395', 'id': '88259'}]>
510
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '540', 'dim1': '652', 'id': '44137'}]>
511
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '414', 'dim1': '209', 'id': '423'}]>
512
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '344', 'dim1': '170', 'id': '77940'}]>
513
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '974', 'dim1': '164', 'id': '22604'}]>
514
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '952', 'dim1': '671', 'id': '74914'}]>
515
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '509', 'dim1': '275', 'id': '42505'}]>
516
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '504', 'dim1': '513', 'id': '95473'}]>
517
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '782', 'dim1': '997', 'id': '46615'}]>
518
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '227', 'dim1': '331', 'id': '4960'}]>
519
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '937', 'dim1': '234', 'id': '6468'}]>
520
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '477', 'dim1': '956', 'id': '28735'}]>
521
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '585', 'dim1': '249', 'id': '16580'}]>
522
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '887', 'dim1': '183', 'id': '7741'}]>
523
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '581', 'dim1': '489', 'id': '4376'}]>
524
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '760', 'dim1': '842', 'id': '49204'}]>
525
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '983', 'dim1': '292', 'id': '47545'}]>
526
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '37', 'dim1': '642', 'id': '45148'}]>
527
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '899', 'dim1': '399', 'id': '78372'}]>
528
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '754', 'dim1': '806', 'id': '63394'}]>
529
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '515', 'dim1': '884', 'id': '2795'}]>
530
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '823', 'dim1': '581', 'id': '60395'}]>
531
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '13', 'dim1': '863', 'id': '79529'}]>
532
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '724', 'dim1': '359', 'id': '66226'}]>
533
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '921', 'dim1': '438', 'id': '69952'}]>
534
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '971', 'dim1': '505', 'id': '94348'}]>
535
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '545', 'dim1': '1011', 'id': '80080'}]>
536
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '298', 'dim1': '582', 'id': '97569'}]>
537
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '31', 'dim1': '364', 'id': '33431'}]>
538
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '227', 'dim1': '543', 'id': '45529'}]>
539
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '474', 'dim1': '160', 'id': '3500'}]>
540
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '122', 'dim1': '291', 'id': '54743'}]>
541
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '458', 'dim1': '60', 'id': '87747'}]>
542
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '21', 'dim1': '717', 'id': '9643'}]>
543
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '516', 'dim1': '559', 'id': '39784'}]>
544
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '920', 'dim1': '877', 'id': '16484'}]>
545
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '229', 'dim1': '919', 'id': '95680'}]>
546
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '255', 'dim1': '798', 'id': '83830'}]>
547
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '125', 'dim1': '360', 'id': '20079'}]>
548
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '224', 'dim1': '23', 'id': '22379'}]>
549
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '302', 'dim1': '932', 'id': '63007'}]>
550
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '906', 'dim1': '150', 'id': '70814'}]>
551
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '109', 'dim1': '463', 'id': '49977'}]>
552
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '281', 'dim1': '382', 'id': '41632'}]>
553
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '128', 'dim1': '580', 'id': '33964'}]>
554
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '666', 'dim1': '298', 'id': '28971'}]>
555
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '1019', 'dim1': '945', 'id': '86016'}]>
556
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '851', 'dim1': '615', 'id': '71533'}]>
557
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '188', 'dim1': '609', 'id': '42056'}]>
558
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '152', 'dim1': '993', 'id': '96058'}]>
559
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '750', 'dim1': '68', 'id': '1196'}]>
560
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '592', 'dim1': '98', 'id': '91113'}]>
561
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '501', 'dim1': '284', 'id': '56278'}]>
562
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '604', 'dim1': '784', 'id': '59775'}]>
563
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '144', 'dim1': '924', 'id': '80529'}]>
564
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '662', 'dim1': '514', 'id': '95573'}]>
565
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '671', 'dim1': '985', 'id': '14136'}]>
566
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '613', 'dim1': '991', 'id': '48484'}]>
567
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '748', 'dim1': '942', 'id': '31628'}]>
568
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '283', 'dim1': '797', 'id': '68208'}]>
569
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '731', 'dim1': '423', 'id': '70853'}]>
570
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '444', 'dim1': '866', 'id': '73564'}]>
571
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '717', 'dim1': '590', 'id': '8975'}]>
572
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '946', 'dim1': '118', 'id': '60221'}]>
573
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '3', 'dim1': '377', 'id': '5006'}]>
574
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '373', 'dim1': '520', 'id': '11756'}]>
575
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '799', 'dim1': '173', 'id': '42685'}]>
576
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '334', 'dim1': '589', 'id': '69620'}]>
577
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '322', 'dim1': '115', 'id': '95771'}]>
578
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '149', 'dim1': '314', 'id': '48525'}]>
579
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '994', 'dim1': '626', 'id': '54981'}]>
580
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '849', 'dim1': '917', 'id': '33289'}]>
581
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '39', 'dim1': '480', 'id': '66472'}]>
582
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '601', 'dim1': '551', 'id': '56930'}]>
583
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '100', 'dim1': '949', 'id': '84159'}]>
584
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '795', 'dim1': '59', 'id': '76502'}]>
585
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '204', 'dim1': '195', 'id': '66372'}]>
586
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '124', 'dim1': '165', 'id': '20527'}]>
587
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '448', 'dim1': '902', 'id': '38074'}]>
588
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '739', 'dim1': '267', 'id': '34071'}]>
589
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '706', 'dim1': '609', 'id': '80969'}]>
590
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '384', 'dim1': '358', 'id': '96408'}]>
591
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '772', 'dim1': '86', 'id': '18492'}]>
592
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '87', 'dim1': '713', 'id': '74789'}]>
593
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '924', 'dim1': '400', 'id': '72698'}]>
594
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '557', 'dim1': '294', 'id': '42684'}]>
595
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '816', 'dim1': '345', 'id': '42986'}]>
596
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '29', 'dim1': '966', 'id': '11458'}]>
597
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '656', 'dim1': '26', 'id': '81007'}]>
598
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '891', 'dim1': '204', 'id': '29745'}]>
599
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '158', 'dim1': '715', 'id': '91936'}]>
600
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '558', 'dim1': '132', 'id': '93592'}]>
601
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '337', 'dim1': '616', 'id': '96803'}]>
602
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '536', 'dim1': '67', 'id': '6128'}]>
603
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '646', 'dim1': '103', 'id': '98320'}]>
604
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '1002', 'dim1': '398', 'id': '80676'}]>
605
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '196', 'dim1': '589', 'id': '26813'}]>
606
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '323', 'dim1': '783', 'id': '75078'}]>
607
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '480', 'dim1': '428', 'id': '34783'}]>
608
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '529', 'dim1': '22', 'id': '78497'}]>
609
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '853', 'dim1': '660', 'id': '28783'}]>
610
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '898', 'dim1': '741', 'id': '74816'}]>
611
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '369', 'dim1': '661', 'id': '34604'}]>
612
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '216', 'dim1': '629', 'id': '46175'}]>
613
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '463', 'dim1': '650', 'id': '46083'}]>
614
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '115', 'dim1': '296', 'id': '36779'}]>
615
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '1011', 'dim1': '464', 'id': '1755'}]>
616
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '974', 'dim1': '708', 'id': '50782'}]>
617
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '13', 'dim1': '487', 'id': '7938'}]>
618
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '252', 'dim1': '721', 'id': '80801'}]>
619
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '393', 'dim1': '843', 'id': '19060'}]>
620
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '596', 'dim1': '828', 'id': '92435'}]>
621
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '692', 'dim1': '142', 'id': '78118'}]>
622
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '541', 'dim1': '987', 'id': '60955'}]>
623
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '652', 'dim1': '280', 'id': '4923'}]>
624
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '52', 'dim1': '852', 'id': '40954'}]>
625
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '516', 'dim1': '917', 'id': '74765'}]>
626
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '121', 'dim1': '549', 'id': '54187'}]>
627
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '932', 'dim1': '612', 'id': '56188'}]>
628
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '821', 'dim1': '700', 'id': '71014'}]>
629
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '639', 'dim1': '941', 'id': '15547'}]>
630
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '740', 'dim1': '61', 'id': '24723'}]>
631
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '523', 'dim1': '779', 'id': '47293'}]>
632
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '170', 'dim1': '171', 'id': '42412'}]>
633
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '1014', 'dim1': '712', 'id': '85433'}]>
634
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '379', 'dim1': '872', 'id': '28890'}]>
635
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '322', 'dim1': '43', 'id': '10367'}]>
636
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '19', 'dim1': '891', 'id': '95311'}]>
637
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '625', 'dim1': '249', 'id': '71684'}]>
638
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '262', 'dim1': '923', 'id': '15904'}]>
639
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '132', 'dim1': '898', 'id': '629'}]>
640
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '971', 'dim1': '206', 'id': '33935'}]>
641
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '937', 'dim1': '815', 'id': '55282'}]>
642
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '1004', 'dim1': '664', 'id': '86225'}]>
643
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '576', 'dim1': '15', 'id': '20260'}]>
644
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '510', 'dim1': '935', 'id': '64824'}]>
645
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '369', 'dim1': '604', 'id': '15142'}]>
646
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '54', 'dim1': '905', 'id': '53359'}]>
647
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '969', 'dim1': '929', 'id': '83031'}]>
648
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '862', 'dim1': '847', 'id': '44905'}]>
649
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '890', 'dim1': '293', 'id': '6881'}]>
650
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '682', 'dim1': '388', 'id': '59143'}]>
651
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '790', 'dim1': '361', 'id': '86430'}]>
652
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '467', 'dim1': '118', 'id': '69164'}]>
653
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '451', 'dim1': '361', 'id': '79458'}]>
654
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '487', 'dim1': '98', 'id': '62965'}]>
655
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '456', 'dim1': '153', 'id': '18037'}]>
656
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '651', 'dim1': '598', 'id': '96300'}]>
657
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '407', 'dim1': '469', 'id': '83521'}]>
658
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '883', 'dim1': '914', 'id': '50910'}]>
659
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '445', 'dim1': '829', 'id': '36142'}]>
660
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '311', 'dim1': '284', 'id': '97695'}]>
661
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '838', 'dim1': '86', 'id': '83324'}]>
662
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '834', 'dim1': '35', 'id': '91100'}]>
663
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '124', 'dim1': '157', 'id': '40044'}]>
664
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '416', 'dim1': '32', 'id': '35084'}]>
665
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '382', 'dim1': '147', 'id': '59536'}]>
666
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '667', 'dim1': '668', 'id': '82861'}]>
667
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '612', 'dim1': '475', 'id': '2378'}]>
668
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '627', 'dim1': '574', 'id': '49422'}]>
669
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '807', 'dim1': '102', 'id': '62729'}]>
670
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '911', 'dim1': '551', 'id': '94289'}]>
671
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '574', 'dim1': '84', 'id': '53737'}]>
672
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '313', 'dim1': '525', 'id': '42534'}]>
673
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '87', 'dim1': '153', 'id': '41987'}]>
674
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '664', 'dim1': '470', 'id': '74257'}]>
675
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '275', 'dim1': '775', 'id': '28059'}]>
676
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '452', 'dim1': '774', 'id': '35746'}]>
677
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '124', 'dim1': '884', 'id': '31919'}]>
678
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '217', 'dim1': '468', 'id': '73004'}]>
679
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '600', 'dim1': '507', 'id': '13593'}]>
680
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '624', 'dim1': '928', 'id': '68889'}]>
681
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '757', 'dim1': '799', 'id': '21024'}]>
682
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '913', 'dim1': '845', 'id': '69833'}]>
683
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '458', 'dim1': '445', 'id': '1446'}]>
684
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '36', 'dim1': '715', 'id': '84361'}]>
685
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '150', 'dim1': '904', 'id': '60161'}]>
686
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '601', 'dim1': '3', 'id': '64454'}]>
687
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '772', 'dim1': '872', 'id': '95478'}]>
688
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '405', 'dim1': '283', 'id': '86419'}]>
689
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '175', 'dim1': '753', 'id': '34814'}]>
690
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '877', 'dim1': '146', 'id': '77825'}]>
691
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '186', 'dim1': '644', 'id': '15409'}]>
692
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '551', 'dim1': '913', 'id': '30617'}]>
693
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '867', 'dim1': '1011', 'id': '81535'}]>
694
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '611', 'dim1': '215', 'id': '76496'}]>
695
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '186', 'dim1': '313', 'id': '46802'}]>
696
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '28', 'dim1': '939', 'id': '18888'}]>
697
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '780', 'dim1': '122', 'id': '62206'}]>
698
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '998', 'dim1': '219', 'id': '63142'}]>
699
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '275', 'dim1': '867', 'id': '36544'}]>
700
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '699', 'dim1': '448', 'id': '68852'}]>
701
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '45', 'dim1': '845', 'id': '18890'}]>
702
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '819', 'dim1': '266', 'id': '80400'}]>
703
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '519', 'dim1': '946', 'id': '83321'}]>
704
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '199', 'dim1': '64', 'id': '75756'}]>
705
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '420', 'dim1': '447', 'id': '16377'}]>
706
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '749', 'dim1': '231', 'id': '66'}]>
707
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '668', 'dim1': '69', 'id': '27162'}]>
708
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '766', 'dim1': '558', 'id': '11483'}]>
709
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '600', 'dim1': '236', 'id': '43652'}]>
710
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '366', 'dim1': '999', 'id': '8561'}]>
711
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '186', 'dim1': '498', 'id': '42687'}]>
712
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '706', 'dim1': '555', 'id': '11863'}]>
713
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '623', 'dim1': '774', 'id': '30238'}]>
714
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '731', 'dim1': '554', 'id': '16427'}]>
715
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '774', 'dim1': '660', 'id': '3100'}]>
716
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '595', 'dim1': '696', 'id': '74299'}]>
717
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '404', 'dim1': '743', 'id': '49693'}]>
718
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '703', 'dim1': '0', 'id': '98105'}]>
719
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '267', 'dim1': '914', 'id': '52059'}]>
720
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '895', 'dim1': '536', 'id': '29420'}]>
721
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '712', 'dim1': '936', 'id': '1001'}]>
722
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '927', 'dim1': '288', 'id': '932'}]>
723
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '547', 'dim1': '942', 'id': '52942'}]>
724
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '85', 'dim1': '374', 'id': '64557'}]>
725
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '552', 'dim1': '305', 'id': '27313'}]>
726
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '143', 'dim1': '1020', 'id': '14400'}]>
727
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '328', 'dim1': '872', 'id': '11784'}]>
728
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '918', 'dim1': '728', 'id': '34593'}]>
729
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '160', 'dim1': '63', 'id': '73451'}]>
730
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '704', 'dim1': '268', 'id': '54680'}]>
731
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '62', 'dim1': '39', 'id': '58485'}]>
732
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '974', 'dim1': '425', 'id': '86486'}]>
733
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '895', 'dim1': '805', 'id': '90906'}]>
734
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '770', 'dim1': '668', 'id': '33731'}]>
735
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '106', 'dim1': '50', 'id': '93143'}]>
736
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '156', 'dim1': '20', 'id': '79715'}]>
737
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '516', 'dim1': '753', 'id': '16280'}]>
738
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '160', 'dim1': '267', 'id': '77799'}]>
739
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '179', 'dim1': '767', 'id': '89435'}]>
740
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '248', 'dim1': '246', 'id': '10409'}]>
741
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '991', 'dim1': '293', 'id': '65949'}]>
742
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '145', 'dim1': '20', 'id': '26726'}]>
743
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '820', 'dim1': '931', 'id': '94977'}]>
744
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '315', 'dim1': '410', 'id': '11223'}]>
745
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '808', 'dim1': '432', 'id': '40746'}]>
746
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '388', 'dim1': '178', 'id': '5715'}]>
747
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '518', 'dim1': '925', 'id': '62411'}]>
748
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '837', 'dim1': '980', 'id': '57257'}]>
749
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '788', 'dim1': '487', 'id': '2612'}]>
750
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '242', 'dim1': '37', 'id': '18719'}]>
751
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '933', 'dim1': '486', 'id': '26004'}]>
752
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '50', 'dim1': '342', 'id': '26032'}]>
753
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '936', 'dim1': '350', 'id': '63530'}]>
754
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '333', 'dim1': '400', 'id': '31299'}]>
755
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '612', 'dim1': '553', 'id': '45206'}]>
756
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '606', 'dim1': '350', 'id': '27502'}]>
757
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '54', 'dim1': '558', 'id': '64563'}]>
758
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '762', 'dim1': '683', 'id': '66518'}]>
759
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '473', 'dim1': '635', 'id': '58326'}]>
760
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '28', 'dim1': '355', 'id': '94054'}]>
761
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '625', 'dim1': '746', 'id': '98553'}]>
762
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '958', 'dim1': '372', 'id': '61871'}]>
763
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '306', 'dim1': '110', 'id': '55120'}]>
764
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '975', 'dim1': '48', 'id': '95183'}]>
765
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '275', 'dim1': '941', 'id': '40100'}]>
766
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '903', 'dim1': '668', 'id': '55231'}]>
767
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '205', 'dim1': '813', 'id': '31592'}]>
768
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '96', 'dim1': '115', 'id': '56601'}]>
769
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '402', 'dim1': '798', 'id': '93283'}]>
770
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '540', 'dim1': '158', 'id': '86699'}]>
771
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '584', 'dim1': '160', 'id': '82478'}]>
772
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '792', 'dim1': '145', 'id': '3339'}]>
773
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '279', 'dim1': '282', 'id': '78158'}]>
774
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '419', 'dim1': '420', 'id': '62902'}]>
775
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '26', 'dim1': '170', 'id': '13177'}]>
776
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '767', 'dim1': '722', 'id': '32348'}]>
777
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '699', 'dim1': '347', 'id': '90607'}]>
778
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '333', 'dim1': '139', 'id': '59622'}]>
779
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '747', 'dim1': '702', 'id': '71613'}]>
780
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '139', 'dim1': '57', 'id': '50731'}]>
781
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '720', 'dim1': '518', 'id': '35267'}]>
782
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '394', 'dim1': '694', 'id': '2985'}]>
783
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '674', 'dim1': '92', 'id': '73987'}]>
784
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '364', 'dim1': '619', 'id': '16442'}]>
785
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '707', 'dim1': '760', 'id': '79733'}]>
786
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '688', 'dim1': '853', 'id': '60886'}]>
787
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '272', 'dim1': '993', 'id': '43789'}]>
788
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '479', 'dim1': '739', 'id': '11105'}]>
789
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '892', 'dim1': '82', 'id': '57093'}]>
790
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '49', 'dim1': '371', 'id': '76107'}]>
791
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '910', 'dim1': '230', 'id': '87398'}]>
792
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '675', 'dim1': '717', 'id': '19277'}]>
793
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '252', 'dim1': '63', 'id': '75016'}]>
794
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '96', 'dim1': '996', 'id': '47271'}]>
795
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '569', 'dim1': '599', 'id': '23833'}]>
796
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '922', 'dim1': '102', 'id': '47079'}]>
797
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '188', 'dim1': '966', 'id': '20932'}]>
798
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '53', 'dim1': '591', 'id': '44559'}]>
799
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '969', 'dim1': '132', 'id': '86108'}]>
800
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '788', 'dim1': '647', 'id': '30254'}]>
801
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '597', 'dim1': '689', 'id': '91545'}]>
802
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '783', 'dim1': '91', 'id': '44408'}]>
803
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '735', 'dim1': '122', 'id': '54033'}]>
804
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '987', 'dim1': '984', 'id': '63410'}]>
805
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '103', 'dim1': '37', 'id': '24431'}]>
806
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '813', 'dim1': '288', 'id': '37632'}]>
807
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '422', 'dim1': '550', 'id': '70731'}]>
808
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '844', 'dim1': '368', 'id': '79104'}]>
809
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '501', 'dim1': '728', 'id': '91528'}]>
810
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '732', 'dim1': '101', 'id': '87299'}]>
811
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '936', 'dim1': '488', 'id': '50738'}]>
812
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '191', 'dim1': '570', 'id': '3601'}]>
813
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '541', 'dim1': '885', 'id': '28975'}]>
814
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '733', 'dim1': '185', 'id': '78243'}]>
815
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '450', 'dim1': '287', 'id': '93739'}]>
816
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '91', 'dim1': '730', 'id': '72602'}]>
817
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '804', 'dim1': '134', 'id': '92734'}]>
818
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '199', 'dim1': '584', 'id': '90000'}]>
819
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '636', 'dim1': '974', 'id': '80516'}]>
820
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '767', 'dim1': '977', 'id': '2522'}]>
821
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '267', 'dim1': '166', 'id': '5864'}]>
822
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '184', 'dim1': '492', 'id': '40273'}]>
823
CONTEXT:  PL/Python function "hilbertac_pq_d"
INFO:  <PLyResult status=5 nrows=1 rows=[{'dim0': '899', 'dim1': '730', 'id': '856'}]>
824
CONTEXT:  PL/Python function "hilbertac_pq_d"
jajava MC2 uniform_2 mortongj_u_2 2 8 false
java MC2 uniform_2 mortongj_u_2 2 8 false
psql 
vim MC2.java 
java MC2 uniform_2 mortongj_u_4 4 8 false
psql
exit
psql
exit
psql
reindexdb
psql
exit
psql
eit
exit
psql
exit
top
psql
exit
screen -r
who
screen
screen -r
screen -r
top
screen -r
do-release-upgrade 
top
psql
ls
cd PyScripts/
ls
vim hil
vim hilbert.py 
cd ..
git add .
git add *
git commit -m "Backup Data"
git add *
git commit -m "Backup Data"
git push
git add *
psql
mkdor bkp
mkdir bkp
git push
git add *
git commit -m "Range query data backups"
git push
git install gitlfs
gitlfs
top
psql
cd SyntheticData/
ls
mkdir uniform_data_1k
mv uniform_*_1000* uniform_data_1k/
ls
mkdir uniform_data_10k
cd uniform_data_1k
ls
mv uniform_*_10000* ../uniform_data_10k/
ls
cd ..
ls
cd uniform_data_100k/
ls
ls uniform_*
ls uniform_*/
ls uniform_100k
ls uniform_data_100k
cd ..
ls uniform_*/
mkdir uniform_data_1m
ls
cd PQ1000000/
ls
wc -l u_16_1000000.txt 
cmp 
cmp u_2_1000000.txt ../uniform_data_1m/u_2_1000000.txt 
diff u_2_1000000.txt ../uniform_data_1m/u_2_1000000.txt 
cd ..
ls
rm -r uniform_data_1m/
ls
mv PQ1000000 uniform_data_1m
ls
mkdir uniform_data_100
mv uniform_*_100.txt uniform_data_100/
ls
mv uniform_*_100.txt cluster_data_100/
mkdir cluster_data_100
mv cluster_*_100.txt cluster_data_100/
ls
mkdir cluster_data_1k
mv cluster_*_1000.txt cluster_data_1k/
ls
mkdir cluster_data_10k
mv cluster_*_10000.txt cluster_data_10k/
ls
head cluster_2_10000_4.txt 
mkdir point_query_u
mv point_u* point_query_uniform/
ls
mv point_u* point_query_cluster/
mkdir point_query_cluster
mv point_cluster_* point_query_cluster/
ls
mkdir range_query
mv RangeQ_* range_query/
ls
mv cluster_*_10000* cluster_data_10k/
ls
cd cluster_data_10k
ls
cmp cluster_2_10000.txt cluster_2_10000_4.txt 
diff cluster_2_10000.txt cluster_2_10000_4.txt 
diff cluster_2_10000.txt cluster_2_10000_4.txt | more
ls
head cluster_4_10000.txt 
wc -l cluster_4_10000.txt 
wc -l cluster_4_10000_4.txt 
mv cluster_*_10000.txt cluster_*_1000.txt.old
mv cluster_2_10000.txt cluster_2_1000.txt.old
mv cluster_4_10000.txt cluster_4_1000.txt.old
mv cluster_8_10000.txt cluster_8_1000.txt.old
mv cluster_16_10000.txt cluster_16_1000.txt.old
ls
mv cluster_2_1000.txt.old cluster_2_10000.txt.old
mv cluster_4_1000.txt.old cluster_4_10000.txt.old
mv cluster_8_1000.txt.old cluster_8_10000.txt.old
mv cluster_16_1000.txt.old cluster_16_10000.txt.old
ls
mv cluster_16_1000_4.txt cluster_16_10000.txt
mv cluster_16_10000_4.txt cluster_16_10000.txt
mv cluster_8_10000_4.txt cluster_8_10000.txt
mv cluster_4_10000_4.txt cluster_4_10000.txt
mv cluster_2_10000_4.txt cluster_2_10000.txt
ls
cd ..
ls uniform_data_1*/
ls
psql
pwd
psql
sudo psql
chmod a+rX
chmod a+rX .
psql
ls
ls range_query/
mv range_query/ range_query_uniform/
ls
mv range_*.txt range_query_uniform/
ls
cd range_query_uniform/
ls
ls -lrt
dropdb
dropdb sdb
psql
createdb sdb
psql
dropdb sdb
createdb sdb
psql
pip install click
sudo apt-get install pip
sudo apt-get install python-setuptools python-dev build-essential 
sudo apt-get -y install python-pip
pip install click
python
screen -r
screen
cd SyntheticData/
cd uniform_data_1m/
ls
mv u_2_1000000.txt uniform_2_1000000.txt 
mv u_4_1000000.txt uniform_4_1000000.txt 
mv u_8_1000000.txt uniform_8_1000000.txt 
mv u_16_1000000.txt uniform_16_1000000.txt 
ls -lrt
cd ../uniform_data_1k
ls
awk -v max=0 '{if($1>max){want=$2; max=$1}}END{print want} ' uniform_2_1000.txt 
awk -v max=0 '{if($2>max){want=$2; max=$2}}END{print want} ' uniform_2_1000.txt 
sort -nrk1,1 uniform_2_1000.txt | head -1 | cut -d ' ' -f3
sort -nrk2,2 uniform_2_1000.txt | head -1 | cut -d ' ' -f3
sort -nrk3,1 uniform_2_1000.txt | head -1 | cut -d ' ' -f3
sort -nrk2,1 uniform_2_1000.txt | head -1 | cut -d ' ' -f3
awk '{if(max<$1){max=$1;line=$2}}END{print line}' file uniform_2_1000.txt 
awk '{if(max<$1){max=$1;line=$2}}END{print line}'  uniform_2_1000.txt 
awk '{if(max<$1){max=$1;line=$2}}END{print line}' uniform_2_1000.txt 
sort -r uniform_2_1000.txt | head -n1 | awk '{print $2}'
sort -r uniform_2_1000.txt | head -n2 | awk '{print $2}'
sort -r uniform_2_1000.txt | awk '{print $2}'
cat uniform_2_1000.txt | awk '{print $2}'
cat uniform_2_1000.txt 
cat uniform_2_1000.txt |head| awk awk -F "\"*,\"*" '{print $3}' 
cat uniform_2_1000.txt | head | awk "\"*,\"*" '{print $3}' 
awk -F "\"*,\"*" '{print $3}' uniform_2_1000.txt | head
awk -F "\"*,\"*" '{print $3}' uniform_2_1000.txt | sort | head
awk -F "\"*,\"*" '{print $3}' uniform_2_1000.txt | sort -r | head
awk -F "\"*,\"*" '{print $2}' uniform_2_1000.txt | sort -r | head
awk -F "\"*,\"*" '{print $1}' uniform_2_1000.txt | sort -r | head
awk -F "\"*,\"*" '{print $2}' uniform_2_1000.txt | sort -r | head
awk -F "\"*,\"*" '{print $3}' uniform_2_1000.txt | sort -r | head
awk -F "\"*,\"*" '{print $4}' uniform_2_1000.txt | sort -r | head
awk -F "\"*,\"*" '{print $3}' uniform_4_1000.txt | sort -r | head
cd ../uniform_data_100k/
awk -F "\"*,\"*" '{print $3}' uniform_4_1000.txt | sort -r | head
awk -F "\"*,\"*" '{print $3}' uniform_2_100000.txt | sort -r | head
awk -F "\"*,\"*" '{print $2}' uniform_2_100000.txt | sort -r | head
top
who
awk -F "\"*,\"*" '{print $2}' uniform_2_100000.txt | sort -r | head
top
cd ../point_query_
cd ..
ls
cd point_query_uniform/
ls
top
cd ..
ls
top
screen
git add *
screen -r
oexit
exit
screen -r 28381.pts-6.SFC
screen -r
psql
screen -r
psql
screen -r
psql
cd SyntheticData/
ls
cd point_query_
cd point_query_cluster/
ls
psql
