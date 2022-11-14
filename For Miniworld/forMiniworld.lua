local errCode = {}
---------------Tools Info
local tinfo={version={type1="0.0.2",type2="AAAA0001-VA",type3="13.05.01",},
	name="Tools Table Help",
	type="For Miniworld",
	projectname="toolstablehelp",
	linkproject="https://github.com/AkayusinuharateMudahadekisuri/toolstablehelp",
	codelanguage="lua",
	owner="AkayusinuharateMudahadekisuri",
	contributors=2,
	contributor1="AkayusinuharateMudahadekisuri",
	contributor2="quyennv1912",
		
}
local toolsconfig={
		version=function(types)if types == 0 then return tinfo.version.type1 elseif types == 1 then return tinfo.version.type2 elseif types == 2 then return tinfo.version.type3 else errcall.adderr("#cFF0000AkayTools debug : in command toolsconfig(<numberoftypeversion>), the <numberoftypeversion> is invalid number or differents.") return "" end end,
}
---------------Main
local text={
		print=function(str)print(str)end,
		chat=function(str, target)Chat:sendSystemMsg(str, target)end,
		sendchat=function(str, target)Chat:sendChat(str, target)end,
		colorchat=function(str, hexcolorcode, target)Chat:sendSystemMsg("#c"..hexcolorcode..str, target)end,
		colorsendchat=function(str, hexcolorcode, target)Chat:sendSystemMsg("#c"..hexcolorcode..str, target)end,
		color=function(hexcolorcode)return "#c"..hexcolorcode end,
		effect=function(effect)if effect == 0 then return "#n" elseif effect == 1 then return "#b" elseif effect == 2 then return "#b2" elseif effect == 3 then return "#L" else errcall.adderr("#cFF0000AkayTools debug : in command text.effect(<numberofeffect>), the <numberofeffect> is invalid number or differents.") end end,
		run=function(codeneedtorun)return LoadLuaScript(codeneedtorun)end,
}
local tables={
		printall=function(tab)for count, item in pairs(tab) do print(item)end end,
		chatall=function(tab)for count, item in pairs(tab) do text.chat(item)end end,
		clearall=function(tab)for countitem in pairs(tab) do tab[countitem] = nil end end,
		len=function(tab)local count = 0 for _ in pairs(tab) do count = count + 1 end return count end,
}
local encode={
	base64=function(code)local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' return ((code:gsub('.', function(x) local r,b='',x:byte()for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end return r;end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)if (#x < 6) then return '' end local c=0 for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end return b:sub(c+1,c+1)end)..({ '', '==', '=' })[#code%3+1])end,
}
local decode={
	base64=function(encodecode)local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' local encodecode = string.gsub(encodecode, '[^'..b..'=]', '') return (encodecode:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end,
}
local player={
	
}

---------------Error Help
local errcall={
		callallerr=function()tables.printall(errCode)end,
		adderr=function(errlog)table.insert(errCode, errlog)end,
		erroutput=function(err)print("#cFF0000AkayTools debug : \n"..err) end,
		returnerr=function(err)return "#cFF0000AkayTools debug : \n"..err end,
		xpcallerr=function(func)local sta, err = xpcall(func, errcall.erroutput) end,
		clearerr=function(func)tables.clearall(errCode) end,
		checksyntax=function(func)local sta, err = xpcall(func, errcall.returnerr) return sta end,
		counterr=function()return tables.len(errCode) end,
}


print(toolsconfig.version(4))
print(errcall.counterr())
errcall.callallerr()
