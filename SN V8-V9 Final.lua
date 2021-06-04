local sn = {}
sn.last = gg.getFile()
sn.info = nil
sn.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
sn.SNVERSION9BETA = loadfile(sn.config)
if sn.SNVERSION9BETA ~= nil then sn.info = sn.SNVERSION9BETA() sn.SNVERSION9BETA = nil end
if sn.info == nil then sn.info = {sn.last, sn.last:gsub("/[^/]+$", "")} end

SN = gg.alert([[ 🛡️ sɴ ᴄᴏᴍᴘɪʟᴇʀ ᴠᴇʀsɪᴏɴ-8 🛡️
  ⦿ Dᴀᴛᴇ : %A, %B %Y ⦿
  【Usᴇ Oʀɪɢɪɴᴀʟ Gɢ V99 Aʙᴏᴠᴇ】

══════ ✥.❖.✥ ══════

 Cᴏᴍᴘɪʟᴇʀ Cʀᴇᴀᴛᴏʀ : Skyn SN
 Tᴇʟᴇɢʀᴀᴍ : @mlulinX
 Cʜᴀɴɴᴇʟ : @SN2YT
 Pᴀʏᴘᴀʟ : sn.bussinessmail@gmail.com

══════ ✥.❖.✥ ══════

‣ᴀʟʟ sᴛʀɪɴɢs ᴇɴᴄᴏᴅᴇ
‣ɴᴇᴡ ᴀɴᴛɪʜᴏᴏᴋ
‣ɴᴇᴡ ʙɪɢ ᴀɴᴛɪʟᴏɢ 
‣ʀᴀɴᴅᴏᴍ ssᴛᴏᴏʟ ʙʟᴏᴄᴋᴇʀs 
‣ɴᴇᴡ ʙɪɢ ᴀɴᴛɪʟᴀsᴍ 
‣ʙɪɴᴀʀʏ+sᴛʀɪɴɢ.ᴄʜᴀʀ ɴᴇᴡ ғᴏʀᴍᴜʟᴀ

• ────── ✾ ────── •]] ,"🆂🆃🅰︎🆁🆃", "", "🅴🆇🅸🆃")
if SN == 3 then os.exit() end
while true do
sn.info = gg.prompt({
"📂 Select Script To Encrypt :",--1
"📂 Select Ouput after encrypt :",--2
"🕒 Add Expiration Date",--3
"🔐 Add Password",--4
"🛡️ Add gg Version",--5
"📝 Add Anti Rename",--6
"⚠️ Add Auto Detect Decrypt",--7
"🗳 Add Package GameGuardian",--8
"🕵️ Add Package Game",--9
},sn.info,{
"file",--1
"path",--2
"checkbox",--3
"checkbox",--4
"checkbox",--5
"checkbox",--6
"checkbox",--7
"checkbox",--8
"checkbox"--9
})
if sn.info == nil then
return
end
gg.saveVariable(sn.info, sn.config)
sn.last = sn.info[1]
if loadfile(sn.last) == nil then
return gg.alert([[⚠️Script not Found! ⚠️]])
else
sn.out = sn.last:match("[^/]+$")
sn.out = sn.out:gsub(".lua", ".[v9]")
sn.out = sn.info[2] .. "/" .. sn.out .. ".lua"
info = {sn.out}
end
local SNVERSION9BETA = io.input(sn.last):read('*a')
if not load(SNVERSION9BETA) then
print("⚠️ ERROR\n\nFile Can Not Be Encrypted !")
break 
else
if sn.info[3] == true then  day = os.date("%d")  exp_date = gg.prompt({  "📆 Sᴇᴛ Exᴘɪʀᴇᴅ Dᴀᴛᴀ : ",  "📝 Tʏᴘᴇ Exᴘɪʀᴇᴅ Mᴇssᴀɢᴇ : "},  {os.date("%Y%m" .. day + 7),"⚠️ Sᴄʀɪᴘᴛ Wᴀs Exᴘɪʀᴇᴅ ⚠️️"},{"number", "text"})  end  if not exp_date then  gg.setVisible(true)  elseif exp_date[1] == nil then gg.alert("📆 Date Can Not Be Empty !") gg.setVisible(true)  else    SNVERSION9BETA = '\n if os.date("%Y%m%d") >= "'..exp_date[1]..'" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. SNVERSION9BETA  end
if sn.info[4] == true then  PASS = gg.prompt({  "🔐 Sᴇᴛ Pᴀssᴡᴏʀᴅ Fᴏʀ Sᴄʀɪᴘᴛ :",  "📝 Tʏᴘᴇ Mᴇssᴀɢᴇ Fᴏʀ Wʀᴏɴɢ Pᴀssᴡᴏʀᴅ : "  }, {"","⚠️ sᴏʀʀʏ ᴅᴜᴅᴇ ⚠️"},{  "text",  "text"})  end  if not PASS then  gg.setVisible(true)  elseif PASS[1] == nil then  gg.alert("⚠️ Input Password !")  gg.setVisible(true)  else  SNVERSION9BETA = '\nlocal mx = "'.. PASS[1]..'"\nPASSW = gg.prompt({"🔒 Input password: "},{[1]=""},{[1]="text"})\n if not PASSW then print("'..PASS[2]..'")return end\n if PASSW[1] == "" then gg.alert("❌Password Can Not Be Empty ❌") os.exit(print("❌Password Can Not Be Empty ❌"))end\n if PASSW[1] ~= mx then print("'..PASS[2]..'")return end\nif PASSW[1] == mx then end\n' .. SNVERSION9BETA  end
if sn.info[5] == true then  VERSION = gg.prompt({  "🔐 Set Minimal gg Version : ",  "🗒️ Set Error gg Message :"  }, {gg.VERSION,"========== Eʀʀᴏʀ Gɢ Aᴘᴋ =========="}, {  "number",  "text"})  end  if not VERSION then  gg.setVisible(true)  elseif VERSION[1] == nil then  gg.alert("🛡️ Input Minimal Required gg Version !")  gg.setVisible(true)  else    SNVERSION9BETA = '\nlocal mxk = gg;local cxz = mxk.VERSION;if cxz ~= "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. SNVERSION9BETA  end
if sn.info[6] == true then  NAME = gg.prompt({  "🗒️ Set Name For Script :",  "📝 Type Message For Name Changed :",  }, {sn.out:match("[^/]+$"),  "🔒 Script Rename Detected  ‼️"}, {  "text",  "text"})  end  if not NAME then  gg.setVisible(true)  elseif NAME[1] == nil then  gg.alert("📝 Set Name Can Not Be Empty !")  gg.setVisible(true)  else    SNVERSION9BETA = '\nif gg.getFile():match("[^/]+$") ~= "' ..NAME[1].. '" then os.rename(gg.getFile():match("/.+/"), gg.getFile():match("/.+/"):sub(0, -2) .. "0/") os.rename((gg.getFile():match("/.+/"):sub(0, -2) .. "0/") .. gg.getFile():match("[^/]+$"), (gg.getFile():match("/.+/"):sub(0, -2) .. "0/") .. "' ..NAME[1].. '") os.rename(gg.getFile():match("/.+/"):sub(0, -2) .. "0/", (gg.getFile():match("/.+/"))) print("'..NAME[2]..'") return end\n' ..SNVERSION9BETA  end
if sn.info[7] == true then  SNVERSION9BETA = ([[if gg.isPackageInstalled("com.minhui.networkcapture") then  print("ᴘʟᴇᴀsᴇ ᴜɴɪɴsᴛᴀʟʟ ᴘᴀᴄᴋᴇᴛ ᴄᴀᴘᴛᴜʀᴇ")  os.exit()  else  end  if gg.isPackageInstalled("com.goushi.gtpcanary") then  print("ᴘʟᴇᴀsᴇ ᴜɴɪɴsᴛᴀʟʟ ᴘᴀᴄᴋᴇᴛ ᴄᴀᴘᴛᴜʀᴇ")  os.exit()  else  end  if gg.isPackageInstalled("com.packagesniffer.frtparlak") then  print("ᴘʟᴇᴀsᴇ ᴜɴɪɴsᴛᴀʟʟ ᴘᴀᴄᴋᴇᴛ ᴄᴀᴘᴛᴜʀᴇ")  os.exit()  else  end  if gg.isPackageInstalled("sstool.only.com.sstool") then  print("Uninstall SSTOOL Deceypt")  os.exit()  end  if gg.isPackageInstalled("catch_.me_.if_.you_.can_") then  print("Uninstall orginal gg")  os.exit()  end  ]])..SNVERSION9BETA  end
if sn.info[8] == true then  whyalwaysme = gg.prompt({  "✏️ Set Your Package GameGuardian",  "📝 Type Message If Package Is Wrong :"  }, {"com.sn.gg","⚠ 𝙿𝚕𝚎𝚊𝚜𝚎 𝚄𝚜𝚎 𝙼𝚢 𝙼𝚘𝚍 𝙶𝙶 ⚠"},{  "text",  "text"})  end  if not whyalwaysme then  gg.setVisible(true)  elseif whyalwaysme[1] == nil then  gg.alert("⚠️ Set Package GameGuardian Can Not Be Empty!")  gg.setVisible(true)  else  print("⚠ SetPeckage gg : True√ ")  SNVERSION9BETA = '\nif gg.PACKAGE == "' .. whyalwaysme[1] .. '" then\nelse\ngg.alert("' .. whyalwaysme[2] .. '")\nprint("' .. whyalwaysme[2] .. '")\nos.exit()\nend\n' .. SNVERSION9BETA  end
if sn.info[9] == true then  kissmebaby = gg.prompt({  "✏️ Set Package Game",  "📝 Type Message If Package Is Wrong :"  }, {"com.telegram.org","⚠ Use Script In Game ⚠"},{  "text",  "text"})  end  if not kissmebaby then  gg.setVisible(true)  elseif kissmebaby[1] == nil then  gg.alert("⚠️ Set Package GameGuardian Can Not Be Empty!")  gg.setVisible(true)  else    SNVERSION9BETA = '\nif gg.getTargetInfo().processName ~= "'..kissmebaby[1]..'" then\ngg.alert("'..kissmebaby[2]..'")\nos.exit()\nend\n'..SNVERSION9BETA  end
AMPL, BCPL=  (function(M);;
    local C,X = 2,1;local Z = {};;Z[X] = M;local Y = math.floor(#Z[X]) / 4;Z[C] = {};local _ = string.char(0)
if tostring(Y):match("%.%d") and tostring(Y):match(string.char(37,46,55,53)) then;;
  ;  Z[X] = tostring(Z[X]).._:rep(1)
elseif tostring(Y):match("%.%d") and tostring(Y):match(string.char(37,46,53)) then;
  Z[X] = tostring(Z[X]).._:rep(2);;
elseif tostring(Y):match("%.%d") and tostring(Y):match(string.char(37,46,50,53)) then
    ;;Z[X] = tostring(Z[X]).._:rep(3)
end
   if (Z[X] and Z[X] ~= nil) then;
    ; for i = 1, #Z[X]/4 do;;;local W = {31,0,128};W[4]=0;;
        table.insert(Z[C], table.concat(W,", "));;;
      ;; end;
       ;;; Z["N"] = load("return {"..table.concat(Z[C], ", ").."}");;
       ;
  ;   end;;
  return Z[X], Z["N"]();
end), (function(Nums);;
    local Nums,Str = Nums or 58, string.char();;
    if Nums ~= nil then;
      for X = 1, Nums do;;
        ;Str = Str..";do;return;end;"
        end;
      end;
      return ";while(nil)do;"..Str..";end;";
    end);
    
lines = { } for line in io.lines(sn.last) do
if line:find("end") then line = "end -- sɴ"
end lines[#lines + 1] = line end
local iso = table.concat SkynData = function(c, s) zxn = {}  for i in ipairs(c) do yre = "["..i.."]="..c[i] table.insert(zxn, yre) end  return iso(zxn, ",")  end  IXI1 = math.random(10,666) IXI2 = math.random(10,666) IXI4 = math.random(10,666) IXI3 = math.random(10,666) IXI5 = math.random(10,666) IXI6 = math.random(10,666) X6 = math.random(10,666) X4 = math.random(10,666) X2 = math.random(10,666) X1 = math.random(10,666) X3 = math.random(10,666) X5 = math.random(10,666) XX1 = math.random(10,666) XX3 = math.random(10,666) XX4 = math.random(10,666) XX5 = math.random(10,666) XXX1 = math.random(10,666) XX2 = math.random(10,666) XXX6 = math.random(10,666) XXX5 = math.random(10,666) XXX4 = math.random(10,666) XXX3 = math.random(10,666) XXX2 = math.random(10,666) XX2G = math.random(10,666)  WhoisSN1 = math.random(62,737)  WhoisSN2 = math.random(62,157)  SnIssN={}  for i = 1,9999 do   WhoisSN3 = WhoisSN1 + math.random(1,10)  table.insert(SnIssN, WhoisSN3)  end  SnIssN3={}  for i = 1,9999 do   WhoisSN4 = WhoisSN1 + math.random(1,10)  table.insert(SnIssN3, WhoisSN4)  end  SnIssN2={}  for i = 1,99 do   WhoisSN5 = WhoisSN2 + math.random(1,10)  table.insert(SnIssN2, WhoisSN5)  end
N1=SnIssN2[1] + SnIssN2[2] + SnIssN[26] + SnIssN2[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] + SnIssN[42] + SnIssN[53] + SnIssN[25] + SnIssN2[2] + SnIssN[26] + SnIssN2[2] + SnIssN[26] + SnIssN[58] + SnIssN[77]  N2 = SnIssN[N1] SNVVV1=SnIssN2[52] + SnIssN2[27] + SnIssN2[68] + SnIssN3[73] + SnIssN2[54] + SnIssN2[2] + SnIssN[26] + SnIssN2[2] + SnIssN[26] + SnIssN2[25] + SnIssN2[53] + SnIssN3[73] + SnIssN2[54] + SnIssN2[28] + SnIssN3[84] + SnIssN2[99] SNXX2 = SnIssN[SNVVV1] SNVVV2=SnIssN2[47] + SnIssN2[31] + SnIssN2[83] + SnIssN3[73] + SnIssN2[54] + SnIssN2[28] + SnIssN3[84] + SnIssN2[99] + SnIssN2[2] + SnIssN[26] + SnIssN2[2] + SnIssN[26] + SnIssN[58] + SnIssN[77]  SNFVK1 = SnIssN3[SNVVV2] SNVVV3=SnIssN2[68] + SnIssN3[73] + SnIssN2[54] + SnIssN2[28] + SnIssN3[84] + SnIssN2[99] + SnIssN2[2] + SnIssN[26] + SnIssN2[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] SNFVK2 = SnIssN[SNVVV3] SNVVV4=SnIssN2[35] + SnIssN2[25] + SnIssN2[53] + SnIssN2[52] + SnIssN2[27] + SnIssN2[68] + SnIssN3[73] + SnIssN2[54] + SnIssN2[2] + SnIssN[26] + SnIssN2[2] + SnIssN[26]  SNFVK3 = SnIssN[SNVVV4] SNVVV5=SnIssN2[35] + SnIssN2[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] + SnIssN2[2] + SnIssN[26] + SnIssN[58] + SnIssN[77]  SNFVK4 = SnIssN[SNVVV5] SNVVV6=SnIssN2[63] + SnIssN2[72] + SnIssN3[36] + SnIssN2[99] + SnIssN2[2] + SnIssN[26] + SnIssN2[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] SNFVK5 = SnIssN[SNVVV6] SNVVV7=SnIssN2[53] + SnIssN2[74] + SnIssN2[53] + SnIssN2[31] + SnIssN2[83] + SnIssN3[73] + SnIssN2[54] + SnIssN2[28] + SnIssN3[84] + SnIssN2[99] + SnIssN2[2] + SnIssN[26] + SnIssN2[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] + SnIssN2[28] + SnIssN3[84] + SnIssN2[99] SNFVK6 = SnIssN3[SNVVV7] SNVVV8=SnIssN2[28] + SnIssN3[84] + SnIssN2[99] + SnIssN2[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] SNFVK7 = SnIssN[SNVVV8] N3=SnIssN3[1] + SnIssN3[2] + SnIssN[26] + SnIssN3[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] + SnIssN[42] + SnIssN[53] + SnIssN[25] + SnIssN3[2] + SnIssN[26] + SnIssN3[2] + SnIssN[26] + SnIssN[58] + SnIssN[77]  N4 = SnIssN[N3] SNXNX1=SnIssN3[52] + SnIssN3[27] + SnIssN3[68] + SnIssN3[73] + SnIssN3[54] + SnIssN3[2] + SnIssN[26] + SnIssN3[2] + SnIssN[26] + SnIssN3[25] + SnIssN3[53] + SnIssN3[73] + SnIssN3[54] + SnIssN3[28] + SnIssN3[84] + SnIssN3[99] SNXX5 = SnIssN[SNXNX1] SNXNX2=SnIssN3[47] + SnIssN3[31] + SnIssN3[83] + SnIssN3[73] + SnIssN3[54] + SnIssN3[28] + SnIssN3[84] + SnIssN3[99] + SnIssN3[2] + SnIssN[26] + SnIssN3[2] + SnIssN[26] + SnIssN[58] + SnIssN[77]  SNXX4 = SnIssN3[SNXNX2] SNXNX3=SnIssN3[68] + SnIssN3[73] + SnIssN3[54] + SnIssN3[28] + SnIssN3[84] + SnIssN3[99] + SnIssN3[2] + SnIssN[26] + SnIssN3[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] SNXX4 = SnIssN[SNXNX3] SNXNX4=SnIssN3[35] + SnIssN3[25] + SnIssN3[53] + SnIssN3[52] + SnIssN3[27] + SnIssN3[68] + SnIssN3[73] + SnIssN3[54] + SnIssN3[2] + SnIssN[26] + SnIssN3[2] + SnIssN[26]  SNXX6 = SnIssN[SNXNX4] SNXNX5=SnIssN3[35] + SnIssN3[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] + SnIssN3[2] + SnIssN[26] + SnIssN[58] + SnIssN[77]  SNXX7 = SnIssN[SNXNX5] SNXNX6=SnIssN3[63] + SnIssN3[72] + SnIssN3[36] + SnIssN3[99] + SnIssN3[2] + SnIssN[26] + SnIssN3[2] + SnIssN[26] + SnIssN[58] + SnIssN[77] SNXX3 = SnIssN[SNXNX6] SNXX8 = SnIssN3[9999] SNXX9 = SnIssN[9999] if N2 == nil then gg.alert("❌sɴ ᴠᴇʀsɪᴏɴ-8 ᴋᴇʏ ᴇʀʀᴏʀ\n▶︎ᴘʟᴇᴀsᴇ ᴛʀʏ ᴀɢᴀɪɴ ʀᴜɴ ᴇɴᴄʀʏᴘᴛɪᴏɴ") os.exit() end if N4 == nil then gg.alert("❌sɴ ᴠᴇʀsɪᴏɴ-8 ᴋᴇʏ ᴇʀʀᴏʀ\n▶︎ᴘʟᴇᴀsᴇ ᴛʀʏ ᴀɢᴀɪɴ ʀᴜɴ ᴇɴᴄʀʏᴘᴛɪᴏɴ") os.exit() end
N5 = N4 + SNXX5 + N3 + SNXNX1 + N1 + N2 * 3 + SNXX2 SNDERE1 = SNXX4 + SNXNX2 + SNXX4 + SNXNX3 + SNVVV1 * SNXX2 + 352 + SNVVV2 SNDERE2 = SNXX6 + SNXX7 + SNXNX4 + SNXNX5 + SNVVV2 + SNFVK1 + SNFVK2 * SNVVV3 + 926 / SNVVV4 + SNFVK3 SNDERE3 = SNXX3 + SNXNX6 + N3 + SNXX8 + SNVVV3 + SNFVK2 * 836 / 436 + SNFVK3 + SNVVV4 N6 = N1 + N2 * 3 + SNXX2 + N4 + SNXX5 + N3 + SNXNX1 * SNVVV8 + SNFVK7 + SNFVK6 + SNFVK7 + SNVVV7 + SNVVV6 SNOPR1 = SNVVV1 * SNXX2 + 800 + SNVVV2 + SNXX4 + SNXNX2 + SNXX4 + SNXNX3 SNOPR2 = SNVVV2 + SNFVK1 + SNFVK2 * SNVVV3 + 482 / SNVVV4 + SNFVK3 + SNXX6 + SNXX7 + SNXNX4 + SNXNX5 SNOPR3 = SNVVV3 + SNFVK2 *628 / 594 + SNFVK3 + SNVVV4  + SNXX3 + SNXNX6 + N3 + SNXX8 SNSNN = N5 + N6 + SNDERE1 + SNDERE2 + SNOPR2 * SNOPR1  MSNOPR1 = SNDERE1 + SNDERE2 / SNOPR1 + SNOPR2 + SNOPR2 * SNDERE1 MSNOPR2 = 528 + SNSNN + MSNOPR1 * SNDERE3 + SNOPR3 local ZXZX = (N5-SNXX2*SNFVK1) local ZXZX2 = (SNFVK4+SNFVK6+SNFVK5*SNFVK7) local ZXZX3 = (SNFVK1+SNFVK4*SNFVK7) local ZXZX5 = (N2+SNDERE1+ZXZX+SNFVK7*ZXZX3) local ZXZX6 = (N6+SNFVK1+SNFVK2*ZXZX2-SNOPR1+ZXZX5) local ZXZX7 = (SNFVK7+ZXZX6-ZXZX2+SNFVK4*SNDERE2*ZXZX+ZXZX5) local ZXZX4 = (ZXZX2+ZXZX+ZXZX6*ZXZX7+ZXZX3+N2+SNXX2*SNFVK1) local ZXZX = (N4+SNXX5*SNXX4) local ZXZX2 = (SNOPR2+SNXX8+SNXX3*SNXX9) local ZXZX3 = (SNXX4+SNDERE3*SNXX9) local ZXZX5 = (N4+SNXX6+ZXZX+SNXX9*ZXZX3) local ZXZX6 = (SNXX8+SNXX4+SNSNN*ZXZX2-SNXX7+ZXZX5) local ZXZX7 = (SNXX9+ZXZX6-ZXZX2+SNXX7*SNXX8*ZXZX+ZXZX5) local ZXZX4 = (ZXZX2+ZXZX+ZXZX6*ZXZX7+ZXZX3+N4+SNXX5*SNXX4) local IIII = (N4+SNXX5*SNXX4) local IIII2 = (SNXX7+SNXX8+SNXX3*SNXX9) local KKKK = (SNXX4+SNXX7*MSNOPR1) local IIII5 = (N4+SNXX6+IIII+SNXX9*KKKK) local IIII6 = (SNXX8+SNXX4+SNXX4*IIII2-SNXX7+IIII5) local IIII7 = (MSNOPR2+IIII6+IIII2+SNXX7*SNXX8*IIII+IIII5) local IIII4 = (IIII2+IIII+IIII6*IIII7+KKKK+N4+SNXX5*SNXX4) local lliiIIll = (ZXZX+ZXZX2+ZXZX3+ZXZX4+ZXZX5+ZXZX6-ZXZX7) local KKKK = (IIII+IIII2+KKKK*IIII4+IIII5+IIII6*IIII7) local OFFFIIII = (lliiIIll+KKKK*IIII+ZXZX-IIII2+ZXZX3) 
local IIII = {(X6+X4*X2)-X1,X4,X2*2,X1+X2,X3}local SSS1 = (IIII[5]+IIII[2]+IIII[1]*IIII[4])-IIII[1]local SSS2 = (IIII[2]+IIII[3]*1)-IIII[4]local SSS3 = (IIII[3]+IIII[1]*IIII[2])+IIII[4]local SSS4 = (IIII[1]+IIII[2]*IIII[5]*IIII[5])+IIII[1]local SSS5 = (IIII[1]+IIII[5]-IIII[3])+IIII[4]local SSS6 = (IIII[5]+IIII[2]+IIII[1]*IIII[4])-IIII[1]local SSS7 = (IIII[2]+IIII[3]*1)-IIII[4]local SSS8 = (IIII[5]+IIII[1]*IIII[2])+IIII[3]local SSS9 = (IIII[3]+IIII[4]-IIII[1]*IIII[2])+IIII[5]local SSS10 = (IIII[5]+IIII[1]-IIII[2])+IIII[3] 
D2={SSS1,SSS2,ZXZX5,ZXZX6,SSS5,SSS6,SSS7,SSS8,SSS9,SSS10,SSS9,SSS7,SSS5,SSS4,SSS3,SSS10,SSS5,SSS4,SSS2,ZXZX3,SSS1,SSS9}
function SNVLXX(c)  IIII={}  for i in ipairs(c) do  SnIJK = (c[i] + D2[1] + D2[2] - D2[6] + D2[3] - D2[8] * D2[4] + D2[7] - D2[5] * D2[10] + D2[9] * D2[11] + D2[12] + D2[13] + D2 [14] + D2[15] - D2[16] - D2[17] - D2[18] - D2[19] - D2[20]) % 676  table.insert(IIII, SnIJK)  end  return IIII  end  SNVLXX(D2)
function enc(str)  str=str:gsub("\\n","\n"):gsub("\\t","\t")  sd = {}  fz = {str:byte(1,-1)}  codec = ''  for i = 1, #fz do  fz[i] = (fz[i] - IIII[6] - (IIII[1] + i) + IIII[4] / (IIII[3] + i)) % 676  end  return "{\nmlulinX = {"..SkynData(fz, ",").."}}"  end
local IIIIII = {(IXI1+IXI2*IXI4)-IXI3,IXI2,IXI4*2,IXI3+IXI4,IXI5}local IIIIIIIII = (IIIIII[5]+IIIIII[2]+IIIIII[1]*IIIIII[4])-IIIIII[1]local IIIIIIIIIII = (IIIIII[2]+IIIIII[3]*1)-IIIIII[4]local IIIIIIIIIIII = (IIIIII[3]+IIIIII[1]*IIIIII[2])+IIIIII[4]local IIIIIIIIII = (IIIIII[1]+IIIIII[2]*IIIIII[5]*IIIIII[5])+IIIIII[1]local IIIIIII = (IIIIII[1]+IIIIII[5]-IIIIII[3])+IIIIII[4]local IIIIIIIIIIIIIIII = (IIIIII[5]+IIIIII[2]+IIIIII[1]*IIIIII[4])-IIIIII[1]local IIIIIIIIIIIII = (IIIIII[2]+IIIIII[3]*1)-IIIIII[4]local IIIIIIIIIIIIIII = (IIIIII[5]+IIIIII[1]*IIIIII[2])+IIIIII[3]local IIIIIIIIIIIIII = (IIIIII[3]+IIIIII[4]-IIIIII[1]*IIIIII[2])+IIIIII[5]local IIIIIIII = (IIIIII[5]+IIIIII[1]-IIIIII[2])+IIIIII[3]
D21={IIIIIIIII,IIIIIIIIIII,IIIIIIIIIIII,IIIIIIIIII,IIIIIII,IIIIIIIIIIIIIIII,IIIIIIIIIIIII,IIIIIIIIIIIIIII,IIIIIIIIIIIIII,IIIIIIII,IIIIIIIIIIIIII,IIIIIIIIIIIII,IIIIIII,IIIIIIIIII,IIIIIIIIIIII,IIIIIIII,IIIIIII,IIIIIIIIII,IIIIIIIIIII,IIIIIIIIIIII,IIIIIIIII,IIIIIIIIIIIIII}
function SNVLXX1(c)  TTTT={}  for i in ipairs(c) do  SnIJK = (c[i] + D21[1] + D21[2] - D21[6] + D21[3] - D21[8] * D21[4] + D21[7] - D21[5] * D21[10] + D21[9] * D21[11] + D21[12] + D21[13] + D21 [14] + D21[15] - D21[16] - D21[17] - D21[18] - D21[19] - D21[20]) % 676  table.insert(TTTT, SnIJK)  end  return TTTT  end  SNVLXX1(D21)
function SkynEnc1(str)  str=str:gsub("\\n","\n"):gsub("\\t","\t")  sd = {}  fz = {str:byte(1,-1)}  codec = ''  for i = 1, #fz do  fz[i] = (fz[i] - TTTT[4] - (TTTT[7] + i) + TTTT[1] + (TTTT[2] - i) * (TTTT[3] + i)) % 63836  end  return "{\nmlulinX = {"..SkynData(fz, ",").."}}"  end
local YYZZ = {(XX1+XX3*XX4)-XX5,XX3,XX4*2,XX5+XX4,XXX1}local VVUU1 = (YYZZ[5]+YYZZ[2]+YYZZ[1]*YYZZ[4])-YYZZ[1]local VVUU2 = (YYZZ[2]+YYZZ[3]*1)-YYZZ[4]local VVUU3 = (YYZZ[3]+YYZZ[1]*YYZZ[2])+YYZZ[4]local VVUU4 = (YYZZ[1]+YYZZ[2]*YYZZ[5]*YYZZ[5])+YYZZ[1]local VVUU5 = (YYZZ[1]+YYZZ[5]-YYZZ[3])+YYZZ[4]local VVUU6 = (YYZZ[5]+YYZZ[2]+YYZZ[1]*YYZZ[4])-YYZZ[1]local VVUU7 = (YYZZ[2]+YYZZ[3]*1)-YYZZ[4]local VVUU8 = (YYZZ[5]+YYZZ[1]*YYZZ[2])+YYZZ[3]local VVUU9 = (YYZZ[3]+YYZZ[4]-YYZZ[1]*YYZZ[2])+YYZZ[5]local VVUU10 = (YYZZ[5]+YYZZ[1]-YYZZ[2])+YYZZ[3]
D2={VVUU1,VVUU2,VVUU3,VVUU4,VVUU5,VVUU6,VVUU7,VVUU8,VVUU9,VVUU10,VVUU9,VVUU7,VVUU5,VVUU4,VVUU3,VVUU10,VVUU5,VVUU4,VVUU2,VVUU3,VVUU1,VVUU9}
function SNVLXX(c)  IIII2={}  for i in ipairs(c) do  SnIJK = (c[i] + D2[1] + D2[2] - D2[6] + D2[3] - D2[8] * D2[4] + D2[7] - D2[5] * D2[10] + D2[9] * D2[11] + D2[12] + D2[13] + D2 [14] + D2[15] - D2[16] - D2[17] - D2[18] - D2[19] - D2[20]) % 676  table.insert(IIII2, SnIJK)  end  return IIII2  end  SNVLXX(D2)
function SkynEnc2(str)  str=str:gsub("\\n","\n"):gsub("\\t","\t")  sd = {}  fz = {str:byte(1,-1)}  codec = ''  ymh = '\\0'  for i = 1, #fz do  fz[i] = (fz[i] - IIII2[1] - (IIII2[2] + i) - IIII2[4] - (IIII2[5] + i) * (IIII2[3] + i)) % 676  K=ymh:rep(fz[i])  table.insert(sd, '"'..K..'"')  end  return "{\nmlulinX = {"..SkynData(fz, ",").."}}"  end
local OOOO = {(XXX6+XXX5*XXX4)-XXX3,XXX5,XXX4*2,XXX3+XXX4,XXX2}local MMMM1 = (OOOO[5]+OOOO[2]+OOOO[1]*OOOO[4])-OOOO[1]local llIIll1 = (OOOO[2]+OOOO[3]*1)-OOOO[4]local llIIll2 = (OOOO[3]+OOOO[1]*OOOO[2])+OOOO[4]local llIIll3 = (OOOO[1]+OOOO[2]*OOOO[5]*OOOO[5])+OOOO[1]local llIIll4 = (OOOO[1]+OOOO[5]-OOOO[3])+OOOO[4]local llIIll5 = (OOOO[5]+OOOO[2]+OOOO[1]*OOOO[4])-OOOO[1]local llIIll6 = (OOOO[2]+OOOO[3]*1)-OOOO[4]local llIIll7 = (OOOO[5]+OOOO[1]*OOOO[2])+OOOO[3]local llIIll8 = (OOOO[3]+OOOO[4]-OOOO[1]*OOOO[2])+OOOO[5]local D1 = (OOOO[5]+OOOO[1]-OOOO[2])+OOOO[3]
UUUU={MMMM1,lliiIIll,llIIll2,KKKK,llIIll4,llIIll5,llIIll6,llIIll7,llIIll8,D1,llIIll8,llIIll6,llIIll4,llIIll3,llIIll2,D1,llIIll4,llIIll3,llIIll1,llIIll2,MMMM1,llIIll8}
function SNVLXX3(c)  KKKK={}  for i in ipairs(c) do  SnIJK = (c[i] + UUUU[1] + UUUU[2] - UUUU[6] + UUUU[3] - UUUU[8] * UUUU[4] - UUUU[7] - UUUU[5] * UUUU[10] + UUUU[9] * UUUU[11] + UUUU[12] + UUUU[13] + UUUU [14] + UUUU[15] - UUUU[16] - UUUU[17] - UUUU[18] - UUUU[19] - UUUU[20]) % 676  table.insert(KKKK, SnIJK)  end  return KKKK  end  SNVLXX3(UUUU)
function SNVLXX3(c)  KKKK={}  for i in ipairs(c) do  SnIJK = (c[i] + UUUU[1] + UUUU[2] - UUUU[6] + UUUU[3] - UUUU[8] * UUUU[4] - UUUU[7] - UUUU[5] * UUUU[10] + UUUU[9] * UUUU[11] + UUUU[12] + UUUU[13] + UUUU [14] + UUUU[15] - UUUU[16] - UUUU[17] - UUUU[18] - UUUU[19] - UUUU[20]) % 676  table.insert(KKKK, SnIJK)  end  return KKKK  end  SNVLXX3(UUUU)
function SkynEnc3(str)  str=str:gsub("\\n","\n"):gsub("\\t","\t")  sd = {}  fz = {str:byte(1,-1)}  codec = ''  for i = 1, #fz do  fz[i] = (fz[i] - KKKK[1] + (KKKK[5] + i) - KKKK[9] * (KKKK[2] + i)) % 712  end  return "{\nmlulinX = {"..SkynData(fz, ",").."}}"  end
function SkynEnc5(str)  str=str:gsub("\\n","\n"):gsub("\\t","\t")  sd = {}  fz = {str:byte(1,-1)}  codec = ''  for i = 1, #fz do  fz[i] = (fz[i] - IIII[5] - (IIII[6] + i) - IIII[2] - (IIII[8] + i) * (IIII[7] + i)) % 676  end  return "{\nmlulinX = {"..SkynData(fz, ",").."}}"  end
function SkynEnc4(str)  str=str:gsub("\\n","\n"):gsub("\\t","\t")  sd = {}  fz = {str:byte(1,-1)}  codec = ''  for i = 1, #fz do  fz[i] = (fz[i] - TTTT[4] - (TTTT[9] + i) - TTTT[2] + (TTTT[1] + i) / (TTTT[6] + i)) % 712  end  return "{\nmlulinX = {"..SkynData(fz, ",").."}}"  end
function MlulinXSN(str)  str=str:gsub("\\n","\n"):gsub("\\t","\t")  sd = {}  fz = {str:byte(1,-1)}  codec = ''  ymh = '\\0'  for i = 1, #fz do  fz[i] = (fz[i] - KKKK[9] - (KKKK[4] + i) - KKKK[1] - (KKKK[7] + i) * (KKKK[5] + i)) % 676  K=ymh:rep(fz[i])  table.insert(sd, '"'..K..'"')  end  return "{\nmlulinX = {"..SkynData(fz, ",").."}}"  end
WhoisSN6 = math.random(99,817)  PPPP={}  SSSS={}  for i = 1,10 do  WhoisSN7 = WhoisSN6 * math.random(61,91)  table.insert(PPPP, WhoisSN7)  end  for i = 1,#PPPP do  WhoisSN8 = (PPPP[i] + KKKK[5] - KKKK[7] + KKKK[9] * KKKK[5] + KKKK[2] - KKKK[1]) % 676  table.insert(SSSS, WhoisSN8)  end  sncont=table.concat  sndatabase = function(c, s)NZ = {}for i in ipairs(c) do;CZ = "["..i.."]={"..c[i].."}"table.insert(NZ, CZ)end;return sncont(NZ, ",");end
function SkynEnc6(str)  str=str:gsub("\\n","\n"):gsub("\\t","\t")  sd = {}  fz = {str:byte(1,-1)}  codec = ''  ymh = '\\1'  for i = 1, #fz do  fz[i] = (fz[i] + PPPP[1] - PPPP[2] + PPPP[6] - PPPP[3] + PPPP[8] * PPPP[4] - PPPP[7] + PPPP[5] * PPPP[10] - PPPP[9]) % 676  K=ymh:rep(fz[i])  table.insert(sd, '"'..K..'"')  end  return "{\nmlulinX = {"..sndatabase(fz, ",").."}}"  end
lasmx = 'xxx = "XXxxXX"\n'  lasmx = lasmx:rep(35000)  lasm = 'MxN = "IVxxVI"\n'  lasm = lasm:rep(1000)  SNSST = "while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end "  function Ker(c)  k=" for i = 1, 0 do;sn = 'sn';end;for i = 1, 0 do;if(nil)then;sn = 'sn';end;end "  return k:rep(c)  end
function satpat(sz,isF) sz=sz or math.random(8,58) local se=" goto s " local strs="" for s=1,sz do;strs=strs..se end strs=" if nil then "..strs.." ::s:: end " ;return strs;end;function dzsh(Text)Text=Text:gsub(" ","") return (Text:gsub("..", function (jie)return string.char((tonumber(jie,16))%256) end))end;function zjm_base(cmz);  local zjm;  if cmz==1 then;    zjm=string.char(0,math.random(1,3),math.random(0x10,0x14),5)   elseif cmz==2 then;    zjm=string.char(math.random(0,8),0,math.random(0x10,0x20),9) elseif cmz==3 then;    zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0x89,0xBB),8);   elseif cmz==4 then;    zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0xE0,0xFF),0x6)  elseif cmz==5 then;    zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0xB0,0xFF),0x3);   elseif cmz==6 then;    zjm=string.char(math.random(0,4),10,math.random(0,4),0x18);   elseif cmz==7 then;    zjm=string.char(math.random(0,4),10,math.random(0,4),0x19);   elseif cmz==8 then;    zjm=string.char(math.random(5,9),10,math.random(0,4),0x1A);   elseif cmz==9 then;    zjm=string.char(0,math.random(0x1,0x20),math.random(0x8,0x20),0x1B);   elseif cmz==10 then;    zjm=string.char(0,math.random(0x1,0x20),math.random(0x8,0x20),0x1C);   elseif cmz==11 then;    zjm=string.char(0,0x80,math.random(0x8,0x20),0x1E);   elseif cmz==12 then;    zjm=string.char(0,0x80,math.random(0x8,0x20),0x4);   elseif cmz==13 then;    zjm=string.char(math.random(0xE0,0xFF),0x80,math.random(0x8,0x18),0x1);   elseif cmz==14 then;    zjm=string.char(math.random(0xE0,0xFF),0x80,math.random(0x8,0x18),0);   elseif cmz==15 then;    zjm=string.char(math.random(0x8,0x18),0,math.random(0x8,0x18),0x14);   elseif cmz==16 then;    zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0xB);   elseif cmz==17 then;    zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0x24);   elseif cmz==18 then;    zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0x7);   else;    zjm=string.char(math.random(0x8,0x18),math.random(0XEE,0XFF),0,0xA);  end;  return zjm;end;;function xZiJie(counl);  local zjmre=string.char();  for i=1,counl do;    zjmre=zjmre..zjm_base(math.random(1,19));  end;  return zjmre;end
gg.setVisible(false)
lala = {}
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(table.unpack({34,92,34})), string.char(table.unpack({34}))):gsub(string.char(table.unpack({92,34,34})), string.char(table.unpack({34})))
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(table.unpack({39,92,39})), string.char(table.unpack({39}))):gsub(string.char(table.unpack({92,39,39})), string.char(table.unpack({39})))
SNVERSION9BETA = SNVERSION9BETA:gsub('\\"(.-)\\"', function(x) x = load('return "'..x..'"')() return x end)
SNVERSION9BETA = SNVERSION9BETA:gsub("function (.-)%((.-)%)", function(x, z) x = x:gsub("%(%)","") table.insert(lala, x) return " "..x.."= function("..z..")"..satpat(math.random(5,15))..";if(nil)then(function()end)()end;" end)
SNVERSION9BETA = SNVERSION9BETA:gsub(",.function%((.-)%)", function(x) return ",function("..x..")"..satpat(math.random(5,15))..";if(nil)then(function()end)()end;" end)
local WhoAreYou = "for i = 1, 0 do local skyn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if skyn.d ~= nil then skyn.d = skyn.g() end break end\n".."for i = 1, 0 do local skyn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if skyn.d ~= nil then skyn.d = skyn.g() end break end\n".."for i = 1, 0 do local skyn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if skyn.d ~= nil then skyn.d = skyn.g() end break end\n".."for i = 1, 0 do local skyn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if skyn.d ~= nil then skyn.d = skyn.g() end break end\n".."for i = 1, 0 do local skyn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if skyn.d ~= nil then skyn.d = skyn.g() end break end\n"
local WhoIam = "for i = 1, 0 do local sn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130)..","..math.random(45, 145).."} if sn.d ~= nil then sn.d = sn.g() end break end\n".."for i = 1, 0 do local sn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if sn.d ~= nil then sn.d = sn.g() end break end\n".."for i = 1, 0 do local sn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if sn.d ~= nil then sn.d = sn.g() end break end\n".."for i = 1, 0 do local sn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if sn.d ~= nil then sn.d = sn.g() end break end\n".."for i = 1, 0 do local sn = {"..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50, 120)..","..math.random(50,120)..","..math.random(100, 130)..","..math.random(100, 130).."} if sn.d ~= nil then sn.d = sn.g() end break end\n"
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(table.unpack({34,92,34})), string.char(table.unpack({34}))):gsub(string.char(table.unpack({92,34,34})), string.char(table.unpack({34})))
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(table.unpack({39,92,39})), string.char(table.unpack({39}))):gsub(string.char(table.unpack({92,39,39})), string.char(table.unpack({39})))
SNVERSION9BETA = SNVERSION9BETA:gsub("  ", " ")
ky = {}
		for i = 1,1000 do
				ky[#ky+1] = math.random(1,9)
		end
Keys = (ky[8]*ky[350]*ky[702]*ky[450])%999
function dectobin(num)
				binary = ''
				repeat
						if (math.floor(num)%2 ~= 0) then
								y = 1
						else
								y = 0
						end
						num = num/2
						binary = binary..tostring(y)
				until num < 1
				return string.reverse(binary)
		end
		function XxXSN(str)
		str=str:gsub("\\n","\n"):gsub("\\t","\t")
				SHW = math.random(1,99)
				str = {str:byte(1,-1)}
				for i in ipairs(str) do
						str[i] = tonumber(dectobin(str[i]+ky[SHW] + Keys + IIII[1]))
				end
				return '{'..table.concat(str,",")..'},'..tostring(SHW)
		end
function encodexx(c)   return "SkynBinary("..XxXSN(c)..")"   end
function sn.char(...)
	local results = ""
	local SNVERSION9BETA = {...}
	local idx = 1
	repeat
		results = results..load("return\""..utf8.char(0x5c)..SNVERSION9BETA[1][idx].."\"")()
		idx = idx + 1
	until idx > #SNVERSION9BETA[1]
	return results
end
whsy=[[

		for i = 1,0 do iixii = 'chunk' end

		]]
		whsy = whsy:rep(20)

learnfrombasic=[[
gg.setVisible(false)
gg.toast(string.char(225,180,135,202,159,201,162,201,162,32,202,153,202,143,32,115,201,180,32,225,180,160,45,57,32,202,153,225,180,135,225,180,155,225,180,128))
  ]]..BCPL(55)..[[
while false do;local hex = {nil, -nil % nil}if hex[-nil] ~= #hex & ~hex then;hex[#nil] = hex[-nil]()end;if hex[-nil] < #hex & ~hex then;break;end;if pairs(hex) == (true or false or nil) then;break;end;end
;(function()local skynpairs = {_G[string.char(116,111,115,116,114,105,110,103)](_G[string.char(103,103)]), _G[string.char(116,111,115,116,114,105,110,103)](_G[string.char(111,115)]), _G[string.char(116,111,115,116,114,105,110,103)](_G[string.char(105,111)]), _G[string.char(116,111,115,116,114,105,110,103)](_G[string.char(100,101,98,117,103)]), _G[string.char(116,111,115,116,114,105,110,103)](_G[string.char(109,97,116,104)]), _G[string.char(116,111,115,116,114,105,110,103)](_G[string.char(116,97,98,108,101)])} 
for x in ipairs(skynpairs) do if string.match(skynpairs[x], string.char(64)) then gg.alert(string.char(83,99,114,105,112,116,32,80,114,111,116,101,99,116,101,100,32,66,121,32,83,78,32,33)) os.exit() end end end)()
while(nil)do;hex = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #hex < 0 then;break;end;if hex[#hex] < 0 then;break;end;if hex[-nil] ~= #hex & ~hex then hex[#hex] = hex[-nil]();end;if #hex < nil then hex[#hex] = hex[-nil%nil]();end;end
local MxN
]]..lasm..[[
RXN
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
io.input(gg.getFile()) if io.read('*a'):match("16") == nil then return gg.alert("Script Protected By SN !") end 
while (nil)do; local x={__,sn.sn,fsn.snx.x,sn.sn,sn.sn__,sn.sn,sn.snx.x,sn.sn,sn.sn}  local sn={x.x,sn.sn,sn.snx_,sn.sn,sn.snx.x,sn.sn,sn.sn.x,sn.ssn,sn.sn}  local sn={x.x,sn.sn,sn.sn__,sn.sn,sn.snx.x,sn.sn,sn.snx.x,sn.sn,sn.sni} local x={__,sn.sn,sn.snx.x,sn.snxx,sn.sn__,sn.sn,sn.snx.x,sn.sn,sn.sn}  local sn={x.x,sn.sn,snw.snx__,sn.sn,sn.snx.x,sn.sn,sn.sn.x,sn.ssn,sn.sn}  local sn={x.x,sn.sn,sn.sn__,sn.sn,sn.snbx.x,sn.sn,sn.snx.x,sn.sn,sn.sni}  if (x.x)then   if (x.x.x)then   if (x.x.x.x) then   if (x.x.x.x.x) then   if (sn.sn) then   if (sn.sn.sn) then   if (sn.sn.sn.sn) then   if (sn.sn) then   if (sn.sn.sn) then   if (sn.sn.sn.sn) then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x)))) sn.sn=(sn.sn(sn)) sn.sn=(sn.sn(sn.sn.sn(sn.sn.sn.sn(sn.sn.sn(sn.sn(sn.sn)))))) sn.sn = (sn.sn(sn.sn.sn(sn.sn.sn.sn(sn.sn.sn(sn.sn(sn.sn))))))x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x)))) sn.sn=(sn.sn(sn)) sn.sn=(sn.sn(sn.sn.sn(sn.sn.sn.sn(sn.sn.sn(sn.sn(sn.sn)))))) sn.sn = (sn.sn(sn.sn.sn(sn.sn.sn.sn(sn.sn.sn(sn.sn(sn.sn))))))  local snxx={x.x,sn.sn,sn.snx.x,sn.sn,sn.sn} snxx.snxx=snxx[1]..snxx[2]..snxx[3] snxx.i= snxx.snxx(snxx.snxx(snxx.snxx(snxx.snxx(snxx.snxx(snxx.snxx(snxx.snxx)))))) end;end;end;end;end;end;end;end;end;end;end
if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end
]]..Ker(math.random(1,6))..[[
local llllll = {]]..table.concat(SnIssN, ",")..[[}
while (nil)do; local x={__,sn.sn,fsn.snx.x,sn.sn,sn.sn__,sn.sn,sn.snx.x,sn.sn,sn.sn}  local sn={x.x,sn.sn,sn.snx_,sn.sn,sn.snx.x,sn.sn,sn.sn.x,sn.ssn,sn.sn}  local sn={x.x,sn.sn,sn.sn__,sn.sn,sn.snx.x,sn.sn,sn.snx.x,sn.sn,sn.sni} local x={__,sn.sn,sn.snx.x,sn.snxx,sn.sn__,sn.sn,sn.snx.x,sn.sn,sn.sn}  local sn={x.x,sn.sn,snw.snx__,sn.sn,sn.snx.x,sn.sn,sn.sn.x,sn.ssn,sn.sn}  local sn={x.x,sn.sn,sn.sn__,sn.sn,sn.snbx.x,sn.sn,sn.snx.x,sn.sn,sn.sni}  if (x.x)then   if (x.x.x)then   if (x.x.x.x) then   if (x.x.x.x.x) then   if (sn.sn) then   if (sn.sn.sn) then   if (sn.sn.sn.sn) then   if (sn.sn) then   if (sn.sn.sn) then   if (sn.sn.sn.sn) then;x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x)))) sn.sn=(sn.sn(sn)) sn.sn=(sn.sn(sn.sn.sn(sn.sn.sn.sn(sn.sn.sn(sn.sn(sn.sn)))))) sn.sn = (sn.sn(sn.sn.sn(sn.sn.sn.sn(sn.sn.sn(sn.sn(sn.sn))))))x.x=(x.x(x)) x.x=(x.x(x.x.x(x.x(x)))) sn.sn=(sn.sn(sn)) sn.sn=(sn.sn(sn.sn.sn(sn.sn.sn.sn(sn.sn.sn(sn.sn(sn.sn)))))) sn.sn = (sn.sn(sn.sn.sn(sn.sn.sn.sn(sn.sn.sn(sn.sn(sn.sn))))))  local snxx={x.x,sn.sn,sn.snx.x,sn.sn,sn.sn} snxx.snxx=snxx[1]..snxx[2]..snxx[3] snxx.i= snxx.snxx(snxx.snxx(snxx.snxx(snxx.snxx(snxx.snxx(snxx.snxx(snxx.snxx)))))) end;end;end;end;end;end;end;end;end;end;end
for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local llllll2 = {]]..table.concat(SnIssN2, ",")..[[}
while false do;local snchannel = {nil, -nil % nil}if snchannel[-nil] ~= #snchannel & ~snchannel then;snchannel[#nil] = snchannel[-nil]()end;if snchannel[-nil] < #snchannel & ~snchannel then;break;end;if pairs(snchannel) == (true or false or nil) then;break;end;end
x = string[string.char(114,101,112)](string.char(120),3) if x == string.char(120,120,120) then else i = math[string.char(114,97,110,100,111,109)](5000,10000) v = math[string.char(114,97,110,100,111,109)](10,20) l = string[string.char(99,104,97,114)](255,122,255,122,0,4,8)..i l = l:rep(999)  for i = 1,#l do debug[string.char(103,101,116,105,110,102,111)](1,nil,l) end return gg[string.char(97,108,101,114,116)](string.char(69,114,114,111,114,32,67,111,100,101,32,58,32,48,120,115,110)..v..string.char(),string.char()) end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while (nil)do;
local MluX={sn,SnN.SnN,fSnN.SnNMluX.MluX,SnN.SnN,SnN.SnNsn,SnN.SnN,SnN.SnNMluX.MluX,SnN.SnN,SnN.SnN} 
local SnN={MluX.MluX,SnN.SnN,SnN.SnNMluXysn,SnN.SnN,SnN.SnNMluX.MluX,SnN.SnN,SnN.SnN.MluX,SnN.sSnN,SnN.SnN} 
local SnN={MluX.MluX,SnN.SnN,SnN.SnNsn,SnN.SnN,SnN.SnNMluX.MluX,SnN.SnN,SnN.SnNMluX.MluX,SnN.SnN,SnN.SnNi}
local MluX={sn,SnN.SnN,SnN.SnNMluX.MluX,SnN.SnNMluXMluX,SnN.SnNsn,SnN.SnN,SnN.SnNMluX.MluX,SnN.SnN,SnN.SnN} 
local SnN={MluX.MluX,SnN.SnN,SnNw.SnNMluXsn,SnN.SnN,SnN.SnNMluX.MluX,SnN.SnN,SnN.SnN.MluX,SnN.sSnN,SnN.SnN} 
local SnN={MluX.MluX,SnN.SnN,SnN.SnNsn,SnN.SnN,SnN.SnNbMluX.MluX,SnN.SnN,SnN.SnNMluX.MluX,SnN.SnN,SnN.SnNi}
if (MluX.MluX)then if (MluX.MluX.MluX)then if (MluX.MluX.MluX.MluX) then if (MluX.MluX.MluX.MluX.MluX) then if (SnN.SnN) then if (SnN.SnN.SnN) then if (SnN.SnN.SnN.SnN) then if (SnN.SnN) then if (SnN.SnN.SnN) then if (SnN.SnN.SnN.SnN) then;MluX.MluX=(MluX.MluX(MluX)) MluX.MluX=(MluX.MluX(MluX.MluX.MluX(MluX.MluX(MluX)))) SnN.SnN=(SnN.SnN(SnN)) SnN.SnN=(SnN.SnN(SnN.SnN.SnN(SnN.SnN.SnN.SnN(SnN.SnN.SnN(SnN.SnN(SnN.SnN)))))) SnN.SnN = (SnN.SnN(SnN.SnN.SnN(SnN.SnN.SnN.SnN(SnN.SnN.SnN(SnN.SnN(SnN.SnN))))))MluX.MluX=(MluX.MluX(MluX)) MluX.MluX=(MluX.MluX(MluX.MluX.MluX(MluX.MluX(MluX)))) SnN.SnN=(SnN.SnN(SnN)) SnN.SnN=(SnN.SnN(SnN.SnN.SnN(SnN.SnN.SnN.SnN(SnN.SnN.SnN(SnN.SnN(SnN.SnN)))))) SnN.SnN = (SnN.SnN(SnN.SnN.SnN(SnN.SnN.SnN.SnN(SnN.SnN.SnN(SnN.SnN(SnN.SnN)))))) 
local SnNMluXMluX={MluX.MluX,SnN.SnN,SnN.SnNMluX.MluX,SnN.SnN,SnN.SnN} SnNMluXMluX.SnNMluXMluX=SnNMluXMluX[1]..SnNMluXMluX[2]..SnNMluXMluX[3] SnNMluXMluX.i= SnNMluXMluX.SnNMluXMluX(SnNMluXMluX.SnNMluXMluX(SnNMluXMluX.SnNMluXMluX(SnNMluXMluX.SnNMluXMluX(SnNMluXMluX.SnNMluXMluX(SnNMluXMluX.SnNMluXMluX(SnNMluXMluX.SnNMluXMluX)))))) end;end;end;end;end;end;end;end;end;end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local EEEE = {]]..table.concat(SnIssN3, ",")..[[}
local SNFUCK = "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
N1=llllll2[1] + llllll2[2] + llllll[26] + llllll2[2] + llllll[26] + llllll[58] + llllll[77] + llllll[42] + llllll[53] + llllll[25] + llllll2[2] + llllll[26] + llllll2[2] + llllll[26] + llllll[58] + llllll[77]  N2 = llllll[N1] SNVVV1=llllll2[52] + llllll2[27] + llllll2[68] + EEEE[73] + llllll2[54] + llllll2[2] + llllll[26] + llllll2[2] + llllll[26] + llllll2[25] + llllll2[53] + EEEE[73] + llllll2[54] + llllll2[28] + EEEE[84] + llllll2[99] SNXX2 = llllll[SNVVV1] SNVVV2=llllll2[47] + llllll2[31] + llllll2[83] + EEEE[73] + llllll2[54] + llllll2[28] + EEEE[84] + llllll2[99] + llllll2[2] + llllll[26] + llllll2[2] + llllll[26] + llllll[58] + llllll[77]  SNFVK1 = EEEE[SNVVV2] SNVVV3=llllll2[68] + EEEE[73] + llllll2[54] + llllll2[28] + EEEE[84] + llllll2[99] + llllll2[2] + llllll[26] + llllll2[2] + llllll[26] + llllll[58] + llllll[77] ]]..SNSST..[[  SNFVK2 = llllll[SNVVV3] SNVVV4=llllll2[35] + llllll2[25] + llllll2[53] + llllll2[52] + llllll2[27] + llllll2[68] + EEEE[73] + llllll2[54] + llllll2[2] + llllll[26] + llllll2[2] + llllll[26]  SNFVK3 = llllll[SNVVV4] SNVVV5=llllll2[35] + llllll2[2] + llllll[26] + llllll[58] + llllll[77] + llllll2[2] + llllll[26] + llllll[58] + llllll[77]  SNFVK4 = llllll[SNVVV5] SNVVV6=llllll2[63] + llllll2[72] + EEEE[36] + llllll2[99] + llllll2[2] + llllll[26] + llllll2[2] + llllll[26] + llllll[58] + llllll[77] SNFVK5 = llllll[SNVVV6] SNVVV7=llllll2[53] + llllll2[74] + llllll2[53] + llllll2[31] + llllll2[83] + EEEE[73] + llllll2[54] + llllll2[28] + EEEE[84] + llllll2[99] + llllll2[2] + llllll[26] + llllll2[2] + llllll[26] + llllll[58] + llllll[77] + llllll2[28] + EEEE[84] + llllll2[99] SNFVK6 = EEEE[SNVVV7] SNVVV8=llllll2[28] + EEEE[84] + llllll2[99] + llllll2[2] + llllll[26] + llllll[58] + llllll[77] SNFVK7 = llllll[SNVVV8] N3=EEEE[1] + EEEE[2] + llllll[26] + EEEE[2] + llllll[26] + llllll[58] + llllll[77] + llllll[42] + llllll[53] + llllll[25] + EEEE[2] + llllll[26] + EEEE[2] + llllll[26] + llllll[58] + llllll[77]  N4 = llllll[N3] ]]..SNSST..[[  SNXNX1=EEEE[52] + EEEE[27] + EEEE[68] + EEEE[73] + EEEE[54] + EEEE[2] + llllll[26] + EEEE[2] + llllll[26] + EEEE[25] + EEEE[53] + EEEE[73] + EEEE[54] + EEEE[28] + EEEE[84] + EEEE[99] SNXX5 = llllll[SNXNX1] SNXNX2=EEEE[47] + EEEE[31] + EEEE[83] + EEEE[73] + EEEE[54] + EEEE[28] + EEEE[84] + EEEE[99] + EEEE[2] + llllll[26] + EEEE[2] + llllll[26] + llllll[58] + llllll[77]  SNXX4 = EEEE[SNXNX2] SNXNX3=EEEE[68] + EEEE[73] + EEEE[54] + EEEE[28] + EEEE[84] + EEEE[99] + EEEE[2] + llllll[26] + EEEE[2] + llllll[26] + llllll[58] + llllll[77] SNXX4 = llllll[SNXNX3] SNXNX4=EEEE[35] + EEEE[25] + EEEE[53] + EEEE[52] + EEEE[27] + EEEE[68] + EEEE[73] + EEEE[54] + EEEE[2] + llllll[26] + EEEE[2] + llllll[26]  SNXX6 = llllll[SNXNX4] SNXNX5=EEEE[35] + EEEE[2] + llllll[26] + llllll[58] + llllll[77] + EEEE[2] + llllll[26] + llllll[58] + llllll[77]  SNXX7 = llllll[SNXNX5] SNXNX6=EEEE[63] + EEEE[72] + EEEE[36] + EEEE[99] + EEEE[2] + llllll[26] + EEEE[2] + llllll[26] + llllll[58] + llllll[77] SNXX3 = llllll[SNXNX6] ]]..SNSST..[[  SNXX8 = EEEE[9999] SNXX9 = llllll[9999] 
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
local N5 = N4 + SNXX5 + N3 + SNXNX1 + N1 + N2 * 3 + SNXX2 ]]..SNSST..[[ local SNDERE1 = SNXX4 + SNXNX2 + SNXX4 + SNXNX3 + SNVVV1 * SNXX2 + 352 + SNVVV2 ]]..SNSST..[[ local SNDERE2 = SNXX6 + SNXX7 + SNXNX4 + SNXNX5 + SNVVV2 + SNFVK1 + SNFVK2 * SNVVV3 + 926 / SNVVV4 + SNFVK3 ]]..SNSST..[[ local SNDERE3 = SNXX3 + SNXNX6 + N3 + SNXX8 + SNVVV3 + SNFVK2 * 836 / 436 + SNFVK3 + SNVVV4 ]]..SNSST..[[ local N6 = N1 + N2 * 3 + SNXX2 + N4 + SNXX5 + N3 + SNXNX1 * SNVVV8 + SNFVK7 + SNFVK6 + SNFVK7 + SNVVV7 + SNVVV6 ]]..SNSST..[[ local SNOPR1 = SNVVV1 * SNXX2 + 800 + SNVVV2 + SNXX4 + SNXNX2 + SNXX4 + SNXNX3 ]]..SNSST..[[ local SNOPR2 = SNVVV2 + SNFVK1 + SNFVK2 * SNVVV3 + 482 / SNVVV4 + SNFVK3 + SNXX6 + SNXX7 + SNXNX4 + SNXNX5 ]]..SNSST..[[ local SNOPR3 = SNVVV3 + SNFVK2 *628 / 594 + SNFVK3 + SNVVV4  + SNXX3 + SNXNX6 + N3 + SNXX8 ]]..SNSST..[[ local SNSNN = N5 + N6 + SNDERE1 + SNDERE2 + SNOPR2 * SNOPR1  ]]..SNSST..[[ local MSNOPR1 = SNDERE1 + SNDERE2 / SNOPR1 + SNOPR2 + SNOPR2 * SNDERE1 ]]..SNSST..[[ local MSNOPR2 = 528 + SNSNN + MSNOPR1 * SNDERE3 + SNOPR3 local ZXZX = (N5-SNXX2*SNFVK1) for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end local ZXZX2 = (SNFVK4+SNFVK6+SNFVK5*SNFVK7) local ZXZX3 = (SNFVK1+SNFVK4*SNFVK7) local ZXZX5 = (N2+SNDERE1+ZXZX+SNFVK7*ZXZX3) local ZXZX6 = (N6+SNFVK1+SNFVK2*ZXZX2-SNOPR1+ZXZX5) local ZXZX7 = (SNFVK7+ZXZX6-ZXZX2+SNFVK4*SNDERE2*ZXZX+ZXZX5) local ZXZX4 = (ZXZX2+ZXZX+ZXZX6*ZXZX7+ZXZX3+N2+SNXX2*SNFVK1) local ZXZX = (N4+SNXX5*SNXX4) local ZXZX2 = (SNOPR2+SNXX8+SNXX3*SNXX9) ]]..SNSST..[[ local ZXZX3 = (SNXX4+SNDERE3*SNXX9) local ZXZX5 = (N4+SNXX6+ZXZX+SNXX9*ZXZX3) local ZXZX6 = (SNXX8+SNXX4+SNSNN*ZXZX2-SNXX7+ZXZX5) local ZXZX7 = (SNXX9+ZXZX6-ZXZX2+SNXX7*SNXX8*ZXZX+ZXZX5) local ZXZX4 = (ZXZX2+ZXZX+ZXZX6*ZXZX7+ZXZX3+N4+SNXX5*SNXX4) local IIII = (N4+SNXX5*SNXX4) local IIII2 = (SNXX7+SNXX8+SNXX3*SNXX9) ]]..SNSST..[[ local KKKK = (SNXX4+SNXX7*MSNOPR1) local IIII5 = (N4+SNXX6+IIII+SNXX9*KKKK) local IIII6 = (SNXX8+SNXX4+SNXX4*IIII2-SNXX7+IIII5) local IIII7 = (MSNOPR2+IIII6+IIII2+SNXX7*SNXX8*IIII+IIII5) local IIII4 = (IIII2+IIII+IIII6*IIII7+KKKK+N4+SNXX5*SNXX4) local lliiIIll = (ZXZX+ZXZX2+ZXZX3+ZXZX4+ZXZX5+ZXZX6-ZXZX7) local KKKK = (IIII+IIII2+KKKK*IIII4+IIII5+IIII6*IIII7) local OFFFIIII = (lliiIIll+KKKK*IIII+ZXZX-IIII2+ZXZX3) 
local function skynprt()
gg[string.char(97,108,101,114,116)](string.char(83,99,114,105,112,116,32,80,114,111,116,101,99,116,101,100,32,66,121,32,83,78,32,33)) while true do os[string.char(101,120,105,116)]()
_ENV = nil end return end if not loadfile(gg[string.char(103,101,116,70,105,108,101)]()) then return skynprt() end if (loadfile or load) == nil then return skynprt() end
io[string.char(111,117,116,112,117,116)](gg[string.char(69,88,84,95,67,65,67,72,69,95,68,73,82)]..string.char(47,46,115,110)) os[string.char(114,101,109,111,118,101)](gg[string.char(69,88,84,95,67,65,67,72,69,95,68,73,82)]..string.char(47,46,115,110))
if loadfile(gg[string.char(69,88,84,95,67,65,67,72,69,95,68,73,82)]..string.char(47,46,115,110)) then return skynprt() end
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end local X6 = ]]..X6..[[;local llll = TTTT0;for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end local llll = 100;local llll = 1000;for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end local X4 = ]]..X4..[[;local llll = 470;local llll = 9028;local llll = 3727;local llll = 4783;local llll = 6255;local llll = 4783;local llll = 8363;local X2 = ]]..X2..[[;local llll = 3073;local llll = 8362;local llll = 7392;local X1 = ]]..X1..[[;local llll = 3433;local X3 = ]]..X3..[[;local llll = 99999;local X5 = ]]..X5..[[;local IIII = {(X6+X4*X2)-X1,X4,X2*2,X1+X2,X3} local SSS1 = (IIII[5]+IIII[2]+IIII[1]*IIII[4])-IIII[1]local SSS2 = (IIII[2]+IIII[3]*1)-IIII[4]local SSS3 = (IIII[3]+IIII[1]*IIII[2])+IIII[4]local SSS4 = (IIII[1]+IIII[2]*IIII[5]*IIII[5])+IIII[1]for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end local SSS5 = (IIII[1]+IIII[5]-IIII[3])+IIII[4]local SSS6 = (IIII[5]+IIII[2]+IIII[1]*IIII[4])-IIII[1]local SSS7 = (IIII[2]+IIII[3]*1)-IIII[4]local SSS8 = (IIII[5]+IIII[1]*IIII[2])+IIII[3]local SSS9 = (IIII[3]+IIII[4]-IIII[1]*IIII[2])+IIII[5]local SSS10 = (IIII[5]+IIII[1]-IIII[2])+IIII[3]
local xxx
]]..lasmx..[[
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while (nil)do;
local n={sn,v.v,fv.vn.n,v.v,v.vsn,v.v,v.vn.n,v.v,v.v} 
local v={n.n,v.v,v.vnysn,v.v,v.vn.n,v.v,v.v.n,v.sv,v.v} 
local v={n.n,v.v,v.vsn,v.v,v.vn.n,v.v,v.vn.n,v.v,v.vi}
local n={sn,v.v,v.vn.n,v.vnn,v.vsn,v.v,v.vn.n,v.v,v.v} 
local v={n.n,v.v,vw.vnsn,v.v,v.vn.n,v.v,v.v.n,v.sv,v.v} 
local v={n.n,v.v,v.vsn,v.v,v.vbn.n,v.v,v.vn.n,v.v,v.vi}
if (n.n)then if (n.n.n)then if (n.n.n.n) then if (n.n.n.n.n) then if (v.v) then if (v.v.v) then if (v.v.v.v) then if (v.v) then if (v.v.v) then if (v.v.v.v) then;n.n=(n.n(n)) n.n=(n.n(n.n.n(n.n(n)))) v.v=(v.v(v)) v.v=(v.v(v.v.v(v.v.v.v(v.v.v(v.v(v.v)))))) v.v = (v.v(v.v.v(v.v.v.v(v.v.v(v.v(v.v))))))n.n=(n.n(n)) n.n=(n.n(n.n.n(n.n(n)))) v.v=(v.v(v)) v.v=(v.v(v.v.v(v.v.v.v(v.v.v(v.v(v.v)))))) v.v = (v.v(v.v.v(v.v.v.v(v.v.v(v.v(v.v)))))) 
local vnn={n.n,v.v,v.vn.n,v.v,v.v} vnn.vnn=vnn[1]..vnn[2]..vnn[3] vnn.i= vnn.vnn(vnn.vnn(vnn.vnn(vnn.vnn(vnn.vnn(vnn.vnn(vnn.vnn)))))) end;end;end;end;end;end;end;end;end;end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
]]..Ker(math.random(10,20))..[[
D2={SSS1,SSS2,ZXZX5,ZXZX6,SSS5,SSS6,SSS7,SSS8,SSS9,SSS10,SSS9,SSS7,SSS5,SSS4,SSS3,SSS10,SSS5,SSS4,SSS2,ZXZX3,SSS1,SSS9}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
function SNVLXX(c)
IIII={}
for i in ipairs(c) do
SnIJK = (c[i] + D2[1] + D2[2] - D2[6] + D2[3] - D2[8] * D2[4] + D2[7] - D2[5] * D2[10] + D2[9] * D2[11] + D2[12] + D2[13] + D2 [14] + D2[15] - D2[16] - D2[17] - D2[18] - D2[19] - D2[20]) % 676
table.insert(IIII, SnIJK)
end
return IIII
end
SNVLXX(D2)
while false do;local debug = {nil, -nil % nil}if debug[-nil] ~= #debug & ~debug then;debug[#nil] = debug[-nil]()end;if debug[-nil] < #debug & ~debug then;break;end;if pairs(debug) == (true or false or nil) then;break;end;end
function SkynEnc(c)
c = c.mlulinX
codec = ''
for i in ipairs(c) do
codec = codec..string.char((c[i] + IIII[6] + (IIII[1] + i) - IIII[4] / (IIII[3] + i)) % 676)
end
return codec
end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local IXI1 = ]]..IXI1..[[;local llll = IIIIII10;local llll = 100;local llll = 1000;local IXI2 = ]]..IXI2..[[;local llll = 470;local llll = 9028;local llll = 3727;local llll = 4783;local llll = 6255;local llll = 4783;local llll = 8363;local IXI4 = ]]..IXI4..[[;local llll = 3073;local llll = 8362;local llll = 7392;local IXI3 = ]]..IXI3..[[;local llll = 3433;local IXI5 = ]]..IXI5..[[;local llll = 99999;local IXI6 = ]]..IXI6..[[;local IIIIII = {(IXI1+IXI2*IXI4)-IXI3,IXI2,IXI4*2,IXI3+IXI4,IXI5} local IIIIIIIII = (IIIIII[5]+IIIIII[2]+IIIIII[1]*IIIIII[4])-IIIIII[1]local IIIIIIIIIII = (IIIIII[2]+IIIIII[3]*1)-IIIIII[4]local IIIIIIIIIIII = (IIIIII[3]+IIIIII[1]*IIIIII[2])+IIIIII[4]local IIIIIIIIII = (IIIIII[1]+IIIIII[2]*IIIIII[5]*IIIIII[5])+IIIIII[1]local IIIIIII = (IIIIII[1]+IIIIII[5]-IIIIII[3])+IIIIII[4]local IIIIIIIIIIIIIIII = (IIIIII[5]+IIIIII[2]+IIIIII[1]*IIIIII[4])-IIIIII[1]local IIIIIIIIIIIII = (IIIIII[2]+IIIIII[3]*1)-IIIIII[4]local IIIIIIIIIIIIIII = (IIIIII[5]+IIIIII[1]*IIIIII[2])+IIIIII[3]local IIIIIIIIIIIIII = (IIIIII[3]+IIIIII[4]-IIIIII[1]*IIIIII[2])+IIIIII[5]local IIIIIIII = (IIIIII[5]+IIIIII[1]-IIIIII[2])+IIIIII[3]
D21={IIIIIIIII,IIIIIIIIIII,IIIIIIIIIIII,IIIIIIIIII,IIIIIII,IIIIIIIIIIIIIIII,IIIIIIIIIIIII,IIIIIIIIIIIIIII,IIIIIIIIIIIIII,IIIIIIII,IIIIIIIIIIIIII,IIIIIIIIIIIII,IIIIIII,IIIIIIIIII,IIIIIIIIIIII,IIIIIIII,IIIIIII,IIIIIIIIII,IIIIIIIIIII,IIIIIIIIIIII,IIIIIIIII,IIIIIIIIIIIIII}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
function SNVLXX1(c)
TTTT={}
for i in ipairs(c) do
SnIJK = (c[i] + D21[1] + D21[2] - D21[6] + D21[3] - D21[8] * D21[4] + D21[7] - D21[5] * D21[10] + D21[9] * D21[11] + D21[12] + D21[13] + D21 [14] + D21[15] - D21[16] - D21[17] - D21[18] - D21[19] - D21[20]) % 676
table.insert(TTTT, SnIJK)
end
return TTTT
end
SNVLXX1(D21)
while(nil)do;for str=str,str do;local str={}if(str.str)then;str.str=str.str(str)end;for strstr=str.str,str.str,str.str do;local strstr={}if(strstr.str)then;strstr.str=strstr.str()end;for strstrstr=str,strstr.str,str do;local strstrstr={}if(strstrstr.str)then;strstrstr.str=strstrstr.str(str)end;for strstrstrstr=str,strstr,strstrstr.str do;local strstrstrstr={}if(strstrstrstr.str)then;strstrstrstr.str=strstrstrstr.str(str)end;local strstrstrstr={}if(strstrstrstr.str)then;strstrstrstr.str=(strstrstrstr|strstrstr|strstr|str)(str)end;end;local strstrstr={}if(strstrstr.str)then;strstrstr.str=(true|strstrstr|strstr|str)(str)end;end;local strstr={}if(strstr.str)then;strstr.str=(true|false|strstr|str)(str)end;end;local str={}if(str.str)then;str.str=(true|nil|false|nil|str|nil|false|true|nil)(str)end;return(true|false|nil)end;return;end
while(nil)do;local str={}if(str.str)then;str.str=(str.str(str))end;end
function SkynKO(c)
c = c.mlulinX
for sn =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local sn = {} sn[''] = sn local sn = (sn)(sn, sn) sn[1] = 1 end
codec = ''
for i in ipairs(c) do
codec = codec..string.char((c[i] + TTTT[4] + (TTTT[7] + i) - TTTT[1] - (TTTT[2] - i) * (TTTT[3] + i)) % 63836)
end
return codec
end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end local XX1 = ]]..XX1..[[;local llll = POEIZ;local llll = 100;for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end local llll = 1000;local XX3 = ]]..XX3..[[;local llll = 470;local llll = 9028;local llll = 3727;local llll = 4783;local llll = 6255;local llll = 4783;local llll = 8363;for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end local XX4 = ]]..XX4..[[;local llll = 3073;local llll = 8362;local llll = 7392;local XX5 = ]]..XX5..[[;local llll = 3433;local XXX1 = ]]..XXX1..[[;local llll = 99999;local XX2 = ]]..XX2..[[;local YYZZ = {(XX1+XX3*XX4)-XX5,XX3,XX4*2,XX5+XX4,XXX1} local VVUU1 = (YYZZ[5]+YYZZ[2]+YYZZ[1]*YYZZ[4])-YYZZ[1]local VVUU2 = (YYZZ[2]+YYZZ[3]*1)-YYZZ[4]local VVUU3 = (YYZZ[3]+YYZZ[1]*YYZZ[2])+YYZZ[4]local VVUU4 = (YYZZ[1]+YYZZ[2]*YYZZ[5]*YYZZ[5])+YYZZ[1]local VVUU5 = (YYZZ[1]+YYZZ[5]-YYZZ[3])+YYZZ[4]local VVUU6 = (YYZZ[5]+YYZZ[2]+YYZZ[1]*YYZZ[4])-YYZZ[1]local VVUU7 = (YYZZ[2]+YYZZ[3]*1)-YYZZ[4]for i = 1,0 do skyn = "mlulinX" end while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end local VVUU8 = (YYZZ[5]+YYZZ[1]*YYZZ[2])+YYZZ[3]local VVUU9 = (YYZZ[3]+YYZZ[4]-YYZZ[1]*YYZZ[2])+YYZZ[5]local VVUU10 = (YYZZ[5]+YYZZ[1]-YYZZ[2])+YYZZ[3]
QQQQ={VVUU1,VVUU2,VVUU3,VVUU4,VVUU5,VVUU6,VVUU7,VVUU8,VVUU9,VVUU10,VVUU9,VVUU7,VVUU5,VVUU4,VVUU3,VVUU10,VVUU5,VVUU4,VVUU2,VVUU3,VVUU1,VVUU9}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
function SNVLXX2(c)
while false do;local skyn = {nil, -nil % nil}if skyn[-nil] ~= #skyn & ~skyn then;skyn[#nil] = skyn[-nil]()end;if skyn[-nil] < #skyn & ~skyn then;break;end;if pairs(skyn) == (true or false or nil) then;break;end;end
while(nil)do;skyn = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #skyn < 0 then;break;end;if skyn[#skyn] < 0 then;break;end;if skyn[-nil] ~= #skyn & ~skyn then skyn[#skyn] = skyn[-nil]();end;if #skyn < nil then skyn[#skyn] = skyn[-nil%nil]();end;end
if(nil)then;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;for i = 1, 0 do;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;if(nil)then;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;for i = 1, 0 do;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;if(nil)then;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;for i = 1, 0 do;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;if(nil)then;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;for i = 1, 0 do;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;if(nil)then;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;for i = 1, 0 do;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;if(nil)then;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end;for i = 1, 0 do;local _i = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #_i[-nil%nil%-nil] ~= nil then;_i[-nil%nil%-nil] = _i[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::i_::;_i[-nil%nil%-nil] = _i[-nil%nil%nil]();goto i_;_i = nil;end
IIII2={}
for i in ipairs(c) do
while false do;local skyn = {nil, -nil % nil}if skyn[-nil] ~= #skyn & ~skyn then;skyn[#nil] = skyn[-nil]()end;if skyn[-nil] < #skyn & ~skyn then;break;end;if pairs(skyn) == (true or false or nil) then;break;end;end
while(nil)do;local sn={}if(sn.sn)then;sn.sn=(sn.sn(sn))end;end
while(nil)do;for sn=sn,sn do;local sn={}if(sn.sn)then;sn.sn=sn.sn(sn)end;for snsn=sn.sn,sn.sn,sn.sn do;local snsn={}if(snsn.sn)then;snsn.sn=snsn.sn()end;for snsnsn=sn,snsn.sn,sn do;local snsnsn={}if(snsnsn.sn)then;snsnsn.sn=snsnsn.sn(sn)end;for snsnsnsn=sn,snsn,snsnsn.sn do;local snsnsnsn={}if(snsnsnsn.sn)then;snsnsnsn.sn=snsnsnsn.sn(sn)end;local snsnsnsn={}if(snsnsnsn.sn)then;snsnsnsn.sn=(snsnsnsn|snsnsn|snsn|sn)(sn)end;end;local snsnsn={}if(snsnsn.sn)then;snsnsn.sn=(true|snsnsn|snsn|sn)(sn)end;end;local snsn={}if(snsn.sn)then;snsn.sn=(true|false|snsn|sn)(sn)end;end;local sn={}if(sn.sn)then;sn.sn=(true|nil|false|nil|sn|nil|false|true|nil)(sn)end;return(true|false|nil)end;return;end
SnIJK = (c[i] + QQQQ[1] + QQQQ[2] - QQQQ[6] + QQQQ[3] - QQQQ[8] * QQQQ[4] + QQQQ[7] - QQQQ[5] * QQQQ[10] + QQQQ[9] * QQQQ[11] + QQQQ[12] + QQQQ[13] + QQQQ [14] + QQQQ[15] - QQQQ[16] - QQQQ[17] - QQQQ[18] - QQQQ[19] - QQQQ[20]) % 676
table.insert(IIII2, SnIJK)
end
return IIII2
end
SNVLXX2(QQQQ)
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
function SkynZX(c)
c = c.mlulinX
codec = ''
for i in ipairs(c) do
codec = codec..string.char((c[i] + IIII2[1] + (IIII2[2] + i) + IIII2[4] + (IIII2[5] + i) * (IIII2[3] + i)) % 676)
end
return codec
end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
local XXX6 = ]]..XXX6..[[;local llll = OOOOO;local llll = 100;local llll = 1000;local XXX5 = ]]..XXX5..[[;local llll = 470;local llll = 9028;local llll = 3727;local llll = 4783;local llll = 6255;local llll = 4783;local llll = 8363;local XXX4 = ]]..XXX4..[[;local llll = 3073;local llll = 8362;local llll = 7392;local XXX3 = ]]..XXX3..[[;local llll = 3433;local XXX2 = ]]..XXX2..[[;local llll = 99999;local XX2G = ]]..XX2G..[[;local OOOO = {(XXX6+XXX5*XXX4)-XXX3,XXX5,XXX4*2,XXX3+XXX4,XXX2} local MMMM1 = (OOOO[5]+OOOO[2]+OOOO[1]*OOOO[4])-OOOO[1]local llIIll1 = (OOOO[2]+OOOO[3]*1)-OOOO[4]local llIIll2 = (OOOO[3]+OOOO[1]*OOOO[2])+OOOO[4]local llIIll3 = (OOOO[1]+OOOO[2]*OOOO[5]*OOOO[5])+OOOO[1]local llIIll4 = (OOOO[1]+OOOO[5]-OOOO[3])+OOOO[4]local llIIll5 = (OOOO[5]+OOOO[2]+OOOO[1]*OOOO[4])-OOOO[1]local llIIll6 = (OOOO[2]+OOOO[3]*1)-OOOO[4]local llIIll7 = (OOOO[5]+OOOO[1]*OOOO[2])+OOOO[3]local llIIll8 = (OOOO[3]+OOOO[4]-OOOO[1]*OOOO[2])+OOOO[5]local D1 = (OOOO[5]+OOOO[1]-OOOO[2])+OOOO[3]
UUUU={MMMM1,lliiIIll,llIIll2,KKKK,llIIll4,llIIll5,llIIll6,llIIll7,llIIll8,D1,llIIll8,llIIll6,llIIll4,llIIll3,llIIll2,D1,llIIll4,llIIll3,llIIll1,llIIll2,MMMM1,llIIll8}
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
function SNVLXX3(c)
while false do;local skyn = {nil, -nil % nil}if skyn[-nil] ~= #skyn & ~skyn then;skyn[#nil] = skyn[-nil]()end;if skyn[-nil] < #skyn & ~skyn then;break;end;if pairs(skyn) == (true or false or nil) then;break;end;end
while(nil)do;local sn={}if(sn.sn)then;sn.sn=(sn.sn(sn))end;end
while(nil)do;for sn=sn,sn do;local sn={}if(sn.sn)then;sn.sn=sn.sn(sn)end;for snsn=sn.sn,sn.sn,sn.sn do;local snsn={}if(snsn.sn)then;snsn.sn=snsn.sn()end;for snsnsn=sn,snsn.sn,sn do;local snsnsn={}if(snsnsn.sn)then;snsnsn.sn=snsnsn.sn(sn)end;for snsnsnsn=sn,snsn,snsnsn.sn do;local snsnsnsn={}if(snsnsnsn.sn)then;snsnsnsn.sn=snsnsnsn.sn(sn)end;local snsnsnsn={}if(snsnsnsn.sn)then;snsnsnsn.sn=(snsnsnsn|snsnsn|snsn|sn)(sn)end;end;local snsnsn={}if(snsnsn.sn)then;snsnsn.sn=(true|snsnsn|snsn|sn)(sn)end;end;local snsn={}if(snsn.sn)then;snsn.sn=(true|false|snsn|sn)(sn)end;end;local sn={}if(sn.sn)then;sn.sn=(true|nil|false|nil|sn|nil|false|true|nil)(sn)end;return(true|false|nil)end;return;end
KKKK={}
for i in ipairs(c) do
while false do;local skyn = {nil, -nil % nil}if skyn[-nil] ~= #skyn & ~skyn then;skyn[#nil] = skyn[-nil]()end;if skyn[-nil] < #skyn & ~skyn then;break;end;if pairs(skyn) == (true or false or nil) then;break;end;end
while true do if not sn then if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil _ = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _ ~= nil then _ = _(-nil*nil)() _ = nil end if _ == nil then _ = {_, _(-nil)(-nil)(nil *1, 1 << nil), -nil} end local k = {} k[''] = k local t = (k)(k, l) t[1] = 1 end sn = ya break end local xxx = {} local XX = {} local X = {} X.X = {} if xxx.env ~= nil then xxx.io = xxx.env() end xxx = nil xxx.xxx[Z] = nil xxx.xxx[X] = nil xxx.xxx[i] = nil X.XXX = XX.Z() X.XXX = X.XXX:Z() X.X[B] = X[Z] local skyn = {} if skyn ~= nil then skyn = nil end local yn = {} if yn ~= yn then yn.os = yn.vx() yn.gg = yn.vx.mx() yn.channel = yn.mlu.linX() yn.sk = yn.sn() end end
SnIJK = (c[i] + UUUU[1] + UUUU[2] - UUUU[6] + UUUU[3] - UUUU[8] * UUUU[4] - UUUU[7] - UUUU[5] * UUUU[10] + UUUU[9] * UUUU[11] + UUUU[12] + UUUU[13] + UUUU [14] + UUUU[15] - UUUU[16] - UUUU[17] - UUUU[18] - UUUU[19] - UUUU[20]) % 676
table.insert(KKKK, SnIJK)
end
return KKKK
end
SNVLXX3(UUUU)
function SkynTP(c)
c = c.mlulinX
codec = ''
for i in ipairs(c) do
codec = codec..string.char((c[i] + KKKK[1] - (KKKK[5] + i) + KKKK[9] * (KKKK[2] + i)) % 712)
end
return codec
end
while false do;local base = {nil, -nil % nil}if base[-nil] ~= #base & ~base then;base[#nil] = base[-nil]()end;if base[-nil] < #base & ~base then;break;end;if pairs(base) == (true or false or nil) then;break;end;end
while(nil)do;base = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #base < 0 then;break;end;if base[#base] < 0 then;break;end;if base[-nil] ~= #base & ~base then base[#base] = base[-nil]();end;if #base < nil then base[#base] = base[-nil%nil]();end;end
while false do;local base = {nil, -nil % nil}if base[-nil] ~= #base & ~base then;base[#nil] = base[-nil]()end;if base[-nil] < #base & ~base then;break;end;if pairs(base) == (true or false or nil) then;break;end;end
while(nil)do;base = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #base < 0 then;break;end;if base[#base] < 0 then;break;end;if base[-nil] ~= #base & ~base then base[#base] = base[-nil]();end;if #base < nil then base[#base] = base[-nil%nil]();end;end
function SkynDR(c)
while false do;local _G = {nil, -nil % nil}if _G[-nil] ~= #_G & ~_G then;_G[#nil] = _G[-nil]()end;if _G[-nil] < #_G & ~_G then;break;end;if pairs(_G) == (true or false or nil) then;break;end;end
if nil ~= nil then sn = (-nil)((-nil)[nil] | nil | nil) sn = sn sn = sn()
while (nil) do sn() end if sn ~= nil then do
for i = 0,1,0 do sn = sn() sn = snnil sn= sn():sn(snnil)(snnil*-1)..snnil sn = sn(snnil)(sn) end
for p = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local sn = {(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)} sn = sn() sn = snnil sn= sn():sn(snnil)(snnil*-1)..snnil sn = sn(snnil)(sn) if sn~= nil then sn = _ (snnil*nil) sn = nil end if sn == nil then sn = {sn(sn*nil)(sn*nil)(nil * 1, 1<< nil), sn*nil} end end local sn = {} x[''] = T local K = (x)(x, x) K[1] = 1 end
local x = {} x[''] = x local t = (x)(x, x) t[1] = 1
end _ = {_, _(-nil)(-nil)(nil * 1, 1<< nil), -nil} _ = _ (nil) _ = -nil _ = _ (-nil * nil)()
sn = sn ( _) sn = {(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)}
sn = sn() if sn == nil then sn = {sn(sn*nil)(sn*nil)(nil * 1, 1<< nil), sn*nil} end
while sn ~= sn do if sn ~= sn then do sn() sn() sn() sn()sn() sn() sn() sn()sn() sn() sn() sn() sn() sn() sn() sn()sn() sn() sn() sn()sn() sn() sn() sn() sn() sn() sn() sn()sn() sn() sn() sn()sn() sn() sn() sn()
sn() sn() sn() sn()sn() sn() sn() sn()sn() sn() sn() sn() sn() sn() sn() sn()sn() sn() sn() sn()sn() sn() sn() sn() sn() sn() sn() sn()sn() sn() sn() sn()sn() sn() sn() sn() end end end
end end while sn ~= nil do sn = nil,nil,nil,nil end
c = c.mlulinX
codec = ''
for i in ipairs(c) do
while false do;local _G = {nil, -nil % nil}if _G[-nil] ~= #_G & ~_G then;_G[#nil] = _G[-nil]()end;if _G[-nil] < #_G & ~_G then;break;end;if pairs(_G) == (true or false or nil) then;break;end;end
for sn =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local sn = {} sn[''] = sn local sn = (sn)(sn, sn) sn[1] = 1 end
codec = codec..string.char((c[i] + IIII[5] + (IIII[6] + i) + IIII[2] + (IIII[8] + i) * (IIII[7] + i)) % 676)
end
return codec
end
for sn =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local sn = {} sn[''] = sn local sn = (sn)(sn, sn) sn[1] = 1 end
while false do;local code = {nil, -nil % nil}if code[-nil] ~= #code & ~code then;code[#nil] = code[-nil]()end;if code[-nil] < #code & ~code then;break;end;if pairs(code) == (true or false or nil) then;break;end;end
function SkynNM(c)
for sn =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local sn = {} sn[''] = sn local snn = (sn)(sn, sn) snn[1] = 1 end
for sn = -1, -2500, -1 do local skyn = {} if skyn.mlulinX ~= nil then skyn.bidun = skyn.mlulinX() skyn.mlulinX = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end skyn = nil end
for sn = 0, 1, 0 do local skyn = {} if skyn.mlulinX ~= nil then skyn.bidun = skyn.mlulinX() skyn.mlulinX = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end skyn = nil end
while(nil)do;pairs = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #pairs < 0 then;break;end;if pairs[#pairs] < 0 then;break;end;if pairs[-nil] ~= #pairs & ~pairs then pairs[#pairs] = pairs[-nil]();end;if #pairs < nil then pairs[#pairs] = pairs[-nil%nil]();end;end
c = c.mlulinX
codec = ''
for i in ipairs(c) do
while false do;local pairs = {nil, -nil % nil}if pairs[-nil] ~= #pairs & ~pairs then;pairs[#nil] = pairs[-nil]()end;if pairs[-nil] < #pairs & ~pairs then;break;end;if pairs(pairs) == (true or false or nil) then;break;end;end
for sn = 0,2,0 do local skyn = {} if skyn.mlulinX ~= nil then skyn.bidun = skyn.mlulinX() skyn.mlulinX = nil -nil+nil-nil*nil/nil%nil~nil~~~nil%#nil end skyn = nil end
codec = codec..string.char((c[i] + TTTT[4] + (TTTT[9] + i) + TTTT[2] - (TTTT[1] + i) / (TTTT[6] + i)) % 712)
end
return codec
end
while false do;local code = {nil, -nil % nil}if code[-nil] ~= #code & ~code then;code[#nil] = code[-nil]()end;if code[-nil] < #code & ~code then;break;end;if pairs(code) == (true or false or nil) then;break;end;end
while (nil)do;local sn={} local skyn={} local sn={}if (sn.sn) then if (sn.sn.sn) then if (sn.sn.sn.sn) then if (sn.sn.sn.sn.sn) then if (skyn.skyn) then if (skyn.skyn.skyn) then if (skyn.skyn.skyn.skyn) then if (sn.sn) then if (sn.sn.sn) then if (sn.sn.sn.sn) then;sn.sn = (sn.sn(sn)) sn.sn=(sn.sn(sn.sn.sn(sn.sn(sn)))) skyn.skyn = (skyn.skyn(skyn)) skyn.skyn=(skyn.skyn(skyn.skyn.skyn(skyn.skyn.skyn.skyn(skyn.skyn.skyn(skyn.skyn(skyn.skyn)))))) sn.sn = (sn.sn(sn.sn.sn(sn.sn.sn.sn(sn.sn.sn(sn.sn(sn.sn)))))) local sn = {sn.sn,skyn.skyn,sn.sn} sn.sn = sn[1]..sn[2]..sn[3] sn.i = sn.sn(sn.sn(sn.sn(sn.sn(sn.sn(sn.sn(sn.sn)))))) end;end;end;end;end;end;end;end;end;end;end
function SkynIL(c)
c = c.mlulinX
codec = ''
for i in ipairs(c) do
codec = codec..string.char((c[i] + KKKK[9] + (KKKK[4] + i) + KKKK[1] + (KKKK[7] + i) * (KKKK[5] + i)) % 676)
end
return codec
end
local WWWW = function(c)
;if(nil)then;(function() end)()end;
local SNTable = {]]..sndatabase(SSSS, ",")..[[}
function Dc(c)
;if(nil)then;(function() end)()end;
local SNCOINSNXX4 = function(M, C) return M - C end
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
local SNCOINSNXX6 = function(M, C) return M + C end
while false do;local _ = {nil, -nil % nil}if _[-nil] ~= #_ & ~_ then;_[#nil] = _[-nil]()end;if _[-nil] < #_ & ~_ then;break;end;if pairs(_) == (true or false or nil) then;break;end;end
while(nil)do;_ = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #_ < 0 then;break;end;if _[#_] < 0 then;break;end;if _[-nil] ~= #_ & ~_ then _[#_] = _[-nil]();end;if #_ < nil then _[#_] = _[-nil%nil]();end;end
while (nil)do;local skyn={}if (skyn.skyn)then if (skyn.skyn.skyn)then;skyn.skyn=(skyn.skyn(skyn)) skyn.skyn=(skyn.skyn(skyn.skyn.skyn(skyn.skyn(skyn))))end;end;end
local SKCVYU,SKCVYL,SKCVYN,SKCVYR,SKCVYI,SKCVYQ,ii = 9,7,1,0,75271,41,0
local SNCOINSNXX5 = SNCOINSNXX4(SKCVYU, SKCVYL)
;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;;if(nil)then;(function()end)();end;
local SNCOINSNXX4 = SNCOINSNXX6(SKCVYR, SKCVYN)
while false do;local __ = {nil, -nil % nil}if __[-nil] ~= #__ & ~__ then;__[#nil] = __[-nil]()end;if __[-nil] < #__ & ~__ then;break;end;if pairs(__) == (true or false or nil) then;break;end;end
]]..WhoIam..[[
local SNCOING1 = SNCOINSNXX5 - SNCOINSNXX4 + SKCVYN - SKCVYN
local M={}
while(nil)do;I = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #I < 0 then;break;end;if I[#I] < 0 then;break;end;if I[-nil] ~= #I & ~I then I[#I] = I[-nil]();end;if #I < nil then I[#I] = I[-nil%nil]();end;end
for i = 1,#c do
M.O = (c[i][SNCOING1] - KKKK[5] + KKKK[7] - KKKK[9] * KKKK[5] - KKKK[2] + KKKK[1]) % 676
table.insert(M, M.O)
end
return M
end
return Dc(SNTable)
end
WWWW = WWWW()
function SkynSN(c)
;if(nil)then;(function() end)()end;
local SNCOINSNXX4 = function(M, C)  return M - C end
if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end
local SNCOINSNXX6 = function(M, C) ;if(nil)then;(function() end)()end; return M + C end
if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end
local SKCVYU,SKCVYL,SKCVYN,SKCVYR,SKCVYI,SKCVYQ,ii = 9,7,1,0,75271,41,0
if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;if(nil)then;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end;for i = 1, 0 do;local mlulinX = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #mlulinX[-nil%nil%-nil] ~= nil then;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;mlulinX[-nil%nil%-nil] = mlulinX[-nil%nil%nil]();goto SKYN;mlulinX = nil;end
local SNCOINSNXX5 = SNCOINSNXX4(SKCVYU, SKCVYL)
if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;if(nil)then;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end;for i = 1, 0 do;local Skyng = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #Skyng[-nil%nil%-nil] ~= nil then;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;Skyng[-nil%nil%-nil] = Skyng[-nil%nil%nil]();goto SKYN;Skyng = nil;end
local SNCOINSNXX4 = SNCOINSNXX6(SKCVYR, SKCVYN)
if(nil)then;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;for i = 1, 0 do;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;if(nil)then;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;for i = 1, 0 do;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;if(nil)then;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;for i = 1, 0 do;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;if(nil)then;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;for i = 1, 0 do;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;if(nil)then;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;for i = 1, 0 do;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;if(nil)then;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end;for i = 1, 0 do;local tostr = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #tostr[-nil%nil%-nil] ~= nil then;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]()mrsn[-nil%-nil]();end;::SKYN::;tostr[-nil%nil%-nil] = tostr[-nil%nil%nil]();goto SKYN;tostr = nil;end
local SNCOING1 = SNCOINSNXX5 - SNCOINSNXX4 + SKCVYN - SKCVYN
c = c.mlulinX
local codec={}
for i in ipairs(c) do
while false do;local ___ = {nil, -nil % nil}if ___[-nil] ~= #___ & ~___ then;___[#nil] = ___[-nil]()end;if ___[-nil] < #___ & ~___ then;break;end;if pairs(___) == (true or false or nil) then;break;end;end
]]..WhoAreYou..[[
codec.hi = (c[i][SNCOING1] - WWWW[1] + WWWW[2] - WWWW[6] + WWWW[3] - WWWW[8] * WWWW[4] + WWWW[7] - WWWW[5] * WWWW[10] + WWWW[9]) % 676
table.insert(codec, codec.hi)
end
return string.char(table.unpack(codec))
end
for i = 1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {15,3,100,23,98} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local j = {15,3,100,23,98} j[''] = j local t = (j)(j, j) t[1] = 1 end
local ky = {]]..table.concat(ky,",")..[[}
Keys = (ky[8]*ky[350]*ky[702]*ky[450])%999
for x = 0, 1, 0 do local sn = {} if sn.skyn ~= nil then sn.mlulinX = sn.skyn() sn.skyn = nil end sn = nil end
local Decode = (function()
local ranger=function(str,SHW)
for i in ipairs(str) do
for sn =0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil) local _ = {} _ = _() _ = -nil  _  = _():_(-nil)(-nil * 1)..-nil _ = _(-nil)(_) if _~= nil then   _ = _ (-nil * nil)()  _ = nil end  if _  == nil then  _ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil} end end local sn = {} sn[''] = sn local sn = (sn)(sn, sn) sn[1] = 1 end
str[i] = tonumber(tostring(str[i]),2)-ky[SHW] - Keys - IIII[1]
end
return string.char(table.unpack(str))
end
return ranger
end)()

