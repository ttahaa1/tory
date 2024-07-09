function bank(msg)
text = nil
if msg and msg.content and msg.content.text then
text = msg.content.text.text
end
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text)
if neww then
text = neww or text
end
end
if msg.reply_to_message_id ~= 0 then
local mrply = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
if mrply and mrply.sender_id then
rep_idd = mrply.sender_id.user_id or mrply.sender_id.chat_id
end
end
if text == 'انشاء حساب بنكي' or text == 'انشاء حساب البنكي' or text =='انشاء الحساب بنكي' or text =='انشاء الحساب البنكي' then
creditcc = tonumber(math.random(500000000,5999999999999))
creditvi = tonumber(math.random(40000000000,4999999999999))
creditex = tonumber(math.random(6000000000,69999999999999))
balas = 50
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
return send(msg.chat_id,msg.id, "✭  لديك حساب بنكي مسبقاً\n\n✭  لعرض معلومات حسابك اكتب\n⇠ `حسابي`","md",true)
end
Redis:setex(Fast.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id,60, true)
send(msg.chat_id,msg.id,[[
– عشان تسوي حساب لازم تختار نوع البطاقة

⇠ `ماستر`
⇠ `فيزا`
⇠ `اكسبرس`

- اضغط للنسخ

– مدة الطلب دقيقة واحدة ويطردك الموظف .
]],"md",true)  
return false
end
if Redis:get(Fast.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
if text == "ماستر" then
local ban = bot.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = msg.sender_id.user_id
Redis:set(Fast.."bobna"..msg.sender_id.user_id,news)
Redis:set(Fast.."boob"..msg.sender_id.user_id,balas)
Redis:set(Fast.."boobb"..msg.sender_id.user_id,creditcc)
Redis:set(Fast.."bbobb"..msg.sender_id.user_id,text)
Redis:set(Fast.."boballname"..creditcc,news)
Redis:set(Fast.."boballbalc"..creditcc,balas)
Redis:set(Fast.."boballcc"..creditcc,creditcc)
Redis:set(Fast.."boballban"..creditcc,text)
Redis:set(Fast.."boballid"..creditcc,banid)
Redis:sadd(Fast.."booob",msg.sender_id.user_id)
Redis:del(Fast.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
send(msg.chat_id,msg.id, "\n✭ وسوينا لك حساب في بنك فيجا🏦\n✭ وشحنالك 50 ريال 💵 هدية\n\n✭  رقم حسابك ↢ ( `"..creditcc.."` )\n✭  نوع البطاقة ↢ ( ماستر 💳 )\n✭  فلوسك ↢ ( 50 ريال 💵 )  ","md",true)  
end 
if text == "فيزا" then
local ban = bot.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = msg.sender_id.user_id
Redis:set(Fast.."bobna"..msg.sender_id.user_id,news)
Redis:set(Fast.."boob"..msg.sender_id.user_id,balas)
Redis:set(Fast.."boobb"..msg.sender_id.user_id,creditvi)
Redis:set(Fast.."bbobb"..msg.sender_id.user_id,text)
Redis:set(Fast.."boballname"..creditvi,news)
Redis:set(Fast.."boballbalc"..creditvi,balas)
Redis:set(Fast.."boballcc"..creditvi,creditvi)
Redis:set(Fast.."boballban"..creditvi,text)
Redis:set(Fast.."boballid"..creditvi,banid)
Redis:sadd(Fast.."booob",msg.sender_id.user_id)
Redis:del(Fast.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
send(msg.chat_id,msg.id, "\n✭ وسوينا لك حساب في بنك فيجا🏦\n✭ وشحنالك 50 ريال 💵 هدية\n\n✭  رقم حسابك ↢ ( `"..creditvi.."` )\n✭  نوع البطاقة ↢ ( فيزا 💳 )\n✭  فلوسك ↢ ( 50 ريال 💵 )  ","md",true)   
end 
if text == "اكسبرس" then
local ban = bot.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
local banid = msg.sender_id.user_id
Redis:set(Fast.."bobna"..msg.sender_id.user_id,news)
Redis:set(Fast.."boob"..msg.sender_id.user_id,balas)
Redis:set(Fast.."boobb"..msg.sender_id.user_id,creditex)
Redis:set(Fast.."bbobb"..msg.sender_id.user_id,text)
Redis:set(Fast.."boballname"..creditex,news)
Redis:set(Fast.."boballbalc"..creditex,balas)
Redis:set(Fast.."boballcc"..creditex,creditex)
Redis:set(Fast.."boballban"..creditex,text)
Redis:set(Fast.."boballid"..creditex,banid)
Redis:sadd(Fast.."booob",msg.sender_id.user_id)
Redis:del(Fast.."booobb" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
send(msg.chat_id,msg.id, "\n✭ وسوينا لك حساب في بنك فيجا🏦\n✭ وشحنالك 50 ريال 💵 هدية\n\n✭  رقم حسابك ↢ ( `"..creditex.."` )\n✭  نوع البطاقة ↢ ( اكسبرس 💳 )\n✭  فلوسك ↢ ( 50 ريال 💵 )  ","md",true)   
end 
end
if text == 'مسح حساب بنكي' or text == 'مسح حساب البنكي' or text =='مسح الحساب بنكي' or text =='مسح الحساب البنكي' or text == "مسح حسابي البنكي" or text == "مسح حسابي بنكي" then
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
Redis:srem(Fast.."booob", msg.sender_id.user_id)
Redis:del(Fast.."boob"..msg.sender_id.user_id)
Redis:del(Fast.."boobb"..msg.sender_id.user_id)
Redis:del(Fast.."zrfff"..msg.sender_id.user_id)
Redis:srem(Fast.."zrfffid", msg.sender_id.user_id)
send(msg.chat_id,msg.id, "✭  مسحت حسابك البنكي 🏦","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'تصفير النتائج' or text == 'مسح لعبه البنك' then
if msg.Asasy then
Redis:del(Fast.."booob")
Redis:del(Fast.."boob")
Redis:del(Fast.."boobb")
Redis:del(Fast.."zrfff")
Redis:del(Fast.."zrfffid")
send(msg.chat_id,msg.id, "✭  مسحت لعبه البنك 🏦","md",true)
end
end

if text == 'فلوسي' or text == 'فلوس' and tonumber(msg.reply_to_message_id) == 0 then
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 1 then
return send(msg.chat_id,msg.id, "✭  ماعندك فلوس ارسل الالعاب وابدأ بجمع الفلوس \n✦","md",true)
end
send(msg.chat_id,msg.id, "✭  فلوسك "..ballancee.." ريال 💵","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'فلوسه' or text == 'فلوس' and tonumber(msg.reply_to_message_id) ~= 0 then
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
send(msg.chat_id,msg.id,"\n*✭ بنك فيجاماعنده حساب بالبنك 🤣*","md",true)  
return false
end
if Redis:sismember(Fast.."booob",rep_idd) then
ballanceed = Redis:get(Fast.."boob"..rep_idd) or 0
send(msg.chat_id,msg.id, "✭  فلوسه "..ballanceed.." ريال 💵","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعنده حساب بنكي ","md",true)
end
end

if text == 'حسابي' or text == 'حسابي البنكي' or text == 'رقم حسابي' then
local ban = bot.getUser(msg.sender_id.user_id)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
cccc = Redis:get(Fast.."boobb"..msg.sender_id.user_id)
uuuu = Redis:get(Fast.."bbobb"..msg.sender_id.user_id)
pppp = Redis:get(Fast.."zrfff"..msg.sender_id.user_id) or 0
ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
send(msg.chat_id,msg.id, "✭  الاسم ↢ "..news.."\n✭  الحساب ↢ `"..cccc.."`\n✭  بنك ↢ (بنك فيجا)\n✭  نوع ↢ ( "..uuuu.." )\n✭  الرصيد ↢ ( "..ballancee.." ريال 💵 )\n✭  الزرف ( "..pppp.." ريال 💵 )\n✦","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'مسح حسابه' and tonumber(msg.reply_to_message_id) ~= 0 then
if msg.Asasy then
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
send(msg.chat_id,msg.id,"\n*✭ بنك فيجاماعنده حساب بالبنك 🤣*","md",true)  
return false
end
local ban = bot.getUser(rep_idd)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember(Fast.."booob",rep_idd) then
ccccc = Redis:get(Fast.."boobb"..rep_idd)
uuuuu = Redis:get(Fast.."bbobb"..rep_idd)
ppppp = Redis:get(Fast.."zrfff"..rep_idd) or 0
ballanceed = Redis:get(Fast.."boob"..rep_idd) or 0
Redis:srem(Fast.."booob", rep_idd)
Redis:del(Fast.."boob"..rep_idd)
Redis:del(Fast.."boobb"..rep_idd)
Redis:del(Fast.."zrfff"..rep_idd)
Redis:srem(Fast.."zrfffid", rep_idd)
send(msg.chat_id,msg.id, "✭  الاسم ↢ "..news.."\n✭  الحساب ↢ `"..ccccc.."`\n✭  بنك ↢ (بنك فيجا)\n✭  نوع ↢ ( "..uuuuu.." )\n✭  الرصيد ↢ ( "..ballanceed.." ريال 💵 )\n✭  الزرف ↢ ( "..ppppp.." ريال 💵 )\n✭  مسكين مسحت حسابه \n✦","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعنده حساب بنكي اصلاً ","md",true)
end
end
end

if text == 'حسابه' and tonumber(msg.reply_to_message_id) ~= 0 then
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
send(msg.chat_id,msg.id,"\n*✭ بنك فيجاماعنده حساب بالبنك 🤣*","md",true)  
return false
end
local ban = bot.getUser(rep_idd)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember(Fast.."booob",rep_idd) then
ccccc = Redis:get(Fast.."boobb"..rep_idd)
uuuuu = Redis:get(Fast.."bbobb"..rep_idd)
ppppp = Redis:get(Fast.."zrfff"..rep_idd) or 0
ballanceed = Redis:get(Fast.."boob"..rep_idd) or 0
send(msg.chat_id,msg.id, "✭  الاسم ↢ "..news.."\n✭  الحساب ↢ `"..ccccc.."`\n✭  بنك ↢ (بنك فيجا)\n✭  نوع ↢ ( "..uuuuu.." )\n✭  الرصيد ↢ ( "..ballanceed.." ريال 💵 )\n✭  الزرف ↢ ( "..ppppp.." ريال 💵 )\n✦","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعنده حساب بنكي ","md",true)
end
end

if text and text:match('^مسح حساب (.*)$') or text and text:match('^مسح حسابه (.*)$') then
if msg.Asasy then
local UserName = text:match('^مسح حساب (.*)$') or text:match('^مسح حسابه (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = tonumber(coniss)
local ban = bot.getUser(coniss)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد "
end
if Redis:sismember(Fast.."booob",coniss) then
ccccc = Redis:get(Fast.."boobb"..coniss)
uuuuu = Redis:get(Fast.."bbobb"..coniss)
ppppp = Redis:get(Fast.."zrfff"..coniss) or 0
ballanceed = Redis:get(Fast.."boob"..coniss) or 0
Redis:srem(Fast.."booob", coniss)
Redis:del(Fast.."boob"..coniss)
Redis:del(Fast.."boobb"..coniss)
Redis:del(Fast.."zrfff"..coniss)
Redis:srem(Fast.."zrfffid", coniss)
send(msg.chat_id,msg.id, "✭  الاسم ↢ "..news.."\n✭  الحساب ↢ `"..ccccc.."`\n✭  بنك ↢ (بنك فيجا)\n✭  نوع ↢ ( "..uuuuu.." )\n✭  الرصيد ↢ ( "..ballanceed.." ريال 💵 )\n✭  الزرف ↢ ( "..ppppp.." ريال 💵 )\n✭  مسكين مسحت حسابه \n✦","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعنده حساب بنكي اصلاً ","md",true)
end
end
end

if text and text:match('^حساب (.*)$') or text and text:match('^حسابه (.*)$') then
local UserName = text:match('^حساب (.*)$') or text:match('^حسابه (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = tonumber(coniss)
if Redis:get(Fast.."boballcc"..coniss) then
local yty = Redis:get(Fast.."boballname"..coniss)
local dfhb = Redis:get(Fast.."boballbalc"..coniss)
local fsvhh = Redis:get(Fast.."boballban"..coniss)
send(msg.chat_id,msg.id, "✭  الاسم ↢ "..yty.."\n✭  الحساب ↢ `"..coniss.."`\n✭  بنك ↢ (بنك فيجا)\n✭  نوع ↢ ( "..fsvhh.." )\n✭  الرصيد ↢ ( "..dfhb.." ريال 💵 )\n✦","md",true)
else
send(msg.chat_id,msg.id, "✭  مافيه حساب بنكي كذا","md",true)
end
end

if text == 'مضاربه' then
send(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`مضاربه` المبلغ","md",true)
end

if text and text:match('^مضاربه (.*)$') then
local UserName = text:match('^مضاربه (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = tonumber(coniss)
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
if Redis:get(Fast.."iiooooo" .. msg.sender_id.user_id) then
local time_ex = ctime(Redis:ttl(Fast.."iiooooo" .. msg.sender_id.user_id))
return send(msg.chat_id,msg.id,"✭  مايمديك تضارب الحين\n✭  تعال بعد ( "..time_ex.." )","md",true)
end
ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 99 then
return send(msg.chat_id,msg.id, "✭  الحد الادنى المسموح هو 100 ريال 💵\n✦","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return send(msg.chat_id,msg.id, "✭  فلوسك ماتكفي \n✦","md",true)
end
local modarba = {"0", "1", "2", "3", "4",}
local Descriptioontt = modarba[math.random(#modarba)]
local modarbaa = math.random(1,90);
if Descriptioontt == "1" or Descriptioontt == "3" then
ballanceekku = coniss / 100 * modarbaa
ballanceekkku = ballancee - ballanceekku
Redis:set(Fast.."boob"..msg.sender_id.user_id , math.floor(ballanceekkku))
Redis:setex(Fast.."iiooooo" .. msg.sender_id.user_id,1200, true)
send(msg.chat_id,msg.id, "✭  مضاربة فاشلة 📉\n✭  نسبة الخسارة ↢ "..modarbaa.."%\n✭  المبلغ الذي خسرته ↢ ( "..ballanceekku.." ريال 💵 )\n✭  فلوسك صارت ↢ ( "..ballanceekkku.." ريال 💵 )\n✦","md",true)
elseif Descriptioontt == "2" or Descriptioontt == "4" then
ballanceekku = coniss / 100 * modarbaa
ballanceekkku = ballancee + ballanceekku
Redis:set(Fast.."boob"..msg.sender_id.user_id , math.floor(ballanceekkku))
Redis:setex(Fast.."iiooooo" .. msg.sender_id.user_id,1200, true)
send(msg.chat_id,msg.id, "✭  مضاربة ناجحة 📈\n✭  نسبة الربح ↢ "..modarbaa.."%\n✭  المبلغ الذي ربحته ↢ ( "..ballanceekku.." ريال 💵 )\n✭  فلوسك صارت ↢ ( "..ballanceekkku.." ريال 💵 )\n✦","md",true)
else
Redis:setex(Fast.."iiooooo" .. msg.sender_id.user_id,1200, true)
send(msg.chat_id,msg.id, "✭  تأخرت اليوم والبنك مسكر ارجع بعدين \n✦","md",true)
end
else
send(msg.chat_id,msg.id, "✭  ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'استثمار' then
send(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`استثمار` المبلغ","md",true)
end

if text and text:match('^استثمار (.*)$') then
local UserName = text:match('^استثمار (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = tonumber(coniss)
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
if Redis:get(Fast.."iioooo" .. msg.sender_id.user_id) then
local time_ex = ctime(Redis:ttl(Fast.."iioooo" .. msg.sender_id.user_id))
return send(msg.chat_id,msg.id,"✭  مايمديك تستثمر الحين\n✭  تعال بعد ( "..time_ex.." )","md",true)
end
ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
if tonumber(coniss) < 99 then
return send(msg.chat_id,msg.id, "✭  الحد الادنى المسموح هو 100 ريال 💵\n✦","md",true)
end
if tonumber(ballancee) < tonumber(coniss) then
return send(msg.chat_id,msg.id, "✭  فلوسك ماتكفي \n✦","md",true)
end
local hadddd = math.random(0,17);
ballanceekk = coniss / 100 * hadddd
ballanceekkk = ballancee + ballanceekk
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , math.floor(ballanceekk))
Redis:setex(Fast.."iioooo" .. msg.sender_id.user_id,1200, true)
send(msg.chat_id,msg.id, "✭  استثمار ناجح 💰\n✭  نسبة الربح ↢ "..hadddd.."%\n✭  مبلغ الربح ↢ ( "..ballanceekk.." ريال 💵 )\n✭  فلوسك صارت ↢ ( "..ballanceekkk.." ريال 💵 )\n✦","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'حظ' then
send(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`حظ` المبلغ","md",true)
end

if text and text:match('^حظ (.*)$') then
local UserName = text:match('^حظ (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
if Redis:get(Fast.."iiooo" .. msg.sender_id.user_id) then
local time_ex = ctime(Redis:ttl(Fast.."iiooo" .. msg.sender_id.user_id)) 
return send(msg.chat_id,msg.id,"✭  مايمديك تلعب لعبة الحظ الحين\n✭  تعال بعد ( "..time_ex.." )","md",true)
end
ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < tonumber(coniss) then
return send(msg.chat_id,msg.id, "✭  فلوسك ماتكفي \n✦","md",true)
end
local daddd = {"1", "2", "3", "4",}
local haddd = daddd[math.random(#daddd)]
if haddd == "1" or haddd == "3" then
local ballanceek = ballancee + coniss
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , coniss)
Redis:setex(Fast.."iiooo" .. msg.sender_id.user_id,1200, true)
send(msg.chat_id,msg.id, "✭  مبروك فزت بالحظ 🎉\n✭  فلوسك قبل ↢ ( "..ballancee.." ريال 💵 )\n✭  فلوسك الحين ↢ ( "..ballanceek.." ريال 💵 )\n✦","md",true)
else
local ballanceekk = ballancee - coniss
Redis:decrby(Fast.."boob"..msg.sender_id.user_id , coniss)
Redis:setex(Fast.."iiooo" .. msg.sender_id.user_id,1200, true)
send(msg.chat_id,msg.id, "✭  للاسف خسرت بالحظ 😬\n✭  فلوسك قبل ↢ ( "..ballancee.." ريال 💵 )\n✭  فلوسك الحين ↢ ( "..ballanceekk.." ريال 💵 )\n✦","md",true)
end
else
send(msg.chat_id,msg.id, "✭  ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'تحويل' then
send(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`تحويل` المبلغ","md",true)
end

if text and text:match('^تحويل (.*)$') then
local UserName = text:match('^تحويل (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if not Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
return send(msg.chat_id,msg.id, "✭  ماعندك حساب بنكي ","md",true)
end
if tonumber(coniss) < 100 then
return send(msg.chat_id,msg.id, "✭  الحد الادنى المسموح به هو 100 ريال \n✦","md",true)
end
ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 100 then
return send(msg.chat_id,msg.id, "✭  فلوسك ماتكفي \n✦","md",true)
end

if tonumber(coniss) > tonumber(ballancee) then
return send(msg.chat_id,msg.id, "✭  فلوسك ماتكفي\n✦","md",true)
end

Redis:set(Fast.."transn"..msg.sender_id.user_id,coniss)
Redis:setex(Fast.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id,60, true)
send(msg.chat_id,msg.id,[[
✭  ارسل الحين رقم الحساب البنكي الي تبي تحول له

– معاك دقيقة وحدة والغي طلب التحويل .
✦
]],"md",true)  
return false
end
if Redis:get(Fast.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) then
cccc = Redis:get(Fast.."boobb"..msg.sender_id.user_id)
uuuu = Redis:get(Fast.."bbobb"..msg.sender_id.user_id)
if text ~= text:match('^(%d+)$') then
Redis:del(Fast.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del(Fast.."transn" .. msg.sender_id.user_id)
return send(msg.chat_id,msg.id,"✭  ارسل رقم حساب بنكي ","md",true)
end
if text == cccc then
Redis:del(Fast.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del(Fast.."transn" .. msg.sender_id.user_id)
return send(msg.chat_id,msg.id,"✭  مايمديك تحول لنفسك ","md",true)
end
if Redis:get(Fast.."boballcc"..text) then
local UserNamey = Redis:get(Fast.."transn"..msg.sender_id.user_id)
local ban = bot.getUser(msg.sender_id.user_id)
if ban.first_name then
news = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
news = " لا يوجد "
end
local fsvhhh = Redis:get(Fast.."boballid"..text)
local bann = bot.getUser(fsvhhh)
if bann.first_name then
newss = "["..bann.first_name.."](tg://user?id="..bann.id..")"
else
newss = " لا يوجد "
end
local fsvhh = Redis:get(Fast.."boballban"..text)
UserNameyr = UserNamey / 10
UserNameyy = UserNamey - UserNameyr
Redis:decrby(Fast.."boob"..msg.sender_id.user_id , UserNamey)
Redis:incrby(Fast.."boob"..fsvhhh , math.floor(UserNameyy))
send(msg.chat_id,msg.id, "حوالة صادرة من بنك النجوم\n\nالمرسل : "..news.."\nالحساب رقم : `"..cccc.."`\nنوع البطاقة : "..uuuu.."\nالمستلم : "..newss.."\nالحساب رقم : `"..text.."`\nنوع البطاقة : "..fsvhh.."\nخصمت 10% رسوم تحويل\nالمبلغ : "..UserNameyy.." ريال 💵","md",true)
send(fsvhhh,0, "حوالة واردة من بنك النجوم\n\nالمرسل : "..news.."\nالحساب رقم : `"..cccc.."`\nنوع البطاقة : "..uuuu.."\nالمبلغ : "..UserNameyy.." ريال 💵","md",true)
Redis:del(Fast.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del(Fast.."transn" .. msg.sender_id.user_id)
else
send(msg.chat_id,msg.id, "✭  مافيه حساب بنكي كذا","md",true)
Redis:del(Fast.."trans" .. msg.chat_id .. ":" .. msg.sender_id.user_id) 
Redis:del(Fast.."transn" .. msg.sender_id.user_id)
end
end

if text and text:match("^اضف فلوس (.*)$") and msg.reply_to_message_id ~= 0 then
local UserName = text:match('^اضف فلوس (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if msg.Asasy then
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
send(msg.chat_id,msg.id,"\n*✭ بنك فيجاماعنده حساب بالبنك 🤣*","md",true)  
return false
end
local ban = bot.getUser(rep_idd)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember(Fast.."booob",rep_idd) then
Redis:incrby(Fast.."boob"..rep_idd , coniss)
ccccc = Redis:get(Fast.."boobb"..rep_idd)
uuuuu = Redis:get(Fast.."bbobb"..rep_idd)
ppppp = Redis:get(Fast.."zrfff"..rep_idd) or 0
ballanceed = Redis:get(Fast.."boob"..rep_idd) or 0
send(msg.chat_id,msg.id, "✭  الاسم ↢ "..news.."\n✭  الحساب ↢ `"..ccccc.."`\n✭  بنك ↢ (بنك فيجا)\n✭  نوع ↢ ( "..uuuuu.." )\n✭  الزرف ↢ ( "..ppppp.." ريال 💵 )\n✭  صار رصيده ↢ ( "..ballanceed.." ريال 💵 )\n✦","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعنده حساب بنكي ","md",true)
end
end
end
if text and text:match("^خصم فلوس (.*)$") and msg.reply_to_message_id ~= 0 then
local UserName = text:match('^خصم فلوس (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
if msg.Asasy then
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
send(msg.chat_id,msg.id,"\n*✭ بنك فيجاماعنده حساب بالبنك 🤣*","md",true)  
return false
end
local ban = bot.getUser(rep_idd)
if ban.first_name then
news = ""..ban.first_name..""
else
news = " لا يوجد"
end
if Redis:sismember(Fast.."booob",rep_idd) then
Redis:decrby(Fast.."boob"..rep_idd , coniss)
ccccc = Redis:get(Fast.."boobb"..rep_idd)
uuuuu = Redis:get(Fast.."bbobb"..rep_idd)
ppppp = Redis:get(Fast.."zrfff"..rep_idd) or 0
ballanceed = Redis:get(Fast.."boob"..rep_idd) or 0
send(msg.chat_id,msg.id, "✭  الاسم ↢ "..news.."\n✭  الحساب ↢ `"..ccccc.."`\n✭  بنك ↢ (بنك فيجا)\n✭  نوع ↢ ( "..uuuuu.." )\n✭  الزرف ↢ ( "..ppppp.." ريال 💵 )\n✭  صار رصيده ↢ ( "..ballanceed.." ريال 💵 )\n✦","md",true)
else
send(msg.chat_id,msg.id, "✭  ماعنده حساب بنكي ","md",true)
end
end
end
if text == "توب الاموال" or text == "توب الفلوس" then
local bank_users = Redis:smembers(Fast.."booob")
if #bank_users == 0 then
return bot.sendText(msg.chat_id,msg.id,"⇜ لم يقم احد بعمل حساب بنكي","md",true)
end
top_mony = "توب اغنى 20 شخص :\n\n"
mony_list = {}
for k,v in pairs(bank_users) do
local mony = Redis:get(Fast.."boob"..v)
table.insert(mony_list, {tonumber(mony) , v})
end
table.sort(mony_list, function(a, b) return a[1] > b[1] end)
num = 1
emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4",
"5",
"6",
"7",
"8",
"9",
"10",
"11",
"12",
"13",
"14",
"15",
"16",
"17",
"18",
"19",
"20"
}
for k,v in pairs(mony_list) do
if num <= 20 then
local user_name = bot.getUser(v[2]).first_name
local mony = v[1]
local emo = emoji[k]
num = num + 1
if user_name then
top_mony = top_mony..emo.." - "..mony.." | "..user_name.." 💸 \n"
end
end
end
return bot.sendText(msg.chat_id,msg.id,top_mony,"html",true)
end

if text == "توب الحراميه" or text == "توب الحرامية" or text == "توب حراميه" or text == "توب الزرف" or text == "توب زرف" then
local ty_users = Redis:smembers(Fast.."zrfffid")
if #ty_users == 0 then
return send(msg.chat_id,msg.id,"✭  لا يوجد احد","md",true)
end
ty_anubis = "توب 10 اشخاص زرفوا فلوس :\n\n"
ty_list = {}
for k,v in pairs(ty_users) do
local mony = Redis:get(Fast.."zrfff"..v)
table.insert(ty_list, {tonumber(mony) , v})
end
table.sort(ty_list, function(a, b) return a[1] > b[1] end)
num_ty = 1
emojii ={ 
"🥇" ,
"🥈",
"🥉",
"4",
"5",
"6",
"7",
"8",
"9",
"10"
}
for k,v in pairs(ty_list) do
if num_ty <= 10 then
local user_name = bot.getUser(v[2]).first_name
if user_name then
nname = user_name
else
nname = ""
end
local user_tag = '['..nname..'](tg://user?id='..v[2]..')'
local mony = v[1]
local emoo = emojii[k]
num_ty = num_ty + 1
ty_anubis = ty_anubis.."*"..emoo.."*) *"..mony.."* 💵 l ["..nname.."] \n"
end
end
return send(msg.chat_id,msg.id,ty_anubis,"md")
end

if text == 'بخشيش' or text == 'بقشيش' then
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
if Redis:get(Fast.."iioo" .. msg.sender_id.user_id) then
local time_ex = ctime(Redis:ttl(Fast.."iioo" .. msg.sender_id.user_id))
return send(msg.chat_id,msg.id,"✭  من شوي اخذت بخشيش استنى ( "..time_ex.." )","md",true)
end
local jjjo = math.random(1,200);
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , jjjo)
send(msg.chat_id,msg.id,"✭  تكرم وهي بخشيش "..jjjo.." ريال 💵","md",true)
Redis:setex(Fast.."iioo" .. msg.sender_id.user_id,600, true)
else
send(msg.chat_id,msg.id, "✭  ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end


if text == 'زرف' or text == "سرقه" or text == 'زرفو' or text == 'زرفه' and tonumber(msg.reply_to_message_id) ~= 0 then
if not Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
return send(msg.chat_id,msg.id,"✭ ما عندك حساب بنكي")
end
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo and UserInfo.type and UserInfo.type.Fastbots == "userTypeBot" then
send(msg.chat_id,msg.id,"\n*✭ البوت ماعنده حساب بالبنك *","md",true)  
return false
end
if rep_idd == msg.sender_id.user_id then
send(msg.chat_id,msg.id,"\n*✭  بدك تزرف نفسك 🤡*","md",true)  
return false
end
if Redis:get(Fast.."polic" .. msg.sender_id.user_id) then
local time_ex = ctime(Redis:ttl(Fast.."polic" .. msg.sender_id.user_id))
return send(msg.chat_id,msg.id,"✭  انتا بالسجن 🏤 استنى ( "..time_ex.." )","md",true)
end
if Redis:get(Fast.."hrame" .. rep_idd) then
local time_ex = ctime(Redis:ttl(Fast.."hrame" .. rep_idd))
return send(msg.chat_id,msg.id,"✭  ذا المسكين مزروف قبل شوي\n✭  يمديك تزرفه بعد ( "..time_ex.." )","md",true)
end
if Redis:sismember(Fast.."booob",rep_idd) then
ballanceed = Redis:get(Fast.."boob"..rep_idd) or 0
if tonumber(ballanceed) < 199 then
return send(msg.chat_id,msg.id, "✭  مايمديك تزرفه فلوسه اقل من 200 ريال 💵","md",true)
end
local hrame = math.floor(math.random() * 200) + 1;
local hramee = math.floor(math.random() * 5) + 1;
if hramee == 1 or hramee == 2 or hramee == 3 or hramee == 4 then
local ballanceed = Redis:get(Fast.."boob"..rep_idd) or 0
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , hrame)
Redis:decrby(Fast.."boob"..rep_idd , hrame)
Redis:setex(Fast.."hrame" .. rep_idd,900, true)
Redis:incrby(Fast.."zrfff"..msg.sender_id.user_id,hrame)
Redis:sadd(Fast.."zrfffid",msg.sender_id.user_id)
send(msg.chat_id,msg.id, "✭  خذ يالحرامي زرفته "..hrame.." ريال 💵\n✦","md",true)
else
Redis:setex(Fast.."polic" .. msg.sender_id.user_id,300, true)
send(msg.chat_id,msg.id, "✭  مسكتك الشرطة وانتا تزرف 🚔\n✦","md",true)
end
else
send(msg.chat_id,msg.id, "✭  ماعنده حساب بنكي ","md",true)
end
end
if text == 'كنز' or text == 'الكنز' then
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
if Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 5130 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 10 دقائق )","md",true)
elseif Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 5100 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 9 دقائق )","md",true)
elseif Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 4130 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 8 دقائق )","md",true)
elseif Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 420 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 7 دقائق )","md",true)
elseif Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 360 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 6 دقائق )","md",true)
elseif Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 300 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 5 دقائق )","md",true)
elseif Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 2100 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 4 دقائق )","md",true)
elseif Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 1130 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 3 دقائق )","md",true)
elseif Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 120 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 2 دقيقة )","md",true)
elseif Redis:ttl(Fast.."iiihoo" .. msg.sender_id.user_id) >= 60 then
return bot.sendText(msg.chat_id,msg.id,"⇜ كنزك  بينزل بعد ( 1 دقيقة )","md",true)
end
local Textinggt = {"ذهب ✨", "فضه 💰", "ورث 💰", "ياقوت ✨", "مرجان ✨🏻‍⚖️", "سبيكة ذهب خالص 💸", "عمله نادره 🔮", "اثار ⚱️🏻‍♀️", "فلوس 💴💸🏻‍♀️", "عمله قيمه💸🏻‍♀️", "كنز مفقود💸", "مجوهرات 💰", "عمله من العصر الفرعوني 🗿", "عمله من الدوله القديمه 🗿🏻‍🌾", "عمله بيتكوين 💶🏻‍♂️", "ممرض 👨🏻‍⚕️", "عمله فضيه نادره‍♂️", "عمله ذهبيه خالصه🏻‍♂️", "كنز علي بابا المفقود 💰🏻‍♂️", "بطاقه ائتمان💰🏻‍🔧", "ريال امريكي 💸??‍🦳", "ريال كندي 💸", "ين يباني 💸", "ريال بريطاني 💸🏻‍⚕️", "دنانير عراقيه 💸️", "ريال سعودي 💴️", "درهم اماراتي 💴", "فرنك جيبوتي 💲", "اموال مفقوده 💲", "كنز خاص 💲", "صواع ملك مفقود ⚱️🏻", "تاج خاص بملك 👑", "تاج خاص بملك 👑", "اثار تحت المنزل", "جثة فرعون قديمه🏻‍♂️", "تابوت ملك مصري ⚰️", "تاج ملكه مصريه 👑🏻‍⚕️", "مخطوطه لكنز ", "مقبره فرعونيه 💎⚱️⚰️🏻‍♂️", "تمثال رمسيس ⚰️🏻", "كنزبنك فيجاالمفقود 💲", "كنز اطلانطس المفقود 💲", "زئبق احمر 🌡️🏻‍💻", "ياقوت ومرجان 💰🏻", "عمله من العصر الفاطمي 💶", "مخطوطة كنز 📜", "بلوره قديمه 🔮", "كنز تائه 🏛️", "عملات من العصر المملوكي 💲", "كنز نابليون 💲💲", "كنز وخلاص 😂💲💲", "ممتلكات قديمه 💸",}
local Descriptioont = Textinggt[math.random(#Textinggt)]
local ban = bot.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد "
end
if Descriptioont == "ذهب ✨" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 25 ريال 💵\nكنزك هـو : ذهب ✨\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "فضه 💰" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 75)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 75 ريال 💵\nكنزك هـو : فضه 💰\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ورث 💰" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 75)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 75 ريال 💵\nكنزك هـو : ورث 💰\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ياقوت ✨" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 ريال 💵\nكنزك هـو : ياقوت ✨\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مرجان ✨" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 1150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 1150 ريال 💵\nكنزك هـو : مرجان ✨\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "سبيكة ذهب خالص 💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 15)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 10 ريال 💵\nكنزك هـو : سبيكة ذهب خالص 💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله نادره 🔮" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 30)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 30 ريال 💵\nكنزك هـو : عمله نادره 🔮\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "اثار ⚱️" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 35)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 35 ريال 💵\nكنزك هـو : اثار ⚱️\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "فلوس 💴💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 25)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 25 ريال 💵\nكنزك هـو : فلوس 💴💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله قيمه💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 35)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 35 ريال 💵\nكنزك هـو : عمله قيمه💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز مفقود💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 300)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 300 ريال 💵\nكنزك هـو : كنز مفقود💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مجوهرات 💰" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 65)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 65 ريال 💵\nكنزك هـو : مجوهرات 💰\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله من العصر الفرعوني 🗿" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 15)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 15 ريال 💵\nكنزك هـو : عمله من العصر الفرعوني 🗿\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله من الدوله القديمه 🗿" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 27)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 27 ريال 💵\nكنزك هـو : عمله من الدوله القديمه 🗿\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله بيتكوين 💶" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 ريال 💵\nكنزك هـو : عمله بيتكوين 💶\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله ذهبيه نادره" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 ريال 💵\nكنزك هـو : ممرض 👨\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله فضيه نادره" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 ريال 💵\nكنزك هـو : عمله فضيه نادره\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله ذهبيه خالصه" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 59)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 59 ريال 💵\nكنزك هـو : عمله ذهبيه خالصه\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز علي بابا المفقود 💰" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 130)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 130 ريال 💵\nكنزك هـو : كنز علي بابا المفقود 💰\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال ??","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "بطاقه ائتمان💰" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 ريال 💵\nكنزك هـو : بطاقه ائتمان💰\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ريال امريكي 💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 4150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 4150 ريال 💵\nكنزك هـو : ريال امريكي 💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ريال كندي 💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 ريال 💵\nكنزك هـو : ريال كندي 💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ين يباني 💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 2150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 2150 ريال 💵\nكنزك هـو : ين يباني 💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ريال بريطاني 💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 2150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 2150 ريال 💵\nكنزك هـو : ريال بريطاني 💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "دنانير عراقيه 💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 ريال 💵\nكنزك هـو : دنانير عراقيه 💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ريال سعودي 💴" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 ريال 💵\nكنزك هـو : ريال سعودي 💴\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "درهم اماراتي 💴" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 ريال 💵\nكنزك هـو : درهم اماراتي 💴\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "فرنك جيبوتي 💲" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 ريال 💵\nكنزك هـو : فرنك جيبوتي 💲\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "اموال مفقوده 💲" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 30)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 30 ريال 💵\nكنزك هـو : اموال مفقوده 💲\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز خاص 💲" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 230)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 230 ريال 💵\nكنزك هـو : كنز خاص 💲\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "صواع ملك مفقود ⚱️" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 ريال 💵\nكنزك هـو : صواع ملك مفقود ⚱️\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تاج خاص بملك 👑" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 1500)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 1500 ريال 💵\nكنزك هـو : تاج خاص بملك 👑\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تاج خاص بملك 👑" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 20)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 20 ريال 💵\nكنزك هـو : تاج خاص بملك 👑\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "اثار تحت المنزل" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 ريال 💵\nكنزك هـو : اثار تحت المنزل\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "جثة فرعون قديمه" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 90)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 90 ريال 💵\nكنزك هـو : جثة فرعون قديمه\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تابوت ملك مصري ⚰️" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 ريال 💵\nكنزك هـو : تابوت ملك مصري ⚰️\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تاج ملكه مصريه 👑" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 ريال 💵\nكنزك هـو : تاج ملكه مصريه 👑\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مخطوطه لكنز " then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 1200)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 1200 ريال 💵\nكنزك هـو : مخطوطه لكنز \nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال ??","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مقبره فرعونيه 💎⚱️⚰️" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 ريال 💵\nكنزك هـو : مقبره فرعونيه 💎⚱️⚰️\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "تمثال رمسيس ⚰️" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 190)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 190 ريال 💵\nكنزك هـو : تمثال رمسيس ⚰️\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنزبنك فيجاالمفقود 💲" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 ريال 💵\nكنزك هـو : كنزبنك فيجاالمفقود 💲\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز اطلانطس المفقود 💲" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 ريال 💵\nكنزك هـو : كنز اطلانطس المفقود 💲\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "زئبق احمر 🌡️" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 1130)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 ريال 💵\nكنزك هـو : زئبق احمر 🌡️\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ياقوت ومرجان 💰" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 300)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 300 ريال 💵\nكنزك هـو : ياقوت ومرجان 💰\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عمله من العصر الفاطمي 💶" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 90)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 90 ريال 💵\nكنزك هـو : عمله من العصر الفاطمي 💶\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "مخطوطة كنز 📜" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 160)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 160 ريال 💵\nكنزك هـو : مخطوطة كنز 📜\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "بلوره قديمه 🔮" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 ريال 💵\nكنزك هـو : بلوره قديمه 🔮\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز تائه 🏛️" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 ريال 💵\nكنزك هـو : كنز تائه 🏛️\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "عملات من العصر المملوكي 💲" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 200)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 200 ريال 💵\nكنزك هـو : عملات من العصر المملوكي 💲\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز نابليون 💲💲" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 150)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 150 ريال 💵\nكنزك هـو : كنز نابليون 💲💲\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "كنز وخلاص 😂💲💲" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 100)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 100 ريال ??\nكنزك هـو : كنز وخلاص 😂💲💲\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
elseif Descriptioont == "ممتلكات قديمه 💸" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 130)
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
bot.sendText(msg.chat_id,msg.id,"اشعار ايداع "..neews.."\nتم استبداله بمبلغ وقدره : 130 ريال 💵\nكنزك هـو : ممتلكات قديمه 💸\nنوع العملية : البحث عن كنز\nرصيدك دلوقتي : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiihoo" .. msg.sender_id.user_id,600, true)
end
else
bot.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'استلاف' or text == 'سلفني' then
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
if Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 580 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 10 دقائق )","md",true)
elseif Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 540 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 9 دقائق )","md",true)
elseif Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 480 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 8 دقائق )","md",true)
elseif Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 420 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 7 دقائق )","md",true)
elseif Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 360 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 6 دقائق )","md",true)
elseif Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 300 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 5 دقائق )","md",true)
elseif Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 240 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 4 دقائق )","md",true)
elseif Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 180 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 3 دقائق )","md",true)
elseif Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 120 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 2 دقيقة )","md",true)
elseif Redis:ttl(Fast.."ssria" .. msg.sender_id.user_id) >= 60 then
return bot.sendText(msg.chat_id,msg.id,"⇜ من شوي اخدت استلاف استنى ( 1 دقيقة )","md",true)
end
local jjjo = math.random(100,1000);
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , jjjo)
bot.sendText(msg.chat_id,msg.id,"⇜ ابسط سلفتك "..jjjo.." ريال 💵","md",true)
Redis:setex(Fast.."ssria" .. msg.sender_id.user_id,600, true)
else
bot.sendText(msg.chat_id,msg.id, "⇜ معندكش حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == 'القرض' or text == 'قرض' then
local F_Name = bot.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) then
return bot.sendText(msg.chat_id,msg.id, "⇜ سحبت قرض قبل بقيمة "..krses.." ريال 💸","md",true)
end
if Redis:sismember("booob",msg.sender_id.user_id) then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballanceed) < 100000 then
kredd = tonumber(ballanceed) + 900000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,900000)
Redis:set("kreed"..msg.sender_id.user_id,true)
bot.sendText(msg.chat_id,msg.id, "⇜ ابشر وهي قرض بقيمة 900000 ريال 💸","md",true)
elseif tonumber(ballanceed) < 200000 then
kredd = tonumber(ballanceed) + 800000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,800000)
Redis:set("kreed"..msg.sender_id.user_id,true)
bot.sendText(msg.chat_id,msg.id, "⇜ ابشر وهي قرض بقيمة 800000 ريال 💸","md",true)
elseif tonumber(ballanceed) < 300000 then
kredd = tonumber(ballanceed) + 700000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,700000)
Redis:set("kreed"..msg.sender_id.user_id,true)
bot.sendText(msg.chat_id,msg.id, "⇜ ابشر وهي قرض بقيمة 700000 ريال 💸","md",true)
elseif tonumber(ballanceed) < 400000 then
kredd = tonumber(ballanceed) + 600000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,600000)
Redis:set("kreed"..msg.sender_id.user_id,true)
bot.sendText(msg.chat_id,msg.id, "⇜ ابشر وهي قرض بقيمة 600000 ريال 💸","md",true)
elseif tonumber(ballanceed) < 500000 then
kredd = tonumber(ballanceed) + 500000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,500000)
Redis:set("kreed"..msg.sender_id.user_id,true)
bot.sendText(msg.chat_id,msg.id, "⇜ ابشر وهي قرض بقيمة 500000 ريال 💸","md",true)
elseif tonumber(ballanceed) < 600000 then
kredd = tonumber(ballanceed) + 400000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,400000)
Redis:set("kreed"..msg.sender_id.user_id,true)
bot.sendText(msg.chat_id,msg.id, "⇜ ابشر وهي قرض بقيمة 400000 ريال 💸","md",true)
elseif tonumber(ballanceed) < 700000 then
kredd = tonumber(ballanceed) + 300000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,300000)
Redis:set("kreed"..msg.sender_id.user_id,true)
bot.sendText(msg.chat_id,msg.id, "⇜ ابشر وهي قرض بقيمة 300000 ريال 💸","md",true)
elseif tonumber(ballanceed) < 800000 then
kredd = tonumber(ballanceed) + 200000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,200000)
Redis:set("kreed"..msg.sender_id.user_id,true)
bot.sendText(msg.chat_id,msg.id, "⇜ ابشر وهي قرض بقيمة 200000 ريال 💸","md",true)
elseif tonumber(ballanceed) < 900000 then
kredd = tonumber(ballanceed) + 100000
Redis:set("boob"..msg.sender_id.user_id,kredd)
Redis:set("kreednum"..msg.sender_id.user_id,100000)
Redis:set("kreed"..msg.sender_id.user_id,true)
bot.sendText(msg.chat_id,msg.id, "⇜ ابشر وهي قرض بقيمة 100000 ريال 💸","md",true)
else
bot.sendText(msg.chat_id,msg.id, "⇜ فلوسك فوق المليون مايطلعلك قرض","md",true)
end
else
bot.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'تسديد قرض' or text == 'تسديد القرض' or text == 'تسديد قرضي' and tonumber(msg.reply_to_message_id) == 0 then
local F_Name = bot.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("booob",msg.sender_id.user_id) then
if not Redis:get("kreed"..msg.sender_id.user_id) then
return bot.sendText(msg.chat_id,msg.id, "⇜ ماعليك قرض ","md",true)
end
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if tonumber(ballanceed) < tonumber(krses) then
return bot.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
tsded = ballanceed - krses
Redis:set("boob"..msg.sender_id.user_id,math.floor(tsded))
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
Redis:del("kreed"..msg.sender_id.user_id)
Redis:del("kreednum"..msg.sender_id.user_id)
local convert_mony = string.format("%.0f",ballanceed)
bot.sendText(msg.chat_id,msg.id, "⇜ اشعار تسديد قرض\n\nالقرض : "..krses.." ريال 💸\nتم اقتطاع المبلغ من فلوسك\nفلوسك الحين : "..convert_mony.." ريال 💸","md",true)
else
bot.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text == "ترتيبي" then
if Redis:sismember("booob",msg.sender_id.user_id) then
local bank_users = Redis:smembers("booob")
my_num_in_bank = {}
for k,v in pairs(bank_users) do
local mony = Redis:get("boob"..v)
table.insert(my_num_in_bank, {math.floor(tonumber(mony)) , v})
end
table.sort(my_num_in_bank, function(a, b) return a[1] > b[1] end)
for k,v in pairs(my_num_in_bank) do
if tonumber(v[2]) == tonumber(msg.sender_id.user_id) then
local mony = v[1]
return bot.sendText(msg.chat_id,msg.id,"⇜ ترتيبك ( "..k.." )","md",true)
end
end
else
bot.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == 'مسح لعبه الزواج' then
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
local zwag_users = Redis:smembers("roogg1")
for k,v in pairs(zwag_users) do
Redis:del("roog1"..v)
Redis:del("rooga1"..v)
Redis:del("rahr1"..v)
Redis:del("rahrr1"..v)
Redis:del("roogte1"..v)
end
local zwaga_users = Redis:smembers("roogga1")
for k,v in pairs(zwaga_users) do
Redis:del("roog1"..v)
Redis:del("rooga1"..v)
Redis:del("rahr1"..v)
Redis:del("rahrr1"..v)
Redis:del("roogte1"..v)
end
Redis:del("roogga1")
Redis:del("roogg1")
bot.sendText(msg.chat_id,msg.id, "⇜ مسحت لعبه الزواج","md",true)
end
end
if text == 'زواج' then
bot.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`زواج` المهر","md",true)
end
if text and text:match("^زواج (%d+)$") and msg.reply_to_message_id == 0 then
bot.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`زواج` المهر ( بالرد )","md",true)
end
if text and text:match("^زواج (.*)$") and msg.reply_to_message_id ~= 0 then
ballanceed = Redis:get("boob"..msg.sender_id.user_id) or 0
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return bot.sendText(msg.chat_id,msg.id, "⇜ عليك قرض بقيمة "..krses.." ريال 💸 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local F_Name = bot.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local UserName = text:match('^زواج (.*)$')
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(Remsg.sender_id.user_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
bot.sendText(msg.chat_id,msg.id,"\n*⇜ زوجتك نفسي 🤣😒*","md",true)  
return false
end
if tonumber(coniss) < 10000 then
return bot.sendText(msg.chat_id,msg.id, "⇜ الحد الادنى المسموح به هو 10000 ريال \n✦","md",true)
end
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 10000 then
return bot.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
if tonumber(coniss) > tonumber(ballancee) then
return bot.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي\n✦","md",true)
end
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.Fastbots == "userTypeBot" then
bot.sendText(msg.chat_id,msg.id,"\n*⇜بنك فيجامو للزواج 🤣*","md",true)  
return false
end
if Redis:get("roog1"..msg.sender_id.user_id) then
bot.sendText(msg.chat_id,msg.id, "⇜ ابك تراك متزوج !!","md",true)
return false
end
if Redis:get("rooga1"..msg.sender_id.user_id) then
bot.sendText(msg.chat_id,msg.id, "⇜ ابك تراك متزوج !!","md",true)
return false
end
if Redis:get("roog1"..Remsg.sender_id.user_id) then
bot.sendText(msg.chat_id,msg.id, "⇜ ابعد بعيد لاتحوس وتدور حول المتزوجين","md",true)
return false
end
if Redis:get("rooga1"..Remsg.sender_id.user_id) then
bot.sendText(msg.chat_id,msg.id, "⇜ ابعد بعيد لاتحوس وتدور حول المتزوجين","md",true)
return false
end
local bandd = bot.getUser(msg.sender_id.user_id)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = bot.getUser(Remsg.sender_id.user_id)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end
if Redis:sismember("booob",msg.sender_id.user_id) then
local hadddd = tonumber(coniss)
ballanceekk = tonumber(coniss) / 100 * 15
ballanceekkk = tonumber(coniss) - ballanceekk
local convert_mony = string.format("%.0f",ballanceekkk)
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
ballanceea = Redis:get("boob"..Remsg.sender_id.user_id) or 0
zogtea = ballanceea + ballanceekkk
zeugh = ballancee - tonumber(coniss)
Redis:set("boob"..msg.sender_id.user_id , math.floor(zeugh))
Redis:set("boob"..Remsg.sender_id.user_id , math.floor(zogtea))
Redis:sadd("roogg1",msg.sender_id.user_id)
Redis:sadd("roogga1",Remsg.sender_id.user_id)
Redis:set("roog1"..msg.sender_id.user_id,msg.sender_id.user_id)
Redis:set("rooga1"..msg.sender_id.user_id,Remsg.sender_id.user_id)
Redis:set("roogte1"..Remsg.sender_id.user_id,Remsg.sender_id.user_id)
Redis:set("rahr1"..msg.sender_id.user_id,tonumber(coniss))
Redis:set("rahr1"..Remsg.sender_id.user_id,tonumber(coniss))

Redis:set("roog1"..Remsg.sender_id.user_id,msg.sender_id.user_id)
Redis:set("rahrr1"..msg.sender_id.user_id,math.floor(ballanceekkk))

Redis:set("rooga1"..Remsg.sender_id.user_id,Remsg.sender_id.user_id)
Redis:set("rahrr1"..Remsg.sender_id.user_id,math.floor(ballanceekkk))

bot.sendText(msg.chat_id,msg.id, "كولولولولويششش\nاليوم عقدنا قران :\n\nالزوج "..neews.." 🤵🏻\n   💗\nالزوجة "..newws.." 👰🏻‍♀️\nالمهر : "..convert_mony.." ريال بعد الضريبة 15%\nعشان تشوفون وثيقة زواجكم اكتبوا : *زواجي*","md",true)
else
bot.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end

if text == "زواجات غش" then
if tonumber(msg.sender_id.user_id) == tonumber(Sudo_Id) then
local F_Name = bot.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
  local zwag_users = Redis:smembers("roogg1")
  if #zwag_users == 0 then
  return bot.sendText(msg.chat_id,msg.id,"⇜ مافي زواجات حاليا","md",true)
  end
  top_zwag = "توب 30 اغلى زواجات :\n\n"
  zwag_list = {}
  for k,v in pairs(zwag_users) do
  local mahr = Redis:get("rahr1"..v)
  local zwga = Redis:get("rooga1"..v)
  table.insert(zwag_list, {tonumber(mahr) , v , zwga})
  end
  table.sort(zwag_list, function(a, b) return a[1] > b[1] end)
  znum = 1
  zwag_emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)",
"21)",
"22)",
"23)",
"24)",
"25)",
"26)",
"27)",
"28)",
"29)",
"30)"
  }
  for k,v in pairs(zwag_list) do
  if znum <= 30 then
  local zwg_name = bot.getUser(v[2]).first_name or Redis:get(v[2].."first_name:") or "لا يوجد اسم"
  local zwg_tag = '['..zwg_name..'](tg://user?id='..v[2]..')'
  local zwga_name = bot.getUser(v[3]).first_name or Redis:get(v[3].."first_name:") or "لا يوجد اسم"
  local zwga_tag = '['..zwg_name..'](tg://user?id='..v[3]..')'
  local mahr = v[1]
  local convert_mony = string.format("%.0f",mahr)
  local emo = zwag_emoji[k]
  znum = znum + 1
  top_zwag = top_zwag..emo.." "..convert_mony.." 💸 ꗝ "..zwg_tag.." 👫 "..zwga_tag.."\n"
  end
  end
  local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg.chat_id,msg.id,top_zwag,"md",false, false, false, false, reply_markup)
  end
  end

