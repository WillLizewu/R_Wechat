###########################################################################################################
# Things you might want to change

options(papersize="a4")
# options(pager="internal")

# set the default help type
# options(help_type="text")
options(help_type="html")

# set a site library
# .Library.site <- file.path(chartr("\\", "/", R.home()), "site-library")

# set a CRAN mirror
# local({r <- getOption("repos")
#       r["CRAN"] <- "http://my.local.cran"
#       options(repos=r)})
local({r <- getOption("repos")
r["CRAN"] <- "https://mirror.lzu.edu.cn/CRAN/"
options(repos = r, BioC_mirror="https://mirrors.tuna.tsinghua.edu.cn/bioconductor")
options(repos=r)})

# Give a fortune cookie, but only to interactive sessions
# (This would need the fortunes package to be installed.)
#  if (interactive()) 
#    fortunes::fortune()

# 自定义开局设置
# 自动安装并加载pacman包
if(require(pacman)){
  print("the pacman has been installed")
}else{
  install.packages("pacman")
  library(pacman)
}

# 自动安装并加载常用R包
p_load("openxlsx","readxl","foreign","data.table","dplyr","tidyr","reshape","reshape2","mice","ggplot2")
