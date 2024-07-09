function rdod(msg)
text = nil
if msg and msg.content and msg.content.text then
text = msg.content.text.text
end
msg_chat_id = msg.chat_id
msg_id = msg.id
if tonumber(msg.sender_id.user_id) == tonumber(Fast) then
return false
end
if text then
local neww = Redis:get(Fast.."Get:Reides:Commands:Group"..msg.chat_id..":"..text)
if neww then
text = neww or text
end
end

if text == "تفعيل ردود السورس" or text == "تعطيل الردود للسورس" then
if not msg.Manger then
return send(msg.chat_id,msg.id,'\n*⌔ هذا الامر يخص '..Controller_Num(6)..' * ',"md",true)
end
Redis:set(Fast..'rb:bna'..msg.chat_id,true)
send(msg.chat_id,msg.id,'\n ⌔تم تفعيل ردود السورس')
end
if text == "تعطيل ردود السورس" or text == "تفعيل الردود السورس" then
if not msg.Manger then
return send(msg.chat_id,msg.id,'\n*⌔ هذا الامر يخص '..Controller_Num(6)..' * ',"md",true)
end
Redis:del(Fast..'rb:bna'..msg.chat_id)
send(msg.chat_id,msg.id,'\n ⌔تم تفعيل امر ردود السورس')
end
if text == "تفعيل ردود السورس العراقيه" or text == "تفعيل الردود العراقيه" then
if not msg.Manger then
return send(msg.chat_id,msg.id,'\n*⌔ هذا الامر يخص '..Controller_Num(6)..' * ',"md",true)
end
Redis:set(Fast..'Sasa:Jeka'..msg.chat_id,true)
send(msg.chat_id,msg.id,'\n ⌔تم تفعيل امر ردود السورس العراقيه')
end
if text == "تعطيل ردود السورس العراقيه" or text == "تعطيل الردود العراقيه" then
if not msg.Manger then
return send(msg.chat_id,msg.id,'\n*⌔ هذا الامر يخص '..Controller_Num(6)..' * ',"md",true)
end
Redis:del(Fast..'Sasa:Jeka'..msg.chat_id)
send(msg.chat_id,msg.id,'\n ⌔تم تعطيل امر ردود السورس العراقيه')
end