if text == "توب زواج" or text == "توب متزوجات" or text == "توب زوجات" or text == "توب زواجات" or text == "زواجات" or text == "الزواجات" then
local F_Name = bot.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
  local zwag_users = Redis:smembers("roogg1")
  if #zwag_users == 0 then
  return bot.sendText(msg.chat_id,msg.id,"⇜ مافي زواجات حاليا","md",true)
  end
  top_zwag = "توب 30 اغلى زواجات :\n\n"
  zwag_list = {}
  for k,v in pairs(zwag_users) do
  local mahr = Redis:get("rahr1"..v)
  local zwga = Redis:get("rooga1"..v)
  table.insert(zwag_list, {tonumber(mahr) , v , zwga})
  end
  table.sort(zwag_list, function(a, b) return a[1] > b[1] end)
  znum = 1
  zwag_emoji ={ 
"🥇" ,
"🥈",
"🥉",
"4)",
"5)",
"6)",
"7)",
"8)",
"9)",
"10)",
"11)",
"12)",
"13)",
"14)",
"15)",
"16)",
"17)",
"18)",
"19)",
"20)",
"21)",
"22)",
"23)",
"24)",
"25)",
"26)",
"27)",
"28)",
"29)",
"30)"
  }
  for k,v in pairs(zwag_list) do
  if znum <= 30 then
  local zwg_name = bot.getUser(v[2]).first_name or Redis:get(v[2].."first_name:") or "لا يوجد اسم"
  local zwga_name = bot.getUser(v[3]).first_name or Redis:get(v[3].."first_name:") or "لا يوجد اسم"
  local mahr = v[1]
  local convert_mony = string.format("%.0f",mahr)
  local emo = zwag_emoji[k]
  znum = znum + 1
  top_zwag = top_zwag..emo.." "..convert_mony.." 💸 ꗝ "..zwg_name.." 👫 "..zwga_name.."\n"
  end
  end
  local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 'https://t.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg.chat_id,msg.id,top_zwag,"md",false, false, false, false, reply_markup)
  end

