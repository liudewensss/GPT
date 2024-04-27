#!/bin/bash

#检查是否在受支持的系统上运行
情况"$（uname-s）" 在
Linux）
    如果 [[ -f “/etc/lsb-release“ ]]; 然后
。/etc/LSB-发布
      如果 [[ "$DISTRIB_ID" != “乌班图” ]]; 然后
回声“这个脚本只能在Ubuntu上运行，不能$DISTRIB_ID."
        出口 1
      船方不负担装货费用
    其他
      如果 [[ !"$（cat/etc/*-发布| grep'^ID=')" =~ ^(ID= \“Ubuntu \“）|(ID= \“centos \“）|(ID= \“arch \“）|(ID= \“debian \“）$ ]]; 然后
回声“不支持的Linux发行版。“
        出口 1
      船方不负担装货费用
    船方不负担装货费用
    ;;
达尔文）
回声“在MacOS上运行。”
    ;;
  *)
回声“不支持的操作系统。“
    出口 1
    ;;
environmental systems applications center 环境系统应用程序中心

#检查是否安装了所需的依赖项，并在必要时进行安装
如果！命令-vnode》/dev/null | |！命令-vgit》/dev/null | |！命令-vyarn》/dev/null；然后
情况"$（uname-s）" 在
Linux）
      如果 [[ "$（cat/etc/*-发布| grep'^ID=')" = “ID=ubuntu“ ]]; 然后
sudo apt-get更新
        sudo apt-get -y install nodejs git yarn
      elif [[ "$（cat/etc/*-发布| grep'^ID=')" = "ID=debian" ]]; 然后
sudo apt-get更新
        sudo apt-get -y install nodejs git yarn
      elif [[ "$（cat/etc/*-发布| grep'^ID=')" = "ID=centos" ]]; 然后
        sudo yum -y install epel-release
        sudo yum -y install nodejs git yarn
      elif [[ "$（cat/etc/*-发布| grep'^ID=')" = "ID=arch" ]]; 然后
        sudo pacman -Syu -y
        sudo pacman -S -y nodejs git yarn
      其他
回声"Unsupported Linux distribution"
        出口 1
      船方不负担装货费用
      ;;
达尔文）
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
      brew install node git yarn
      ;;
  environmental systems applications center 环境系统应用程序中心
船方不负担装货费用

# Clone the repository and install dependencies
git clone https://github.com/ChatGPTNextWeb/ChatGPT-Next-Web
cd ChatGPT-Next-Web
yarn install

# Prompt user for environment variables
read -p "Enter GOOGLE_API_KEY: " GOOGLE_API_KEY
read -p "Enter PORT: " PORT

# Build and run the project using the environment variables
OPENAI_API_KEY=$OPENAI_API_KEY CODE=$CODE PORT=$PORT yarn build
OPENAI_API_KEY=$OPENAI_API_KEY CODE=$CODE PORT=$PORT yarn start
