@echo off
echo.
echo ��ʼ���ݱ�����վ���ݣ����Ե�...
cd C:\Program Files\WinRAR
rar a -ag -k -r -s -ibck -inul F:\zhangqi\����ѹ������\www.gzibyer.com\ F:\zhangqi\��վ���ر���\D��\wwwroot\gzibyer20150127
rar a -ag -k -r -s -ibck -inul F:\zhangqi\����ѹ������\www.ifcyk.com\ F:\zhangqi\��վ���ر���\D��\wwwroot\2015www_ifcyk_com
echo "�������"

net stop mysqla

echo.
echo ��ʼ���ݱ������ݿ⣬���Ե�...
cd C:\Program Files\WinRAR
rar a -ag -k -r -s -ibck -inul F:\zhangqi\����ѹ������\www.gzibyer.com\database D:\phpStudy4IIS\MySQL\data\gzibyer
rar a -ag -k -r -s -ibck -inul F:\zhangqi\����ѹ������\www.ifcyk.com\database D:\phpStudy4IIS\MySQL\data\2015www_ifcyk_com
echo "�������"

echo.
echo ��ʼͬ��www.gzibyer.com���ݣ����Ե�...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete zhangqi@120.31.132.222::gzibyer /cygdrive/f/zhangqi/��վ���ر���/D��/wwwroot/gzibyer20150127 <passwd.txt
echo.
echo ����ͬ�����
echo.

echo.
echo ��ʼͬ��www.ifcyk.com���ݣ����Ե�...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete zhangqi@120.31.132.222::ifcyk /cygdrive/f/zhangqi/��վ���ر���/D��/wwwroot/2015www_ifcyk_com <passwd.txt
echo.
echo ����ͬ�����
echo.


echo.
echo ��ʼͬ��www.gzibyer.com���ݿ⣬���Ե�...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete zhangqi@120.31.132.222::gzibyerdatabase /cygdrive/d/phpStudy4IIS/MySQL/data/gzibyer <passwd.txt
echo.
echo ����ͬ�����
echo.

echo.
echo ��ʼͬ��www.ifcyk.com���ݿ⣬���Ե�...
echo.
cd C:\Program Files (x86)\cwRsync\bin
rsync -vzrtopg --port=873 --progress --delete zhangqi@120.31.132.222::ifcykdatabase /cygdrive/d/phpStudy4IIS/MySQL/data/2015www_ifcyk_com <passwd.txt
echo.
echo ����ͬ�����
echo.

net start mysqla

echo ȫ�����
echo.
pause