if text == 'بنك' then
send(msg.chat_id,msg.id, [[*
✜ اوامر البنك

⌯ انشاء حساب بنكي  ↢ تعمل حساب وتقدر تحول فلوس 

⌯ مسح حساب بنكي  ↢ تلغي حسابك البنكي

⌯ تحويل ↢ تطلب رقم حساب الشخص وتحول له فلوس

⌯ حسابي  ↢ يطلع لك رقم حسابك 

⌯ فلوسي ↢ يعلمك كم فلوسك

⌯ كنز ↢ البحث عن كنزك

⌯ راتبي ↢ يعطيك راتبك كل ٢٠ دقيقة

⌯ بخشيش ↢ يعطيك بخشيش كل ١٠ دقايق

⌯ زرف ↢ تزرف فلوس اشخاص كل ١٠ دقايق

⌯ استثمار ↢ تستثمر بالمبلغ اللي تبيه مع نسبة ربح مضمونه من ١٪؜ الى ١٥٪؜

⌯ حظ ↢ تلعبها بأي مبلغ ياتكسب يا تخسر

⌯ مضاربه ↢ تضارب بأي مبلغ انت عاوزو والنسبة من ٩٠٪؜ الى -٩٠٪؜ انت وحظك

⌯ توب الفلوس ↢ يطلع توب اكتر ناس معهم فلوس في كل المجموعهات

⌯ توب الحراميه ↢ يطلع لك اكتر ناس سرقو 
⌯ كنز او الكنز ↢ عمليه البحث عن كنزك
⌯ سلفني او استلاف ↢ البوت بيديك استلاف 
⌯ شراء رتبه ↢ تقدر تشتري رتبه بالمجموعه بفلوسك
. هجوم +المبلغ↢ تقدر تهجم علي العدو ولك فرصه 
. تصفير النتائج↢لمسح كل نتائج العبه
. قرضك↢يمديك فرصه تاخذ قرض من البنك
. مراهنه↢تراهن علي مبلغ
. ترتيبي ↢يطلعلك ترتيبك
*]],"md",true)
end