if text == 'هاي' or text == 'هيي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*خالتك جرت ورايا 😹💔*',"md",true)  
end
if text == 'سلام عليكم' or text == 'السلام عليكم' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*وعليكم السلام 🌝💜*',"md",true)  
end
if text == 'سلام' or text == 'مع سلامه' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*مع الف سلامه يقلبي متجيش تاني 😹💔🎶*',"md",true)  
end
if text == 'برايفت' or text == 'تع برايفت' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*خدوني معاكم برايفت والنبي 🥺💔*',"md",true)  
end
if text == 'النبي' or text == 'صلي علي النبي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*عليه الصلاه والسلام 🌝💛*',"md",true)  
end
if text == 'نعم' or text == 'يا نعم' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*نعم الله عليك 🌚❤️*',"md",true)  
end
if text == '🙄' or text == '🙄🙄' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'* نزل عينك تحت كدا علشان هتخاد علي قفاك 😒❤️*',"md",true)  
end
if text == '🌹' or text == '🌹🌹' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*شكرا علي الورده حبي☺️*',"md",true)  
end
if text == '😂' or text == '😂😂' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*ضحكتك عثل زيكك ينوحيي 🌝❤️*',"md",true)  
end
if text == '😹' or text == '😹' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*ضحكتك عثل زيكك ينوحيي 🌝❤️*',"md",true)  
end
if text == '🤔' or text == '🤔🤔' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'* بتفكر في اي 🤔*',"md",true)  
end
if text == '🌚' or text == '🌝' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*القمر ده شبهك 🙂❤️*',"md",true)  
end
if text == '💋' or text == '💋💋' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*انا عايز مح انا كمان 🥺💔*',"md",true)  
end
if text == '😭' or text == '😭😭' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*بتعيط تيب لي طيب ??*',"md",true)  
end
if text == '🥺' or text == '🥺🥺' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*متزعلش بحبك 😻??*',"md",true)  
end
if text == '!' or text == '!!' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*متضايق لي مالك؟*',"md",true)  
end
if text == 'بحبك' or text == 'حبق' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*وانا كمان بعشقك يا روحي 🤗🥰*',"md",true)  
end
if text == 'مح' or text == 'هات مح' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*محات حياتي يروحي 🌝❤️*',"md",true)  
end
if text == 'هلا' or text == 'هلا وغلا' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*هلا بيك ياروحي 👋*',"md",true)  
end
if text == 'هشش' or text == 'هششخرص' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*بنهش كتاكيت احنا هنا ولا اي ??😹*',"md",true)  
end
if text == 'الحمد الله' or text == 'بخير الحمد الله' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*دايما ياحبيبي 🌝❤️*',"md",true)  
end
if text == 'بف' or text == 'بص بف' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*وحيات امك ياكبتن خدوني معاكو بيف 🥺💔*',"md",true)  
end
if text == 'خاص' or text == 'بص خاص' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*ونجيب اشخاص 😂👻*',"md",true)  
end
if text == 'صباح الخير' or text == 'مساء الخير' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*انت الخير يعمري 🌝❤️*',"md",true)  
end
if text == 'صباح النور' or text == 'باح الخير' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*صباح العسل 😻🤍*',"md",true)  
end
if text == 'حصل' or text == 'حثل' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*خخخ امال 😹*',"md",true)  
end
if text == 'اه' or text == 'اها' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اه اي يا قدع عيب 😹💔*',"md",true)  
end
if text == '.' or text == '?' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*صلي علي محمد*',"md",true)  
end
if text == '..' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*لا اله الا الله*',"md",true)  
end
if text == '...' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*استغفـر الله العظيم ❤️*',"md",true)  
end
if text == 'كسم' or text == 'كسمك' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*عيب ياوسخ 🙄💔*',"md",true)  
end
if text == 'بوتي' or text == 'يا بوتي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'روح وعقل بوتك 🥺💔',"md",true)  
end
if text == 'تجي' or text == 'تع' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*لا عيب بتكسف 😹💔*',"md",true)  
end
if text == 'هيح' or text == 'لسه صاحي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*صح النوم 😹💔*',"md",true)  
end
if text == 'منور' or text == 'نورت' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*ده نورك ي قلبي 🌝💙*',"md",true)  
end
if text == 'باي' or text == 'انا ماشي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*ع فين لوين رايح وسايبنى 🥺💔*',"md",true)  
end
if text == 'ويت' or text == 'ويت يحب' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اي الثقافه دي 😒😹*',"md",true)  
end
if text == 'خخخ' or text == 'خخخخخ' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اهدا يوحش ميصحش كدا 😒😹*',"md",true)  
end
if text == 'شكرا' or text == 'مرسي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*العفو ياروحي 🙈🌝*',"md",true)  
end
if text == 'حلوه' or text == 'حلو' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*انت الي حلو ياقمر 🤤🌝*',"md",true)  
end
if text == 'بموت' or text == 'هموت' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*موت بعيد م ناقصين مصايب 😑😂*',"md",true)  
end
if text == 'اي' or text == 'ايه' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*جتك اوهه م سامع ولا ايي 😹👻*',"md",true)  
end
if text == 'طيب' or text == 'تيب' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*فرح خالتك قريب 😹💋💃🏻*',"md",true)  
end
if text == 'حاضر' or text == 'حتر' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*حضرلك الخير يارب 🙂❤️*',"md",true)  
end
if text == 'جيت' or text == 'انا جيت' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'* لف ورجع تانى مشحوار 😂🚶‍♂👻*',"md",true)  
end
if text == 'بخ' or text == 'عو' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*يوه خضتني يٍَꪀَٰᥲ️ِّّꪔٍᥱ اي 🥺💔*',"md",true)  
end
if text == 'حبيبي' or text == 'حبيبتي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اوه ياه 🌝😂*',"md",true)  
end
if text == 'تمام' or text == 'تمم' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'* امك اسمها احلام 😹😹*',"md",true)  
end
if text == 'خلاص' or text == 'خلص' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*خلصتت روحكك يبعيد 😹💔*',"md",true)  
end
if text == 'اسمك اي' or text == 'اسمك' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*خف حك شوايه بقا😒*',"md",true)  
end
if text == 'نتعرف' or text == 'تعالي نتعرف' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*لا يسطا مبنتعرفش😂💕*',"md",true)  
end
if text == 'انتي منين' or text == 'منين' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*من عند امك هقهقهق بهزر معاك متعيطش بحبك خلاص😂*',"md",true)  
end
if text == 'مسافر' or text == 'انا مسافر' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*بسلامه حبي 😒*',"md",true)  
end
if text == 'فيجا' or text == 'مين فيجا' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*صاحب السورس ده عاوز اي منو🙂*',"md",true)  
end
if text == 'بعشقك' or text == 'انا بعشقك' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*منا بموت فيك اي الجديد💔*',"md",true)  
end
if text == 'يوه' or text == 'يوه بقا' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*متتعصبش عليا يسطا اهدا🙂*',"md",true)  
end
if text == 'هات جنيه' or text == 'جنيه' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*لسه شحات زاي منتا 🙂😂*',"md",true)  
end
if text == 'اخصام' or text == 'خصمي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*خصم اي  انتا حمل ضربه😂😂😂*',"md",true)  
end
if text == '😒' or text == '😒😒' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اعدل وش اهلك ده🙂*',"md",true)  
end
if text == '👍🏿' or text == '👍🏿👍🏿' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*قلبك اسود اوي 🙂*',"md",true)  
end
if text == 'زعلان' or text == 'انا زعلان' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*صلي علي النبي وهتروق🥺*',"md",true)  
end
if text == 'ياض' or text == 'يبني' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اتكلم عدل لعدلك انا فل👍🏿*',"md",true)  
end
if text == 'غور' or text == 'غوري' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*انا مش قاعد عندك يسطا تمام👍🏿*',"md",true)  
end
if text == 'صحبي' or text == 'يا صحبي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*عاوز اي يسطا🙂*',"md",true)  
end
if text == 'دنيا' or text == 'يا دنيا' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*قد الدنيا يا ابو دنيا😂😂*',"md",true)  
end
if text == 'عاوز اغني' or text == 'اغني' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*صوتك سبب اكتائبي يسطا🙂💔*',"md",true)  
end
if text == 'بار' or text == 'جروب' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*مالو البار يسطا اظبط حالك👍🏿*',"md",true)  
end
if text == 'كيمي' or text == 'يا كيمي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*شق فيجا متحكش بقا☺️*',"md",true)  
end
if text == 'اخويا' or text == 'يا اخويا' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*وقت المصلحه اخوك صح😂💔*',"md",true)  
end
if text == 'نقيب' or text == 'النقيب' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اخو فيجا المفضل خدبالك💕*',"md",true)  
end
if text == 'هههه' or text == 'هه' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*ضحكه هقر دي يسطا صح😂😂*',"md",true)  
end
if text == 'متجي' or text == 'تعالي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*بحاول اعمل منك انسان ونتا مصمم تبق كلب()*',"md",true)  
end
if text == 'الله' or text == 'يا الله' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اذكر الله وصلي علي النبي💕*',"md",true)  
end
if text == 'ماشي' or text == 'انا ماشي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*دير بالك علي حالك🙂*',"md",true)  
end
if text == 'ابو مازن' or text == 'مازن' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*حته من فيجا💎💕*',"md",true)  
end
if text == 'جعان' or text == 'انا جعان' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*راح اسوي لك طعام🥺*',"md",true)  
end
if text == 'القهوه' or text == 'قهوه' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*غاوي صياعه انتا صح🙂*',"md",true)  
end
if text == '.' or text == '؟' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*خاليهوم اتنين واحبك💕*',"md",true)  
end
if text == '..' or text == '؟؟' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*خاليهوم تلاته بق وخد مح🥺*',"md",true)  
end
if text == '...' or text == '؟؟؟' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*بحبك ونتا بتسمع كلامي يتي🥺*',"md",true)  
end
if text == 'مين' or text == 'انتا مين يسطا' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اسالها عليا هتقولك سندال😂❤️*',"md",true)  
end
if text == 'هلا' or text == 'يا هلا' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*يهلا بيك حبي🥺*',"md",true)  
end
if text == 'من وين' or text == 'وين' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*من قلبك حبي🥺*',"md",true)  
end
if text == 'شو تسوي' or text == 'تسوي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*بسوي شغل راح انهي الشغل واتحدث معك👍🏿*',"md",true)  
end
if text == 'اسمي' or text == 'انا اسمي اي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*اسمك خرا زايك بس خدبالك انتا قمر💕*',"md",true)  
end
if text == 'تيك توك' or text == 'التيك توك' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*نفسك تبقا مشهور ها وكبسو كبسو😂😂💔*',"md",true)  
end
if text == 'سي في فيجا' or text == 'cv semo' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*الاسم : احمد: السن :19 سنه: من كايرو *',"md",true)  
end
if text == 'سي في' or text == 'سيفي' then
if not Redis:get(Fast.."rb:bna"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
return bot.sendText(msg_chat_id,msg_id,'*كفيه شقط سيب حاجه لغيرك 😎😂*',"md",true)  
end
if text == '،' or text == '،،،' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*تـدوم عمࢪيي💘 ️*',"md",false, false, false, false, reply_markup)
end
if text == '😐' or text == '🙂' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = 'قناه السورس', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'* شـبي حـلـو صـافـن😻💋 ️*',"md",false, false, false, false, reply_markup)
end

