
-- mapping的通用方法
function mapping(pages)
  local map = Mapping:new()
  --添加页面
  map:AddPages(pages)
  --执行
  return map:Run()
end


-- mapping的通用方法
function mapping(pages,runCount)
  local map = Mapping:new()
	map.runCount=runCount
  --添加页面
  map:AddPages(pages)
  --执行
  return map:Run()
end

-- mapping的通用方法
function mapping(pages,runCount,errorNextMethod)
  local map = Mapping:new()
	map.runCount=runCount
	map.errorNextMethod=errorNextMethod
  --添加页面
  map:AddPages(pages)
  --执行
  return map:Run()
end

function checkOnly(v)
	x, y = findMultiColorInRegionFuzzy(v[1],v[2],v[3],v[4],v[5],v[6],v[7])
	if x > -1 then
		return 1
	else 
		return nil
	end
end

function searchTap(v)
	if v then
		x, y = findMultiColorInRegionFuzzy(v[1],v[2],v[3],v[4],v[5],v[6],v[7])
		if x>-1 then
			tap(x,y)
		end
	end
end


--点击
function tap(x, y)
  math.randomseed(tostring(os.time()):reverse():sub(1, 6))  --设置随机数种子
  local index = math.random(1,5)
  x = x+math.random(-2,2)
  y = y+math.random(-2,2)
  touchDown(index,x, y)
  mSleep(math.random(60,80))                                --某些情况可能要增大延迟
  touchUp(index, x, y)
  mSleep(20)
end



