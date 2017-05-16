--公共库
function cmpColorEx(array,s)
	s = s or 90
	s = math.floor(0xff*(100-s)*0.01)
	for var = 1, #array do
		local lr,lg,lb = getColorRGB(array[var][1],array[var][2])

		
		local rgb = array[var][3]

		local r = math.floor(rgb/0x10000)
		local g = math.floor(rgb%0x10000/0x100)
		local b = math.floor(rgb%0x100)
		
		if math.abs(lr-r) > s or math.abs(lg-g) > s or math.abs(lb-b) > s then
			return false
		end
	end
	return true
end


--对比多色保持
function cmpColorExKeep(array,s)
	s = s or 90
	s = math.floor(0xff*(100-s)*0.01)
	keepScreen(true)
	for var = 1, #array do
		local lr,lg,lb = getColorRGB(array[var][1],array[var][2])
		local rgb = array[var][3]

		local r = math.floor(rgb/0x10000)
		local g = math.floor(rgb%0x10000/0x100)
		local b = math.floor(rgb%0x100)
		if math.abs(lr-r) > s or math.abs(lg-g) > s or math.abs(lb-b) > s then
			keepScreen(false)
			return false
		end
	end
	keepScreen(false)
	return true
end

--找色
function findColor(t)
	return findColorInRegionFuzzy(t[1], t[2], t[3], t[4], t[5], t[6]); 
end

--找多色
function findMultiColor(t)
	return findMultiColorInRegionFuzzy(t[1],t[2], t[3], t[4], t[5], t[6], t[7])
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

--滑动
-- function swip(x1, y1, x2, y2)
-- 	touchDown(1,x1, y1)
-- 	mSleep(50)
-- 	touchMove(1,x2, y2)
-- 	mSleep(50)
-- 	touchUp(1, x2, y2)
-- 	mSleep(50)
-- end


function swip(x1,y1,x2,y2)
        local Step,x,y = 20,x1,y1
        touchDown(1,x,y)
        local function v(z,c) if z > c then return (-1 * Step) else return Step end end
        while (math.abs(x-x2)>=Step) or (math.abs(y-y2)>=Step) do
                if math.abs(x-x2)>=Step then x = x + v(x1,x2) end
                if math.abs(y-y2)>=Step then y = y + v(y1,y2) end
                touchMove(1, x, y)
                mSleep(20)
        end
        touchMove(1, x2, y2)
        mSleep(30)
        touchUp(1,x2,y2)
end
