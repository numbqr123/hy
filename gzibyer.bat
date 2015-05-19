@echo off
echo.
echo 开始备份本地网站数据，请稍等...
cd C:\Program Files\WinRAR
rar a -ag -k -r -s -ibck -inul F:\zhangqi\日期压缩备份\www.gzibyer.com\ F:\zhangqi\网站本地备份\D盘\wwwroot\gzibyer20150127
rar a -ag -k -r -s -ibck -inul F:\zhangqi\日期压缩备份\www.ifcyk.com\ F:\zhangqi\网站本地备份\D盘\wwwroot\2015www_ifcyk_com
echo "备份完成"

net stop mysqla

echo.
echo 开始备份本地数据库，请稍等...
cd C:\Program Files\WinRAR
rar a -ag -k -r -s -ibck -inul F:\zhangqi\日期压缩备份\www.gzibyer.com\database D:\phpStudy4IIS\MySQL\data\gzibyer
rar a -ag -k -r -s -ibck -inul F:\zhangqi\日期压缩备份\www.ifcyk.com\database D:\phpStudy4IIS\MySQL\data\2015www_ifcyk_com
echo "备份完成"

echo.
echo 开始同步www.gzibyer.com数据，请稍等...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete zhangqi@120.31.132.222::gzibyer /cygdrive/f/zhangqi/网站本地备份/D盘/wwwroot/gzibyer20150127 <passwd.txt
echo.
echo 数据同步完成
echo.

echo.
echo 开始同步www.ifcyk.com数据，请稍等...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete zhangqi@120.31.132.222::ifcyk /cygdrive/f/zhangqi/网站本地备份/D盘/wwwroot/2015www_ifcyk_com <passwd.txt
echo.
echo 数据同步完成
echo.


echo.
echo 开始同步www.gzibyer.com数据库，请稍等...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete zhangqi@120.31.132.222::gzibyerdatabase /cygdrive/d/phpStudy4IIS/MySQL/data/gzibyer <passwd.txt
echo.
echo 数据同步完成
echo.

echo.
echo 开始同步www.ifcyk.com数据库，请稍等...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete zhangqi@120.31.132.222::ifcykdatabase /cygdrive/d/phpStudy4IIS/MySQL/data/2015www_ifcyk_com <passwd.txt
echo.
echo 数据同步完成
echo.

net start mysqla

echo 全部完成
echo.
pause


