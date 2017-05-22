


-- 用于分割数据 类似split方法   返回一个table
function split(szFullString, szSeparator)
	local nFindStartIndex = 1
	local nSplitIndex = 1
	local nSplitArray = {}
	while true do
	   local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
	   if not nFindLastIndex then
		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
		break
	   end
	   nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
	   nFindStartIndex = nFindLastIndex + string.len(szSeparator)
	   nSplitIndex = nSplitIndex + 1
	end
	return nSplitArray
end

--发送异步post请求
function asynPost(url,content,success,error)
	if asyncExec~=nil then --判断用户引擎版本是否过低
		asyncExec({
			type = "httppost",
			immediate = true,            -- [bool]      默认false, 设置true会独立开启线程执行任务
			url = url,
			content=content,
			callback = function (result)            -- [function]  请求回调函数
					-- 回调结果table
					assert(type(result) == "table")
					--返回数据格式: { code = [int]错误码, data = [string]服务器返回数据 }
					--code -1:  请求出错 -2:  请求超时 -3:  强制关闭
					sysLog("服务器返回数据: 代码 = " .. result.code .. " 数据 = " .. result.data)
					if result.code==200 then
						if success then
							success(result.data)
						end
					else
						if error then
							error(result.msg)
						end
					end
			end
		})
	end
end

--发送异步get请求
function asynGet(url,success,error)
	if asyncExec~=nil then --判断用户引擎版本是否过低
		asyncExec({
			type = "httpget",
			immediate = false,            -- [bool]      默认false, 设置true会独立开启线程执行任务
			url = url,
			callback = function (result)            -- [function]  请求回调函数
					-- 回调结果table
					assert(type(result) == "table")
					--返回数据格式: { code = [int]错误码, data = [string]服务器返回数据 }
					--code -1:  请求出错 -2:  请求超时 -3:  强制关闭
					sysLog("服务器返回数据: 代码 = " .. result.code .. " 数据 = " .. result.data)
					if result.code==200 then
						if success then
							success(result.data)
						end
					else
						if error then
							error(result.msg)
						end
					end
			end
		})
	end
end



--设置请求接口host
--local httpHost = "http://192.168.223.42:8080"

--function getSuccess(data)
--	print('请求成功'..data)
--	sysLog('请求成功'..data)
--end
--function getError(msg)
--	print('请求错误'..msg)
--	sysLog('请求错误'..msg)
--end

--asynGet(httpHost..'/nvwa/jz/test'..'/2017-05-16#你好世界',getSuccess,getError)