if text == 'اوامر الزواج' then
send(msg.chat_id,msg.id, [[*
مرحبا بك عزيزي في اوامر الزواج 🦋
♡ زواجي↢يطلعلك قسيمة زواجك 
♡ طلاق↢تطلق زوجتك
♡ خلع↢تخلعي زوجك
♡ زواج +المبلغ↢الحد الادني 10000
♡ زوجها ↢تعرف مين متزوجه
♡ توب زواج ↢يطلعلك توب المتزوجين
. مسح لعبه الزواج ↢تصفر نتائج الزواج
*]],"md",true)
end
if text == 'زواجي' then
local F_Name = bot.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("roogg1",msg.sender_id.user_id) or Redis:sismember("roogga1",msg.sender_id.user_id) then
local zoog = Redis:get("roog1"..msg.sender_id.user_id)
local zooga = Redis:get("rooga1"..msg.sender_id.user_id)
local mahr = Redis:get("rahr1"..msg.sender_id.user_id)
local convert_mony = string.format("%.0f",mahr)
local bandd = bot.getUser(zoog)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = bot.getUser(zooga)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end
bot.sendText(msg.chat_id,msg.id, "وثيقة الزواج حقتك :\n\nالزوج "..neews.." 🤵🏻\nالزوجة "..newws.." 👰🏻‍♀️\nالمهر : "..convert_mony.." ريال 💸","md",true)
else
bot.sendText(msg.chat_id,msg.id, "⇜ انت اعزب","md",true)
end
end

