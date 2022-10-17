local errCode = {}
local tinfo={version={type1="0.0.2",type2="AAAA0001-VA",type3="13.05.01",},
	
}
local toolsconfig={
    version=function(types)if types == 0 then return tinfo.version.type1 elseif types == 1 then return tinfo.version.type2 elseif types == 2 then return tinfo.version.type3 else errcall.adderr("#cFF0000AkayTools debug : in command toolsconfig(<numberoftypeversion>), the <numberoftypeversion> is invalid number or differents.") return "" end end
}
local text={
    print=function(str)print(str)end,
    chat=function(str, target)Chat:sendSystemMsg(str, target)end,
    sendchat=function(str, target)Chat:sendChat(str, target)end,
    colorchat=function(str, hexcolorcode, target)Chat:sendSystemMsg("#c"..hexcolorcode..str, target)end,
    colorsendchat=function(str, hexcolorcode, target)Chat:sendSystemMsg("#c"..hexcolorcode..str, target)end,
    color=function(hexcolorcode)return "#c"..hexcolorcode end,
    effect=function(effect)if effect == 0 then return "#n" elseif effect == 1 then return "#b" elseif effect == 2 then return "#b2" elseif effect == 3 then return "#L" else errcall.adderr("#cFF0000AkayTools debug : in command text.effect(<numberofeffect>), the <numberofeffect> is invalid number or differents.") end end,
}
local tables={
    printallentries=function(tab)for count, item in pairs(tab) do print(item)end end,
    chatallentries=function(tab)for count, item in pairs(tab) do text.chat(item)end end,
    clearallentries=function(tab)for countitem in pairs(tab) do tab[countitem] = nil end end,
}
local errcall={
    callallerr=function()tables.chatallentries(errCode)end,
    adderr=function(errlog)table.insert(errCode, errlog)end,
    erroutput=function(err)print("#cFF0000AkayTools debug : \n"..err) end,
    returnerr=function(err)return "#cFF0000AkayTools debug : \n"..err end,
    xpcallerr=function(func)local sta, err = xpcall(func, errcall.erroutput) end,
    clearerr=function(func)tables.clearallentries(errCode) end,
    checksyntax=function(func)local sta, err = xpcall(func, errcall.returnerr) return sta end,
}

