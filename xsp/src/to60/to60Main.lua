require "to60/public"
local t = require "to60/data"
require "to60/commonUtil"

local role = 1;

function to60Main()
  
  sysLog("开始to60脚本.....")
  
--  if false == cmpColorEx(t["登录界面"]) then
--    toast("在登录界面启动！！！！！")		
--    lua_exit()
--  end
--  toast("在登录界面")
--  mSleep(1000)
  autoTask(role) --进去选第1个角色
  
end

function autoTask(role)
  
  local hero = 0
  local changeHero = 0--换角色，每次只能加1
  
  --登录界面逻辑
  login(role)
  
  sysLog("到66级脚本")
  while(true) do
    
    if hero==0 and not cmpColorEx(t["在比奇"]) then
      hero =1
      sysLog("打开战神1")
      if cmpColorEx(t["打开战神"]) then
        sysLog("打开战神")
        t["打开战神"].click()
      elseif  cmpColorEx(t["打开战神2"]) then
        sysLog("打开战神2")
        t["打开战神2"].click()
      end
    end
    
    --主线任务
    overTask()
    
    -- 公共事件
    commonUtil(2)
    
    if cmpColorEx(t["到66级了退出换号"]) then
      sysLog("到66级了退出换号")
      t["到66级了退出换号"].click()
      mSleep(5000)
      if changeHero==0 then
        changeHero =1
        role=role+1
        if role==(roleCount+1) then
          role=1
          
        end
        if role ~=1 then
          autoTask(role)
        end
        break
      end
    end
    
    mSleep(500)
  end
  
  
end


function overTask()
  
  --	sysLog("主线任务...")
  
  if cmpColorEx(t["完成任务"]) then
    sysLog("完成任务")
    t["完成任务"].click()
  end
  
  
  
  if cmpColorEx(t["装备"]) then
    sysLog("装备")
    t["装备"].click()
  end
  
  
  if cmpColorEx(t["冲级大礼包"]) then
    sysLog("冲级大礼包")
    t["冲级大礼包"].click()
  end
  
  
  if cmpColorEx(t["提示确认"]) then
    sysLog("提示确认")
    t["提示确认"].click()
  end
  
  
  if cmpColorEx(t["回收"]) then
    sysLog("回收")
    t["回收"].click()
    mSleep(1000)
    t["回收"].clickClose()
  end
  
  if cmpColorEx(t["除魔任务"]) then
    sysLog("除魔任务")
    t["除魔任务"].click()
    mSleep(1000)
    t["除魔任务"].clickTask()
  end
  
  
  if cmpColorEx(t["完成除魔任务"]) then
    sysLog("完成除魔任务")
    t["完成除魔任务"].click2()
    mSleep(10000)
    if cmpColorEx(t["完成除魔任务"]) then
      t["完成除魔任务"].click()
    end
  end
  
  if cmpColorEx(t["除魔任务领奖"]) then
    sysLog("除魔任务领奖")
    t["除魔任务领奖"].click()
  end
  
  if hero==0 and cmpColorEx(t["打开战神55"]) then
    sysLog("打开战神55")
    t["打开战神55"].click()
		hero=1
  elseif cmpColorEx(t["打开战神552"]) then
	sysLog("打开战神552")
		t["打开战神552"].click()
		hero=1
	end
	
  
  if cmpColorEx(t["59打开背包"]) then
    sysLog("59打开背包")
    t["59打开背包"].click()
  end
  
  
end




function login(num)
  
  local logined = 0
  local hasSelectRole = 0
  
  if cmpColorEx(t["已经登录"]) or cmpColorEx(t["领取离线奖励"]) then
    sysLog("已经登录")
    logined=1
  end
  
  for i=1,10 do
    if cmpColorEx(t["登录-进入游戏"]) then
      sysLog("登录-进入游戏")
      t["登录-进入游戏"].click()
      mSleep(1000)
    end
    
    if cmpColorEx(t["登录-网络问题"]) and not cmpColorEx(t["进入游戏"]) then
      --			没有进入到选择角色界面
      mSleep(300)
    end
  end
  
  
  if cmpColorEx(t["选择角色界面"]) then
    if num==1 then
      sysLog("选择角色1")
      t["选择角色界面"].click1()
      hasSelectRole=1
    elseif num==2 then 
      sysLog("选择角色2")
      t["选择角色界面"].click2()
      hasSelectRole=1
    elseif num==3 then
      sysLog("选择角色3")
      t["选择角色界面"].click3()
      hasSelectRole=1
    elseif num==4 then
      sysLog("选择角色4")
      t["选择角色界面"].click4()
      hasSelectRole=1
    end
    mSleep(100)
  end
  
  
  if cmpColorEx(t["进入游戏"]) and	hasSelectRole==1 then
    logined = 1
    t["进入游戏"].click()
    sysLog("进入游戏")
    mSleep(5000)
  end
  
  if cmpColorEx(t["关闭提示窗"]) then
    sysLog("关闭提示窗")
    t["关闭提示窗"].click()
    mSleep(100)
  end
  
  if logined==0 then
    sysLog("没有登录")
    mSleep(200)
    login(num)
  end
  
end



