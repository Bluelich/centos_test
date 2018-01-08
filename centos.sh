#!/bin/bash
localectl set-locale LC_CTYPE=en_US.UTF-8;
yum clean;
yum update;
yum upgrade;
rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm;
rpm -ivh https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm;
curl -L https://copr.fedorainfracloud.org/coprs/mcepl/vim8/repo/epel-7/mcepl-vim8-epel-7.repo -o /etc/yum.repos.d/mcepl-vim8-epel-7.repo;
yum install -y epel-release ruby git curl file python-setuptools bash-completion bash-completion-extras zsh  vsftpd perl-ExtUtils-Embed perl-Digest-MD5 iptables-services httpd php php-mysql php-gd libjpeg php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-bcmath php-mhash go rust mysql-community-server lua lua-devel luajit luajit-devel ctags;
yum groupinstall 'Development Tools';
yum remove vim-minimal;
yum update vim;
git clone https://github.com/Yi-Lyu/MyVimConfig.git ~/MyVimConfig;
cp -r ~/MyVimConfig/.vim ~;
cp ~/MyVimConfig/.vimrc ~;
wget -P ~ https://jaist.dl.sourceforge.net/project/vimcdoc/vimcdoc/vimcdoc-2.1.0.tar.gz; tar -xzf ~/vimcdoc-2.1.0.tar.gz; cp -r ~/vimcdoc-2.1.0/doc/. ~/.vim/doc;
# " Set Vim help to Chinese and utf-8 encoding
# if version >= 603
#    set helplang=cn
#    set encoding=utf-8
#    set fileencoding=utf-8
#    set helplang=cn
# endif
# cp $(cd "$(dirname "$0")"; pwd)/motd /etc/motd;
# chsh -s /bin/zsh;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
