@echo off
set /p delay=���������ӳٵĺ�������
set TotalTime=0
set NowTime=%time%
::��ȡ��ʼʱ�䣬ʱ���ʽΪ��13:01:05.95
echo ����ʼʱ�䣺%NowTime%
:delay_continue
set /a minute1=1%NowTime:~3,2%-100
::��ȡ��ʼʱ��ķ�����
set /a second1=1%NowTime:~-5,2%%NowTime:~-2%0-100000
::����ʼʱ�������תΪ����
set NowTime=%time%
set /a minute2=1%NowTime:~3,2%-100
:: ��ȡ����ʱ��ķ�����
set /a second2=1%NowTime:~-5,2%%NowTime:~-2%0-100000
::������ʱ�������תΪ����
set /a TotalTime+=(%minute2%-%minute1%+60)%%60*60000+%second2%-%second1%
if %TotalTime% lss %delay% goto delay_continue
echo �������ʱ�䣺%time%
echo �趨�ӳ�ʱ�䣺%delay%����
echo ʵ���ӳ�ʱ�䣺%TotalTime%����
pause