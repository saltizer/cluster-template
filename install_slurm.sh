#!!!!!!!INSTALL MARIADB!!!!!!!
sudo yum install mariadb-server mariadb-devel -y

#!!!!!!!CREATE THE GLOBAL USERS!!!!!!!
export MUNGEUSER=991
sudo groupadd -g $MUNGEUSER munge
useradd -m -c "MUNGE Uid 'N' Gid Emporium" -d /var/lib/munge -u $MUNGEUSER -g munge -s /sbin/nologin munge
export SLURMUSER=992
sudo groupadd -g $SLURMUSER slurm
user add -m -c "SLURM workload manager" -d /var/lib/slurm -u $SLURMUSER -g slurm -s /bin/bash slurm

#!!!!!!!INSTALLING MUNGE!!!!!!!
sudo yum install epel-release

sudo yum install munge munge-libs munge-devel -y

#creating a munge key


#done to every node
scp /etc/munge/munge.key root@1.buhpc.com:/etc/munge
scp /etc/munge/munge.key root@1.buhpc.com:/etc/munge
scp /etc/munge/munge.key root@1.buhpc.com:/etc/munge
scp /etc/munge/munge.key root@1.buhpc.com:/etc/munge
scp /etc/munge/munge.key root@1.buhpc.com:/etc/munge

#done to every node
chown -R munge: /etc/munge/ /var/loge/munge/
chmod 0700 /etc/munge/ /var/log/munge/

#done to every node
systemct1 enable munge
systemct1 start munge

#possibly disregard
munge -n
munge -n | unmunge
munge -n | ssh 3.buhpc.com.unmunge
remunge

#!!!!!!!INSTALL SLURM!!!!!!!
sudo yum install openssl openssl-devel pam-devel numactl numactl-devel hwloc hwloc-devel lua lua-devel readline-devel rrdtool-devel ncurses-devel man2html libibmad libibumad -y

cd /nfs
wget http://www.schedmd.com/download/latest/slurm-15.08.9.tar.bz2

sudo yum install rpm-build
rpmbuild -ta slurm-15.08.9.tar.bz2

cd /root/rpmbuild/RPMS/x86_64

#for compute and server nodes
mkdir /nfs/slurm-rpms
cp slurm-15.08.9-1.el7.centos.x86_64.rpm slurm-devel-15.08.9-1.el7.centos.x86_64.rpm slurm-munge-15.08.9-1.el7.centos.x86_64.rpm slurm-perlapi-15.08.9-1.el7.centos.x86_64.rpm slurm-plugins-15.08.9-1.el7.centos.x86_64.rpm slurm-sjobexit-15.08.9-1.el7.centos.x86_64.rpm slurm-sjstat-15.08.9-1.el7.centos.x86_64.rpm slurm-torque-15.08.9-1.el7.centos.x86_64.rpm /nfs/slurm-rpms

#for compute and server nodes
sudo yum --nogpgcheck localinstall slurm-15.08.9-1.el7.centos.x86_64.rpm slurm-devel-15.08.9-1.el7.centos.x86_64.rpm slurm-munge-15.08.9-1.el7.centos.x86_64.rpm slurm-perlapi-15.08.9-1.el7.centos.x86_64.rpm slurm-plugins-15.08.9-1.el7.centos.x86_64.rpm slurm-sjobexit-15.08.9-1.el7.centos.x86_64.rpm slurm-sjstat-15.08.9-1.el7.centos.x86_64.rpm slurm-torque-15.08.9-1.el7.centos.x86_64.rpm