if text == 'زوجها' or text == "زوجته" or text == "جوزها" or text == "زوجتو" or text == "زواجه" and msg.reply_to_message_id ~= 0 then
local F_Name = bot.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(Remsg.sender_id.user_id)
if msg.sender_id.user_id == Remsg.sender_id.user_id then
bot.sendText(msg.chat_id,msg.id,"\n*⇜ لا تكشف نفسك وتخسر فلوس عالفاضي\n اكتب `زواجي`*","md",true)  
return false
end
if Redis:sismember("roogg1",Remsg.sender_id.user_id) or Redis:sismember("roogga1",Remsg.sender_id.user_id) then
if Redis:sismember("booob",msg.sender_id.user_id) then
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < 100 then
return bot.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(Remsg.sender_id.user_id)
if UserInfo and UserInfo.type and UserInfo.type.Fastbots == "userTypeBot" then
bot.sendText(msg.chat_id,msg.id,"\n*⇜بنك فيجا مو متزوجه 🤣*","md",true)  
return false
end
local zoog = Redis:get("roog1"..Remsg.sender_id.user_id)
local zooga = Redis:get("rooga1"..Remsg.sender_id.user_id)
local mahr = Redis:get("rahr1"..Remsg.sender_id.user_id)
local bandd = bot.getUser(zoog)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = bot.getUser(zooga)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end
local otheka = ballancee - 100
local convert_mony = string.format("%.0f",mahr)
Redis:set("boob"..msg.sender_id.user_id , math.floor(otheka))
bot.sendText(msg.chat_id,msg.id, "وثيقة الزواج حقته :\n\nالزوج "..neews.." 🤵🏻\nالزوجة "..newws.." 👰🏻‍♀️\nالمهر : "..convert_mony.." ريال 💸","md",true)
else
bot.sendText(msg.chat_id,msg.id, "⇜ ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
else
bot.sendText(msg.chat_id,msg.id, "⇜ مسكين اعزب مو متزوج","md",true)
end
end

if text == 'طلاق' then
local F_Name = bot.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("roogg1",msg.sender_id.user_id) or Redis:sismember("roogga1",msg.sender_id.user_id) then
local zoog = Redis:get("roog1"..msg.sender_id.user_id)
local zooga = tonumber(Redis:get("rooga1"..msg.sender_id.user_id))
if tonumber(zoog) == msg.sender_id.user_id then
local bandd = bot.getUser(zoog)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = bot.getUser(zooga)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end

Redis:srem("roogg1", msg.sender_id.user_id)
Redis:srem("roogga1", msg.sender_id.user_id)
Redis:del("roog1"..msg.sender_id.user_id)
Redis:del("rooga1"..msg.sender_id.user_id)
Redis:del("rahr1"..msg.sender_id.user_id)
Redis:del("rahrr1"..msg.sender_id.user_id)

Redis:srem("roogg1", zooga)
Redis:srem("roogga1", zooga)
Redis:del("roog1"..zooga)
Redis:del("rooga1"..zooga)
Redis:del("rahr1"..zooga)
Redis:del("rahrr1"..zooga)
return bot.sendText(msg.chat_id,msg.id, "⇜ ابشر طلقتك من زوجتك "..newws.."","md",true)
else
bot.sendText(msg.chat_id,msg.id, "⇜ الطلاق للزوج فقط","md",true)
end
else
bot.sendText(msg.chat_id,msg.id, "⇜ انت اعزب","md",true)
end
end

if text == 'خلع' then
local F_Name = bot.getUser(msg.sender_id.user_id).first_name
Redis:set(msg.sender_id.user_id.."first_name:", F_Name)
if Redis:sismember("roogg1",msg.sender_id.user_id) or Redis:sismember("roogga1",msg.sender_id.user_id) then
local zoog = Redis:get("roog1"..msg.sender_id.user_id)
local zooga = Redis:get("rooga1"..msg.sender_id.user_id)
if tonumber(zooga) == msg.sender_id.user_id then
local mahrr = Redis:get("rahrr1"..msg.sender_id.user_id)
local bandd = bot.getUser(zoog)
if bandd.first_name then
neews = "["..bandd.first_name.."](tg://user?id="..bandd.id..")"
else
neews = " لا يوجد"
end
local ban = bot.getUser(zooga)
if ban.first_name then
newws = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
newws = " لا يوجد"
end

ballancee = Redis:get("boob"..zoog) or 0
kalea = ballancee + mahrr
Redis:set("boob"..zoog , kalea)
local convert_mony = string.format("%.0f",mahrr)
bot.sendText(msg.chat_id,msg.id, "⇜ خلعت زوجك "..neews.."\n⇜ ورجعت له المهر ( "..convert_mony.." ريال 💸 )","md",true)

Redis:srem("roogg1", zoog)
Redis:srem("roogga1", zoog)
Redis:del("roog1"..zoog)
Redis:del("rooga1"..zoog)
Redis:del("rahr1"..zoog)
Redis:del("rahrr1"..zoog)

Redis:srem("roogg1", msg.sender_id.user_id)
Redis:srem("roogga1", msg.sender_id.user_id)
Redis:del("roog1"..msg.sender_id.user_id)
Redis:del("rooga1"..msg.sender_id.user_id)
Redis:del("rahr1"..msg.sender_id.user_id)
Redis:del("rahrr1"..msg.sender_id.user_id)
else
bot.sendText(msg.chat_id,msg.id, "⇜ الخلع للزوجات فقط","md",true)
end
else
bot.sendText(msg.chat_id,msg.id, "⇜ انت اعزب","md",true)
end
end
if text == 'مراهنه' or text == 'مراهنة' then
bot.sendText(msg.chat_id,msg.id, "استعمل الامر كذا :\n\n`مراهنه` المبلغ","md",true)
end
if text and text:match('^مراهنه (.*)$') or text and text:match('^مراهنة (.*)$') then
local UserName = text:match('^مراهنه (.*)$') or text:match('^مراهنة (.*)$')
krses = tonumber(Redis:get("kreednum"..msg.sender_id.user_id))
if Redis:get("kreed"..msg.sender_id.user_id) and tonumber(ballanceed) > 5000000 then
return bot.sendText(msg.chat_id,msg.id, "⇜ عليك قرض بقيمة "..krses.." ريال 💸 \nقم بسداده بالامر `تسديد القرض` ","md",true)
end
local coniss = tostring(UserName)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
if tonumber(ballancee) < tonumber(coniss) then
return bot.sendText(msg.chat_id,msg.id, "⇜ فلوسك ماتكفي \n✦","md",true)
end
Redis:del(Fast..'List_rhan'..msg.chat_id)  
Redis:set(Fast.."playerrhan"..msg.chat_id,msg.sender_id.user_id)
Redis:set(Fast.."playercoins"..msg.chat_id..msg.sender_id.user_id,coniss)
Redis:set(Fast.."raeahkam"..msg.chat_id,msg.sender_id.user_id)
Redis:sadd(Fast..'List_rhan'..msg.chat_id,msg.sender_id.user_id)
Redis:setex(Fast.."Start_rhan"..msg.chat_id,3600,true)
Redis:set(Fast.."allrhan"..msg.chat_id..12345 , coniss)
local ballancee = Redis:get("boob"..msg.sender_id.user_id) or 0
rehan = tonumber(ballancee) - tonumber(coniss)
Redis:set("boob"..msg.sender_id.user_id , rehan)
return bot.sendText(msg.chat_id,msg.id,"• تم بدء المراهنة وتم تسجيلك \n• اللي بده يشارك يرسل ( انا والمبلغ ) .","md",true)
end
if text == 'نعم' and Redis:get(Fast.."Witting_Startrhan"..msg.chat_id) then
rarahkam = Redis:get(Fast.."raeahkam"..msg.chat_id)
if tonumber(rarahkam) == msg.sender_id.user_id then
local list = Redis:smembers(Fast..'List_rhan'..msg.chat_id) 
if #list == 1 then 
return bot.sendText(msg.chat_id,msg.id,"• عذراً لم يشارك احد بالرهان","md",true)  
end 
local UserName = list[math.random(#list)]
local UserId_Info = bot.getUser(UserName)
if UserId_Info.username and UserId_Info.username ~= "" then
ls = '['..UserId_Info.first_name..'](tg://user?id='..UserName..')'
else
ls = '@['..UserId_Info.username..']'
end
benrahan = Redis:get(Fast.."allrhan"..msg.chat_id..12345) or 0
local ballancee = Redis:get("boob"..UserName) or 0
rehan = tonumber(ballancee) + tonumber(benrahan)
Redis:set("boob"..UserName , rehan)

local rhan_users = Redis:smembers(Fast.."List_rhan"..msg.chat_id)
for k,v in pairs(rhan_users) do
Redis:del(Fast..'playercoins'..msg.chat_id..v)
end
Redis:del(Fast..'allrhan'..msg.chat_id..12345) 
Redis:del(Fast..'playerrhan'..msg.chat_id) 
Redis:del(Fast..'raeahkam'..msg.chat_id) 
Redis:del(Fast..'List_rhan'..msg.chat_id) 
Redis:del(Fast.."Witting_Startrhan"..msg.chat_id)
Redis:del(Fast.."Start_rhan"..msg.chat_id)
local ballancee = Redis:get("boob"..UserName) or 0
local convert_mony = string.format("%.0f",benrahan)
local convert_monyy = string.format("%.0f",ballancee)
return bot.sendText(msg.chat_id,msg.id,'⇜ فاز '..ls..' بالرهان 🎊\nالمبلغ : '..convert_mony..' ريال 💸\nرصيدك الحين : '..convert_monyy..' ريال 💸\n✦',"md",true)
end
end


if text == 'راتب' or text == 'راتبي' then
if Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
if Redis:get(Fast.."iiioo" .. msg.sender_id.user_id) then
local time_ex = ctime(Redis:ttl(Fast.."iiioo" .. msg.sender_id.user_id))
return send(msg.chat_id,msg.id,"✭  راتبك بينزل بعد ( "..time_ex.." )","md",true)
end
local ban = bot.getUser(msg.sender_id.user_id)
if ban.first_name then
neews = "["..ban.first_name.."](tg://user?id="..ban.id..")"
else
neews = " لا يوجد "
end
local jobs = {"طيار","محامي","دكتور","خباز","مدير بنك","قلب سيمو","مدرس"}
local job = jobs[math.random(#jobs)]
if job == "طيار" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 500)
ratbk = "500"
your_job = "طيار 🚀"
elseif job == "محامي" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 300)
ratbk = "300"
your_job = "محامي 👨‍🎓"
elseif job == "دكتور" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 600)
ratbk = "600"
your_job = "دكتور 👨‍🔬‍"
elseif job == "خباز" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 100)
ratbk = "100"
your_job = "خباز ‍💆‍♂️"
elseif job == "مدير بنك" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 800)
ratbk = "800"
your_job = "مدير بنك ‍👨‍💼"
elseif job == "قلب سيمو" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 1000)
ratbk = "1000"
your_job = "قلب سيمو ♥"
elseif job == "مدرس" then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , 400)
ratbk = "400"
your_job = "مدرس 🤵"
end
local ballancee = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
send(msg.chat_id,msg.id,"✭ اشعار ايداع "..neews.."\n✭ وظيفتك : "..your_job.."\n✭ المبلغ : "..ratbk.." ريال 💵\n✭ نوع العملية : اضافة راتب\n✭ رصيدك الحين : "..ballancee.." ريال 💵","md",true)
Redis:setex(Fast.."iiioo" .. msg.sender_id.user_id,600, true)
else
send(msg.chat_id,msg.id, "✭  ماعندك حساب بنكي ارسل ↢ ( `انشاء حساب بنكي` )","md",true)
end
end
if text and text:match("^هجوم (.*)$") then
if tonumber(msg.reply_to_message_id) == 0 then
return send(msg.chat_id,msg.id, "✭ استخدم الامر بالرد علي الاعضاء")
end
if not Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
return send(msg.chat_id,msg.id,"✭ ما عندك حساب بنكي")
end
local Remsg = bot.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = bot.getUser(rep_idd)
if UserInfo and UserInfo.type and UserInfo.type.Fastbots == "userTypeBot" then
send(msg.chat_id,msg.id,"\n*✭ البوت ماعنده حساب بالبنك *","md",true)  
return false
end
if rep_idd == msg.sender_id.user_id then
send(msg.chat_id,msg.id,"\n*✭ ما ينفع تهاجم نفسك*","md",true)  
return false
end
if not Redis:sismember(Fast.."booob",rep_idd) then
return send(msg.chat_id,msg.id,"✭ ما عنده حساب بنكي")
end
if Redis:get(Fast..'hgomm'..msg.sender_id.user_id) then
return send(msg.chat_id,msg.id,"✭ استنا "..ctime(Redis:ttl(Fast..'hgomm'..msg.sender_id.user_id)).." وبعدين هاجم تاني")
end


