require "DeviceCheck"

-- 分辨率，缩放，全局变量 等作用
function b_init()
  
  --定义一些全局的变量
  _debug = true--定义全局debug模式
	_isPhone=true--是否手机，false为模拟器  会出现部分共能出不来的情况，做兼容
	通天塔是否左移了一段距离=false--是否已经左移一段距离
	delay=0
	重复超时次数=10
	个人火龙=1--个人火龙一次
	个人魔龙=1--个人魔龙一次
	个人牛魔=1--个人牛魔一次
	
  
  local w_,h_ = getScreenSize() --w < h
  local h = w_
  local w = h_
  
  _device = getCurrentDevice()
  
  local supportSize = (_device > 0) --检测是否支持该分辨率
  if not supportSize then
    
    dialog("不支持当前分辨率".."宽:"..w..",高:"..h, 8)
    lua_exit()
  end
  
  if _device == 5 then
    sysLog("宽:"..w..",高:"..h)
    setScreenScale(720,1280)
    
  end
  
  yes,ret=showUI("homeChooce.json");
  if yes==0 then 
    toast("您选择了取消，停止脚本运行")
    lua_exit()
  end
  
  
  
  -- 0表示模拟器打开；1表示手机打开
  if ret["device"]=="0" then
    init("",0)
		_isPhone =false
  else
    init("",1);
		_isPhone =true
		delay=1000 -- 手机上 不要while的延迟
  end

	
	tip =  createHUD() --定义一个全局的hud
  
end

--黑底 绿字
function showTip(title)
		showHUD(tip,title,12,"0xff00ff00","0xb3000000",2,0,(720-22),1280/2,22)
--		hideHUD(hud)
end