local SkynBinary = Decode

;(function()
local f = _G[]]..encodexx(string.char(105,111))..[[][]]..encodexx(string.char(111,112,101,110))..[[](_G[]]..encodexx(string.char(103,103))..[[][]]..encodexx(string.char(103,101,116,70,105,108,101))..[[](), string.char(114))
local content = f:read(]]..encodexx(string.char(42,97))..[[)
f:close()
local count = 0
for w in _G[]]..encodexx(string.char(116,111,115,116,114,105,110,103))..[[](_G[]]..encodexx(string.char(100,101,98,117,103))..[[][]]..encodexx(string.char(116,114,97,99,101,98,97,99,107))..[[]()):gmatch(]]..encodexx(string.char(46,47,40,46,45,41,58))..[[) do
count = count + 1
if w ~= _G[]]..encodexx(string.char(103,103))..[[][]]..encodexx(string.char(103,101,116,70,105,108,101))..[[]():sub(2,-1) then
os[string.char(101,120,105,116)]() return end end end)()

]]..Ker(math.random(10,20))..[[
;(function() a = {} b = string.char() gg.setVisible(false) repeat a[#a + 1] = _G[]]..encodexx(string.char(115,116,114,105,110,103))..[[][]]..encodexx(string.char(99,104,97,114))..[[](255, 10, 255, 10, 255, 10, 255, 210, 255, 10, 255, 10, 255, 10, 255, 210, 255, 10, 255, 10, 255, 10, 255, 210) b = b .. ]]..encodexx(string.char(115,116,114,105,110,103))..[[[]]..encodexx(string.char(99,104,97,114))..[[](255, 255) a[#a + 1] = b .. b until #a == tonumber(string.char(49,48,48,48)) for i = 1, 99 do _G[]]..encodexx(string.char(103,103))..[[][]]..encodexx(string.char(115,101,97,114,99,104,78,117,109,98,101,114))..[[](b) for i = 1, 80 do _G[]]..encodexx(string.char(103,103))..[[][]]..encodexx(string.char(114,101,102,105,110,101,78,117,109,98,101,114))..[[](math.random(1,999), nil, a) end end end)()
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
;(function() a = {} b = string.char() local lxc = _G[]]..encodexx(string.char(115,116,114,105,110,103))..[[][]]..encodexx(string.char(99,104,97,114))..[[](255,255,255,255,255,255) repeat a[#a + 1] = lxc  b = b .. ]]..encodexx(string.char(115,116,114,105,110,103))..[[[]]..encodexx(string.char(99,104,97,114))..[[](255, 255) a[#a + 1] = b .. b until #a == tonumber(string.char(49,48,48,48)) for i = 1, 400 do _G[]]..encodexx(string.char(103,103))..[[][]]..encodexx(string.char(114,101,102,105,110,101,65,100,100,114,101,115,115))..[[](_G[]]..encodexx(string.char(109,97,116,104))..[[][]]..encodexx(string.char(114,97,110,100,111,109))..[[](50,80),a,a,a,a,a,a) end end)()

;if(nil)then;(function() end)()end; ;(function()  i= {} x = '' repeat i[#i + 1] = ]]..encodexx("string")..[[[]]..encodexx("char")..[[](255,255,0,255,255,0) x = x .. ]]..encodexx("string")..[[[]]..encodexx("char")..[[](255, 255) i[#i + 1] = x .. x  until #i == tonumber("1000")  for v = 1,2000 do _G[]]..encodexx("debug")..[[][]]..encodexx("setmetatable")..[[](_G[]]..encodexx("math")..[[][]]..encodexx("random")..[[](10,40),i,nil,i) end end)()

while(nil)do;pairs = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #pairs < 0 then;break;end;if pairs[#pairs] < 0 then;break;end;if pairs[-nil] ~= #pairs & ~pairs then pairs[#pairs] = pairs[-nil]();end;if #pairs < nil then pairs[#pairs] = pairs[-nil%nil]();end;end
  
]]
if SNVERSION9BETA:match("\ngg%.getResults") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\ngg%.getResults", "\nfor i = 1, 0 do;OxSkyn = 'DxSkyn';end;for i = 1, 0 do;if(nil)then;MxSkyn = 'WxSkyn';end;end\n\nlee.getResults")
until SNVERSION9BETA:match("\ngg%.getResults") == nil
end
if SNVERSION9BETA:match("\nlee%.getResults") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\nlee%.getResults", "\ngg.getResults")
until SNVERSION9BETA:match("\nlee%.getResults") == nil
end
if SNVERSION9BETA:match("\ngg%.setRanges") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\ngg%.setRanges", "\nfor i = 1, 0 do;OxSkyn = 'DxSkyn';end;for i = 1, 0 do;if(nil)then;MxSkyn = 'WxSkyn';end;end\n\nlee.setRanges")
until SNVERSION9BETA:match("\ngg%.setRanges") == nil
end
if SNVERSION9BETA:match("\nlee%.setRanges") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\nlee%.setRanges", "\ngg.setRanges")
until SNVERSION9BETA:match("\nlee%.setRanges") == nil
end
if SNVERSION9BETA:match("\ngg%.searchNumber") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\ngg%.searchNumber", "\nfor i = 1, 0 do;OxSkyn = 'DxSkyn';end;for i = 1, 0 do;if(nil)then;MxSkyn = 'WxSkyn';end;end\n\nlee.searchNumber")
until SNVERSION9BETA:match("\ngg%.searchNumber") == nil
end
if SNVERSION9BETA:match("\nlee%.searchNumber") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\nlee%.searchNumber", "\ngg.searchNumber")
until SNVERSION9BETA:match("\nlee%.searchNumber") == nil
end
if SNVERSION9BETA:match("\ngg%.editAll") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\ngg%.editAll", "\nfor i = 1, 0 do;OxSkyn = 'DxSkyn';end;for i = 1, 0 do;if(nil)then;MxSkyn = 'WxSkyn';end;end\n\nlee.editAll")
until SNVERSION9BETA:match("\ngg%.editAll") == nil
end
if SNVERSION9BETA:match("\nlee%.editAll") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\nlee%.editAll", "\ngg.editAll")
until SNVERSION9BETA:match("\nlee%.editAll") == nil
end
if SNVERSION9BETA:match("\ngg%.toast") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\ngg%.toast", "\nfor i = 1, 0 do;OxSkyn = 'DxSkyn';end;for i = 1, 0 do;if(nil)then;MxSkyn = 'WxSkyn';end;end\n\nlee.toast")
until SNVERSION9BETA:match("\ngg%.toast") == nil
end
if SNVERSION9BETA:match("\nlee%.toast") ~= nil then
repeat
SNVERSION9BETA = SNVERSION9BETA:gsub("\nlee%.toast", "\ngg.toast")
until SNVERSION9BETA:match("\nlee%.toast") == nil
end

SNVERSION9BETA=SNVERSION9BETA:gsub('gg.getRangesList', "_ENV['gg']['getRangesList']")
function BuxSn(c)   return 'gg[SkynEnc(' .. enc(c) .. ')]('   end  function BuxSn1(c)   return '' .. enc(c) .. ')'   end    function SN_G1(c)   return 'gg[SkynKO(' .. SkynEnc1(c) .. ')]('   end
function SN_G2(c)   return 'gg[SkynZX(' .. SkynEnc2(c) .. ')]('   end    function SN_G3(c)   return 'gg[SkynTP(' .. SkynEnc3(c) .. ')]('   end
function SN_G5(c)   return 'gg[SkynNM(' .. SkynEnc4(c) .. ')]('   end    function SN_G4(c)   return 'gg[SkynDR(' .. SkynEnc5(c) .. ')]('   end
function SN_G6(c)   return 'gg[SkynIL(' .. MlulinXSN(c) .. ')]('   end  function SNNewBinary(c)   return 'gg[SkynBinary(' .. XxXSN(c) .. ')]('   end    function SkynXos(c)   return 'os[SkynIL(' .. MlulinXSN(c) .. ')]('   end
function SkynXstring(c)   return 'string[SkynIL(' .. MlulinXSN(c) .. ')]('   end    function SkynXmath(c)   return 'math[SkynIL(\n' .. MlulinXSN(c) .. ')]('   end
function SkynXdebug(c)   return 'debug[SkynIL(' .. MlulinXSN(c) .. ')]('   end    function SkynXtable(c)   return 'table[SkynIL(\n' .. MlulinXSN(c) .. ')]('   end
function SkynXio(c)   return 'io[SkynIL(' .. MlulinXSN(c) .. ')]('   end    function SkynProMx(c)   return 'SkynSN(' .. SkynEnc6(c) .. ')'   end
function SNBINARY(c)   return "SkynBinary("..XxXSN(c)..")"   end
SNVERSION9BETA = SNVERSION9BETA  :gsub('%".-(.-)%"', SkynProMx)  :gsub("%'.-(.-)%'", SNBINARY)  :gsub('\'(.-)\'', SNBINARY)  :gsub('%[%[.-(.-)%]%]', SkynProMx)  :gsub('%"%\\"(.-)%\\"%"', SkynProMx)  :gsub("%'%\\'(.-)%\\'%'", SkynProMx)  :gsub("gg%.(alert)%(", BuxSn)  :gsub("gg%.(clearResults)%(", SNNewBinary)  :gsub("gg%.(setRanges)%(", BuxSn)  :gsub("gg%.(searchNumber)%(", SN_G1)  :gsub("gg%.(editAll)%(", SN_G2)  :gsub("gg%.(refineNumber)%(", SN_G3)  :gsub("gg%.(getResults)%(", SN_G4)  :gsub("gg%.(toast)%(", SN_G5)  :gsub("gg%.(sleep)%(", SN_G6)  :gsub("gg%.(%a+)%(", SN_G1)  :gsub("gg%.(getRangesList)%(", BuxSn)  :gsub("os%.(%a+)%(", SkynXos)  :gsub("string%.(%a+)%(", SkynXstring)  :gsub("math%.(%a+)%(", SkynXmath)  :gsub("debug%.(%a+)%(", SkynXdebug)  :gsub("table%.(%a+)%(", SkynXtable)  :gsub("io%.(%a+)%(", SkynXio)  :gsub("gg%.(%a+)%(", BuxSn)  :gsub("gg%.getResultsCount", "getResultsCount")  :gsub("getResultsCount", SN_G6)  :gsub('%[==%[(.-)%]==%]', SNBINARY)  :gsub('%[%[(.-)%]%]', SkynProMx)  :gsub("[[(.-)]]", SkynProMx)
SNVERSION9BETA = SNVERSION9BETA:gsub('"(.-)"', function(c)  c = load('return "'..c..'"')()  X = SkynEnc6(c)  return "SkynSN("..X..")"  end)  SNVERSION9BETA = SNVERSION9BETA:gsub("'(.-)'", function(c)  c = load("return '"..c.."'")()  X = SkynEnc6(c)  return 'SkynSN('..X..')'  end)  SNVERSION9BETA = SNVERSION9BETA:gsub("%[%[(.-)]]", function(c)  c = load("return [["..c.."]]")()  X = SkynEnc4(c)  return "SkynNM("..X..")"  end)  SNVERSION9BETA = SNVERSION9BETA:gsub("[=[(.-)]=]", function(c)  c = load('return "'..c..'"')()  X = enc(c)  return "SkynEnc("..X..")"  end)
for sn, skyn in pairs(gg) do   mlulinX = "gg." .. sn   if SNVERSION9BETA:match(mlulinX) then repeat  SNVERSION9BETA = SNVERSION9BETA:gsub(mlulinX, function()   XxX = SkynEnc3(sn)   return "_ENV['gg'][SkynTP("..XxX..")]" end)  until SNVERSION9BETA:match(mlulinX) == nil end end    for sn, skyn in pairs(io) do   mlulinX = "io." .. sn   if SNVERSION9BETA:match(mlulinX) then repeat  SNVERSION9BETA = SNVERSION9BETA:gsub(mlulinX, function()   XxX = SkynEnc3(sn)   return "_ENV['io'][SkynTP("..XxX..")]" end)  until SNVERSION9BETA:match(mlulinX) == nil end end    for sn, skyn in pairs(os) do   mlulinX = "os." .. sn   if SNVERSION9BETA:match(mlulinX) then repeat  SNVERSION9BETA = SNVERSION9BETA:gsub(mlulinX, function()   XxX = SkynEnc6(sn)   return "_ENV['os'][SkynSN("..XxX..")]" end)  until SNVERSION9BETA:match(mlulinX) == nil end end
for sn, skyn in pairs(string) do   mlulinX = "string." .. sn   if SNVERSION9BETA:match(mlulinX) then repeat  SNVERSION9BETA = SNVERSION9BETA:gsub(mlulinX, function()   XxX = SkynEnc6(sn)   return "_ENV['string'][SkynSN("..XxX..")]" end)  until SNVERSION9BETA:match(mlulinX) == nil end end    for sn, skyn in pairs(math) do   mlulinX = "math." .. sn   if SNVERSION9BETA:match(mlulinX) then repeat  SNVERSION9BETA = SNVERSION9BETA:gsub(mlulinX, function()   XxX = SkynEnc1(sn)   return "_ENV['math'][SkynKO("..XxX..")]" end)  until SNVERSION9BETA:match(mlulinX) == nil end end
SkynV = {"print%(", "load%(", "loadfile%("}  for i = 1, #SkynV do  SNVERSION9BETA = SNVERSION9BETA:gsub(SkynV[i], function(c)  c = c:gsub("%(", "")  SkyX = XxXSN(c)  return "_ENV[SkynBinary("..SkyX..")]("  end)  end
SNVERSION9BETA=learnfrombasic..SNVERSION9BETA
XsnX5 = {0x6c,0x6f,0x63,0x61,0x6c,0x20,0x68,0x6f,0x6f,0x6b,0x46,0x75,0x6e,0x63,0x74,0x69,0x6f,0x6e,0x20,0x3d,0x20,0x7b,0x7d,0x0a,0x66,0x6f,0x72,0x20,0x6b,0x2c,0x76,0x20,0x69,0x6e,0x20,0x70,0x61,0x69,0x72,0x73,0x28,0x5f,0x47,0x29,0x20,0x64,0x6f,0x0a,0x69,0x66,0x20,0x74,0x79,0x70,0x65,0x28,0x76,0x29,0x20,0x3d,0x3d,0x20,0x22,0x74,0x61,0x62,0x6c,0x65,0x22,0x20,0x74,0x68,0x65,0x6e,0x0a,0x66,0x6f,0x72,0x20,0x6b,0x6b,0x2c,0x76,0x76,0x20,0x69,0x6e,0x20,0x70,0x61,0x69,0x72,0x73,0x28,0x76,0x29,0x20,0x64,0x6f,0x0a,0x69,0x66,0x20,0x74,0x79,0x70,0x65,0x28,0x76,0x76,0x29,0x20,0x3d,0x3d,0x20,0x22,0x66,0x75,0x6e,0x63,0x74,0x69,0x6f,0x6e,0x22,0x20,0x61,0x6e,0x64,0x20,0x64,0x65,0x62,0x75,0x67,0x2e,0x67,0x65,0x74,0x69,0x6e,0x66,0x6f,0x28,0x76,0x76,0x29,0x2e,0x73,0x6f,0x75,0x72,0x63,0x65,0x20,0x7e,0x3d,0x20,0x22,0x3d,0x5b,0x4a,0x61,0x76,0x61,0x5d,0x22,0x20,0x20,0x20,0x74,0x68,0x65,0x6e,0x0a,0x74,0x61,0x62,0x6c,0x65,0x2e,0x69,0x6e,0x73,0x65,0x72,0x74,0x28,0x68,0x6f,0x6f,0x6b,0x46,0x75,0x6e,0x63,0x74,0x69,0x6f,0x6e,0x2c,0x6b,0x2e,0x2e,0x22,0x2e,0x22,0x2e,0x2e,0x6b,0x6b,0x29,0x0a,0x65,0x6e,0x64,0x0a,0x65,0x6e,0x64,0x0a,0x65,0x6e,0x64,0x0a,0x65,0x6e,0x64,0x0a,0x69,0x66,0x20,0x23,0x68,0x6f,0x6f,0x6b,0x46,0x75,0x6e,0x63,0x74,0x69,0x6f,0x6e,0x20,0x3e,0x20,0x30,0x20,0x74,0x68,0x65,0x6e,0x0a,0x77,0x68,0x69,0x6c,0x65,0x28,0x74,0x72,0x75,0x65,0x29,0x20,0x64,0x6f,0x0a,0x67,0x67,0x2e,0x61,0x6c,0x65,0x72,0x74,0x28,0x22,0xe2,0x97,0x88,0xf0,0x9d,0x97,0xa6,0xf0,0x9d,0x97,0xb0,0xf0,0x9d,0x97,0xbf,0xf0,0x9d,0x97,0xb6,0xf0,0x9d,0x97,0xbd,0xf0,0x9d,0x98,0x81,0x20,0xf0,0x9d,0x97,0xa3,0xf0,0x9d,0x97,0xbf,0xf0,0x9d,0x97,0xbc,0xf0,0x9d,0x98,0x81,0xf0,0x9d,0x97,0xb2,0xf0,0x9d,0x97,0xb0,0xf0,0x9d,0x98,0x81,0xf0,0x9d,0x97,0xbc,0xf0,0x9d,0x97,0xbf,0x20,0xf0,0x9d,0x97,0x95,0xf0,0x9d,0x98,0x86,0x20,0xf0,0x9d,0x97,0xa6,0xf0,0x9d,0x97,0xa1,0xe2,0x97,0x88,0x22,0x29,0x0a,0x6f,0x73,0x2e,0x65,0x78,0x69,0x74,0x28,0x29,0x0a,0x65,0x6e,0x64,0x0a,0x65,0x6e,0x64}
SNVERSION9BETA = SNVERSION9BETA:gsub("RXN", sn.char(XsnX5))
io.output(sn.out,"w")
io.write([[
;for i = 1, 0 do;OxSkyn = "DxSkyn";end;for i = 1, 0 do;if(nil)then;end;end
;if(nil)then;(function() end)()end;
local X = "\n\n\t\t\t[ '𝗘𝗻𝗰𝗿𝘆𝗽𝘁𝗲𝗱 𝗯𝘆 𝗦𝗡 𝗩-9 𝗯𝗲𝘁𝗮' ]\n\t\t\t\t ['• https://t.me/mlulinX •']\n\n"
local justSN = (function()
local SN = {}
]]..whsy:rep(6)..[[
SN = function()

while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while (nil)do;
local Sn={sn,sN.sN,fsN.sNSn.Sn,sN.sN,sN.sNsn,sN.sN,sN.sNSn.Sn,sN.sN,sN.sN} 
local sN={Sn.Sn,sN.sN,sN.sNSnysn,sN.sN,sN.sNSn.Sn,sN.sN,sN.sN.Sn,sN.ssN,sN.sN} 
local sN={Sn.Sn,sN.sN,sN.sNsn,sN.sN,sN.sNSn.Sn,sN.sN,sN.sNSn.Sn,sN.sN,sN.sNi}
local Sn={sn,sN.sN,sN.sNSn.Sn,sN.sNSnSn,sN.sNsn,sN.sN,sN.sNSn.Sn,sN.sN,sN.sN} 
local sN={Sn.Sn,sN.sN,sNw.sNSnsn,sN.sN,sN.sNSn.Sn,sN.sN,sN.sN.Sn,sN.ssN,sN.sN} 
local sN={Sn.Sn,sN.sN,sN.sNsn,sN.sN,sN.sNbSn.Sn,sN.sN,sN.sNSn.Sn,sN.sN,sN.sNi}
if (Sn.Sn)then if (Sn.Sn.Sn)then if (Sn.Sn.Sn.Sn) then if (Sn.Sn.Sn.Sn.Sn) then if (sN.sN) then if (sN.sN.sN) then if (sN.sN.sN.sN) then if (sN.sN) then if (sN.sN.sN) then if (sN.sN.sN.sN) then;Sn.Sn=(Sn.Sn(Sn)) Sn.Sn=(Sn.Sn(Sn.Sn.Sn(Sn.Sn(Sn)))) sN.sN=(sN.sN(sN)) sN.sN=(sN.sN(sN.sN.sN(sN.sN.sN.sN(sN.sN.sN(sN.sN(sN.sN)))))) sN.sN = (sN.sN(sN.sN.sN(sN.sN.sN.sN(sN.sN.sN(sN.sN(sN.sN))))))Sn.Sn=(Sn.Sn(Sn)) Sn.Sn=(Sn.Sn(Sn.Sn.Sn(Sn.Sn(Sn)))) sN.sN=(sN.sN(sN)) sN.sN=(sN.sN(sN.sN.sN(sN.sN.sN.sN(sN.sN.sN(sN.sN(sN.sN)))))) sN.sN = (sN.sN(sN.sN.sN(sN.sN.sN.sN(sN.sN.sN(sN.sN(sN.sN)))))) 
local sNSnSn={Sn.Sn,sN.sN,sN.sNSn.Sn,sN.sN,sN.sN} sNSnSn.sNSnSn=sNSnSn[1]..sNSnSn[2]..sNSnSn[3] sNSnSn.i= sNSnSn.sNSnSn(sNSnSn.sNSnSn(sNSnSn.sNSnSn(sNSnSn.sNSnSn(sNSnSn.sNSnSn(sNSnSn.sNSnSn(sNSnSn.sNSnSn)))))) end;end;end;end;end;end;end;end;end;end;end
while(nil)do;i = {nil % nil};for i in ipairs(i) do i = {{nil % nil}, {nil % nil}} i.i = _ENV[{(nil % nil)}] end;end
while (nil) do;local ______sn______={}if (______sn______.______sn______)then if (______sn______.______sn______.______sn______)then;______sn______.______sn______=(______sn______.______sn______(______sn______)) ______sn______.______sn______=(______sn______.______sn______(______sn______.______sn______.______sn______(______sn______.______sn______(______sn______))))end;end;end
if nil ~= nil then
_______ = (-nil)((-nil)[nil] | nil | nil)
________ = _______
________ = ________()
while (nil) do ________() end if ________ ~= nil then do
for ___ = 0,1,0 do _________ = _________() _________ = _________nil _________= _________():_________(_________nil)(_________nil*-1).._________nil _________ = _________(_________nil)(_________) end 

for ____ = 0,1,0 do if nil ~= nil then (-nil)((-nil)[nil] | nil | nil)(-nil)((-nil)[nil] | nil | nil) local ______ = {(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)} ______ = ______() ______ = ______nil ______= ______():______(______nil)(______nil*-1)..______nil ______ = ______(______nil)(______) if ______  ~= nil then ______ = _ (______nil*nil) ______ = nil end if ______ == nil then   ______ = {______(______*nil)(______*nil)(nil * 1, 1  << nil), ______*nil} end end local _______ = {} x[""] = T local K = (x)(x, x) K[1] = 1 end
local x = {} x[''] = x local t = (x)(x, x) t[1] = 1
end
_ = {_, _(-nil)(-nil)(nil * 1, 1  << nil), -nil}
_ = _ (nil)
_ = -nil
_ = _ (-nil * nil)()
_________ = _________ ( _)
_________ = {(-nil)((-nil)[nil] | nil | nil),(nil*(-nil)),(-nil)((-nil)[nil] | nil | nil)*(-nil)((-nil)[nil] | nil | nil)/(-nil)((-nil)[nil] | nil | nil)%(-nil)((-nil)[nil] | nil | nil)}
_________ = _________()
if _________ == nil then 
_________ = {_________(_________*nil)(_________*nil)(nil * 1, 1  << nil), _________*nil}
end
while ________ ~= _________ do if _______ ~= _________ then do
_________() _________() _________() _________()_________() _________() _________() _________()_________() _________() _________() _________()
_________() _________() _________() _________()_________() _________() _________() _________()_________() _________() _________() _________()
_________() _________() _________() _________()_________() _________() _________() _________()_________() _________() _________() _________()
_________() _________() _________() _________()_________() _________() _________() _________()_________() _________() _________() _________()
_________() _________() _________() _________()_________() _________() _________() _________()_________() _________() _________() _________()
_________() _________() _________() _________()_________() _________() _________() _________()_________() _________() _________() _________()
end end end
end end
while ________ ~= nil do 
_________ = nil,nil,nil,nil
end

]]..SNVERSION9BETA..[[
 end 
SN()
end)()
]])

gg.toast("Please Wait  ⏳")
if not load(SNVERSION9BETA) then
gg.alert("Script Can't be encrypt ❌\nplease try again\nor this mean your script have code can't be encrypt 💗")
os.exit()
end
io.input(sn.out, "r")
local SNVERSION9BETA = io.read("*a")

Replacement = {
"OP[88] 0x94A4E0",
"OP[66] 0xACBDE0",
"OP[137] 0x9DA4E0",
"OP[103] 0xA8B1E1",
"OP[82] 0xA080E3",
"OP[154] 0xB0A6EA",
"OP[166] 0xA7DF",
"OP[174] 0xA0A0E1",
"OP[189] 0xAD8DE2",
"OP[174] 0x90ACE0",
"OP[71] 0xB685E3",
"OP[196] 0xAAB8E0",
"OP[153] 0xBCB7EF",
"OP[78] 0x9E83E3",
"OP[176] 0xA2BDE0",
"OP[170] 0xA48AE3",
"OP[73] 0x9884E2",
"OP[186] 0x8A98E2",
"OP[132] 0x94BCE1",
"OP[92] 0xB5A8EA9CA8EA",
"OP[102] 0xA09CEC",
"OP[132] 0xA38AE3",
"OP[53] 0xA1CF",
"OP[58] 0xAC85E3",
"OP[94] 0xA3A4E0",
"OP[81] 0xA585E3",
"OP[93] 0x998AE3",
"OP[118] 0xA685E3",
"OP[107] 0x9C8AE3",
"OP[168] 0xA785E3",
"OP[183] 0x9D8AE3",
"OP[153] 0x8786E3",
"OP[136] 0xB682E3",
"OP[190] 0x8D83E3",
"OP[104] 0x94A4E0",
"OP[194] 0xA6A4E08",
"OP[194] 0xDA5E0A8A4E0",
"OP[105] 0x9883E3",
"OP[189] 0xA4A4E0",
"OP[62] 0x8283E3",
"OP[126] 0x8281E3",
"OP[197] 0x9084E2",
"OP[137] 0x908DE3",
"OP[94] 0x8385E5",
"OP[134] 0x9182E3",
"OP[181] 0xAFD1",
"OP[123] 0xBF8DE3",
"OP[80] 0x8EB8EF8A8290F0",
"OP[144] 0xA880E3",
"OP[60] 0x91B7E8",
"OP[187] 0xA380E3",
"OP[130] 0x869DE1",
"OP[125] 0x8385E5",
"OP[50] 0xA3BDE1",
"OP[99] 0x988AE3",
"OP[185] 0xAC99E2",
"OP[137] 0xA38AE3",
"OP[192] 0xBCB7EF",
"OP[194] 0xA2849DF0",
"OP[182] 0xB680E3",
"OP[71] 0x9E849DF0",
"OP[159] 0x858CE1",
"OP[96] 0xB3A4E0",
"OP[76] 0xA4BCE1",
"OP[105] 0x8FA4E0",
"OP[123] 0x86849DF0",
"OP[136] 0xAD8AE3",
"OP[200] 0xAA99E2",
		}
		cvxm = {
				"BXOR vRN1 RN2 vRN3",
				"TEST vRN1 RN2",
				"LOADK vRN1 RN2",
				"SHL vRN1 CONST[RN2] vRN3",
				"BNOT vRN1 vRN3",
				"VARARG vRN1..vRN3",
		}
SNVERSION9BETA = string.dump(load(SNVERSION9BETA), true, true)
SNVERSION9BETA = gg.internal2(load(SNVERSION9BETA), sn.out)
io.input(sn.out, "r")
SNVERSION9BETA = io.read("*a")
SNVERSION9BETA = SNVERSION9BETA:gsub('SETTABUP u%d "iixii" "chunk"',
		function()
				ress =""
				for i = 1,50 do
						s = math.random(1,#Replacement)
						res = Replacement[s]
						ndp = math.random(1,#cvxm)
						zxzx = cvxm[ndp]
								:gsub("RN1",math.random(1,98))
								:gsub("RN2",math.random(1,98))
								:gsub("RN3",math.random(1,98))
						res = zxzx.."\n\n"..res.."\n\n"
						ress = res.."\n"..ress
				end
				ress = ress.."\n\n".."ADD v0 v0 v0"
				return ress
		end)
PSN1 = math.random(45,63)PSN2 = math.random(PSN1,71)PSN3 = math.random(PSN2,73)PSN4 = math.random(PSN3,75)PSN5 = math.random(PSN4,77) PSN6 = math.random(PSN5,79)
AA = math.random(100,255)BB = math.random(AA,300)
II = 0
SNVERSION9BETA = SNVERSION9BETA:gsub("%.func",".mlulinX",1)
SNVERSION9BETA = SNVERSION9BETA:gsub("%.func",function()
II = II + 1
Sn=[[.func sn]]..II..[[ ; 3 upvalues, 19 locals, 12 constants, 5 funcs
.source "⟆ɴ"
.linedefined 88
.lastlinedefined 99
.numparams 0
.is_vararg 1
.maxstacksize 12

SHL PSN5 CONST[AA] PSN6

BNOT PSN5 v481

BXOR PSN5 CONST[AA] PSN6

BAND PSN5 CONST[AA] PSN6

BXOR PSN5 CONST[AA] PSN6

BAND PSN5 CONST[AA] PSN6

BAND PSN4 PSN2 PSN1

BAND PSN4 BB PSN1

SHL PSN5 CONST[AA] PSN6

RETURN
.end ; sn]]..II..[[

.func]]
return Sn
end)
SNVERSION9BETA = SNVERSION9BETA:gsub("PSN1", "v"..PSN1):gsub("PSN2", "v"..PSN2):gsub("PSN3", "v"..PSN3):gsub("PSN4", "v"..PSN4):gsub("PSN5", "v"..PSN5):gsub("PSN6", "v"..PSN6)
SNVERSION9BETA = SNVERSION9BETA:gsub("AA", AA):gsub("BB", BB)
SNVERSION9BETA = SNVERSION9BETA.."\n"
SNVERSION9BETA = SNVERSION9BETA:gsub("%.mlulinX",".func",1)
SNVERSION9BETA = SNVERSION9BETA
:gsub("numparams [^\n]*","numparams 2")
:gsub("is_vararg [^\n]*","is_vararg 8")
:gsub("maxstacksize [^\n]*","maxstacksize 99")
:gsub("linedefined [^\n]*","linedefined 0")
:gsub("lastlinedefined [^\n]*","lastlinedefined 0")

lout = {
"OP[115] 0xA09CEC",

"OP[46] 0x839BEC",

"OP[137] 0x8583E3",

"OP[177] 0xA88DE2",

"OP[199] 0xB6D1",

"OP[189] 0xA3BDE1",

"OP[47] 0xA18BE3",

"OP[75] 0xA2ADEF",

"OP[191] 0xBF98E2",
		}
		cvxm = {
	'NEWTABLE vVV1 0 0',

	'GETTABLE vVV2 vVV1 "sn"',

	'EQ VV1 vVV2 nil',

	'GETTABLE vVV2 vVV1 "sn"',

	'CALL vVV2..vVV2 vVV2..vVV2',

	'SETTABLE vVV1 "sn" vVV2',
		}
		
SNVERSION9BETA = SNVERSION9BETA:gsub('SETTABUP u%d "OxSkyn" "DxSkyn"',
		function()
				kmd =""
				for i = 1,3 do
						s = math.random(1,#lout)
						wod = lout[s]
						ndp = math.random(1,#cvxm)
						aiso = cvxm[ndp]
								:gsub("VV1",math.random(1,98))
								:gsub("VV2",math.random(1,98))
						wod = aiso.."\n\n"..wod.."\n\n"
						kmd = wod.."\n"..kmd
				end
				kmd = kmd.."\n\n".."ADD v0 v0 v0"
				return kmd
		end)
cc = ([[
OP[83] 0x0a

OP[130] 0x5B

OP[71] 0x27

OP[140] 0xB2969DF0

OP[81] 0x84979DF0

OP[79] 0x92979DF0

OP[99] 0x87979DF0

OP[90] 0xA5969DF0

OP[179] 0x82979DF0

OP[171] 0x87979DF0

OP[183] 0xBA969DF0

OP[51] 0x85979DF0

OP[63] 0xB5969DF0

OP[198] 0xBE969DF0

OP[81] 0x8B979DF0

OP[112] 0x8C979DF0

OP[86] 0x82979DF0

OP[112] 0x88979DF0

OP[137] 0x87979DF0

OP[73] 0x38

OP[99] 0x27

OP[72] 0x5D

MOVE v0 v0
]])
cc = cc .. "\n"
SNVERSION9BETA = SNVERSION9BETA:gsub('SETTABUP u%d "MxSkyn" "WxSkyn"', cc)
if not load(SNVERSION9BETA) then
gg.alert("sᴄʀɪᴘᴛ ᴄᴀɴɴᴏᴛ ʙᴇ ᴇɴᴄʀʏᴘᴛᴇᴅ ❌\n ᴘʟᴇᴀsᴇ ᴛʀʏ ᴀɢᴀɪɴ ʟᴀᴛᴇʀ\n ғɪx ʏᴏᴜʀ sᴄʀɪᴘᴛ ᴇʀʀᴏʀ ‼️")
os.exit()
end 

gg.toast("Final Dumping ☑️")
SNVERSION9BETA = string.dump(load(SNVERSION9BETA), true)
Xnv = "XXxxXX"
SxC = string.char(math.random(17,32))
SxC = SxC:rep(10000)
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(4,7,0,0,0)..Xnv,string.char(4,17,39,0,0)..SxC)
XxZ = "IVxxVI"
wSNx = string.char(0x00,0x41,0x39,0x63,0x49,0x62,0x58,0x73,0x4c,0x35)
wSNx = wSNx:rep(1000)
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(4,7,0,0,0)..XxZ,string.char(4,17,39,0,0)..wSNx) 
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(table.unpack({0, 0, 0, 0, 0, 2, 8, 99})), 
string.char(table.unpack({219, 0, 0, 0, 237, 250, 1, 250})))
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(0x01,0x00,0x00,0x00,0x1f,0x00,0x80,0x00), string.char(0x00,0x00,0x00,0x00))
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(2,0,0,0,1,0,0,0,31,0,128,0),string.char(1,0,0,0,1,0,0,0))
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(20,0,0,0,25,0,0,0),string.char(255,255,255,255,254,255,255,255))
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(255,255,255,255,254,255,255,255,0,0,2,1,0,0,0,31,0,128,0),string.char(255,255,255,255,254,255,255,255,0,0,2,0,0,0,0))
S, N =  AMPL(string.char(10,91,39,69,110,205,160,240,157,150,188,240,157,151,136,240,157,150,189,240,157,150,190,240,157,150,189,32,240,157,150,187,240,157,151,146,32,240,157,150,178,240,157,150,173,32,240,157,150,181,45,57,32,240,157,150,161,240,157,150,190,240,157,151,141,240,157,150,186,39,93,9,9));
SNVERSION9BETA = SNVERSION9BETA:gsub(string.char(table.unpack(N)), S)
gg.toast("\nSuccessfully Encrypted ✓\n"..sn.out)
gg.sleep(1000)
gg.alert([[
━─━────༺༻────━─━
   sᴜᴄᴄᴇssғᴜʟ ᴇɴᴄʀʏᴘᴛᴇᴅ ]]..#lines..[[ ʟɪɴᴇs
━─━────༺༻────━─━]])	
io.open(sn.out,"w"):write(SNVERSION9BETA):close()
gg.sleep(400)
gg.setVisible(true)
print("\n═════════ •『 ⚕️ 』• ═════════\n\t\t\t\t  	 ⚕️   sɴ ᴠᴇʀsɪᴏɴ-9 ᴇɴᴄʀʏᴘᴛɪᴏɴ   ⚕️\n═════════ •『 ⚕️ 』• ═════════\n\n\t          		  𝗖𝗿𝗲𝗮𝘁𝗼𝗿 𝗯𝘆 : @𝗺𝗹𝘂𝗹𝗶𝗻𝗫\n          		       All Rights Reserved\n────────────────────────")
return
end 
end

