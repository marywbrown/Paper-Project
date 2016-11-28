#coding:utf-8
from weibo import APIClient
import webbrowser
import MySQLdb
APP_KEY = '2667541113' # app key
APP_SECRET = '124e9fea3e4ccabd324580cf6ca6b1ae' # app secret
CALLBACK_URL = 'http://weibo.com/u/2160975892/home?wvr=5'# callback url       


#利用官方微博SDK
client = APIClient(app_key=APP_KEY, app_secret=APP_SECRET, redirect_uri=CALLBACK_URL)


#用得到的url到新浪页面访问
url = client.get_authorize_url()
webbrowser.open_new(url)


#手动输入新浪返回的code
code = raw_input("input the code: ").strip()


#新浪返回的token，类似abc123xyz456，每天的token不一样
r = client.request_access_token(code)
access_token = r.access_token
expires_in = r.expires_in # token过期的UNIX时间


#设置得到的access_token
client.set_access_token(access_token, expires_in)


#有了access_token后，可以做任何事情了


#print client.statuses__public_timeline()  
count = 1
s = set([('mu','basketball','guangzhou','liuchuanfen')])  
def getDataByPublic(count):
    while True:
        if count>=50:
            break
        statuses = client.statuses__public_timeline()['statuses']  
        length = len(statuses)          
        #输出了部分信息  
        for i in range(0,length):  
            nickName = statuses[i]['user']['screen_name']  
            profile = statuses[i]['user']['description']  
            location = statuses[i]['user']['location']  
            weibo = statuses[i]['text'] 
            print u'昵称：'+nickName
            print u'简介：'+profile
            print u'位置：'+location  
            print u'微博：'+weibo  
        count += 1    
getDataByPublic(1)