if text == 'اريد اكبل' or text == 'ارتبط' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*امـشي وخࢪ مـنـا يدوࢪ تـڪـبيل😏 ️*',"md",false, false, false, false, reply_markup)
end

if text == 'لتزحف' or text == 'زاحف' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞ ', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*شـعليڪ بـي عمࢪيي خـلي يـزحف💘☹️ ️*',"md",false, false, false, false, reply_markup)
end

if text == 'كلخره' or text == 'كل خره' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*اسـف عمࢪيي مـا خليڪ بـحـلڪي😹💘 ️*',"md",false, false, false, false, reply_markup)
end

if text == 'زحف' or text == 'زاحفه' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*زاحـف ع خـالـڪ شـڪࢪه🤤💋 ️*',"md",false, false, false, false, reply_markup)
end

if text == 'دي' or text == 'دد' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*امـشـيڪ بـيها عمࢪيي😗😹 ️*',"md",false, false, false, false, reply_markup)
end

if text == 'فرخ' or text == 'كحبه' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*ويـنـه بـلـه خـل حـصـࢪه😹🤤 ️*',"md",false, false, false, false, reply_markup)
end

if text == 'تعالي خاص' or text == 'خاص' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞ ', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*هااا يـول اخـذتـها خـاص😹🙊 ️*',"md",false, false, false, false, reply_markup)
end
if text == 'اكرهك' or text == 'اكرهج' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*عـساس انـي مـيـت بيڪڪ دمـشـي لڪ😿😹 ️*',"md",false, false, false, false, reply_markup)
end