if text == 'توب' or text == 'التوب' or text == 'top' or text == 'ttop' then 
local reply_markup = bot.replyMarkup{type = 'inline',data = {
{{text = 'توب الحراميه', data = msg.sender_id.user_id..'/top/zrf'}},
{{text = 'توب الفلوس', data = msg.sender_id.user_id..'/top/flos'}},}}
return bot.sendText(msg_chat_id,msg_id, [[*•  مرحبا في اوامر التوب للعبه البنك*]],"md",false, false, false, false, reply_markup)
end
local num = text:match('^هجوم (.*)$')
local coniss = tostring(num)
local coniss = coniss:gsub('٠','0')
local coniss = coniss:gsub('١','1')
local coniss = coniss:gsub('٢','2')
local coniss = coniss:gsub('٣','3')
local coniss = coniss:gsub('٤','4')
local coniss = coniss:gsub('٥','5')
local coniss = coniss:gsub('٦','6')
local coniss = coniss:gsub('٧','7')
local coniss = coniss:gsub('٨','8')
local coniss = coniss:gsub('٩','9')
local coniss = coniss:gsub('-','')
local coniss = tonumber(coniss)
local my_balance = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
local his_balance = Redis:get(Fast.."boob"..rep_idd) or 0
if tonumber(my_balance) < coniss then
return send(msg.chat_id,msg.id, "✭ فلوسك اقل من هذا المبلغ")
end
if tonumber(his_balance) < coniss then
return send(msg.chat_id,msg.id, "✭ فلوسه اقل من هذا المبلغ")
end
local rand = math.random(1,10)
if tonumber(rand) < 5 then
Redis:incrby(Fast.."boob"..msg.sender_id.user_id , coniss)
Redis:decrby(Fast.."boob"..rep_idd , coniss)
local balance = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
local Hbalance = Redis:get(Fast.."boob"..rep_idd) or 0
Redis:setex(Fast..'hgomm'..msg.sender_id.user_id,300,true)
return send(msg.chat_id,msg.id, "✭ نجحت في الهجوم وسرقت منه "..coniss.."\n✭ اصبح رصيدك الان "..balance.."\n✭ اصبح رصيده هو "..Hbalance)
else
Redis:incrby(Fast.."boob"..rep_idd , coniss)
Redis:decrby(Fast.."boob"..msg.sender_id.user_id , coniss)
local balance = Redis:get(Fast.."boob"..msg.sender_id.user_id) or 0
local Hbalance = Redis:get(Fast.."boob"..rep_idd) or 0
Redis:setex(Fast..'hgomm'..msg.sender_id.user_id,300,true)
return send(msg.chat_id,msg.id, "✭ فشلت في الهجوم عليه وخصم منك "..coniss.."\n✭ اصبح رصيدك الان "..balance.."\n✭ اصبح رصيده هو "..Hbalance)
end
end


