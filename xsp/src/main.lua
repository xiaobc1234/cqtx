require "init"
require "DataStream"
require "DataStreamHouse"
require "random/DataStream"

require "httpUtil/httpUtil"



function main()
  
  --初始化
  b_init()
  
	showTip("当前分辨率：".._fsw.."*".._fsh)
	
	yesorno,ret=showUI("ui.json");
  
  if yesorno==0 then 
       toast("您选择了取消，停止脚本运行")
       lua_exit()
  end
	
	--账号角色数
	roleCount = ret['账号角色数']+1
	worship = ret["膜拜城主"]--1表示膜拜   0表示不膜拜
	babel=ret["通天塔几层结束"]--0表示九层结束，1表示10层结束，2表示通关
	
	currentAccount = 1--当前是第一个账号,默认是第一个账号
		
  if ret["auto"]=="0" then
      --	自动副本全
      autoFB()
	elseif ret['降妖除魔和通天塔']=='0' then
	--目前先去掉ui   这个脚本不稳定
		降妖除魔和通天塔()
	elseif ret["ta"]=='0' then
		taOnly()
	elseif ret['未知暗殿刷boss']=='0' then
		未知暗殿刷boss()
	elseif ret['to60']=='0' then
		require "to60/to60Main"
		to60Main()
	elseif ret['random']=='0' then
		random2()
  end
  
end

function autoFB(role)
  
  --没有角色就默认第一个角色
  if not role then 
    role =1
  end
  
  --全局变量定义区
  openHreo = false;--是否召唤了战神,true表示召唤了战神
  
  showTip("欢迎使用冰尘脚本!")
  
  
  登录()
  sysLog("role："..role)
  选择角色进入游戏(role)
  for i=1,2 do
    mSleep(1000)
    领取离线奖励()
  end
  
  --执行5次想要除魔
  for i=1,5 do
    除魔任务()
  end
  --6个副本任务
  for i=1,6 do
    mSleep(1000)
    副本任务()
  end
  
	if worship=='1' then
		--膜拜城主
		膜拜城主()
	end
  
  for i=1,2 do
		通天塔是否左移了一段距离 =false;
    通天塔()
  end
  
  for i=1,3 do
    --个人boss
    个人BOSS()
  end
  
	--喝酒3次，最后一次领牌子用 喝三次就够了，因为一次会点击很多次
  for i=1,5 do
--    喝酒()
		快捷喝酒()
  end
	
	最后领boss牌子()
  
	返回登录界面()
	
  local roleTmp = role+1
  if roleTmp <=roleCount then
    autoFB(roleTmp)
  end
	
	--切换账号
	if currentAccount==1 then
		currentAccount=currentAccount+1
		changeAcount(autoFB,1)
	end
  
  
end


-- -----------------------主要是升级脚本---------------------------
function 降妖除魔和通天塔(role)
	--没有角色就默认第一个角色
  if not role then 
    role =1
  end
  
  --全局变量定义区
  openHreo = false;--是否召唤了战神,true表示召唤了战神
  
  showTip("欢迎使用冰尘脚本!")
  
  登录()
  sysLog("role："..role)
  选择角色进入游戏(role)
  for i=1,2 do
    mSleep(1000)
    领取离线奖励()
  end
  
	-- 中间逻辑部分
	除魔仅升级()
	for i=1,11 do
		sysLog("i="..i)
		除魔12次()
	end
	
	for i=1,2 do
		通天塔是否左移了一段距离 =false;
		通天塔仅升级()
	end
	
	返回登录界面()
	
  local roleTmp = role+1
  if roleTmp <=roleCount then
    降妖除魔和通天塔(roleTmp)
  end
	
	--切换账号
	if currentAccount==1 then
		currentAccount=currentAccount+1
		changeAcount(降妖除魔和通天塔,1)
	end
	
end


-- -----------------------未知暗殿刷boss---------------------------
function 未知暗殿刷boss()
	--手动到未知暗殿
	while(true) do
		if checkOnly({0xdcdca9,"6|7|0xdadaa8,-20|6|0xd9d0a7,-30|5|0xdcdca9,-13|10|0x4c2302,-17|0|0x4c2302,-26|9|0x4c2302", 95, 1174, 10, 1231, 42}) then
			--如果在比奇，就结束任务
			break
		end
		
		整理包裹()
		
		合成装备()
		
		--mSleep(30*60000)--30分钟执行一次
		mSleep(1800000)--30分钟跑一次
	end
	
end

-- -----------------------挂机遇传送自动随机,随机石得放在右下角3，4号位---------------------------
function random2()
	while(true) do
		mSleep(500)
		遇传送随机()
	end
end


-- -----------------------只做通天塔---------------------------
function taOnly(role)

--没有角色就默认第一个角色
  if not role then 
    role =1
  end
  
  --全局变量定义区
  openHreo = false;--是否召唤了战神,true表示召唤了战神
  
  showTip("欢迎使用冰尘脚本!")
  
  登录()
  sysLog("role："..role)
  选择角色进入游戏(role)
  for i=1,2 do
    mSleep(1000)
    领取离线奖励()
  end
	
	for i=1,2 do
		通天塔是否左移了一段距离 =false;
    通天塔Only()
  end
	
	返回登录界面()
	
  local roleTmp = role+1
  if roleTmp <=roleCount then
    taOnly(roleTmp)
  end
	
	--切换账号
	if currentAccount==1 then
		currentAccount=currentAccount+1
		changeAcount(降妖除魔和通天塔,1)
	end
	
end



-- -----------------------切换账号---------------------------
function changeAcount(excuteMethod,excutePar)
	
	切换账号()
	if excuteMethod then
		if excutePar then
			excuteMethod(excutePar)
		else
			excuteMethod()
		end
	end
	
end

-- -----------------------80级、三转、五转后自动个人boss---------------------------
function boss5(role)
	
	--没有角色就默认第一个角色
  if not role then 
    role =1
  end
  
  --全局变量定义区
  openHreo = false;--是否召唤了战神,true表示召唤了战神
  
	个人火龙=1--个人火龙一次
	个人魔龙=1--个人魔龙一次
	个人牛魔=1--个人牛魔一次
	
  showTip("欢迎使用冰尘脚本!")
  
  登录()
  sysLog("role："..role)
  选择角色进入游戏(role)
  for i=1,2 do
    mSleep(1000)
    领取离线奖励()
  end
	
	for i=1,3 do
			
			经验BOSS()
	end
	
	
	返回登录界面()
	
  local roleTmp = role+1
  if roleTmp <=roleCount then
    降妖除魔和通天塔(roleTmp)
  end
	
	--切换账号
	if currentAccount==1 then
		currentAccount=currentAccount+1
		changeAcount(降妖除魔和通天塔,1)
	end
	
end




main()