if text == 'احبك' or text == 'احبج' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*يـحـياتـي وانـي هـم حـبـڪڪ🙈💋️*',"md",false, false, false, false, reply_markup)
end

if text == 'باي' or text == 'سيو' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*ويـن دايـح عمࢪيي خـلـينـا مـونـسـيـن🥺💘️*',"md",false, false, false, false, reply_markup)
end

if text == 'عوائل' or text == 'صايره عوائل' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*حـبيـبي ولله ࢪبـط فـيـشه ويـانـا🙈💋 ️*',"md",false, false, false, false, reply_markup)
end

if text == 'واكف' or text == 'وكف' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*شـغال عمࢪيي🤓💘 ️*',"md",false, false, false, false, reply_markup)
end


if text == 'وين المدير' or text == 'المدير' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*عمࢪيي تـفـضل وياڪ مـديـࢪ💘️*',"md",false, false, false, false, reply_markup)
end
if text == 'انجب' or text == 'نجبي' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*صـاࢪ عمࢪيي💘🥺 ️*',"md",false, false, false, false, reply_markup)
end

if text == 'تحبني' or text == 'تحبيني' then
if not Redis:get(Fast.."Sasa:Jeka"..msg_chat_id) then
return bot.sendText(msg_chat_id,msg_id,"* *","md",true)  
end
local reply_markup = bot.replyMarkup{
type = 'inline',
data = {
{
{text = '◜𝐒𝐎𝐔𝐑𝐂𝐄 𝐆𝐍𝐀𝐙𝐇◞', url = 't.me/SOURCE_GNAZH'}, 
},
}
}
return bot.sendText(msg_chat_id,msg_id,'*سـؤال صـعـب خلـيـني افڪࢪ☹️️*',"md",false, false, false, false, reply_markup)
end
end
return {Fast = rdod}