if text and Redis:get(Fast..msg.chat_id..msg.sender_id.user_id.."txtrtb") then
local balance = Redis:get(Fast.."boob"..msg.sender_id.user_id)
if text == 'مميز' and tonumber(balance)  >= 2000 then
Redis:decrby(Fast.."boob"..msg.sender_id.user_id , 2000)
Redis:sadd(Fast.."Special:Group"..msg.chat_id,msg.sender_id.user_id) 
Redis:del(Fast..msg.chat_id..msg.sender_id.user_id.."txtrtb") 
return send(msg.chat_id,msg.id,"✭ تم رفعك مميز بنجاح وخصم 3000 ريال من فلوسك")
elseif text == "ادمن" and tonumber(balance)  >= 4000 then
Redis:decrby(Fast.."boob"..msg.sender_id.user_id , 4000)
Redis:sadd(Fast.."Admin:Group"..msg.chat_id,msg.sender_id.user_id) 
Redis:del(Fast..msg.chat_id..msg.sender_id.user_id.."txtrtb") 
return send(msg.chat_id,msg.id,"✭ تم رفعك ادمن بنجاح وخصم 4000 ريال من فلوسك")
elseif text == "مدير" and tonumber(balance)  >= 6000 then
Redis:decrby(Fast.."boob"..msg.sender_id.user_id , 6000)
Redis:sadd(Fast.."Manger:Group"..msg.chat_id,msg.sender_id.user_id) 
Redis:del(Fast..msg.chat_id..msg.sender_id.user_id.."txtrtb") 
return send(msg.chat_id,msg.id,"✭ تم رفعك مدير بنجاح وخصم 6000 ريال من فلوسك")
elseif text == "منشئ" and tonumber(balance)  >= 8000 then 
Redis:decrby(Fast.."boob"..msg.sender_id.user_id , 8000)
Redis:sadd(Fast.."Creator:Group"..msg.chat_id,msg.sender_id.user_id) 
Redis:del(Fast..msg.chat_id..msg.sender_id.user_id.."txtrtb") 
return send(msg.chat_id,msg.id,"✭ تم رفعك منشئ بنجاح وخصم 8000 ريال من فلوسك")
end
end
if text == "شراء رتبه" then
if not Redis:sismember(Fast.."booob",msg.sender_id.user_id) then
return send(msg.chat_id,msg.id,"✭ ما عندك حساب بنكي \n✭ ارسل `انشاء حساب بنكي`","md")
end
local balance = Redis:get(Fast.."boob"..msg.sender_id.user_id)
if tonumber(balance) == tonumber(0) then
return send(msg.chat_id,msg.id,"✭ ما عندك اي فلوس تشتري بيها")
end
if tonumber(balance) < 2000 then
return send(msg.chat_id,msg.id,"✭ فلوسك لا تكفي لشراء اي رتبه")
end
if tonumber(balance)  >= 2000 and tonumber(balance) < 4000 then
Txtrtb = "✭ الرتب اللتي يمكنك شرائها هي \n\n✭ `مميز` (2000 ريال) \n\n ✭ اضغط علي الرتبه ليتم نسخها"
elseif tonumber(balance) >= 4000 and tonumber(balance) < 6000 then
Txtrtb = "✭ الرتب اللتي يمكنك شرائها هي \n\n✭ `مميز` (2000 ريال)\n✭ `ادمن` (4000 ريال) \n\n ✭ اضغط علي الرتبه ليتم نسخها"
elseif tonumber(balance) >= 6000 and tonumber(balance) < 8000 then
Txtrtb = "✭ الرتب اللتي يمكنك شرائها هي \n\n✭ `مميز` (2000 ريال)\n✭ `ادمن` (4000 ريال) \n✭ `مدير` (6000 ريال)\n\n ✭ اضغط علي الرتبه ليتم نسخها"
elseif tonumber(balance) >= 8000 then
Txtrtb = "✭ الرتب اللتي يمكنك شرائها هي \n\n✭ `مميز` (2000 ريال)\n✭ `ادمن` (4000 ريال) \n✭ `مدير` (6000 ريال)\n✭ `منشئ` (8000 ريال)\n\n ✭ اضغط علي الرتبه ليتم نسخها"
end
Redis:setex(Fast..msg.chat_id..msg.sender_id.user_id.."txtrtb",180,true)
return send(msg.chat_id,msg.id,Txtrtb,"md")
end

end

return {Fast = bank}