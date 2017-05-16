
require "to60/public"
local t = require "to60/data"

function commonUtil(killTaskCount)
  
  if cmpColorEx(t["领取离线奖励"]) then
    sysLog("领取离线奖励")
    t["领取离线奖励"].click()
    mSleep(100)
  end
  
  if cmpColorEx(t["领取离线奖励2"]) then
    sysLog("领取离线奖励2")
    t["领取离线奖励2"].click()
    mSleep(100)
  end
  -- 一个按钮
  if cmpColorEx(t["关闭提示窗"]) then
    sysLog("关闭提示窗")
    t["关闭提示窗"].click()
    mSleep(100)
  end
  
  -- 两个按钮
  if cmpColorEx(t["关闭提示窗2"]) then
    sysLog("关闭提示窗2")
    t["关闭提示窗2"].click()
    mSleep(100)
  end
  
  mSleep(200)
  if cmpColorEx(t["除魔任务领奖"]) then
    sysLog("killTaskCount="..killTaskCount)
      sysLog("除魔任务领奖")
      t["除魔任务领奖"].click()
      return killTaskCount-1
  end
  
  if cmpColorEx(t["激活权限"]) then
    sysLog("激活权限")
    t["激活权限"].click()
    mSleep(100)
  end
  
  if cmpColorEx(t["激战boss"]) then
    sysLog("激战boss")
    t["激战boss"].click()
  end
  
  if cmpColorEx(t["激战boss第二步"]) then
    sysLog("激战boss第二步")
    t["激战boss第二步"].click()
  end
  
  if cmpColorEx(t["激战boss第三步"]) then
    sysLog("激战boss第三步")
    t["激战boss第三步"].click()
  end
  
  if cmpColorEx(t["强化装备"]) then
    sysLog("强化装备")
    t["强化装备"].click()
    mSleep(100)
  end
  
  if cmpColorEx(t["除魔任务接任务"]) then
    if killTaskCount>0 then
		mSleep(200)
      sysLog("除魔任务接任务")
      t["除魔任务接任务"].click()
      mSleep(200)
    else
      --关闭接任务窗口
      tap(434,361)
    end
  end
  
  if cmpColorEx(t["关闭聊天窗口"]) then
    sysLog("关闭聊天窗口")
    t["关闭聊天窗口"].click()
    mSleep(200)
  end
  
  -- 领取奖励
  if cmpColorEx(t["左侧完成任务"]) then
    sysLog("左侧完成任务")
    t["左侧完成任务"].click()
    mSleep(200)
  elseif cmpColorEx(t["左侧完成任务2"]) then
    sysLog("左侧完成任务2")
    t["左侧完成任务2"].click()
    mSleep(200)
  elseif cmpColorEx(t["左侧完成任务3"]) and not cmpColorEx(t["除魔任务接任务"]) then
    sysLog("左侧完成任务3")
    t["左侧完成任务3"].click()
    mSleep(200)
  end
  
  if cmpColorEx(t["被人杀了"]) then
    sysLog("被人杀了")
    t["被人杀了"].click()
    mSleep(200)
  elseif cmpColorEx(t["被人杀了2"]) then
    sysLog("被人杀了2")
    t["被人杀了2"].click()
    mSleep(200)
  end
  
  if cmpColorEx(t["领取奖励退出副本"]) then
    sysLog("领取奖励退出副本")
    t["领取奖励退出副本"].click()
    mSleep(200)
  end
  
  if cmpColorEx(t["关闭邮箱"]) then
    sysLog("关闭邮箱")
    t["关闭邮箱"].click()
    mSleep(200)
  end
  
  
  -- 左侧任务列表，完成
  taskCompate()
  --只在比奇的时候使用小飞鞋,避免点击使自动挂机失效
  if cmpColorEx(t["在比奇"])  then
    --小飞鞋
    miniShoes()
  end
  
  -- 退出副本任务
  --  exitFB()
  
  
  
  
  return killTaskCount
  
  
end

-- 小飞鞋
function miniShoes()
  
  local go = 1;
  
  for i=0,10 do
    if not cmpColorEx(t["小飞鞋"]) then
      go =0
      break
    end
    mSleep(80)
  end
  
  if go==1 then
    sysLog("点击小飞鞋")
    t["小飞鞋"].click()
  end
  
end


-- 比对左侧任务完成两字，匹配上就点击
function taskCompate()
  x, y = findMultiColorInRegionFuzzy(0xd9b109,"7|9|0x29c904,27|0|0x32c605,54|7|0x33dd00", 95, 117, 174, 212, 367)
  x2, y2 = findMultiColorInRegionFuzzy(0x34c205,"17|6|0x33d303,31|-1|0x33dd00,-4|-8|0x33dd00", 95, 130, 175, 222, 380)
  x3, y3 = findMultiColorInRegionFuzzy(0xfac700,"6|3|0x33dd00,17|-1|0x32d602,42|0|0x26d001", 95, 114, 176, 225, 354)
  x4, y4 = findMultiColorInRegionFuzzy(0x31db00,"1|4|0x33dd00,12|0|0x32d602,40|6|0x26d000", 95, 114, 176, 225, 354)
  --  sysLog("完成任务=x:"..x.."-y:"..y.."-"..x2.."-"..x3.."-"..x4)
  if x > -1 then
    sysLog("完成任务=x:"..x.."-y:"..y)
    tap(x,y)
    mSleep(100)
  elseif x2>-1 then 
    sysLog("完成任务=x2:"..x2.."-y2:"..y2)
    tap(x2,y2)
    mSleep(100)
  elseif x3>-1 then 
    sysLog("完成任务=x3:"..x3.."-y3:"..y3)
    tap(x3,y3)
    mSleep(100)
  elseif x4>-1 then 
    sysLog("完成任务=x4:"..x4.."-y4:"..y4)
    tap(x4,y4)
    mSleep(100)
  end
end

function isLeftTaskCompate()
  x, y = findMultiColorInRegionFuzzy(0xd9b109,"7|9|0x29c904,27|0|0x32c605,54|7|0x33dd00", 95, 117, 174, 212, 367)
  x2, y2 = findMultiColorInRegionFuzzy(0x34c205,"17|6|0x33d303,31|-1|0x33dd00,-4|-8|0x33dd00", 95, 130, 175, 222, 380)
  x3, y3 = findMultiColorInRegionFuzzy(0xfac700,"6|3|0x33dd00,17|-1|0x32d602,42|0|0x26d001", 95, 114, 176, 225, 354)
  x4, y4 = findMultiColorInRegionFuzzy(0x31db00,"1|4|0x33dd00,12|0|0x32d602,40|6|0x26d000", 95, 114, 176, 225, 354)
  if x>-1 or x2>-1 or x3>-1 or x4>-1 then
    return 1
  else 
    return 0
  end
end

--退出副本
function exitFB()
  
  x, y = findMultiColorInRegionFuzzy(0x6c3a11,"38|1|0xfafac7,24|19|0x5c2b10,66|-1|0x867657", 95, 14, 279, 259, 407)
  if x > -1 then
    tap(x,y)
    mSleep(100)
  end
  
end
