-- Bazuka as Were


repeat
    task.wait()
until game:IsLoaded()
local vu1 = "https://raw.githubusercontent.com/venoxcc/universalscripts/refs/heads/main/rivals/misc/test_lib/lib"
game:GetService("Players")
local v2 = game:GetService("RunService")
local vu3 = game:GetService("Lighting")
local vu4 = "g"
local vu5 = "f"
local vu9 = (function()
    local v6 = {}
    for v7 = 768, 879 do
        table.insert(v6, utf8.char(v7))
    end
    for v8 = 8192, 8207 do
        table.insert(v6, utf8.char(v8))
    end
    return v6
end)()
local function vu13(p10)
    local v11 = ""
    for v12 = 1, # p10 do
        v11 = v11 .. p10:sub(v12, v12)
        if math.random() > 0.6 then
            v11 = v11 .. vu9[math.random(1, # vu9)]
        end
    end
    return v11
end
local function vu16(p14)
    if type(p14) ~= "string" then
        p14 = tostring(p14)
    end
    local v15 = vu13(p14):gsub("a", "\208\176"):gsub("e", "\208\181"):gsub("o", "\208\190")
    return vu9[math.random(1, # vu9)] .. v15 .. vu9[math.random(1, # vu9)]
end
function venoxPrint(_)
end
function venoxWarn(_)
end
function venoxError(p17)
    error(vu16(p17))
end
local _ = {
    print = venoxPrint,
    warn = venoxWarn,
    error = venoxError,
    getKey = function()
        return sessionKey
    end
}
local v18 = false
local vu19 = table.unpack or unpack
local vu20 = table.concat
local vu21 = string.byte
local vu22 = string.char
local vu23 = string.rep
local vu24 = string.sub
local vu25 = string.gsub
local vu26 = string.gmatch
local vu27 = string.format
local vu28 = math.floor
local vu29 = math.ceil
local vu30 = math.min
local vu31 = math.max
local vu32 = tonumber
local vu33 = type
local vu34 = math.huge
local function v40(p35)
    local v36 = p35
    local v37 = 0
    while true do
        local v38 = v37 + 1
        local v39 = p35 + p35 + 1
        v36 = v36 + v36 + v37 % 2
        if v38 > 256 or (v39 - (v39 - 1) ~= 1 or (v36 - (v36 - 1) ~= 1 or v39 == v36)) then
            break
        end
        if v39 == p35 then
            return v38, true
        end
        p35 = v39
        v37 = v38
    end
    return v38, false
end
local v41 = 0.6666666666666666
local v42 = v41 * 5 > 3 and (v41 * 4 < 3 and v40(1) >= 53)
assert(v42, "at least 53-bit floating point numbers are required")
local v43, v44 = v40(1)
local v45
if v44 then
    v45 = v43 == 64
else
    v45 = v44
end
local v46
if v44 then
    v46 = v43 == 32
else
    v46 = v44
end
assert(v45 or (v46 or not v44), "Lua integers must be either 32-bit or 64-bit")
local v47 = ({
    true,
    false
})[1]
if v47 then
    v47 = _VERSION ~= "Luau" and (vu33(jit) ~= "table" or jit.version_num >= 20000)
end
local v48 = nil
local v49 = nil
local v50 = nil
local v51 = nil
local v52 = nil
local v53, v54
if v47 then
    v51 = require("bit")
    v53 = "bit"
    local v55
    v55, v54 = pcall(require, "ffi")
    if not v55 then
        v54 = v50
    end
    v48 = loadstring("b=0b0") and true or false
    v49 = vu33(jit) == "table" and jit.arch
    if not v49 then
        if v54 then
            v49 = v54.arch or nil
        else
            v49 = nil
        end
    end
else
    local v56, v57, v58 = ipairs(_VERSION == "Lua 5.2" and {
        "bit32",
        "bit"
    } or {
        "bit",
        "bit32"
    })
    while true do
        v58, v53 = v56(v57, v58)
        if v58 == nil then
            v53 = v52
            v54 = v50
            break
        end
        if vu33(_G[v53]) == "table" and _G[v53].bxor then
            v51 = _G[v53]
            v54 = v50
            break
        end
    end
end
if v18 then
    print("Abilities:")
    print("   Lua version:               " .. (v47 and "LuaJIT " .. (v48 and "2.1 " or "2.0 ") .. (v49 or "") .. (v54 and " with FFI" or " without FFI") or _VERSION))
    print("   Integer bitwise operators: " .. (v45 and "int64" or (v46 and "int32" or "no")))
    print("   32-bit bitwise library:    " .. (v53 or "not found"))
end
local v59, v60
if v47 and v54 then
    v59 = "FFI"
    v60 = "Using \'ffi\' library of LuaJIT"
elseif v47 then
    v59 = "LJ"
    v60 = "Using special code for sandboxed LuaJIT (no FFI)"
elseif v45 then
    v59 = "INT64"
    v60 = "Using native int64 bitwise operators"
elseif v46 then
    v59 = "INT32"
    v60 = "Using native int32 bitwise operators"
elseif v53 then
    v60 = "Using \'" .. v53 .. "\' library"
    v59 = "LIB32"
else
    v59 = "EMUL"
    v60 = "Emulating bitwise operators using look-up table"
end
if v18 then
    print("Implementation selected:")
    print("   " .. v60)
end
local vu61 = nil
local vu62 = nil
local vu63 = nil
local vu64 = nil
local vu65 = nil
local vu66 = nil
local vu67 = nil
local vu68 = nil
local vu69 = nil
local v70 = nil
local vu71 = nil
if v59 == "FFI" or (v59 == "LJ" or v59 == "LIB32") then
    vu61 = v51.band
    vu62 = v51.bor
    vu71 = v51.bxor
    vu64 = v51.lshift
    vu65 = v51.rshift
    vu66 = v51.rol or v51.lrotate
    vu67 = v51.ror or v51.rrotate
    vu68 = v51.bnot
    vu69 = v51.tobit
    v70 = v51.tohex
    local v72 = assert
    local v73
    if vu61 then
        if vu62 then
            if vu71 then
                if vu64 then
                    if vu65 then
                        if vu66 then
                            if vu67 then
                                v73 = vu68
                            else
                                v73 = vu67
                            end
                        else
                            v73 = vu66
                        end
                    else
                        v73 = vu65
                    end
                else
                    v73 = vu64
                end
            else
                v73 = vu71
            end
        else
            v73 = vu62
        end
    else
        v73 = vu61
    end
    v72(v73, "Library \'" .. v53 .. "\' is incomplete")
    vu63 = vu71
elseif v59 == "EMUL" then
    local vu74 = {
        0
    }
    local v75 = 0
    vu67 = function(p76, p77)
        local v78 = p76 % 4294967296 / 2 ^ p77
        local v79 = v78 % 1
        return v79 * 4294967296 + (v78 - v79)
    end
    vu65 = function(p80, p81)
        local v82 = p80 % 4294967296 / 2 ^ p81
        return v82 - v82 % 1
    end
    vu64 = function(p83, p84)
        return p83 * 2 ^ p84 % 4294967296
    end
    vu66 = function(p85, p86)
        local v87 = p85 % 4294967296 * 2 ^ p86
        local v88 = v87 % 4294967296
        return v88 + (v87 - v88) / 4294967296
    end
    for v89 = 0, 32512, 256 do
        local v90 = v89
        for v91 = v90, v90 + 127 do
            local v92 = vu74[v91] * 2
            vu74[v75] = v92
            vu74[v75 + 1] = v92
            vu74[v75 + 256] = v92
            vu74[v75 + 257] = v92 + 1
            v75 = v75 + 2
        end
        v75 = v75 + 256
    end
    local function vu110(p93, p94, p95)
        local v96 = p93 % 4294967296
        local v97 = p94 % 4294967296
        local v98 = v96 % 256
        local v99 = v97 % 256
        local v100 = vu74[v98 + v99 * 256]
        local v101 = v96 - v98
        local v102 = (v97 - v99) / 256
        local v103 = v101 % 65536
        local v104 = v102 % 256
        local v105 = v100 + vu74[v103 + v104] * 256
        local v106 = (v101 - v103) / 256
        local v107 = (v102 - v104) / 256
        local v108 = v106 % 65536 + v107 % 256
        local v109 = v105 + vu74[v108] * 65536 + vu74[(v106 + v107 - v108) / 256] * 16777216
        if p95 then
            v109 = v96 + v97 - p95 * v109
        end
        return v109
    end
    vu61 = function(p111, p112)
        return vu110(p111, p112)
    end
    vu62 = function(p113, p114)
        return vu110(p113, p114, 1)
    end
    vu63 = function(p115, p116, p117, p118, p119)
        if p117 then
            if p118 then
                if p119 then
                    p118 = vu110(p118, p119, 2)
                end
                p117 = vu110(p117, p118, 2)
            end
            p116 = vu110(p116, p117, 2)
        end
        return vu110(p115, p116, 2)
    end
    vu71 = function(p120, p121)
        return p120 + p121 - 2 * vu74[p120 + p121 * 256]
    end
end
local vu124 = v70 or (pcall(vu27, "%x", 2147483648) and function(p122)
    return vu27("%08x", p122 % 4294967296)
end or function(p123)
    return vu27("%08x", (p123 + 2147483648) % 4294967296 - 2147483648)
end)
local function vu125()
    return {
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
    }
end
local vu126 = nil
local vu127 = nil
local vu128 = nil
local vu129 = {}
local vu130 = {}
local vu131 = {}
local vu132 = {}
local vu133 = {}
local vu134 = {}
local vu135 = {
    [224] = {},
    [256] = vu132
}
local vu136 = {
    [384] = {},
    [512] = vu131
}
local vu137 = {
    [384] = {},
    [512] = vu132
}
local vu138 = {}
local vu139 = {
    1732584193,
    4023233417,
    2562383102,
    271733878,
    3285377520
}
local vu140 = {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    28,
    25,
    26,
    27,
    0,
    0,
    10,
    9,
    11,
    12,
    0,
    15,
    16,
    17,
    18,
    0,
    20,
    22,
    23,
    21
}
local vu141 = nil
local vu142 = {}
local v143 = 4294967296
local vu144 = 0
local vu145 = {
    {
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16
    },
    {
        15,
        11,
        5,
        9,
        10,
        16,
        14,
        7,
        2,
        13,
        1,
        3,
        12,
        8,
        6,
        4
    },
    {
        12,
        9,
        13,
        1,
        6,
        3,
        16,
        14,
        11,
        15,
        4,
        7,
        8,
        2,
        10,
        5
    },
    {
        8,
        10,
        4,
        2,
        14,
        13,
        12,
        15,
        3,
        7,
        6,
        11,
        5,
        1,
        16,
        9
    },
    {
        10,
        1,
        6,
        8,
        3,
        5,
        11,
        16,
        15,
        2,
        12,
        13,
        7,
        9,
        4,
        14
    },
    {
        3,
        13,
        7,
        11,
        1,
        12,
        9,
        4,
        5,
        14,
        8,
        6,
        16,
        15,
        2,
        10
    },
    {
        13,
        6,
        2,
        16,
        15,
        14,
        5,
        11,
        1,
        8,
        7,
        4,
        10,
        3,
        9,
        12
    },
    {
        14,
        12,
        8,
        15,
        13,
        2,
        4,
        10,
        6,
        1,
        16,
        5,
        9,
        7,
        3,
        11
    },
    {
        7,
        16,
        15,
        10,
        12,
        4,
        1,
        9,
        13,
        3,
        14,
        8,
        2,
        5,
        11,
        6
    },
    {
        11,
        3,
        9,
        5,
        8,
        7,
        2,
        6,
        16,
        12,
        10,
        15,
        4,
        13,
        14,
        1
    }
}
local v146 = vu145[1]
vu145[12] = vu145[2]
vu145[11] = v146
local vu147 = {
    1,
    3,
    4,
    11,
    13,
    10,
    12,
    6,
    1,
    3,
    4,
    11,
    13,
    10,
    2,
    7,
    5,
    8,
    14,
    15,
    16,
    9,
    2,
    7,
    5,
    8,
    14,
    15
}
local function v154(p148)
    local v149, v150, v151 = ipairs({
        1,
        9,
        13,
        17,
        18,
        21
    })
    local v152 = {}
    while true do
        local v153
        v151, v153 = v149(v150, v151)
        if v151 == nil then
            break
        end
        v152[v153] = "<" .. vu23(p148, v153)
    end
    return v152
end
local v155, vu156, vu157, vu158, vu159, vu160, vu161, vu162, vu163, vu164, vu165
if v59 == "FFI" then
    local vu166 = v54.new("int32_t[?]", 80)
    v155 = v54.new("int32_t[?]", 16)
    vu147 = v54.new("uint8_t[?]", # vu147 + 1, 0, vu19(vu147))
    vu156 = vu166
    for v167 = 1, 10 do
        local v168 = v167
        vu145[v168] = v54.new("uint8_t[?]", # vu145[v168] + 1, 0, vu19(vu145[v168]))
    end
    local v169 = vu145[1]
    vu145[12] = vu145[2]
    vu145[11] = v169
    vu157 = function(p170, p171, p172, p173)
        local v174 = vu166
        local v175 = vu130
        for v178 = p172, p172 + p173 - 1, 64 do
            local _ = v178
            for v177 = 0, 15 do
                local v178 = v178 + 4
                local v179, v180, v181, v182 = vu21(p171, v178 - 3, v178)
                v174[v177] = vu62(vu64(v179, 24), vu64(v180, 16), vu64(v181, 8), v182)
            end
            for v183 = 16, 63 do
                local v184 = v174[v183 - 15]
                local v185 = v174[v183 - 2]
                v174[v183] = vu69(vu63(vu67(v184, 7), vu66(v184, 14), vu65(v184, 3)) + vu63(vu66(v185, 15), vu66(v185, 13), vu65(v185, 10)) + v174[v183 - 7] + v174[v183 - 16])
            end
            local v186 = p170[1]
            local v187 = p170[2]
            local v188 = p170[3]
            local v189 = p170[4]
            local v190 = p170[5]
            local v191 = p170[6]
            local v192 = p170[7]
            local v193 = p170[8]
            for v194 = 0, 63, 8 do
                local v195 = vu69(vu63(v192, vu61(v190, vu63(v191, v192))) + vu63(vu67(v190, 6), vu67(v190, 11), vu66(v190, 7)) + (v174[v194] + v175[v194 + 1] + v193))
                local v196 = vu69(v189 + v195)
                local v197 = vu69(vu63(vu61(v186, vu63(v187, v188)), vu61(v187, v188)) + vu63(vu67(v186, 2), vu67(v186, 13), vu66(v186, 10)) + v195)
                local v198 = vu69(vu63(v191, vu61(v196, vu63(v190, v191))) + vu63(vu67(v196, 6), vu67(v196, 11), vu66(v196, 7)) + (v174[v194 + 1] + v175[v194 + 2] + v192))
                local v199 = vu69(v188 + v198)
                local v200 = vu69(vu63(vu61(v197, vu63(v186, v187)), vu61(v186, v187)) + vu63(vu67(v197, 2), vu67(v197, 13), vu66(v197, 10)) + v198)
                local v201 = vu69(vu63(v190, vu61(v199, vu63(v196, v190))) + vu63(vu67(v199, 6), vu67(v199, 11), vu66(v199, 7)) + (v174[v194 + 2] + v175[v194 + 3] + v191))
                local v202 = vu69(v187 + v201)
                local v203 = vu69(vu63(vu61(v200, vu63(v197, v186)), vu61(v197, v186)) + vu63(vu67(v200, 2), vu67(v200, 13), vu66(v200, 10)) + v201)
                local v204 = vu69(vu63(v196, vu61(v202, vu63(v199, v196))) + vu63(vu67(v202, 6), vu67(v202, 11), vu66(v202, 7)) + (v174[v194 + 3] + v175[v194 + 4] + v190))
                local v205 = vu69(v186 + v204)
                local v206 = vu69(vu63(vu61(v203, vu63(v200, v197)), vu61(v200, v197)) + vu63(vu67(v203, 2), vu67(v203, 13), vu66(v203, 10)) + v204)
                local v207 = vu69(vu63(v199, vu61(v205, vu63(v202, v199))) + vu63(vu67(v205, 6), vu67(v205, 11), vu66(v205, 7)) + (v174[v194 + 4] + v175[v194 + 5] + v196))
                v193 = vu69(v197 + v207)
                v189 = vu69(vu63(vu61(v206, vu63(v203, v200)), vu61(v203, v200)) + vu63(vu67(v206, 2), vu67(v206, 13), vu66(v206, 10)) + v207)
                local v208 = vu69(vu63(v202, vu61(v193, vu63(v205, v202))) + vu63(vu67(v193, 6), vu67(v193, 11), vu66(v193, 7)) + (v174[v194 + 5] + v175[v194 + 6] + v199))
                v192 = vu69(v200 + v208)
                v188 = vu69(vu63(vu61(v189, vu63(v206, v203)), vu61(v206, v203)) + vu63(vu67(v189, 2), vu67(v189, 13), vu66(v189, 10)) + v208)
                local v209 = vu69(vu63(v205, vu61(v192, vu63(v193, v205))) + vu63(vu67(v192, 6), vu67(v192, 11), vu66(v192, 7)) + (v174[v194 + 6] + v175[v194 + 7] + v202))
                v191 = vu69(v203 + v209)
                v187 = vu69(vu63(vu61(v188, vu63(v189, v206)), vu61(v189, v206)) + vu63(vu67(v188, 2), vu67(v188, 13), vu66(v188, 10)) + v209)
                local v210 = vu69(vu63(v193, vu61(v191, vu63(v192, v193))) + vu63(vu67(v191, 6), vu67(v191, 11), vu66(v191, 7)) + (v174[v194 + 7] + v175[v194 + 8] + v205))
                v190 = vu69(v206 + v210)
                v186 = vu69(vu63(vu61(v187, vu63(v188, v189)), vu61(v188, v189)) + vu63(vu67(v187, 2), vu67(v187, 13), vu66(v187, 10)) + v210)
            end
            local v211 = vu69(v186 + p170[1])
            local v212 = vu69(v187 + p170[2])
            local v213 = vu69(v188 + p170[3])
            p170[4] = vu69(v189 + p170[4])
            p170[3] = v213
            p170[2] = v212
            p170[1] = v211
            local v214 = vu69(v190 + p170[5])
            local v215 = vu69(v191 + p170[6])
            local v216 = vu69(v192 + p170[7])
            p170[8] = vu69(v193 + p170[8])
            p170[7] = v216
            p170[6] = v215
            p170[5] = v214
        end
    end
    local vu217 = v54.new("int64_t[?]", 80)
    vu158 = vu217
    local vu218 = v54.typeof("int64_t")
    local vu219 = v54.typeof("int32_t")
    local vu220 = v54.typeof("uint32_t")
    vu159 = vu218(4294967296)
    if v48 then
        local vu221 = vu61
        local vu222 = vu62
        local vu223 = vu63
        local vu224 = vu68
        local vu225 = vu65
        local vu226 = vu66
        local vu227 = vu67
        local vu228 = v54.new("int64_t[?]", 16)
        local vu229 = vu158
        local function vu251(p230, p231, p232, p233, p234, p235)
            local v236 = vu228[p230]
            local v237 = vu228[p231]
            local v238 = vu228[p232]
            local v239 = vu228[p233]
            local v240 = vu229[p234] + (v236 + v237)
            local v241 = vu227(vu223(v239, v240), 32)
            local v242 = v238 + v241
            local v243 = vu227(vu223(v237, v242), 24)
            local v244 = vu229[p235] + (v240 + v243)
            local v245 = vu227(vu223(v241, v244), 16)
            local v246 = v242 + v245
            local v247 = vu226(vu223(v243, v246), 1)
            local v248 = vu228
            local v249 = vu228
            local v250 = vu228
            vu228[p233] = v245
            v250[p232] = v246
            v249[p231] = v247
            v248[p230] = v244
        end
        vu160 = function(p252, _, p253, p254, p255, p256, p257, p258)
            local v259 = p252[1]
            local v260 = p252[2]
            local v261 = p252[3]
            local v262 = p252[4]
            local v263 = p252[5]
            local v264 = p252[6]
            local v265 = p252[7]
            local v266 = p252[8]
            for v267 = p254, p254 + p255 - 1, 128 do
                if p253 then
                    local v268 = v267
                    for v269 = 1, 16 do
                        v268 = v268 + 8
                        local v270, v271, v272, v273, v274, v275, v276, v277 = vu21(p253, v268 - 7, v268)
                        vu229[v269] = vu223(vu62(vu64(v277, 24), vu64(v276, 16), vu64(v275, 8), v274) * vu218(4294967296), vu220(vu219(vu62(vu64(v273, 24), vu64(v272, 16), vu64(v271, 8), v270))))
                    end
                end
                local v278 = vu228
                local v279 = vu228
                local v280 = vu228
                local v281 = vu228
                local v282 = vu228
                local v283 = vu228
                local v284 = vu228
                vu228[7] = v266
                v284[6] = v265
                v283[5] = v264
                v282[4] = v263
                v281[3] = v262
                v280[2] = v261
                v279[1] = v260
                v278[0] = v259
                local v285 = vu228
                local v286 = vu228
                local v287 = vu228
                local v288 = vu228
                local v289 = vu228
                local v290 = vu228
                local v291 = vu228
                local v292 = vu131[1]
                local v293 = vu131[2]
                local v294 = vu131[3]
                local v295 = vu131[4]
                local v296 = vu131[6]
                local v297 = vu131[7]
                v291[15] = vu131[8]
                v290[14] = v297
                v289[13] = v296
                v288[11] = v295
                v287[10] = v294
                v286[9] = v293
                v285[8] = v292
                p256 = p256 + (p257 or 128)
                vu228[12] = vu223(vu131[5], p256)
                if p257 then
                    vu228[14] = vu224(vu228[14])
                end
                if p258 then
                    vu228[15] = vu224(vu228[15])
                end
                for v298 = 1, 12 do
                    local v299 = vu145[v298]
                    vu251(0, 4, 8, 12, v299[1], v299[2])
                    vu251(1, 5, 9, 13, v299[3], v299[4])
                    vu251(2, 6, 10, 14, v299[5], v299[6])
                    vu251(3, 7, 11, 15, v299[7], v299[8])
                    vu251(0, 5, 10, 15, v299[9], v299[10])
                    vu251(1, 6, 11, 12, v299[11], v299[12])
                    vu251(2, 7, 8, 13, v299[13], v299[14])
                    vu251(3, 4, 9, 14, v299[15], v299[16])
                end
                v259 = vu223(v259, vu228[0], vu228[8])
                v260 = vu223(v260, vu228[1], vu228[9])
                v261 = vu223(v261, vu228[2], vu228[10])
                v262 = vu223(v262, vu228[3], vu228[11])
                v263 = vu223(v263, vu228[4], vu228[12])
                v264 = vu223(v264, vu228[5], vu228[13])
                v265 = vu223(v265, vu228[6], vu228[14])
                v266 = vu223(v266, vu228[7], vu228[15])
            end
            p252[8] = v266
            p252[7] = v265
            p252[6] = v264
            p252[5] = v263
            p252[4] = v262
            p252[3] = v261
            p252[2] = v260
            p252[1] = v259
            return p256
        end
        local vu300 = v54.typeof("int64_t[?]")
        vu141 = 0
        vu144 = vu218(4294967296)
        vu125 = function()
            return vu300(30)
        end
        vu126 = function(p301, _, p302, p303, p304, p305)
            local v306 = vu133
            local v307 = vu65(p305, 3)
            for v310 = p303, p303 + p304 - 1, p305 do
                local _ = v310
                for v309 = 0, v307 - 1 do
                    local v310 = v310 + 8
                    local v311, v312, v313, v314, v315, v316, v317, v318 = vu21(p302, v310 - 7, v310)
                    p301[v309] = vu223(p301[v309], vu222(vu62(vu64(v318, 24), vu64(v317, 16), vu64(v316, 8), v315) * vu218(4294967296), vu220(vu219(vu62(vu64(v314, 24), vu64(v313, 16), vu64(v312, 8), v311)))))
                end
                for v319 = 1, 24 do
                    local _ = v319
                    for v320 = 0, 4 do
                        p301[25 + v320] = vu223(p301[v320], p301[v320 + 5], p301[v320 + 10], p301[v320 + 15], p301[v320 + 20])
                    end
                    local v321 = vu223(p301[25], vu226(p301[27], 1))
                    local v322 = vu226(vu223(v321, p301[6]), 44)
                    local v323 = vu226(vu223(v321, p301[16]), 45)
                    local v324 = vu226(vu223(v321, p301[1]), 1)
                    p301[16] = vu226(vu223(v321, p301[11]), 10)
                    p301[11] = v324
                    p301[6] = v323
                    p301[1] = v322
                    p301[21] = vu226(vu223(v321, p301[21]), 2)
                    local v325 = vu223(p301[26], vu226(p301[28], 1))
                    local v326 = vu226(vu223(v325, p301[12]), 43)
                    local v327 = vu226(vu223(v325, p301[22]), 61)
                    local v328 = vu226(vu223(v325, p301[7]), 6)
                    p301[22] = vu226(vu223(v325, p301[2]), 62)
                    p301[12] = v328
                    p301[7] = v327
                    p301[2] = v326
                    p301[17] = vu226(vu223(v325, p301[17]), 15)
                    local v329 = vu223(p301[27], vu226(p301[29], 1))
                    local v330 = vu226(vu223(v329, p301[18]), 21)
                    local v331 = vu226(vu223(v329, p301[3]), 28)
                    local v332 = vu226(vu223(v329, p301[23]), 56)
                    p301[23] = vu226(vu223(v329, p301[8]), 55)
                    p301[18] = v332
                    p301[8] = v331
                    p301[3] = v330
                    p301[13] = vu226(vu223(v329, p301[13]), 25)
                    local v333 = vu223(p301[28], vu226(p301[25], 1))
                    local v334 = vu226(vu223(v333, p301[24]), 14)
                    local v335 = vu226(vu223(v333, p301[19]), 8)
                    local v336 = vu226(vu223(v333, p301[4]), 27)
                    p301[24] = vu226(vu223(v333, p301[14]), 39)
                    p301[19] = v336
                    p301[14] = v335
                    p301[4] = v334
                    p301[9] = vu226(vu223(v333, p301[9]), 20)
                    local v337 = vu223(p301[29], vu226(p301[26], 1))
                    local v338 = vu226(vu223(v337, p301[10]), 3)
                    local v339 = vu226(vu223(v337, p301[20]), 18)
                    local v340 = vu226(vu223(v337, p301[5]), 36)
                    p301[20] = vu226(vu223(v337, p301[15]), 41)
                    p301[15] = v340
                    p301[10] = v339
                    p301[5] = v338
                    p301[0] = vu223(v337, p301[0])
                    local v341 = vu223(p301[0], vu221(vu224(p301[1]), p301[2]), v306[v319])
                    local v342 = vu223(p301[1], vu221(vu224(p301[2]), p301[3]))
                    local v343 = vu223(p301[2], vu221(vu224(p301[3]), p301[4]))
                    local v344 = vu223(p301[3], vu221(vu224(p301[4]), p301[0]))
                    p301[4] = vu223(p301[4], vu221(vu224(p301[0]), p301[1]))
                    p301[3] = v344
                    p301[2] = v343
                    p301[1] = v342
                    p301[0] = v341
                    local v345 = vu223(p301[8], vu221(vu224(p301[9]), p301[5]))
                    local v346 = vu223(p301[9], vu221(vu224(p301[5]), p301[6]))
                    local v347 = vu223(p301[5], vu221(vu224(p301[6]), p301[7]))
                    local v348 = vu223(p301[6], vu221(vu224(p301[7]), p301[8]))
                    p301[9] = vu223(p301[7], vu221(vu224(p301[8]), p301[9]))
                    p301[8] = v348
                    p301[7] = v347
                    p301[6] = v346
                    p301[5] = v345
                    local v349 = vu223(p301[11], vu221(vu224(p301[12]), p301[13]))
                    local v350 = vu223(p301[12], vu221(vu224(p301[13]), p301[14]))
                    local v351 = vu223(p301[13], vu221(vu224(p301[14]), p301[10]))
                    local v352 = vu223(p301[14], vu221(vu224(p301[10]), p301[11]))
                    p301[14] = vu223(p301[10], vu221(vu224(p301[11]), p301[12]))
                    p301[13] = v352
                    p301[12] = v351
                    p301[11] = v350
                    p301[10] = v349
                    local v353 = vu223(p301[19], vu221(vu224(p301[15]), p301[16]))
                    local v354 = vu223(p301[15], vu221(vu224(p301[16]), p301[17]))
                    local v355 = vu223(p301[16], vu221(vu224(p301[17]), p301[18]))
                    local v356 = vu223(p301[17], vu221(vu224(p301[18]), p301[19]))
                    p301[19] = vu223(p301[18], vu221(vu224(p301[19]), p301[15]))
                    p301[18] = v356
                    p301[17] = v355
                    p301[16] = v354
                    p301[15] = v353
                    local v357 = vu223(p301[22], vu221(vu224(p301[23]), p301[24]))
                    local v358 = vu223(p301[23], vu221(vu224(p301[24]), p301[20]))
                    local v359 = vu223(p301[24], vu221(vu224(p301[20]), p301[21]))
                    local v360 = vu223(p301[20], vu221(vu224(p301[21]), p301[22]))
                    p301[24] = vu223(p301[21], vu221(vu224(p301[22]), p301[23]))
                    p301[23] = v360
                    p301[22] = v359
                    p301[21] = v358
                    p301[20] = v357
                end
            end
        end
        local vu361 = 2779096485 * vu218(4294967297)
        vu161 = function(p362, p363)
            return vu223(p362, p363 or vu361)
        end
        vu162 = function(p364, _, p365, p366, p367)
            local v368 = vu217
            local v369 = vu129
            for v372 = p366, p366 + p367 - 1, 128 do
                local _ = v372
                for v371 = 0, 15 do
                    local v372 = v372 + 8
                    local v373, v374, v375, v376, v377, v378, v379, v380 = vu21(p365, v372 - 7, v372)
                    v368[v371] = vu222(vu62(vu64(v373, 24), vu64(v374, 16), vu64(v375, 8), v376) * vu218(4294967296), vu220(vu219(vu62(vu64(v377, 24), vu64(v378, 16), vu64(v379, 8), v380))))
                end
                for v381 = 16, 79 do
                    local v382 = v368[v381 - 15]
                    local v383 = v368[v381 - 2]
                    v368[v381] = vu223(vu227(v382, 1), vu227(v382, 8), vu225(v382, 7)) + vu223(vu227(v383, 19), vu226(v383, 3), vu225(v383, 6)) + v368[v381 - 7] + v368[v381 - 16]
                end
                local v384 = p364[1]
                local v385 = p364[2]
                local v386 = p364[3]
                local v387 = p364[4]
                local v388 = p364[5]
                local v389 = p364[6]
                local v390 = p364[7]
                local v391 = p364[8]
                for v392 = 0, 79, 8 do
                    local v393 = vu223(vu227(v388, 14), vu227(v388, 18), vu226(v388, 23)) + vu223(v390, vu221(v388, vu223(v389, v390))) + v391 + v369[v392 + 1] + v368[v392]
                    local v394 = v393 + v387
                    local v395 = vu223(vu221(vu223(v384, v385), v386), vu221(v384, v385)) + vu223(vu227(v384, 28), vu226(v384, 25), vu226(v384, 30)) + v393
                    local v396 = vu223(vu227(v394, 14), vu227(v394, 18), vu226(v394, 23)) + vu223(v389, vu221(v394, vu223(v388, v389))) + v390 + v369[v392 + 2] + v368[v392 + 1]
                    local v397 = v396 + v386
                    local v398 = vu223(vu221(vu223(v395, v384), v385), vu221(v395, v384)) + vu223(vu227(v395, 28), vu226(v395, 25), vu226(v395, 30)) + v396
                    local v399 = vu223(vu227(v397, 14), vu227(v397, 18), vu226(v397, 23)) + vu223(v388, vu221(v397, vu223(v394, v388))) + v389 + v369[v392 + 3] + v368[v392 + 2]
                    local v400 = v399 + v385
                    local v401 = vu223(vu221(vu223(v398, v395), v384), vu221(v398, v395)) + vu223(vu227(v398, 28), vu226(v398, 25), vu226(v398, 30)) + v399
                    local v402 = vu223(vu227(v400, 14), vu227(v400, 18), vu226(v400, 23)) + vu223(v394, vu221(v400, vu223(v397, v394))) + v388 + v369[v392 + 4] + v368[v392 + 3]
                    local v403 = v402 + v384
                    local v404 = vu223(vu221(vu223(v401, v398), v395), vu221(v401, v398)) + vu223(vu227(v401, 28), vu226(v401, 25), vu226(v401, 30)) + v402
                    local v405 = vu223(vu227(v403, 14), vu227(v403, 18), vu226(v403, 23)) + vu223(v397, vu221(v403, vu223(v400, v397))) + v394 + v369[v392 + 5] + v368[v392 + 4]
                    v391 = v405 + v395
                    v387 = vu223(vu221(vu223(v404, v401), v398), vu221(v404, v401)) + vu223(vu227(v404, 28), vu226(v404, 25), vu226(v404, 30)) + v405
                    local v406 = vu223(vu227(v391, 14), vu227(v391, 18), vu226(v391, 23)) + vu223(v400, vu221(v391, vu223(v403, v400))) + v397 + v369[v392 + 6] + v368[v392 + 5]
                    v390 = v406 + v398
                    v386 = vu223(vu221(vu223(v387, v404), v401), vu221(v387, v404)) + vu223(vu227(v387, 28), vu226(v387, 25), vu226(v387, 30)) + v406
                    local v407 = vu223(vu227(v390, 14), vu227(v390, 18), vu226(v390, 23)) + vu223(v403, vu221(v390, vu223(v391, v403))) + v400 + v369[v392 + 7] + v368[v392 + 6]
                    v389 = v407 + v401
                    v385 = vu223(vu221(vu223(v386, v387), v404), vu221(v386, v387)) + vu223(vu227(v386, 28), vu226(v386, 25), vu226(v386, 30)) + v407
                    local v408 = vu223(vu227(v389, 14), vu227(v389, 18), vu226(v389, 23)) + vu223(v391, vu221(v389, vu223(v390, v391))) + v403 + v369[v392 + 8] + v368[v392 + 7]
                    v388 = v408 + v404
                    v384 = vu223(vu221(vu223(v385, v386), v387), vu221(v385, v386)) + vu223(vu227(v385, 28), vu226(v385, 25), vu226(v385, 30)) + v408
                end
                p364[1] = v384 + p364[1]
                p364[2] = v385 + p364[2]
                p364[3] = v386 + p364[3]
                p364[4] = v387 + p364[4]
                p364[5] = v388 + p364[5]
                p364[6] = v389 + p364[6]
                p364[7] = v390 + p364[7]
                p364[8] = v391 + p364[8]
            end
        end
    else
        local vu409 = v54.new("union{int64_t i64; struct{int32_t " .. (v54.abi("le") and "lo, hi" or "hi, lo") .. ";} i32;}[3]")
        local function vu414(p410)
            vu409[0].i64 = p410
            local v411 = vu409[0].i32.lo
            local v412 = vu409[0].i32.hi
            local v413 = vu63(vu65(v411, 1), vu64(v412, 31), vu65(v411, 8), vu64(v412, 24), vu65(v411, 7), vu64(v412, 25))
            return vu63(vu65(v412, 1), vu64(v411, 31), vu65(v412, 8), vu64(v411, 24), vu65(v412, 7)) * vu218(4294967296) + vu220(vu219(v413))
        end
        local function vu419(p415)
            vu409[0].i64 = p415
            local v416 = vu409[0].i32.lo
            local v417 = vu409[0].i32.hi
            local v418 = vu63(vu65(v416, 19), vu64(v417, 13), vu64(v416, 3), vu65(v417, 29), vu65(v416, 6), vu64(v417, 26))
            return vu63(vu65(v417, 19), vu64(v416, 13), vu64(v417, 3), vu65(v416, 29), vu65(v417, 6)) * vu218(4294967296) + vu220(vu219(v418))
        end
        local function vu424(p420)
            vu409[0].i64 = p420
            local v421 = vu409[0].i32.lo
            local v422 = vu409[0].i32.hi
            local v423 = vu63(vu65(v421, 14), vu64(v422, 18), vu65(v421, 18), vu64(v422, 14), vu64(v421, 23), vu65(v422, 9))
            return vu63(vu65(v422, 14), vu64(v421, 18), vu65(v422, 18), vu64(v421, 14), vu64(v422, 23), vu65(v421, 9)) * vu218(4294967296) + vu220(vu219(v423))
        end
        local function vu429(p425)
            vu409[0].i64 = p425
            local v426 = vu409[0].i32.lo
            local v427 = vu409[0].i32.hi
            local v428 = vu63(vu65(v426, 28), vu64(v427, 4), vu64(v426, 30), vu65(v427, 2), vu64(v426, 25), vu65(v427, 7))
            return vu63(vu65(v427, 28), vu64(v426, 4), vu64(v427, 30), vu65(v426, 2), vu64(v427, 25), vu65(v426, 7)) * vu218(4294967296) + vu220(vu219(v428))
        end
        local function vu440(p430, p431, p432)
            vu409[0].i64 = p431
            vu409[1].i64 = p432
            vu409[2].i64 = p430
            local v433 = vu409[0].i32.lo
            local v434 = vu409[0].i32.hi
            local v435 = vu409[1].i32.lo
            local v436 = vu409[1].i32.hi
            local v437 = vu409[2].i32.lo
            local v438 = vu409[2].i32.hi
            local v439 = vu63(v435, vu61(v437, vu63(v433, v435)))
            return vu63(v436, vu61(v438, vu63(v434, v436))) * vu218(4294967296) + vu220(vu219(v439))
        end
        local function vu451(p441, p442, p443)
            vu409[0].i64 = p441
            vu409[1].i64 = p442
            vu409[2].i64 = p443
            local v444 = vu409[0].i32.lo
            local v445 = vu409[0].i32.hi
            local v446 = vu409[1].i32.lo
            local v447 = vu409[1].i32.hi
            local v448 = vu409[2].i32.lo
            local v449 = vu409[2].i32.hi
            local v450 = vu63(vu61(vu63(v444, v446), v448), vu61(v444, v446))
            return vu63(vu61(vu63(v445, v447), v449), vu61(v445, v447)) * vu218(4294967296) + vu220(vu219(v450))
        end
        local function vu462(p452, p453, p454)
            vu409[0].i64 = p452
            vu409[1].i64 = p453
            local v455 = vu409[0].i32.lo
            local v456 = vu409[0].i32.hi
            local v457 = vu409[1].i32.lo
            local v458 = vu409[1].i32.hi
            local v459 = vu63(v455, v457)
            local v460 = vu63(v456, v458)
            local v461 = vu63(vu65(v459, p454), vu64(v460, - p454))
            return vu63(vu65(v460, p454), vu64(v459, - p454)) * vu218(4294967296) + vu220(vu219(v461))
        end
        local function vu472(p463, p464)
            vu409[0].i64 = p463
            vu409[1].i64 = p464
            local v465 = vu409[0].i32.lo
            local v466 = vu409[0].i32.hi
            local v467 = vu409[1].i32.lo
            local v468 = vu409[1].i32.hi
            local v469 = vu63(v465, v467)
            local v470 = vu63(v466, v468)
            local v471 = vu63(vu64(v469, 1), vu65(v470, 31))
            return vu63(vu64(v470, 1), vu65(v469, 31)) * vu218(4294967296) + vu220(vu219(v471))
        end
        local function vu481(p473, p474)
            vu409[0].i64 = p473
            vu409[1].i64 = p474
            local v475 = vu409[0].i32.lo
            local v476 = vu409[0].i32.hi
            local v477 = vu409[1].i32.lo
            local v478 = vu409[1].i32.hi
            local v479 = vu63(v475, v477)
            local v480 = vu63(v476, v478)
            return v479 * vu218(4294967296) + vu220(vu219(v480))
        end
        local function vu489(p482, p483)
            vu409[0].i64 = p482
            vu409[1].i64 = p483
            local v484 = vu409[0].i32.lo
            local v485 = vu409[0].i32.hi
            local v486 = vu409[1].i32.lo
            local v487 = vu409[1].i32.hi
            local v488 = vu63(v484, v486)
            return vu63(v485, v487) * vu218(4294967296) + vu220(vu219(v488))
        end
        local function vu500(p490, p491, p492)
            vu409[0].i64 = p490
            vu409[1].i64 = p491
            vu409[2].i64 = p492
            local v493 = vu409[0].i32.lo
            local v494 = vu409[0].i32.hi
            local v495 = vu409[1].i32.lo
            local v496 = vu409[1].i32.hi
            local v497 = vu409[2].i32.lo
            local v498 = vu409[2].i32.hi
            local v499 = vu63(v493, v495, v497)
            return vu63(v494, v496, v498) * vu218(4294967296) + vu220(vu219(v499))
        end
        vu161 = function(p501, p502)
            vu409[0].i64 = p501
            local v503 = vu409[0].i32.lo
            local v504 = vu409[0].i32.hi
            local v505, v506
            if p502 then
                vu409[1].i64 = p502
                v505 = vu409[1].i32.lo
                v506 = vu409[1].i32.hi
            else
                v505 = 2779096485
                v506 = 2779096485
            end
            local v507 = vu63(v503, v505)
            return vu63(v504, v506) * vu218(4294967296) + vu220(vu219(v507))
        end
        vu163 = function(p508)
            vu409[0].i64 = p508
            return vu124(vu409[0].i32.hi) .. vu124(vu409[0].i32.lo)
        end
        vu162 = function(p509, _, p510, p511, p512)
            local v513 = vu217
            local v514 = vu129
            for v517 = p511, p511 + p512 - 1, 128 do
                local _ = v517
                for v516 = 0, 15 do
                    local v517 = v517 + 8
                    local v518, v519, v520, v521, v522, v523, v524, v525 = vu21(p510, v517 - 7, v517)
                    v513[v516] = vu62(vu64(v518, 24), vu64(v519, 16), vu64(v520, 8), v521) * vu218(4294967296) + vu220(vu219(vu62(vu64(v522, 24), vu64(v523, 16), vu64(v524, 8), v525)))
                end
                for v526 = 16, 79 do
                    v513[v526] = vu414(v513[v526 - 15]) + vu419(v513[v526 - 2]) + v513[v526 - 7] + v513[v526 - 16]
                end
                local v527 = p509[1]
                local v528 = p509[2]
                local v529 = p509[3]
                local v530 = p509[4]
                local v531 = p509[5]
                local v532 = p509[6]
                local v533 = p509[7]
                local v534 = p509[8]
                for v535 = 0, 79, 8 do
                    local v536 = vu424(v531) + vu440(v531, v532, v533) + v534 + v514[v535 + 1] + v513[v535]
                    local v537 = v536 + v530
                    local v538 = vu451(v527, v528, v529) + vu429(v527) + v536
                    local v539 = vu424(v537) + vu440(v537, v531, v532) + v533 + v514[v535 + 2] + v513[v535 + 1]
                    local v540 = v539 + v529
                    local v541 = vu451(v538, v527, v528) + vu429(v538) + v539
                    local v542 = vu424(v540) + vu440(v540, v537, v531) + v532 + v514[v535 + 3] + v513[v535 + 2]
                    local v543 = v542 + v528
                    local v544 = vu451(v541, v538, v527) + vu429(v541) + v542
                    local v545 = vu424(v543) + vu440(v543, v540, v537) + v531 + v514[v535 + 4] + v513[v535 + 3]
                    local v546 = v545 + v527
                    local v547 = vu451(v544, v541, v538) + vu429(v544) + v545
                    local v548 = vu424(v546) + vu440(v546, v543, v540) + v537 + v514[v535 + 5] + v513[v535 + 4]
                    v534 = v548 + v538
                    v530 = vu451(v547, v544, v541) + vu429(v547) + v548
                    local v549 = vu424(v534) + vu440(v534, v546, v543) + v540 + v514[v535 + 6] + v513[v535 + 5]
                    v533 = v549 + v541
                    v529 = vu451(v530, v547, v544) + vu429(v530) + v549
                    local v550 = vu424(v533) + vu440(v533, v534, v546) + v543 + v514[v535 + 7] + v513[v535 + 6]
                    v532 = v550 + v544
                    v528 = vu451(v529, v530, v547) + vu429(v529) + v550
                    local v551 = vu424(v532) + vu440(v532, v533, v534) + v546 + v514[v535 + 8] + v513[v535 + 7]
                    v531 = v551 + v547
                    v527 = vu451(v528, v529, v530) + vu429(v528) + v551
                end
                p509[1] = v527 + p509[1]
                p509[2] = v528 + p509[2]
                p509[3] = v529 + p509[3]
                p509[4] = v530 + p509[4]
                p509[5] = v531 + p509[5]
                p509[6] = v532 + p509[6]
                p509[7] = v533 + p509[7]
                p509[8] = v534 + p509[8]
            end
        end
        local vu552 = v54.new("int64_t[?]", 16)
        local vu553 = vu158
        local function vu575(p554, p555, p556, p557, p558, p559)
            local v560 = vu552[p554]
            local v561 = vu552[p555]
            local v562 = vu552[p556]
            local v563 = vu552[p557]
            local v564 = vu553[p558] + (v560 + v561)
            local v565 = vu481(v563, v564)
            local v566 = v562 + v565
            local v567 = vu462(v561, v566, 24)
            local v568 = vu553[p559] + (v564 + v567)
            local v569 = vu462(v565, v568, 16)
            local v570 = v566 + v569
            local v571 = vu472(v567, v570)
            local v572 = vu552
            local v573 = vu552
            local v574 = vu552
            vu552[p557] = v569
            v574[p556] = v570
            v573[p555] = v571
            v572[p554] = v568
        end
        vu160 = function(p576, _, p577, p578, p579, p580, p581, p582)
            local v583 = p576[1]
            local v584 = p576[2]
            local v585 = p576[3]
            local v586 = p576[4]
            local v587 = p576[5]
            local v588 = p576[6]
            local v589 = p576[7]
            local v590 = p576[8]
            for v591 = p578, p578 + p579 - 1, 128 do
                if p577 then
                    local v592 = v591
                    for v593 = 1, 16 do
                        v592 = v592 + 8
                        local v594, v595, v596, v597, v598, v599, v600, v601 = vu21(p577, v592 - 7, v592)
                        vu553[v593] = vu489(vu62(vu64(v601, 24), vu64(v600, 16), vu64(v599, 8), v598) * vu218(4294967296), vu220(vu219(vu62(vu64(v597, 24), vu64(v596, 16), vu64(v595, 8), v594))))
                    end
                end
                local v602 = vu552
                local v603 = vu552
                local v604 = vu552
                local v605 = vu552
                local v606 = vu552
                local v607 = vu552
                local v608 = vu552
                vu552[7] = v590
                v608[6] = v589
                v607[5] = v588
                v606[4] = v587
                v605[3] = v586
                v604[2] = v585
                v603[1] = v584
                v602[0] = v583
                local v609 = vu552
                local v610 = vu552
                local v611 = vu552
                local v612 = vu552
                local v613 = vu552
                local v614 = vu552
                local v615 = vu552
                local v616 = vu131[1]
                local v617 = vu131[2]
                local v618 = vu131[3]
                local v619 = vu131[4]
                local v620 = vu131[6]
                local v621 = vu131[7]
                v615[15] = vu131[8]
                v614[14] = v621
                v613[13] = v620
                v612[11] = v619
                v611[10] = v618
                v610[9] = v617
                v609[8] = v616
                p580 = p580 + (p581 or 128)
                vu552[12] = vu489(vu131[5], p580)
                if p581 then
                    vu552[14] = - 1 - vu552[14]
                end
                if p582 then
                    vu552[15] = - 1 - vu552[15]
                end
                for v622 = 1, 12 do
                    local v623 = vu145[v622]
                    vu575(0, 4, 8, 12, v623[1], v623[2])
                    vu575(1, 5, 9, 13, v623[3], v623[4])
                    vu575(2, 6, 10, 14, v623[5], v623[6])
                    vu575(3, 7, 11, 15, v623[7], v623[8])
                    vu575(0, 5, 10, 15, v623[9], v623[10])
                    vu575(1, 6, 11, 12, v623[11], v623[12])
                    vu575(2, 7, 8, 13, v623[13], v623[14])
                    vu575(3, 4, 9, 14, v623[15], v623[16])
                end
                v583 = vu500(v583, vu552[0], vu552[8])
                v584 = vu500(v584, vu552[1], vu552[9])
                v585 = vu500(v585, vu552[2], vu552[10])
                v586 = vu500(v586, vu552[3], vu552[11])
                v587 = vu500(v587, vu552[4], vu552[12])
                v588 = vu500(v588, vu552[5], vu552[13])
                v589 = vu500(v589, vu552[6], vu552[14])
                v590 = vu500(v590, vu552[7], vu552[15])
            end
            p576[8] = v590
            p576[7] = v589
            p576[6] = v588
            p576[5] = v587
            p576[4] = v586
            p576[3] = v585
            p576[2] = v584
            p576[1] = v583
            return p580
        end
    end
    vu164 = function(p624, p625, p626, p627)
        local v628 = vu166
        local v629 = vu138
        for v632 = p626, p626 + p627 - 1, 64 do
            local _ = v632
            for v631 = 0, 15 do
                local v632 = v632 + 4
                local v633, v634, v635, v636 = vu21(p625, v632 - 3, v632)
                v628[v631] = vu62(vu64(v636, 24), vu64(v635, 16), vu64(v634, 8), v633)
            end
            local v637 = p624[1]
            local v638 = p624[2]
            local v639 = p624[3]
            local v640 = p624[4]
            for v641 = 0, 15, 4 do
                v637 = vu69(vu66(vu63(v640, vu61(v638, vu63(v639, v640))) + (v629[v641 + 1] + v628[v641] + v637), 7) + v638)
                v640 = vu69(vu66(vu63(v639, vu61(v637, vu63(v638, v639))) + (v629[v641 + 2] + v628[v641 + 1] + v640), 12) + v637)
                v639 = vu69(vu66(vu63(v638, vu61(v640, vu63(v637, v638))) + (v629[v641 + 3] + v628[v641 + 2] + v639), 17) + v640)
                v638 = vu69(vu66(vu63(v637, vu61(v639, vu63(v640, v637))) + (v629[v641 + 4] + v628[v641 + 3] + v638), 22) + v639)
            end
            for v642 = 16, 31, 4 do
                local v643 = 5 * v642
                v637 = vu69(vu66(vu63(v639, vu61(v640, vu63(v638, v639))) + (v629[v642 + 1] + v628[vu61(v643 + 1, 15)] + v637), 5) + v638)
                v640 = vu69(vu66(vu63(v638, vu61(v639, vu63(v637, v638))) + (v629[v642 + 2] + v628[vu61(v643 + 6, 15)] + v640), 9) + v637)
                v639 = vu69(vu66(vu63(v637, vu61(v638, vu63(v640, v637))) + (v629[v642 + 3] + v628[vu61(v643 - 5, 15)] + v639), 14) + v640)
                v638 = vu69(vu66(vu63(v640, vu61(v637, vu63(v639, v640))) + (v629[v642 + 4] + v628[vu61(v643, 15)] + v638), 20) + v639)
            end
            for v644 = 32, 47, 4 do
                local v645 = 3 * v644
                v637 = vu69(vu66(vu63(v638, v639, v640) + (v629[v644 + 1] + v628[vu61(v645 + 5, 15)] + v637), 4) + v638)
                v640 = vu69(vu66(vu63(v637, v638, v639) + (v629[v644 + 2] + v628[vu61(v645 + 8, 15)] + v640), 11) + v637)
                v639 = vu69(vu66(vu63(v640, v637, v638) + (v629[v644 + 3] + v628[vu61(v645 - 5, 15)] + v639), 16) + v640)
                v638 = vu69(vu66(vu63(v639, v640, v637) + (v629[v644 + 4] + v628[vu61(v645 - 2, 15)] + v638), 23) + v639)
            end
            for v646 = 48, 63, 4 do
                local v647 = 7 * v646
                v637 = vu69(vu66(vu63(v639, vu62(v638, vu68(v640))) + (v629[v646 + 1] + v628[vu61(v647, 15)] + v637), 6) + v638)
                v640 = vu69(vu66(vu63(v638, vu62(v637, vu68(v639))) + (v629[v646 + 2] + v628[vu61(v647 + 7, 15)] + v640), 10) + v637)
                v639 = vu69(vu66(vu63(v637, vu62(v640, vu68(v638))) + (v629[v646 + 3] + v628[vu61(v647 - 2, 15)] + v639), 15) + v640)
                v638 = vu69(vu66(vu63(v640, vu62(v639, vu68(v637))) + (v629[v646 + 4] + v628[vu61(v647 + 5, 15)] + v638), 21) + v639)
            end
            local v648 = vu69(v637 + p624[1])
            local v649 = vu69(v638 + p624[2])
            local v650 = vu69(v639 + p624[3])
            p624[4] = vu69(v640 + p624[4])
            p624[3] = v650
            p624[2] = v649
            p624[1] = v648
        end
    end
    vu165 = function(p651, p652, p653, p654)
        local v655 = vu166
        for v658 = p653, p653 + p654 - 1, 64 do
            local _ = v658
            for v657 = 0, 15 do
                local v658 = v658 + 4
                local v659, v660, v661, v662 = vu21(p652, v658 - 3, v658)
                v655[v657] = vu62(vu64(v659, 24), vu64(v660, 16), vu64(v661, 8), v662)
            end
            for v663 = 16, 79 do
                v655[v663] = vu66(vu63(v655[v663 - 3], v655[v663 - 8], v655[v663 - 14], v655[v663 - 16]), 1)
            end
            local v664 = p651[1]
            local v665 = p651[2]
            local v666 = p651[3]
            local v667 = p651[4]
            local v668 = p651[5]
            for v669 = 0, 19, 5 do
                local v670 = vu67(v665, 2)
                local v671 = vu69(vu66(v664, 5) + vu63(v667, vu61(v665, vu63(v667, v666))) + (v655[v669] + 1518500249 + v668))
                local v672 = vu67(v664, 2)
                local v673 = vu69(vu66(v671, 5) + vu63(v666, vu61(v664, vu63(v666, v670))) + (v655[v669 + 1] + 1518500249 + v667))
                v668 = vu67(v671, 2)
                local v674 = vu69(vu66(v673, 5) + vu63(v670, vu61(v671, vu63(v670, v672))) + (v655[v669 + 2] + 1518500249 + v666))
                v667 = vu67(v673, 2)
                v665 = vu69(vu66(v674, 5) + vu63(v672, vu61(v673, vu63(v672, v668))) + (v655[v669 + 3] + 1518500249 + v670))
                v666 = vu67(v674, 2)
                v664 = vu69(vu66(v665, 5) + vu63(v668, vu61(v674, vu63(v668, v667))) + (v655[v669 + 4] + 1518500249 + v672))
            end
            for v675 = 20, 39, 5 do
                local v676 = vu67(v665, 2)
                local v677 = vu69(vu66(v664, 5) + vu63(v665, v666, v667) + (v655[v675] + 1859775393 + v668))
                local v678 = vu67(v664, 2)
                local v679 = vu69(vu66(v677, 5) + vu63(v664, v676, v666) + (v655[v675 + 1] + 1859775393 + v667))
                v668 = vu67(v677, 2)
                local v680 = vu69(vu66(v679, 5) + vu63(v677, v678, v676) + (v655[v675 + 2] + 1859775393 + v666))
                v667 = vu67(v679, 2)
                v665 = vu69(vu66(v680, 5) + vu63(v679, v668, v678) + (v655[v675 + 3] + 1859775393 + v676))
                v666 = vu67(v680, 2)
                v664 = vu69(vu66(v665, 5) + vu63(v680, v667, v668) + (v655[v675 + 4] + 1859775393 + v678))
            end
            for v681 = 40, 59, 5 do
                local v682 = vu67(v665, 2)
                local v683 = vu69(vu66(v664, 5) + vu63(vu61(v667, vu63(v665, v666)), vu61(v665, v666)) + (v655[v681] + 2400959708 + v668))
                local v684 = vu67(v664, 2)
                local v685 = vu69(vu66(v683, 5) + vu63(vu61(v666, vu63(v664, v682)), vu61(v664, v682)) + (v655[v681 + 1] + 2400959708 + v667))
                v668 = vu67(v683, 2)
                local v686 = vu69(vu66(v685, 5) + vu63(vu61(v682, vu63(v683, v684)), vu61(v683, v684)) + (v655[v681 + 2] + 2400959708 + v666))
                v667 = vu67(v685, 2)
                v665 = vu69(vu66(v686, 5) + vu63(vu61(v684, vu63(v685, v668)), vu61(v685, v668)) + (v655[v681 + 3] + 2400959708 + v682))
                v666 = vu67(v686, 2)
                v664 = vu69(vu66(v665, 5) + vu63(vu61(v668, vu63(v686, v667)), vu61(v686, v667)) + (v655[v681 + 4] + 2400959708 + v684))
            end
            for v687 = 60, 79, 5 do
                local v688 = vu67(v665, 2)
                local v689 = vu69(vu66(v664, 5) + vu63(v665, v666, v667) + (v655[v687] + 3395469782 + v668))
                local v690 = vu67(v664, 2)
                local v691 = vu69(vu66(v689, 5) + vu63(v664, v688, v666) + (v655[v687 + 1] + 3395469782 + v667))
                v668 = vu67(v689, 2)
                local v692 = vu69(vu66(v691, 5) + vu63(v689, v690, v688) + (v655[v687 + 2] + 3395469782 + v666))
                v667 = vu67(v691, 2)
                v665 = vu69(vu66(v692, 5) + vu63(v691, v668, v690) + (v655[v687 + 3] + 3395469782 + v688))
                v666 = vu67(v692, 2)
                v664 = vu69(vu66(v665, 5) + vu63(v692, v667, v668) + (v655[v687 + 4] + 3395469782 + v690))
            end
            local v693 = vu69(v664 + p651[1])
            local v694 = vu69(v665 + p651[2])
            local v695 = vu69(v666 + p651[3])
            local v696 = vu69(v667 + p651[4])
            p651[5] = vu69(v668 + p651[5])
            p651[4] = v696
            p651[3] = v695
            p651[2] = v694
            p651[1] = v693
        end
    end
else
    vu156 = vu142
    vu158 = vu156
    local v697 = vu156
    vu156 = vu158
    v697 = vu158
    vu160 = nil
    v155 = {}
    vu157 = nil
    vu163 = nil
    vu159 = 0
    vu161 = function(p698, p699)
        return vu63(p698, p699 or 2779096485) % 4294967296
    end
    vu164 = nil
    vu162 = nil
    vu165 = nil
end
if v59 == "FFI" and not v48 or v59 == "LJ" then
    if v59 == "FFI" then
        local vu700 = v54.typeof("int32_t[?]")
        vu125 = function()
            return vu700(31)
        end
    end
    vu126 = function(p701, p702, p703, p704, p705, p706)
        local v707 = vu133
        local v708 = vu134
        local v709 = vu65(p706, 3)
        for v716 = p704, p704 + p705 - 1, p706 do
            local _ = v716
            for v711 = 1, v709 do
                local v712, v713, v714, v715 = vu21(p703, v716 + 1, v716 + 4)
                p701[v711] = vu63(p701[v711], vu62(vu64(v715, 24), vu64(v714, 16), vu64(v713, 8), v712))
                local v716 = v716 + 8
                local v717, v718, v719, v720 = vu21(p703, v716 - 3, v716)
                p702[v711] = vu63(p702[v711], vu62(vu64(v720, 24), vu64(v719, 16), vu64(v718, 8), v717))
            end
            for v721 = 1, 24 do
                local _ = v721
                for v722 = 1, 5 do
                    p701[25 + v722] = vu63(p701[v722], p701[v722 + 5], p701[v722 + 10], p701[v722 + 15], p701[v722 + 20])
                end
                for v723 = 1, 5 do
                    p702[25 + v723] = vu63(p702[v723], p702[v723 + 5], p702[v723 + 10], p702[v723 + 15], p702[v723 + 20])
                end
                local v724 = vu63(p701[26], vu64(p701[28], 1), vu65(p702[28], 31))
                local v725 = vu63(p702[26], vu64(p702[28], 1), vu65(p701[28], 31))
                local v726 = vu63(vu65(vu63(v724, p701[7]), 20), vu64(vu63(v725, p702[7]), 12))
                local v727 = vu63(vu65(vu63(v725, p702[7]), 20), vu64(vu63(v724, p701[7]), 12))
                local v728 = vu63(vu65(vu63(v724, p701[17]), 19), vu64(vu63(v725, p702[17]), 13))
                local v729 = vu63(vu65(vu63(v725, p702[17]), 19), vu64(vu63(v724, p701[17]), 13))
                local v730 = vu63(vu64(vu63(v724, p701[2]), 1), vu65(vu63(v725, p702[2]), 31))
                local v731 = vu63(vu64(vu63(v725, p702[2]), 1), vu65(vu63(v724, p701[2]), 31))
                local v732 = vu63(vu64(vu63(v724, p701[12]), 10), vu65(vu63(v725, p702[12]), 22))
                p702[17] = vu63(vu64(vu63(v725, p702[12]), 10), vu65(vu63(v724, p701[12]), 22))
                p701[17] = v732
                p702[12] = v731
                p701[12] = v730
                p702[7] = v729
                p701[7] = v728
                p702[2] = v727
                p701[2] = v726
                local v733 = vu63(v724, p701[22])
                local v734 = vu63(v725, p702[22])
                local v735 = vu63(vu64(v733, 2), vu65(v734, 30))
                p702[22] = vu63(vu64(v734, 2), vu65(v733, 30))
                p701[22] = v735
                local v736 = vu63(p701[27], vu64(p701[29], 1), vu65(p702[29], 31))
                local v737 = vu63(p702[27], vu64(p702[29], 1), vu65(p701[29], 31))
                local v738 = vu63(vu65(vu63(v736, p701[13]), 21), vu64(vu63(v737, p702[13]), 11))
                local v739 = vu63(vu65(vu63(v737, p702[13]), 21), vu64(vu63(v736, p701[13]), 11))
                local v740 = vu63(vu65(vu63(v736, p701[23]), 3), vu64(vu63(v737, p702[23]), 29))
                local v741 = vu63(vu65(vu63(v737, p702[23]), 3), vu64(vu63(v736, p701[23]), 29))
                local v742 = vu63(vu64(vu63(v736, p701[8]), 6), vu65(vu63(v737, p702[8]), 26))
                local v743 = vu63(vu64(vu63(v737, p702[8]), 6), vu65(vu63(v736, p701[8]), 26))
                local v744 = vu63(vu65(vu63(v736, p701[3]), 2), vu64(vu63(v737, p702[3]), 30))
                p702[23] = vu63(vu65(vu63(v737, p702[3]), 2), vu64(vu63(v736, p701[3]), 30))
                p701[23] = v744
                p702[13] = v743
                p701[13] = v742
                p702[8] = v741
                p701[8] = v740
                p702[3] = v739
                p701[3] = v738
                local v745 = vu63(v736, p701[18])
                local v746 = vu63(v737, p702[18])
                local v747 = vu63(vu64(v745, 15), vu65(v746, 17))
                p702[18] = vu63(vu64(v746, 15), vu65(v745, 17))
                p701[18] = v747
                local v748 = vu63(p701[28], vu64(p701[30], 1), vu65(p702[30], 31))
                local v749 = vu63(p702[28], vu64(p702[30], 1), vu65(p701[30], 31))
                local v750 = vu63(vu64(vu63(v748, p701[19]), 21), vu65(vu63(v749, p702[19]), 11))
                local v751 = vu63(vu64(vu63(v749, p702[19]), 21), vu65(vu63(v748, p701[19]), 11))
                local v752 = vu63(vu64(vu63(v748, p701[4]), 28), vu65(vu63(v749, p702[4]), 4))
                local v753 = vu63(vu64(vu63(v749, p702[4]), 28), vu65(vu63(v748, p701[4]), 4))
                local v754 = vu63(vu65(vu63(v748, p701[24]), 8), vu64(vu63(v749, p702[24]), 24))
                local v755 = vu63(vu65(vu63(v749, p702[24]), 8), vu64(vu63(v748, p701[24]), 24))
                local v756 = vu63(vu65(vu63(v748, p701[9]), 9), vu64(vu63(v749, p702[9]), 23))
                p702[24] = vu63(vu65(vu63(v749, p702[9]), 9), vu64(vu63(v748, p701[9]), 23))
                p701[24] = v756
                p702[19] = v755
                p701[19] = v754
                p702[9] = v753
                p701[9] = v752
                p702[4] = v751
                p701[4] = v750
                local v757 = vu63(v748, p701[14])
                local v758 = vu63(v749, p702[14])
                local v759 = vu63(vu64(v757, 25), vu65(v758, 7))
                p702[14] = vu63(vu64(v758, 25), vu65(v757, 7))
                p701[14] = v759
                local v760 = vu63(p701[29], vu64(p701[26], 1), vu65(p702[26], 31))
                local v761 = vu63(p702[29], vu64(p702[26], 1), vu65(p701[26], 31))
                local v762 = vu63(vu64(vu63(v760, p701[25]), 14), vu65(vu63(v761, p702[25]), 18))
                local v763 = vu63(vu64(vu63(v761, p702[25]), 14), vu65(vu63(v760, p701[25]), 18))
                local v764 = vu63(vu64(vu63(v760, p701[20]), 8), vu65(vu63(v761, p702[20]), 24))
                local v765 = vu63(vu64(vu63(v761, p702[20]), 8), vu65(vu63(v760, p701[20]), 24))
                local v766 = vu63(vu64(vu63(v760, p701[5]), 27), vu65(vu63(v761, p702[5]), 5))
                local v767 = vu63(vu64(vu63(v761, p702[5]), 27), vu65(vu63(v760, p701[5]), 5))
                local v768 = vu63(vu65(vu63(v760, p701[15]), 25), vu64(vu63(v761, p702[15]), 7))
                p702[25] = vu63(vu65(vu63(v761, p702[15]), 25), vu64(vu63(v760, p701[15]), 7))
                p701[25] = v768
                p702[20] = v767
                p701[20] = v766
                p702[15] = v765
                p701[15] = v764
                p702[5] = v763
                p701[5] = v762
                local v769 = vu63(v760, p701[10])
                local v770 = vu63(v761, p702[10])
                local v771 = vu63(vu64(v769, 20), vu65(v770, 12))
                p702[10] = vu63(vu64(v770, 20), vu65(v769, 12))
                p701[10] = v771
                local v772 = vu63(p701[30], vu64(p701[27], 1), vu65(p702[27], 31))
                local v773 = vu63(p702[30], vu64(p702[27], 1), vu65(p701[27], 31))
                local v774 = vu63(vu64(vu63(v772, p701[11]), 3), vu65(vu63(v773, p702[11]), 29))
                local v775 = vu63(vu64(vu63(v773, p702[11]), 3), vu65(vu63(v772, p701[11]), 29))
                local v776 = vu63(vu64(vu63(v772, p701[21]), 18), vu65(vu63(v773, p702[21]), 14))
                local v777 = vu63(vu64(vu63(v773, p702[21]), 18), vu65(vu63(v772, p701[21]), 14))
                local v778 = vu63(vu65(vu63(v772, p701[6]), 28), vu64(vu63(v773, p702[6]), 4))
                local v779 = vu63(vu65(vu63(v773, p702[6]), 28), vu64(vu63(v772, p701[6]), 4))
                local v780 = vu63(vu65(vu63(v772, p701[16]), 23), vu64(vu63(v773, p702[16]), 9))
                p702[21] = vu63(vu65(vu63(v773, p702[16]), 23), vu64(vu63(v772, p701[16]), 9))
                p701[21] = v780
                p702[16] = v779
                p701[16] = v778
                p702[11] = v777
                p701[11] = v776
                p702[6] = v775
                p701[6] = v774
                local v781 = vu63(v772, p701[1])
                p702[1] = vu63(v773, p702[1])
                p701[1] = v781
                local v782 = vu63(p701[1], vu61(vu68(p701[2]), p701[3]), v707[v721])
                local v783 = vu63(p701[2], vu61(vu68(p701[3]), p701[4]))
                local v784 = vu63(p701[3], vu61(vu68(p701[4]), p701[5]))
                local v785 = vu63(p701[4], vu61(vu68(p701[5]), p701[1]))
                p701[5] = vu63(p701[5], vu61(vu68(p701[1]), p701[2]))
                p701[4] = v785
                p701[3] = v784
                p701[2] = v783
                p701[1] = v782
                local v786 = vu63(p701[9], vu61(vu68(p701[10]), p701[6]))
                local v787 = vu63(p701[10], vu61(vu68(p701[6]), p701[7]))
                local v788 = vu63(p701[6], vu61(vu68(p701[7]), p701[8]))
                local v789 = vu63(p701[7], vu61(vu68(p701[8]), p701[9]))
                p701[10] = vu63(p701[8], vu61(vu68(p701[9]), p701[10]))
                p701[9] = v789
                p701[8] = v788
                p701[7] = v787
                p701[6] = v786
                local v790 = vu63(p701[12], vu61(vu68(p701[13]), p701[14]))
                local v791 = vu63(p701[13], vu61(vu68(p701[14]), p701[15]))
                local v792 = vu63(p701[14], vu61(vu68(p701[15]), p701[11]))
                local v793 = vu63(p701[15], vu61(vu68(p701[11]), p701[12]))
                p701[15] = vu63(p701[11], vu61(vu68(p701[12]), p701[13]))
                p701[14] = v793
                p701[13] = v792
                p701[12] = v791
                p701[11] = v790
                local v794 = vu63(p701[20], vu61(vu68(p701[16]), p701[17]))
                local v795 = vu63(p701[16], vu61(vu68(p701[17]), p701[18]))
                local v796 = vu63(p701[17], vu61(vu68(p701[18]), p701[19]))
                local v797 = vu63(p701[18], vu61(vu68(p701[19]), p701[20]))
                p701[20] = vu63(p701[19], vu61(vu68(p701[20]), p701[16]))
                p701[19] = v797
                p701[18] = v796
                p701[17] = v795
                p701[16] = v794
                local v798 = vu63(p701[23], vu61(vu68(p701[24]), p701[25]))
                local v799 = vu63(p701[24], vu61(vu68(p701[25]), p701[21]))
                local v800 = vu63(p701[25], vu61(vu68(p701[21]), p701[22]))
                local v801 = vu63(p701[21], vu61(vu68(p701[22]), p701[23]))
                p701[25] = vu63(p701[22], vu61(vu68(p701[23]), p701[24]))
                p701[24] = v801
                p701[23] = v800
                p701[22] = v799
                p701[21] = v798
                local v802 = vu63(p702[1], vu61(vu68(p702[2]), p702[3]), v708[v721])
                local v803 = vu63(p702[2], vu61(vu68(p702[3]), p702[4]))
                local v804 = vu63(p702[3], vu61(vu68(p702[4]), p702[5]))
                local v805 = vu63(p702[4], vu61(vu68(p702[5]), p702[1]))
                p702[5] = vu63(p702[5], vu61(vu68(p702[1]), p702[2]))
                p702[4] = v805
                p702[3] = v804
                p702[2] = v803
                p702[1] = v802
                local v806 = vu63(p702[9], vu61(vu68(p702[10]), p702[6]))
                local v807 = vu63(p702[10], vu61(vu68(p702[6]), p702[7]))
                local v808 = vu63(p702[6], vu61(vu68(p702[7]), p702[8]))
                local v809 = vu63(p702[7], vu61(vu68(p702[8]), p702[9]))
                p702[10] = vu63(p702[8], vu61(vu68(p702[9]), p702[10]))
                p702[9] = v809
                p702[8] = v808
                p702[7] = v807
                p702[6] = v806
                local v810 = vu63(p702[12], vu61(vu68(p702[13]), p702[14]))
                local v811 = vu63(p702[13], vu61(vu68(p702[14]), p702[15]))
                local v812 = vu63(p702[14], vu61(vu68(p702[15]), p702[11]))
                local v813 = vu63(p702[15], vu61(vu68(p702[11]), p702[12]))
                p702[15] = vu63(p702[11], vu61(vu68(p702[12]), p702[13]))
                p702[14] = v813
                p702[13] = v812
                p702[12] = v811
                p702[11] = v810
                local v814 = vu63(p702[20], vu61(vu68(p702[16]), p702[17]))
                local v815 = vu63(p702[16], vu61(vu68(p702[17]), p702[18]))
                local v816 = vu63(p702[17], vu61(vu68(p702[18]), p702[19]))
                local v817 = vu63(p702[18], vu61(vu68(p702[19]), p702[20]))
                p702[20] = vu63(p702[19], vu61(vu68(p702[20]), p702[16]))
                p702[19] = v817
                p702[18] = v816
                p702[17] = v815
                p702[16] = v814
                local v818 = vu63(p702[23], vu61(vu68(p702[24]), p702[25]))
                local v819 = vu63(p702[24], vu61(vu68(p702[25]), p702[21]))
                local v820 = vu63(p702[25], vu61(vu68(p702[21]), p702[22]))
                local v821 = vu63(p702[21], vu61(vu68(p702[22]), p702[23]))
                p702[25] = vu63(p702[22], vu61(vu68(p702[23]), p702[24]))
                p702[24] = v821
                p702[23] = v820
                p702[22] = v819
                p702[21] = v818
            end
        end
    end
end
if v59 == "LJ" then
    vu157 = function(p822, p823, p824, p825)
        local v826 = vu142
        local v827 = vu130
        for v830 = p824, p824 + p825 - 1, 64 do
            local _ = v830
            for v829 = 1, 16 do
                local v830 = v830 + 4
                local v831, v832, v833, v834 = vu21(p823, v830 - 3, v830)
                v826[v829] = vu62(vu64(v831, 24), vu64(v832, 16), vu64(v833, 8), v834)
            end
            for v835 = 17, 64 do
                local v836 = v826[v835 - 15]
                local v837 = v826[v835 - 2]
                v826[v835] = vu69(vu69(vu63(vu67(v836, 7), vu66(v836, 14), vu65(v836, 3)) + vu63(vu66(v837, 15), vu66(v837, 13), vu65(v837, 10))) + vu69(v826[v835 - 7] + v826[v835 - 16]))
            end
            local v838 = p822[1]
            local v839 = p822[2]
            local v840 = p822[3]
            local v841 = p822[4]
            local v842 = p822[5]
            local v843 = p822[6]
            local v844 = p822[7]
            local v845 = p822[8]
            for v846 = 1, 64, 8 do
                local v847 = vu69(vu63(vu67(v842, 6), vu67(v842, 11), vu66(v842, 7)) + vu63(v844, vu61(v842, vu63(v843, v844))) + (v827[v846] + v826[v846] + v845))
                local v848 = vu69(v841 + v847)
                local v849 = vu69(vu63(vu61(v838, vu63(v839, v840)), vu61(v839, v840)) + vu63(vu67(v838, 2), vu67(v838, 13), vu66(v838, 10)) + v847)
                local v850 = vu69(vu63(vu67(v848, 6), vu67(v848, 11), vu66(v848, 7)) + vu63(v843, vu61(v848, vu63(v842, v843))) + (v827[v846 + 1] + v826[v846 + 1] + v844))
                local v851 = vu69(v840 + v850)
                local v852 = vu69(vu63(vu61(v849, vu63(v838, v839)), vu61(v838, v839)) + vu63(vu67(v849, 2), vu67(v849, 13), vu66(v849, 10)) + v850)
                local v853 = vu69(vu63(vu67(v851, 6), vu67(v851, 11), vu66(v851, 7)) + vu63(v842, vu61(v851, vu63(v848, v842))) + (v827[v846 + 2] + v826[v846 + 2] + v843))
                local v854 = vu69(v839 + v853)
                local v855 = vu69(vu63(vu61(v852, vu63(v849, v838)), vu61(v849, v838)) + vu63(vu67(v852, 2), vu67(v852, 13), vu66(v852, 10)) + v853)
                local v856 = vu69(vu63(vu67(v854, 6), vu67(v854, 11), vu66(v854, 7)) + vu63(v848, vu61(v854, vu63(v851, v848))) + (v827[v846 + 3] + v826[v846 + 3] + v842))
                local v857 = vu69(v838 + v856)
                local v858 = vu69(vu63(vu61(v855, vu63(v852, v849)), vu61(v852, v849)) + vu63(vu67(v855, 2), vu67(v855, 13), vu66(v855, 10)) + v856)
                local v859 = vu69(vu63(vu67(v857, 6), vu67(v857, 11), vu66(v857, 7)) + vu63(v851, vu61(v857, vu63(v854, v851))) + (v827[v846 + 4] + v826[v846 + 4] + v848))
                v845 = vu69(v849 + v859)
                v841 = vu69(vu63(vu61(v858, vu63(v855, v852)), vu61(v855, v852)) + vu63(vu67(v858, 2), vu67(v858, 13), vu66(v858, 10)) + v859)
                local v860 = vu69(vu63(vu67(v845, 6), vu67(v845, 11), vu66(v845, 7)) + vu63(v854, vu61(v845, vu63(v857, v854))) + (v827[v846 + 5] + v826[v846 + 5] + v851))
                v844 = vu69(v852 + v860)
                v840 = vu69(vu63(vu61(v841, vu63(v858, v855)), vu61(v858, v855)) + vu63(vu67(v841, 2), vu67(v841, 13), vu66(v841, 10)) + v860)
                local v861 = vu69(vu63(vu67(v844, 6), vu67(v844, 11), vu66(v844, 7)) + vu63(v857, vu61(v844, vu63(v845, v857))) + (v827[v846 + 6] + v826[v846 + 6] + v854))
                v843 = vu69(v855 + v861)
                v839 = vu69(vu63(vu61(v840, vu63(v841, v858)), vu61(v841, v858)) + vu63(vu67(v840, 2), vu67(v840, 13), vu66(v840, 10)) + v861)
                local v862 = vu69(vu63(vu67(v843, 6), vu67(v843, 11), vu66(v843, 7)) + vu63(v845, vu61(v843, vu63(v844, v845))) + (v827[v846 + 7] + v826[v846 + 7] + v857))
                v842 = vu69(v858 + v862)
                v838 = vu69(vu63(vu61(v839, vu63(v840, v841)), vu61(v840, v841)) + vu63(vu67(v839, 2), vu67(v839, 13), vu66(v839, 10)) + v862)
            end
            local v863 = vu69(v838 + p822[1])
            local v864 = vu69(v839 + p822[2])
            local v865 = vu69(v840 + p822[3])
            p822[4] = vu69(v841 + p822[4])
            p822[3] = v865
            p822[2] = v864
            p822[1] = v863
            local v866 = vu69(v842 + p822[5])
            local v867 = vu69(v843 + p822[6])
            local v868 = vu69(v844 + p822[7])
            p822[8] = vu69(v845 + p822[8])
            p822[7] = v868
            p822[6] = v867
            p822[5] = v866
        end
    end
    local function vu879(p869, p870, p871, p872, p873, p874, p875, p876)
        local v877 = p869 % 4294967296 + p871 % 4294967296 + p873 % 4294967296 + p875 % 4294967296
        local v878 = p870 + p872 + p874 + p876
        return vu69(v877), vu69(v878 + vu28(v877 / 4294967296))
    end
    vu162 = v49 == "x86" and function(p880, p881, p882, p883, p884)
        local v885 = vu142
        local v886 = vu129
        local v887 = vu130
        for v890 = p883, p883 + p884 - 1, 128 do
            local _ = v890
            for v889 = 1, 32 do
                local v890 = v890 + 4
                local v891, v892, v893, v894 = vu21(p882, v890 - 3, v890)
                v885[v889] = vu62(vu64(v891, 24), vu64(v892, 16), vu64(v893, 8), v894)
            end
            for v895 = 34, 160, 2 do
                local v896 = v885[v895 - 30]
                local v897 = v885[v895 - 31]
                local v898 = vu63(vu62(vu65(v896, 1), vu64(v897, 31)), vu62(vu65(v896, 8), vu64(v897, 24)), vu62(vu65(v896, 7), vu64(v897, 25)))
                local v899 = vu63(vu62(vu65(v897, 1), vu64(v896, 31)), vu62(vu65(v897, 8), vu64(v896, 24)), vu65(v897, 7))
                local v900 = v885[v895 - 4]
                local v901 = v885[v895 - 5]
                local v902 = vu63(vu62(vu65(v900, 19), vu64(v901, 13)), vu62(vu64(v900, 3), vu65(v901, 29)), vu62(vu65(v900, 6), vu64(v901, 26)))
                local v903 = vu63(vu62(vu65(v901, 19), vu64(v900, 13)), vu62(vu64(v901, 3), vu65(v900, 29)), vu65(v901, 6))
                local v904 = v895 - 1
                local v905, v906 = vu879(v898, v899, v902, v903, v885[v895 - 14], v885[v895 - 15], v885[v895 - 32], v885[v895 - 33])
                v885[v904] = v906
                v885[v895] = v905
            end
            local v907 = p880[1]
            local v908 = p880[2]
            local v909 = p880[3]
            local v910 = p880[4]
            local v911 = p880[5]
            local v912 = p880[6]
            local v913 = p880[7]
            local v914 = p880[8]
            local v915 = p881[1]
            local v916 = p881[2]
            local v917 = p881[3]
            local v918 = p881[4]
            local v919 = p881[5]
            local v920 = p881[6]
            local v921 = p881[7]
            local v922 = p881[8]
            local v923 = 0
            for v924 = 1, 80 do
                local v925 = vu63(v913, vu61(v911, vu63(v912, v913)))
                local v926 = vu63(v921, vu61(v919, vu63(v920, v921)))
                local v927 = vu63(vu62(vu65(v911, 14), vu64(v919, 18)), vu62(vu65(v911, 18), vu64(v919, 14)), vu62(vu64(v911, 23), vu65(v919, 9)))
                local v928 = vu63(vu62(vu65(v919, 14), vu64(v911, 18)), vu62(vu65(v919, 18), vu64(v911, 14)), vu62(vu64(v919, 23), vu65(v911, 9)))
                local v929 = v927 % 4294967296 + v925 % 4294967296 + v914 % 4294967296 + v886[v924] + v885[2 * v924] % 4294967296
                local v930 = vu69(v929)
                local v931 = vu69(v928 + v926 + v922 + v887[v924] + v885[2 * v924 - 1] + vu28(v929 / 4294967296))
                v923 = v923 + v923
                v914 = vu62(v923, v913)
                v922 = vu62(v923, v921)
                v913 = vu62(v923, v912)
                v921 = vu62(v923, v920)
                v912 = vu62(v923, v911)
                v920 = vu62(v923, v919)
                local v932 = v930 % 4294967296 + v910 % 4294967296
                v911 = vu69(v932)
                v919 = vu69(v931 + v918 + vu28(v932 / 4294967296))
                v910 = vu62(v923, v909)
                v918 = vu62(v923, v917)
                v909 = vu62(v923, v908)
                v917 = vu62(v923, v916)
                v908 = vu62(v923, v907)
                v916 = vu62(v923, v915)
                local v933 = vu63(vu62(vu65(v908, 28), vu64(v916, 4)), vu62(vu64(v908, 30), vu65(v916, 2)), vu62(vu64(v908, 25), vu65(v916, 7)))
                local v934 = vu63(vu62(vu65(v916, 28), vu64(v908, 4)), vu62(vu64(v916, 30), vu65(v908, 2)), vu62(vu64(v916, 25), vu65(v908, 7)))
                local v935 = vu62(vu61(v910, v909), vu61(v908, vu63(v910, v909)))
                local v936 = vu62(vu61(v918, v917), vu61(v916, vu63(v918, v917)))
                local v937 = v930 % 4294967296 + v935 % 4294967296 + v933 % 4294967296
                v907 = vu69(v937)
                v915 = vu69(v931 + v936 + v934 + vu28(v937 / 4294967296))
            end
            local v938, v939 = vu879(p880[1], p881[1], v907, v915, 0, 0, 0, 0)
            p881[1] = v939
            p880[1] = v938
            local v940, v941 = vu879(p880[2], p881[2], v908, v916, 0, 0, 0, 0)
            p881[2] = v941
            p880[2] = v940
            local v942, v943 = vu879(p880[3], p881[3], v909, v917, 0, 0, 0, 0)
            p881[3] = v943
            p880[3] = v942
            local v944, v945 = vu879(p880[4], p881[4], v910, v918, 0, 0, 0, 0)
            p881[4] = v945
            p880[4] = v944
            local v946, v947 = vu879(p880[5], p881[5], v911, v919, 0, 0, 0, 0)
            p881[5] = v947
            p880[5] = v946
            local v948, v949 = vu879(p880[6], p881[6], v912, v920, 0, 0, 0, 0)
            p881[6] = v949
            p880[6] = v948
            local v950, v951 = vu879(p880[7], p881[7], v913, v921, 0, 0, 0, 0)
            p881[7] = v951
            p880[7] = v950
            local v952, v953 = vu879(p880[8], p881[8], v914, v922, 0, 0, 0, 0)
            p881[8] = v953
            p880[8] = v952
        end
    end or function(p954, p955, p956, p957, p958)
        local v959 = vu142
        local v960 = vu129
        local v961 = vu130
        for v964 = p957, p957 + p958 - 1, 128 do
            local _ = v964
            for v963 = 1, 32 do
                local v964 = v964 + 4
                local v965, v966, v967, v968 = vu21(p956, v964 - 3, v964)
                v959[v963] = vu62(vu64(v965, 24), vu64(v966, 16), vu64(v967, 8), v968)
            end
            for v969 = 34, 160, 2 do
                local v970 = v959[v969 - 30]
                local v971 = v959[v969 - 31]
                local v972 = vu63(vu62(vu65(v970, 1), vu64(v971, 31)), vu62(vu65(v970, 8), vu64(v971, 24)), vu62(vu65(v970, 7), vu64(v971, 25)))
                local v973 = vu63(vu62(vu65(v971, 1), vu64(v970, 31)), vu62(vu65(v971, 8), vu64(v970, 24)), vu65(v971, 7))
                local v974 = v959[v969 - 4]
                local v975 = v959[v969 - 5]
                local v976 = vu63(vu62(vu65(v974, 19), vu64(v975, 13)), vu62(vu64(v974, 3), vu65(v975, 29)), vu62(vu65(v974, 6), vu64(v975, 26)))
                local v977 = vu63(vu62(vu65(v975, 19), vu64(v974, 13)), vu62(vu64(v975, 3), vu65(v974, 29)), vu65(v975, 6))
                local v978 = v969 - 1
                local v979, v980 = vu879(v972, v973, v976, v977, v959[v969 - 14], v959[v969 - 15], v959[v969 - 32], v959[v969 - 33])
                v959[v978] = v980
                v959[v969] = v979
            end
            local v981 = p954[1]
            local v982 = p954[2]
            local v983 = p954[3]
            local v984 = p954[4]
            local v985 = p954[5]
            local v986 = p954[6]
            local v987 = p954[7]
            local v988 = p954[8]
            local v989 = p955[1]
            local v990 = p955[2]
            local v991 = p955[3]
            local v992 = p955[4]
            local v993 = p955[5]
            local v994 = p955[6]
            local v995 = p955[7]
            local v996 = p955[8]
            for v997 = 1, 80 do
                local v998 = vu63(v987, vu61(v985, vu63(v986, v987)))
                local v999 = vu63(v995, vu61(v993, vu63(v994, v995)))
                local v1000 = vu63(vu62(vu65(v985, 14), vu64(v993, 18)), vu62(vu65(v985, 18), vu64(v993, 14)), vu62(vu64(v985, 23), vu65(v993, 9)))
                local v1001 = vu63(vu62(vu65(v993, 14), vu64(v985, 18)), vu62(vu65(v993, 18), vu64(v985, 14)), vu62(vu64(v993, 23), vu65(v985, 9)))
                local v1002 = v1000 % 4294967296 + v998 % 4294967296 + v988 % 4294967296 + v960[v997] + v959[2 * v997] % 4294967296
                local v1003 = vu69(v1002)
                local v1004 = vu69(v1001 + v999 + v996 + v961[v997] + v959[2 * v997 - 1] + vu28(v1002 / 4294967296))
                local v1005 = v1003 % 4294967296 + v984 % 4294967296
                local v1006 = vu69(v1005)
                local v1007 = vu69(v1004 + v992 + vu28(v1005 / 4294967296))
                local v1008 = vu63(vu62(vu65(v981, 28), vu64(v989, 4)), vu62(vu64(v981, 30), vu65(v989, 2)), vu62(vu64(v981, 25), vu65(v989, 7)))
                local v1009 = vu63(vu62(vu65(v989, 28), vu64(v981, 4)), vu62(vu64(v989, 30), vu65(v981, 2)), vu62(vu64(v989, 25), vu65(v981, 7)))
                local v1010 = vu62(vu61(v983, v982), vu61(v981, vu63(v983, v982)))
                local v1011 = vu62(vu61(v991, v990), vu61(v989, vu63(v991, v990)))
                local v1012 = v1003 % 4294967296 + v1008 % 4294967296 + v1010 % 4294967296
                local v1013 = vu69(v1012)
                local v1014 = vu69(v1004 + v1009 + v1011 + vu28(v1012 / 4294967296))
                v984 = v983
                v983 = v982
                v982 = v981
                v981 = v1013
                v992 = v991
                v991 = v990
                v990 = v989
                v989 = v1014
                v996 = v995
                v995 = v994
                v994 = v993
                v993 = v1007
                v988 = v987
                v987 = v986
                v986 = v985
                v985 = v1006
            end
            local v1015, v1016 = vu879(p954[1], p955[1], v981, v989, 0, 0, 0, 0)
            p955[1] = v1016
            p954[1] = v1015
            local v1017, v1018 = vu879(p954[2], p955[2], v982, v990, 0, 0, 0, 0)
            p955[2] = v1018
            p954[2] = v1017
            local v1019, v1020 = vu879(p954[3], p955[3], v983, v991, 0, 0, 0, 0)
            p955[3] = v1020
            p954[3] = v1019
            local v1021, v1022 = vu879(p954[4], p955[4], v984, v992, 0, 0, 0, 0)
            p955[4] = v1022
            p954[4] = v1021
            local v1023, v1024 = vu879(p954[5], p955[5], v985, v993, 0, 0, 0, 0)
            p955[5] = v1024
            p954[5] = v1023
            local v1025, v1026 = vu879(p954[6], p955[6], v986, v994, 0, 0, 0, 0)
            p955[6] = v1026
            p954[6] = v1025
            local v1027, v1028 = vu879(p954[7], p955[7], v987, v995, 0, 0, 0, 0)
            p955[7] = v1028
            p954[7] = v1027
            local v1029, v1030 = vu879(p954[8], p955[8], v988, v996, 0, 0, 0, 0)
            p955[8] = v1030
            p954[8] = v1029
        end
    end
    vu164 = function(p1031, p1032, p1033, p1034)
        local v1035 = vu142
        local v1036 = vu138
        for v1039 = p1033, p1033 + p1034 - 1, 64 do
            local _ = v1039
            for v1038 = 1, 16 do
                local v1039 = v1039 + 4
                local v1040, v1041, v1042, v1043 = vu21(p1032, v1039 - 3, v1039)
                v1035[v1038] = vu62(vu64(v1043, 24), vu64(v1042, 16), vu64(v1041, 8), v1040)
            end
            local v1044 = p1031[1]
            local v1045 = p1031[2]
            local v1046 = p1031[3]
            local v1047 = p1031[4]
            for v1048 = 1, 16, 4 do
                v1044 = vu69(vu66(vu63(v1047, vu61(v1045, vu63(v1046, v1047))) + (v1036[v1048] + v1035[v1048] + v1044), 7) + v1045)
                v1047 = vu69(vu66(vu63(v1046, vu61(v1044, vu63(v1045, v1046))) + (v1036[v1048 + 1] + v1035[v1048 + 1] + v1047), 12) + v1044)
                v1046 = vu69(vu66(vu63(v1045, vu61(v1047, vu63(v1044, v1045))) + (v1036[v1048 + 2] + v1035[v1048 + 2] + v1046), 17) + v1047)
                v1045 = vu69(vu66(vu63(v1044, vu61(v1046, vu63(v1047, v1044))) + (v1036[v1048 + 3] + v1035[v1048 + 3] + v1045), 22) + v1046)
            end
            for v1049 = 17, 32, 4 do
                local v1050 = 5 * v1049 - 4
                v1044 = vu69(vu66(vu63(v1046, vu61(v1047, vu63(v1045, v1046))) + (v1036[v1049] + v1035[vu61(v1050, 15) + 1] + v1044), 5) + v1045)
                v1047 = vu69(vu66(vu63(v1045, vu61(v1046, vu63(v1044, v1045))) + (v1036[v1049 + 1] + v1035[vu61(v1050 + 5, 15) + 1] + v1047), 9) + v1044)
                v1046 = vu69(vu66(vu63(v1044, vu61(v1045, vu63(v1047, v1044))) + (v1036[v1049 + 2] + v1035[vu61(v1050 + 10, 15) + 1] + v1046), 14) + v1047)
                v1045 = vu69(vu66(vu63(v1047, vu61(v1044, vu63(v1046, v1047))) + (v1036[v1049 + 3] + v1035[vu61(v1050 - 1, 15) + 1] + v1045), 20) + v1046)
            end
            for v1051 = 33, 48, 4 do
                local v1052 = 3 * v1051 + 2
                v1044 = vu69(vu66(vu63(v1045, v1046, v1047) + (v1036[v1051] + v1035[vu61(v1052, 15) + 1] + v1044), 4) + v1045)
                v1047 = vu69(vu66(vu63(v1044, v1045, v1046) + (v1036[v1051 + 1] + v1035[vu61(v1052 + 3, 15) + 1] + v1047), 11) + v1044)
                v1046 = vu69(vu66(vu63(v1047, v1044, v1045) + (v1036[v1051 + 2] + v1035[vu61(v1052 + 6, 15) + 1] + v1046), 16) + v1047)
                v1045 = vu69(vu66(vu63(v1046, v1047, v1044) + (v1036[v1051 + 3] + v1035[vu61(v1052 - 7, 15) + 1] + v1045), 23) + v1046)
            end
            for v1053 = 49, 64, 4 do
                local v1054 = v1053 * 7
                v1044 = vu69(vu66(vu63(v1046, vu62(v1045, vu68(v1047))) + (v1036[v1053] + v1035[vu61(v1054 - 7, 15) + 1] + v1044), 6) + v1045)
                v1047 = vu69(vu66(vu63(v1045, vu62(v1044, vu68(v1046))) + (v1036[v1053 + 1] + v1035[vu61(v1054, 15) + 1] + v1047), 10) + v1044)
                v1046 = vu69(vu66(vu63(v1044, vu62(v1047, vu68(v1045))) + (v1036[v1053 + 2] + v1035[vu61(v1054 + 7, 15) + 1] + v1046), 15) + v1047)
                v1045 = vu69(vu66(vu63(v1047, vu62(v1046, vu68(v1044))) + (v1036[v1053 + 3] + v1035[vu61(v1054 - 2, 15) + 1] + v1045), 21) + v1046)
            end
            local v1055 = vu69(v1044 + p1031[1])
            local v1056 = vu69(v1045 + p1031[2])
            local v1057 = vu69(v1046 + p1031[3])
            p1031[4] = vu69(v1047 + p1031[4])
            p1031[3] = v1057
            p1031[2] = v1056
            p1031[1] = v1055
        end
    end
    vu165 = function(p1058, p1059, p1060, p1061)
        local v1062 = vu142
        for v1065 = p1060, p1060 + p1061 - 1, 64 do
            local _ = v1065
            for v1064 = 1, 16 do
                local v1065 = v1065 + 4
                local v1066, v1067, v1068, v1069 = vu21(p1059, v1065 - 3, v1065)
                v1062[v1064] = vu62(vu64(v1066, 24), vu64(v1067, 16), vu64(v1068, 8), v1069)
            end
            for v1070 = 17, 80 do
                v1062[v1070] = vu66(vu63(v1062[v1070 - 3], v1062[v1070 - 8], v1062[v1070 - 14], v1062[v1070 - 16]), 1)
            end
            local v1071 = p1058[1]
            local v1072 = p1058[2]
            local v1073 = p1058[3]
            local v1074 = p1058[4]
            local v1075 = p1058[5]
            for v1076 = 1, 20, 5 do
                local v1077 = vu67(v1072, 2)
                local v1078 = vu69(vu66(v1071, 5) + vu63(v1074, vu61(v1072, vu63(v1074, v1073))) + (v1062[v1076] + 1518500249 + v1075))
                local v1079 = vu67(v1071, 2)
                local v1080 = vu69(vu66(v1078, 5) + vu63(v1073, vu61(v1071, vu63(v1073, v1077))) + (v1062[v1076 + 1] + 1518500249 + v1074))
                v1075 = vu67(v1078, 2)
                local v1081 = vu69(vu66(v1080, 5) + vu63(v1077, vu61(v1078, vu63(v1077, v1079))) + (v1062[v1076 + 2] + 1518500249 + v1073))
                v1074 = vu67(v1080, 2)
                v1072 = vu69(vu66(v1081, 5) + vu63(v1079, vu61(v1080, vu63(v1079, v1075))) + (v1062[v1076 + 3] + 1518500249 + v1077))
                v1073 = vu67(v1081, 2)
                v1071 = vu69(vu66(v1072, 5) + vu63(v1075, vu61(v1081, vu63(v1075, v1074))) + (v1062[v1076 + 4] + 1518500249 + v1079))
            end
            for v1082 = 21, 40, 5 do
                local v1083 = vu67(v1072, 2)
                local v1084 = vu69(vu66(v1071, 5) + vu63(v1072, v1073, v1074) + (v1062[v1082] + 1859775393 + v1075))
                local v1085 = vu67(v1071, 2)
                local v1086 = vu69(vu66(v1084, 5) + vu63(v1071, v1083, v1073) + (v1062[v1082 + 1] + 1859775393 + v1074))
                v1075 = vu67(v1084, 2)
                local v1087 = vu69(vu66(v1086, 5) + vu63(v1084, v1085, v1083) + (v1062[v1082 + 2] + 1859775393 + v1073))
                v1074 = vu67(v1086, 2)
                v1072 = vu69(vu66(v1087, 5) + vu63(v1086, v1075, v1085) + (v1062[v1082 + 3] + 1859775393 + v1083))
                v1073 = vu67(v1087, 2)
                v1071 = vu69(vu66(v1072, 5) + vu63(v1087, v1074, v1075) + (v1062[v1082 + 4] + 1859775393 + v1085))
            end
            for v1088 = 41, 60, 5 do
                local v1089 = vu67(v1072, 2)
                local v1090 = vu69(vu66(v1071, 5) + vu63(vu61(v1074, vu63(v1072, v1073)), vu61(v1072, v1073)) + (v1062[v1088] + 2400959708 + v1075))
                local v1091 = vu67(v1071, 2)
                local v1092 = vu69(vu66(v1090, 5) + vu63(vu61(v1073, vu63(v1071, v1089)), vu61(v1071, v1089)) + (v1062[v1088 + 1] + 2400959708 + v1074))
                v1075 = vu67(v1090, 2)
                local v1093 = vu69(vu66(v1092, 5) + vu63(vu61(v1089, vu63(v1090, v1091)), vu61(v1090, v1091)) + (v1062[v1088 + 2] + 2400959708 + v1073))
                v1074 = vu67(v1092, 2)
                v1072 = vu69(vu66(v1093, 5) + vu63(vu61(v1091, vu63(v1092, v1075)), vu61(v1092, v1075)) + (v1062[v1088 + 3] + 2400959708 + v1089))
                v1073 = vu67(v1093, 2)
                v1071 = vu69(vu66(v1072, 5) + vu63(vu61(v1075, vu63(v1093, v1074)), vu61(v1093, v1074)) + (v1062[v1088 + 4] + 2400959708 + v1091))
            end
            for v1094 = 61, 80, 5 do
                local v1095 = vu67(v1072, 2)
                local v1096 = vu69(vu66(v1071, 5) + vu63(v1072, v1073, v1074) + (v1062[v1094] + 3395469782 + v1075))
                local v1097 = vu67(v1071, 2)
                local v1098 = vu69(vu66(v1096, 5) + vu63(v1071, v1095, v1073) + (v1062[v1094 + 1] + 3395469782 + v1074))
                v1075 = vu67(v1096, 2)
                local v1099 = vu69(vu66(v1098, 5) + vu63(v1096, v1097, v1095) + (v1062[v1094 + 2] + 3395469782 + v1073))
                v1074 = vu67(v1098, 2)
                v1072 = vu69(vu66(v1099, 5) + vu63(v1098, v1075, v1097) + (v1062[v1094 + 3] + 3395469782 + v1095))
                v1073 = vu67(v1099, 2)
                v1071 = vu69(vu66(v1072, 5) + vu63(v1099, v1074, v1075) + (v1062[v1094 + 4] + 3395469782 + v1097))
            end
            local v1100 = vu69(v1071 + p1058[1])
            local v1101 = vu69(v1072 + p1058[2])
            local v1102 = vu69(v1073 + p1058[3])
            local v1103 = vu69(v1074 + p1058[4])
            p1058[5] = vu69(v1075 + p1058[5])
            p1058[4] = v1103
            p1058[3] = v1102
            p1058[2] = v1101
            p1058[1] = v1100
        end
    end
    local vu1104 = {}
    local vu1105 = {}
    local function vu1153(p1106, p1107, p1108, p1109, p1110, p1111)
        local v1112 = vu142
        local v1113 = vu1104[p1106]
        local v1114 = vu1104[p1107]
        local v1115 = vu1104[p1108]
        local v1116 = vu1104[p1109]
        local v1117 = vu1105[p1106]
        local v1118 = vu1105[p1107]
        local v1119 = vu1105[p1108]
        local v1120 = vu1105[p1109]
        local v1121 = v1112[2 * p1110 - 1] + (v1113 % 4294967296 + v1114 % 4294967296)
        local v1122 = vu69(v1121)
        local v1123 = vu69(v1112[2 * p1110] + (v1117 + v1118 + vu28(v1121 / 4294967296)))
        local v1124 = vu63(v1120, v1123)
        local v1125 = vu63(v1116, v1122)
        local v1126 = v1115 % 4294967296 + v1124 % 4294967296
        local v1127 = vu69(v1126)
        local v1128 = vu69(v1119 + v1125 + vu28(v1126 / 4294967296))
        local v1129 = vu63(v1114, v1127)
        local v1130 = vu63(v1118, v1128)
        local v1131 = vu63(vu65(v1129, 24), vu64(v1130, 8))
        local v1132 = vu63(vu65(v1130, 24), vu64(v1129, 8))
        local v1133 = v1112[2 * p1111 - 1] + (v1122 % 4294967296 + v1131 % 4294967296)
        local v1134 = vu69(v1133)
        local v1135 = vu69(v1112[2 * p1111] + (v1123 + v1132 + vu28(v1133 / 4294967296)))
        local v1136 = vu63(v1124, v1134)
        local v1137 = vu63(v1125, v1135)
        local v1138 = vu63(vu65(v1136, 16), vu64(v1137, 16))
        local v1139 = vu63(vu65(v1137, 16), vu64(v1136, 16))
        local v1140 = v1127 % 4294967296 + v1138 % 4294967296
        local v1141 = vu69(v1140)
        local v1142 = vu69(v1128 + v1139 + vu28(v1140 / 4294967296))
        local v1143 = vu63(v1131, v1141)
        local v1144 = vu63(v1132, v1142)
        local v1145 = vu63(vu64(v1143, 1), vu65(v1144, 31))
        local v1146 = vu63(vu64(v1144, 1), vu65(v1143, 31))
        local v1147 = vu1104
        local v1148 = vu1104
        local v1149 = vu1104
        vu1104[p1109] = v1138
        v1149[p1108] = v1141
        v1148[p1107] = v1145
        v1147[p1106] = v1134
        local v1150 = vu1105
        local v1151 = vu1105
        local v1152 = vu1105
        vu1105[p1109] = v1139
        v1152[p1108] = v1142
        v1151[p1107] = v1146
        v1150[p1106] = v1135
    end
    vu160 = function(p1154, p1155, p1156, p1157, p1158, p1159, p1160, p1161)
        local v1162 = vu142
        local v1163 = p1154[1]
        local v1164 = p1154[2]
        local v1165 = p1154[3]
        local v1166 = p1154[4]
        local v1167 = p1154[5]
        local v1168 = p1154[6]
        local v1169 = p1154[7]
        local v1170 = p1154[8]
        local v1171 = p1155[1]
        local v1172 = p1155[2]
        local v1173 = p1155[3]
        local v1174 = p1155[4]
        local v1175 = p1155[5]
        local v1176 = p1155[6]
        local v1177 = p1155[7]
        local v1178 = p1155[8]
        for v1179 = p1157, p1157 + p1158 - 1, 128 do
            if p1156 then
                local v1180 = v1179
                for v1181 = 1, 32 do
                    v1180 = v1180 + 4
                    local v1182, v1183, v1184, v1185 = vu21(p1156, v1180 - 3, v1180)
                    v1162[v1181] = v1185 * 16777216 + vu62(vu64(v1184, 16), vu64(v1183, 8), v1182)
                end
            end
            local v1186 = vu1104
            local v1187 = vu1104
            local v1188 = vu1104
            local v1189 = vu1104
            local v1190 = vu1104
            local v1191 = vu1104
            local v1192 = vu1104
            vu1104[7] = v1170
            v1192[6] = v1169
            v1191[5] = v1168
            v1190[4] = v1167
            v1189[3] = v1166
            v1188[2] = v1165
            v1187[1] = v1164
            v1186[0] = v1163
            local v1193 = vu1104
            local v1194 = vu1104
            local v1195 = vu1104
            local v1196 = vu1104
            local v1197 = vu1104
            local v1198 = vu1104
            local v1199 = vu1104
            local v1200 = vu1104
            local v1201 = vu131[1]
            local v1202 = vu131[2]
            local v1203 = vu131[3]
            local v1204 = vu131[4]
            local v1205 = vu131[5]
            local v1206 = vu131[6]
            local v1207 = vu131[7]
            v1200[15] = vu131[8]
            v1199[14] = v1207
            v1198[13] = v1206
            v1197[12] = v1205
            v1196[11] = v1204
            v1195[10] = v1203
            v1194[9] = v1202
            v1193[8] = v1201
            local v1208 = vu1105
            local v1209 = vu1105
            local v1210 = vu1105
            local v1211 = vu1105
            local v1212 = vu1105
            local v1213 = vu1105
            local v1214 = vu1105
            vu1105[7] = v1178
            v1214[6] = v1177
            v1213[5] = v1176
            v1212[4] = v1175
            v1211[3] = v1174
            v1210[2] = v1173
            v1209[1] = v1172
            v1208[0] = v1171
            local v1215 = vu1105
            local v1216 = vu1105
            local v1217 = vu1105
            local v1218 = vu1105
            local v1219 = vu1105
            local v1220 = vu1105
            local v1221 = vu1105
            local v1222 = vu1105
            local v1223 = vu132[1]
            local v1224 = vu132[2]
            local v1225 = vu132[3]
            local v1226 = vu132[4]
            local v1227 = vu132[5]
            local v1228 = vu132[6]
            local v1229 = vu132[7]
            v1222[15] = vu132[8]
            v1221[14] = v1229
            v1220[13] = v1228
            v1219[12] = v1227
            v1218[11] = v1226
            v1217[10] = v1225
            v1216[9] = v1224
            v1215[8] = v1223
            p1159 = p1159 + (p1160 or 128)
            local v1230 = p1159 % 4294967296
            local v1231 = vu28(p1159 / 4294967296)
            vu1104[12] = vu63(vu1104[12], v1230)
            vu1105[12] = vu63(vu1105[12], v1231)
            if p1160 then
                vu1104[14] = vu68(vu1104[14])
                vu1105[14] = vu68(vu1105[14])
            end
            if p1161 then
                vu1104[15] = vu68(vu1104[15])
                vu1105[15] = vu68(vu1105[15])
            end
            for v1232 = 1, 12 do
                local v1233 = vu145[v1232]
                vu1153(0, 4, 8, 12, v1233[1], v1233[2])
                vu1153(1, 5, 9, 13, v1233[3], v1233[4])
                vu1153(2, 6, 10, 14, v1233[5], v1233[6])
                vu1153(3, 7, 11, 15, v1233[7], v1233[8])
                vu1153(0, 5, 10, 15, v1233[9], v1233[10])
                vu1153(1, 6, 11, 12, v1233[11], v1233[12])
                vu1153(2, 7, 8, 13, v1233[13], v1233[14])
                vu1153(3, 4, 9, 14, v1233[15], v1233[16])
            end
            v1163 = vu63(v1163, vu1104[0], vu1104[8])
            v1164 = vu63(v1164, vu1104[1], vu1104[9])
            v1165 = vu63(v1165, vu1104[2], vu1104[10])
            v1166 = vu63(v1166, vu1104[3], vu1104[11])
            v1167 = vu63(v1167, vu1104[4], vu1104[12])
            v1168 = vu63(v1168, vu1104[5], vu1104[13])
            v1169 = vu63(v1169, vu1104[6], vu1104[14])
            v1170 = vu63(v1170, vu1104[7], vu1104[15])
            v1171 = vu63(v1171, vu1105[0], vu1105[8])
            v1172 = vu63(v1172, vu1105[1], vu1105[9])
            v1173 = vu63(v1173, vu1105[2], vu1105[10])
            v1174 = vu63(v1174, vu1105[3], vu1105[11])
            v1175 = vu63(v1175, vu1105[4], vu1105[12])
            v1176 = vu63(v1176, vu1105[5], vu1105[13])
            v1177 = vu63(v1177, vu1105[6], vu1105[14])
            v1178 = vu63(v1178, vu1105[7], vu1105[15])
        end
        local v1234 = v1163 % 4294967296
        local v1235 = v1164 % 4294967296
        local v1236 = v1165 % 4294967296
        local v1237 = v1166 % 4294967296
        local v1238 = v1167 % 4294967296
        local v1239 = v1168 % 4294967296
        local v1240 = v1169 % 4294967296
        p1154[8] = v1170 % 4294967296
        p1154[7] = v1240
        p1154[6] = v1239
        p1154[5] = v1238
        p1154[4] = v1237
        p1154[3] = v1236
        p1154[2] = v1235
        p1154[1] = v1234
        local v1241 = v1171 % 4294967296
        local v1242 = v1172 % 4294967296
        local v1243 = v1173 % 4294967296
        local v1244 = v1174 % 4294967296
        local v1245 = v1175 % 4294967296
        local v1246 = v1176 % 4294967296
        local v1247 = v1177 % 4294967296
        p1155[8] = v1178 % 4294967296
        p1155[7] = v1247
        p1155[6] = v1246
        p1155[5] = v1245
        p1155[4] = v1244
        p1155[3] = v1243
        p1155[2] = v1242
        p1155[1] = v1241
        return p1159
    end
end
if v59 == "FFI" or v59 == "LJ" then
    local vu1248 = vu156
    local vu1249 = v155
    local function vu1271(p1250, p1251, p1252, p1253, p1254, p1255)
        local v1256 = vu1249[p1250]
        local v1257 = vu1249[p1251]
        local v1258 = vu1249[p1252]
        local v1259 = vu1249[p1253]
        local v1260 = vu69(vu1248[p1254] + (v1256 + v1257))
        local v1261 = vu67(vu63(v1259, v1260), 16)
        local v1262 = vu69(v1258 + v1261)
        local v1263 = vu67(vu63(v1257, v1262), 12)
        local v1264 = vu69(vu1248[p1255] + (v1260 + v1263))
        local v1265 = vu67(vu63(v1261, v1264), 8)
        local v1266 = vu69(v1262 + v1265)
        local v1267 = vu67(vu63(v1263, v1266), 7)
        local v1268 = vu1249
        local v1269 = vu1249
        local v1270 = vu1249
        vu1249[p1253] = v1265
        v1270[p1252] = v1266
        v1269[p1251] = v1267
        v1268[p1250] = v1264
    end
    vu127 = function(p1272, p1273, p1274, p1275, p1276, p1277, p1278)
        local v1279 = vu69(p1272[1])
        local v1280 = vu69(p1272[2])
        local v1281 = vu69(p1272[3])
        local v1282 = vu69(p1272[4])
        local v1283 = vu69(p1272[5])
        local v1284 = vu69(p1272[6])
        local v1285 = vu69(p1272[7])
        local v1286 = vu69(p1272[8])
        for v1287 = p1274, p1274 + p1275 - 1, 64 do
            if p1273 then
                local v1288 = v1287
                for v1289 = 1, 16 do
                    v1288 = v1288 + 4
                    local v1290, v1291, v1292, v1293 = vu21(p1273, v1288 - 3, v1288)
                    vu1248[v1289] = vu62(vu64(v1293, 24), vu64(v1292, 16), vu64(v1291, 8), v1290)
                end
            end
            local v1294 = vu1249
            local v1295 = vu1249
            local v1296 = vu1249
            local v1297 = vu1249
            local v1298 = vu1249
            local v1299 = vu1249
            local v1300 = vu1249
            vu1249[7] = v1286
            v1300[6] = v1285
            v1299[5] = v1284
            v1298[4] = v1283
            v1297[3] = v1282
            v1296[2] = v1281
            v1295[1] = v1280
            v1294[0] = v1279
            local v1301 = vu1249
            local v1302 = vu1249
            local v1303 = vu1249
            local v1304 = vu1249
            local v1305 = vu1249
            local v1306 = vu1249
            local v1307 = vu69(vu132[1])
            local v1308 = vu69(vu132[2])
            local v1309 = vu69(vu132[3])
            local v1310 = vu69(vu132[4])
            local v1311 = vu69(vu132[7])
            v1306[15] = vu69(vu132[8])
            v1305[14] = v1311
            v1304[11] = v1310
            v1303[10] = v1309
            v1302[9] = v1308
            v1301[8] = v1307
            p1276 = p1276 + (p1277 or 64)
            local v1312 = p1276 % 4294967296
            local v1313 = vu28(p1276 / 4294967296)
            vu1249[12] = vu63(vu132[5], v1312)
            vu1249[13] = vu63(vu132[6], v1313)
            if p1277 then
                vu1249[14] = vu68(vu1249[14])
            end
            if p1278 then
                vu1249[15] = vu68(vu1249[15])
            end
            for v1314 = 1, 10 do
                local v1315 = vu145[v1314]
                vu1271(0, 4, 8, 12, v1315[1], v1315[2])
                vu1271(1, 5, 9, 13, v1315[3], v1315[4])
                vu1271(2, 6, 10, 14, v1315[5], v1315[6])
                vu1271(3, 7, 11, 15, v1315[7], v1315[8])
                vu1271(0, 5, 10, 15, v1315[9], v1315[10])
                vu1271(1, 6, 11, 12, v1315[11], v1315[12])
                vu1271(2, 7, 8, 13, v1315[13], v1315[14])
                vu1271(3, 4, 9, 14, v1315[15], v1315[16])
            end
            v1279 = vu63(v1279, vu1249[0], vu1249[8])
            v1280 = vu63(v1280, vu1249[1], vu1249[9])
            v1281 = vu63(v1281, vu1249[2], vu1249[10])
            v1282 = vu63(v1282, vu1249[3], vu1249[11])
            v1283 = vu63(v1283, vu1249[4], vu1249[12])
            v1284 = vu63(v1284, vu1249[5], vu1249[13])
            v1285 = vu63(v1285, vu1249[6], vu1249[14])
            v1286 = vu63(v1286, vu1249[7], vu1249[15])
        end
        p1272[8] = v1286
        p1272[7] = v1285
        p1272[6] = v1284
        p1272[5] = v1283
        p1272[4] = v1282
        p1272[3] = v1281
        p1272[2] = v1280
        p1272[1] = v1279
        return p1276
    end
    vu128 = function(p1316, p1317, p1318, p1319, p1320, p1321, p1322, p1323, p1324)
        local v1325 = vu69(p1321[1])
        local v1326 = vu69(p1321[2])
        local v1327 = vu69(p1321[3])
        local v1328 = vu69(p1321[4])
        local v1329 = vu69(p1321[5])
        local v1330 = vu69(p1321[6])
        local v1331 = vu69(p1321[7])
        local v1332 = vu69(p1321[8])
        local v1333 = p1322 or p1321
        local v1334 = p1324 or 64
        for v1335 = p1317, p1317 + p1318 - 1, 64 do
            if p1316 then
                local v1336 = v1335
                for v1337 = 1, 16 do
                    v1336 = v1336 + 4
                    local v1338, v1339, v1340, v1341 = vu21(p1316, v1336 - 3, v1336)
                    vu1248[v1337] = vu62(vu64(v1341, 24), vu64(v1340, 16), vu64(v1339, 8), v1338)
                end
            end
            local v1342 = vu1249
            local v1343 = vu1249
            local v1344 = vu1249
            local v1345 = vu1249
            local v1346 = vu1249
            local v1347 = vu1249
            local v1348 = vu1249
            vu1249[7] = v1332
            v1348[6] = v1331
            v1347[5] = v1330
            v1346[4] = v1329
            v1345[3] = v1328
            v1344[2] = v1327
            v1343[1] = v1326
            v1342[0] = v1325
            local v1349 = vu1249
            local v1350 = vu1249
            local v1351 = vu1249
            local v1352 = vu1249
            local v1353 = vu69(vu132[1])
            local v1354 = vu69(vu132[2])
            local v1355 = vu69(vu132[3])
            v1352[11] = vu69(vu132[4])
            v1351[10] = v1355
            v1350[9] = v1354
            v1349[8] = v1353
            vu1249[12] = vu69(p1320 % 4294967296)
            vu1249[13] = vu28(p1320 / 4294967296)
            local v1356 = vu1249
            vu1249[15] = p1319
            v1356[14] = v1334
            for v1357 = 1, 7 do
                vu1271(0, 4, 8, 12, vu147[v1357], vu147[v1357 + 14])
                vu1271(1, 5, 9, 13, vu147[v1357 + 1], vu147[v1357 + 2])
                vu1271(2, 6, 10, 14, vu147[v1357 + 16], vu147[v1357 + 7])
                vu1271(3, 7, 11, 15, vu147[v1357 + 15], vu147[v1357 + 17])
                vu1271(0, 5, 10, 15, vu147[v1357 + 21], vu147[v1357 + 5])
                vu1271(1, 6, 11, 12, vu147[v1357 + 3], vu147[v1357 + 6])
                vu1271(2, 7, 8, 13, vu147[v1357 + 4], vu147[v1357 + 18])
                vu1271(3, 4, 9, 14, vu147[v1357 + 19], vu147[v1357 + 20])
            end
            if p1323 then
                v1333[9] = vu63(v1325, vu1249[8])
                v1333[10] = vu63(v1326, vu1249[9])
                v1333[11] = vu63(v1327, vu1249[10])
                v1333[12] = vu63(v1328, vu1249[11])
                v1333[13] = vu63(v1329, vu1249[12])
                v1333[14] = vu63(v1330, vu1249[13])
                v1333[15] = vu63(v1331, vu1249[14])
                v1333[16] = vu63(v1332, vu1249[15])
            end
            v1325 = vu63(vu1249[0], vu1249[8])
            v1326 = vu63(vu1249[1], vu1249[9])
            v1327 = vu63(vu1249[2], vu1249[10])
            v1328 = vu63(vu1249[3], vu1249[11])
            v1329 = vu63(vu1249[4], vu1249[12])
            v1330 = vu63(vu1249[5], vu1249[13])
            v1331 = vu63(vu1249[6], vu1249[14])
            v1332 = vu63(vu1249[7], vu1249[15])
        end
        v1333[8] = v1332
        v1333[7] = v1331
        v1333[6] = v1330
        v1333[5] = v1329
        v1333[4] = v1328
        v1333[3] = v1327
        v1333[2] = v1326
        v1333[1] = v1325
    end
end
if v59 == "INT64" then
    vu163, vu161, vu71, vu157, vu162, vu164, vu165, vu126, vu127, vu160, vu128 = load("-- branch \"INT64\"\r\n      local md5_next_shift, md5_K, sha2_K_lo, sha2_K_hi, build_keccak_format, sha3_RC_lo, sigma, common_W, sha2_H_lo, sha2_H_hi, perm_blake3 = ...\r\n      local string_format, string_unpack = string.format, string.unpack\r\n\r\n      local function HEX64(x)\r\n         return string_format(\"%016x\", x)\r\n      end\r\n\r\n      local function XORA5(x, y)\r\n         return x ~ (y or 0xa5a5a5a5a5a5a5a5)\r\n      end\r\n\r\n      local function XOR_BYTE(x, y)\r\n         return x ~ y\r\n      end\r\n\r\n      local function sha256_feed_64(H, str, offs, size)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         local W, K = common_W, sha2_K_hi\r\n         local h1, h2, h3, h4, h5, h6, h7, h8 = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]\r\n         for pos = offs + 1, offs + size, 64 do\r\n            W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n               string_unpack(\">I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4\", str, pos)\r\n            for j = 17, 64 do\r\n               local a = W[j-15]\r\n               a = a<<32 | a\r\n               local b = W[j-2]\r\n               b = b<<32 | b\r\n               W[j] = (a>>7 ~ a>>18 ~ a>>35) + (b>>17 ~ b>>19 ~ b>>42) + W[j-7] + W[j-16] & (1<<32)-1\r\n            end\r\n            local a, b, c, d, e, f, g, h = h1, h2, h3, h4, h5, h6, h7, h8\r\n            for j = 1, 64 do\r\n               e = e<<32 | e & (1<<32)-1\r\n               local z = (e>>6 ~ e>>11 ~ e>>25) + (g ~ e & (f ~ g)) + h + K[j] + W[j]\r\n               h = g\r\n               g = f\r\n               f = e\r\n               e = z + d\r\n               d = c\r\n               c = b\r\n               b = a\r\n               a = a<<32 | a & (1<<32)-1\r\n               a = z + ((a ~ c) & d ~ a & c) + (a>>2 ~ a>>13 ~ a>>22)\r\n            end\r\n            h1 = a + h1\r\n            h2 = b + h2\r\n            h3 = c + h3\r\n            h4 = d + h4\r\n            h5 = e + h5\r\n            h6 = f + h6\r\n            h7 = g + h7\r\n            h8 = h + h8\r\n         end\r\n         H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8] = h1, h2, h3, h4, h5, h6, h7, h8\r\n      end\r\n\r\n      local function sha512_feed_128(H, _, str, offs, size)\r\n         -- offs >= 0, size >= 0, size is multiple of 128\r\n         local W, K = common_W, sha2_K_lo\r\n         local h1, h2, h3, h4, h5, h6, h7, h8 = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]\r\n         for pos = offs + 1, offs + size, 128 do\r\n            W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n               string_unpack(\">i8i8i8i8i8i8i8i8i8i8i8i8i8i8i8i8\", str, pos)\r\n            for j = 17, 80 do\r\n               local a = W[j-15]\r\n               local b = W[j-2]\r\n               W[j] = (a >> 1 ~ a >> 7 ~ a >> 8 ~ a << 56 ~ a << 63) + (b >> 6 ~ b >> 19 ~ b >> 61 ~ b << 3 ~ b << 45) + W[j-7] + W[j-16]\r\n            end\r\n            local a, b, c, d, e, f, g, h = h1, h2, h3, h4, h5, h6, h7, h8\r\n            for j = 1, 80 do\r\n               local z = (e >> 14 ~ e >> 18 ~ e >> 41 ~ e << 23 ~ e << 46 ~ e << 50) + (g ~ e & (f ~ g)) + h + K[j] + W[j]\r\n               h = g\r\n               g = f\r\n               f = e\r\n               e = z + d\r\n               d = c\r\n               c = b\r\n               b = a\r\n               a = z + ((a ~ c) & d ~ a & c) + (a >> 28 ~ a >> 34 ~ a >> 39 ~ a << 25 ~ a << 30 ~ a << 36)\r\n            end\r\n            h1 = a + h1\r\n            h2 = b + h2\r\n            h3 = c + h3\r\n            h4 = d + h4\r\n            h5 = e + h5\r\n            h6 = f + h6\r\n            h7 = g + h7\r\n            h8 = h + h8\r\n         end\r\n         H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8] = h1, h2, h3, h4, h5, h6, h7, h8\r\n      end\r\n\r\n      local function md5_feed_64(H, str, offs, size)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         local W, K, md5_next_shift = common_W, md5_K, md5_next_shift\r\n         local h1, h2, h3, h4 = H[1], H[2], H[3], H[4]\r\n         for pos = offs + 1, offs + size, 64 do\r\n            W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n               string_unpack(\"<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4\", str, pos)\r\n            local a, b, c, d = h1, h2, h3, h4\r\n            local s = 32-7\r\n            for j = 1, 16 do\r\n               local F = (d ~ b & (c ~ d)) + a + K[j] + W[j]\r\n               a = d\r\n               d = c\r\n               c = b\r\n               b = ((F<<32 | F & (1<<32)-1) >> s) + b\r\n               s = md5_next_shift[s]\r\n            end\r\n            s = 32-5\r\n            for j = 17, 32 do\r\n               local F = (c ~ d & (b ~ c)) + a + K[j] + W[(5*j-4 & 15) + 1]\r\n               a = d\r\n               d = c\r\n               c = b\r\n               b = ((F<<32 | F & (1<<32)-1) >> s) + b\r\n               s = md5_next_shift[s]\r\n            end\r\n            s = 32-4\r\n            for j = 33, 48 do\r\n               local F = (b ~ c ~ d) + a + K[j] + W[(3*j+2 & 15) + 1]\r\n               a = d\r\n               d = c\r\n               c = b\r\n               b = ((F<<32 | F & (1<<32)-1) >> s) + b\r\n               s = md5_next_shift[s]\r\n            end\r\n            s = 32-6\r\n            for j = 49, 64 do\r\n               local F = (c ~ (b | ~d)) + a + K[j] + W[(j*7-7 & 15) + 1]\r\n               a = d\r\n               d = c\r\n               c = b\r\n               b = ((F<<32 | F & (1<<32)-1) >> s) + b\r\n               s = md5_next_shift[s]\r\n            end\r\n            h1 = a + h1\r\n            h2 = b + h2\r\n            h3 = c + h3\r\n            h4 = d + h4\r\n         end\r\n         H[1], H[2], H[3], H[4] = h1, h2, h3, h4\r\n      end\r\n\r\n      local function sha1_feed_64(H, str, offs, size)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         local W = common_W\r\n         local h1, h2, h3, h4, h5 = H[1], H[2], H[3], H[4], H[5]\r\n         for pos = offs + 1, offs + size, 64 do\r\n            W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n               string_unpack(\">I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4\", str, pos)\r\n            for j = 17, 80 do\r\n               local a = W[j-3] ~ W[j-8] ~ W[j-14] ~ W[j-16]\r\n               W[j] = (a<<32 | a) << 1 >> 32\r\n            end\r\n            local a, b, c, d, e = h1, h2, h3, h4, h5\r\n            for j = 1, 20 do\r\n               local z = ((a<<32 | a & (1<<32)-1) >> 27) + (d ~ b & (c ~ d)) + 0x5A827999 + W[j] + e      -- constant = floor(2^30 * sqrt(2))\r\n               e = d\r\n               d = c\r\n               c = (b<<32 | b & (1<<32)-1) >> 2\r\n               b = a\r\n               a = z\r\n            end\r\n            for j = 21, 40 do\r\n               local z = ((a<<32 | a & (1<<32)-1) >> 27) + (b ~ c ~ d) + 0x6ED9EBA1 + W[j] + e            -- 2^30 * sqrt(3)\r\n               e = d\r\n               d = c\r\n               c = (b<<32 | b & (1<<32)-1) >> 2\r\n               b = a\r\n               a = z\r\n            end\r\n            for j = 41, 60 do\r\n               local z = ((a<<32 | a & (1<<32)-1) >> 27) + ((b ~ c) & d ~ b & c) + 0x8F1BBCDC + W[j] + e  -- 2^30 * sqrt(5)\r\n               e = d\r\n               d = c\r\n               c = (b<<32 | b & (1<<32)-1) >> 2\r\n               b = a\r\n               a = z\r\n            end\r\n            for j = 61, 80 do\r\n               local z = ((a<<32 | a & (1<<32)-1) >> 27) + (b ~ c ~ d) + 0xCA62C1D6 + W[j] + e            -- 2^30 * sqrt(10)\r\n               e = d\r\n               d = c\r\n               c = (b<<32 | b & (1<<32)-1) >> 2\r\n               b = a\r\n               a = z\r\n            end\r\n            h1 = a + h1\r\n            h2 = b + h2\r\n            h3 = c + h3\r\n            h4 = d + h4\r\n            h5 = e + h5\r\n         end\r\n         H[1], H[2], H[3], H[4], H[5] = h1, h2, h3, h4, h5\r\n      end\r\n\r\n      local keccak_format_i8 = build_keccak_format(\"i8\")\r\n\r\n      local function keccak_feed(lanes, _, str, offs, size, block_size_in_bytes)\r\n         -- offs >= 0, size >= 0, size is multiple of block_size_in_bytes, block_size_in_bytes is positive multiple of 8\r\n         local RC = sha3_RC_lo\r\n         local qwords_qty = block_size_in_bytes / 8\r\n         local keccak_format = keccak_format_i8[qwords_qty]\r\n         for pos = offs + 1, offs + size, block_size_in_bytes do\r\n            local qwords_from_message = {string_unpack(keccak_format, str, pos)}\r\n            for j = 1, qwords_qty do\r\n               lanes[j] = lanes[j] ~ qwords_from_message[j]\r\n            end\r\n            local L01, L02, L03, L04, L05, L06, L07, L08, L09, L10, L11, L12, L13, L14, L15, L16, L17, L18, L19, L20, L21, L22, L23, L24, L25 =\r\n               lanes[1], lanes[2], lanes[3], lanes[4], lanes[5], lanes[6], lanes[7], lanes[8], lanes[9], lanes[10], lanes[11], lanes[12], lanes[13],\r\n               lanes[14], lanes[15], lanes[16], lanes[17], lanes[18], lanes[19], lanes[20], lanes[21], lanes[22], lanes[23], lanes[24], lanes[25]\r\n            for round_idx = 1, 24 do\r\n               local C1 = L01 ~ L06 ~ L11 ~ L16 ~ L21\r\n               local C2 = L02 ~ L07 ~ L12 ~ L17 ~ L22\r\n               local C3 = L03 ~ L08 ~ L13 ~ L18 ~ L23\r\n               local C4 = L04 ~ L09 ~ L14 ~ L19 ~ L24\r\n               local C5 = L05 ~ L10 ~ L15 ~ L20 ~ L25\r\n               local D = C1 ~ C3<<1 ~ C3>>63\r\n               local T0 = D ~ L02\r\n               local T1 = D ~ L07\r\n               local T2 = D ~ L12\r\n               local T3 = D ~ L17\r\n               local T4 = D ~ L22\r\n               L02 = T1<<44 ~ T1>>20\r\n               L07 = T3<<45 ~ T3>>19\r\n               L12 = T0<<1 ~ T0>>63\r\n               L17 = T2<<10 ~ T2>>54\r\n               L22 = T4<<2 ~ T4>>62\r\n               D = C2 ~ C4<<1 ~ C4>>63\r\n               T0 = D ~ L03\r\n               T1 = D ~ L08\r\n               T2 = D ~ L13\r\n               T3 = D ~ L18\r\n               T4 = D ~ L23\r\n               L03 = T2<<43 ~ T2>>21\r\n               L08 = T4<<61 ~ T4>>3\r\n               L13 = T1<<6 ~ T1>>58\r\n               L18 = T3<<15 ~ T3>>49\r\n               L23 = T0<<62 ~ T0>>2\r\n               D = C3 ~ C5<<1 ~ C5>>63\r\n               T0 = D ~ L04\r\n               T1 = D ~ L09\r\n               T2 = D ~ L14\r\n               T3 = D ~ L19\r\n               T4 = D ~ L24\r\n               L04 = T3<<21 ~ T3>>43\r\n               L09 = T0<<28 ~ T0>>36\r\n               L14 = T2<<25 ~ T2>>39\r\n               L19 = T4<<56 ~ T4>>8\r\n               L24 = T1<<55 ~ T1>>9\r\n               D = C4 ~ C1<<1 ~ C1>>63\r\n               T0 = D ~ L05\r\n               T1 = D ~ L10\r\n               T2 = D ~ L15\r\n               T3 = D ~ L20\r\n               T4 = D ~ L25\r\n               L05 = T4<<14 ~ T4>>50\r\n               L10 = T1<<20 ~ T1>>44\r\n               L15 = T3<<8 ~ T3>>56\r\n               L20 = T0<<27 ~ T0>>37\r\n               L25 = T2<<39 ~ T2>>25\r\n               D = C5 ~ C2<<1 ~ C2>>63\r\n               T1 = D ~ L06\r\n               T2 = D ~ L11\r\n               T3 = D ~ L16\r\n               T4 = D ~ L21\r\n               L06 = T2<<3 ~ T2>>61\r\n               L11 = T4<<18 ~ T4>>46\r\n               L16 = T1<<36 ~ T1>>28\r\n               L21 = T3<<41 ~ T3>>23\r\n               L01 = D ~ L01\r\n               L01, L02, L03, L04, L05 = L01 ~ ~L02 & L03, L02 ~ ~L03 & L04, L03 ~ ~L04 & L05, L04 ~ ~L05 & L01, L05 ~ ~L01 & L02\r\n               L06, L07, L08, L09, L10 = L09 ~ ~L10 & L06, L10 ~ ~L06 & L07, L06 ~ ~L07 & L08, L07 ~ ~L08 & L09, L08 ~ ~L09 & L10\r\n               L11, L12, L13, L14, L15 = L12 ~ ~L13 & L14, L13 ~ ~L14 & L15, L14 ~ ~L15 & L11, L15 ~ ~L11 & L12, L11 ~ ~L12 & L13\r\n               L16, L17, L18, L19, L20 = L20 ~ ~L16 & L17, L16 ~ ~L17 & L18, L17 ~ ~L18 & L19, L18 ~ ~L19 & L20, L19 ~ ~L20 & L16\r\n               L21, L22, L23, L24, L25 = L23 ~ ~L24 & L25, L24 ~ ~L25 & L21, L25 ~ ~L21 & L22, L21 ~ ~L22 & L23, L22 ~ ~L23 & L24\r\n               L01 = L01 ~ RC[round_idx]\r\n            end\r\n            lanes[1]  = L01\r\n            lanes[2]  = L02\r\n            lanes[3]  = L03\r\n            lanes[4]  = L04\r\n            lanes[5]  = L05\r\n            lanes[6]  = L06\r\n            lanes[7]  = L07\r\n            lanes[8]  = L08\r\n            lanes[9]  = L09\r\n            lanes[10] = L10\r\n            lanes[11] = L11\r\n            lanes[12] = L12\r\n            lanes[13] = L13\r\n            lanes[14] = L14\r\n            lanes[15] = L15\r\n            lanes[16] = L16\r\n            lanes[17] = L17\r\n            lanes[18] = L18\r\n            lanes[19] = L19\r\n            lanes[20] = L20\r\n            lanes[21] = L21\r\n            lanes[22] = L22\r\n            lanes[23] = L23\r\n            lanes[24] = L24\r\n            lanes[25] = L25\r\n         end\r\n      end\r\n\r\n      local function blake2s_feed_64(H, str, offs, size, bytes_compressed, last_block_size, is_last_node)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         local W = common_W\r\n         local h1, h2, h3, h4, h5, h6, h7, h8 = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]\r\n         for pos = offs + 1, offs + size, 64 do\r\n            if str then\r\n               W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n                  string_unpack(\"<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4\", str, pos)\r\n            end\r\n            local v0, v1, v2, v3, v4, v5, v6, v7 = h1, h2, h3, h4, h5, h6, h7, h8\r\n            local v8, v9, vA, vB, vC, vD, vE, vF = sha2_H_hi[1], sha2_H_hi[2], sha2_H_hi[3], sha2_H_hi[4], sha2_H_hi[5], sha2_H_hi[6], sha2_H_hi[7], sha2_H_hi[8]\r\n            bytes_compressed = bytes_compressed + (last_block_size or 64)\r\n            vC = vC ~ bytes_compressed        -- t0 = low_4_bytes(bytes_compressed)\r\n            vD = vD ~ bytes_compressed >> 32  -- t1 = high_4_bytes(bytes_compressed)\r\n            if last_block_size then  -- flag f0\r\n               vE = ~vE\r\n            end\r\n            if is_last_node then  -- flag f1\r\n               vF = ~vF\r\n            end\r\n            for j = 1, 10 do\r\n               local row = sigma[j]\r\n               v0 = v0 + v4 + W[row[1]]\r\n               vC = vC ~ v0\r\n               vC = (vC & (1<<32)-1) >> 16 | vC << 16\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = (v4 & (1<<32)-1) >> 12 | v4 << 20\r\n               v0 = v0 + v4 + W[row[2]]\r\n               vC = vC ~ v0\r\n               vC = (vC & (1<<32)-1) >> 8 | vC << 24\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = (v4 & (1<<32)-1) >> 7 | v4 << 25\r\n               v1 = v1 + v5 + W[row[3]]\r\n               vD = vD ~ v1\r\n               vD = (vD & (1<<32)-1) >> 16 | vD << 16\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = (v5 & (1<<32)-1) >> 12 | v5 << 20\r\n               v1 = v1 + v5 + W[row[4]]\r\n               vD = vD ~ v1\r\n               vD = (vD & (1<<32)-1) >> 8 | vD << 24\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = (v5 & (1<<32)-1) >> 7 | v5 << 25\r\n               v2 = v2 + v6 + W[row[5]]\r\n               vE = vE ~ v2\r\n               vE = (vE & (1<<32)-1) >> 16 | vE << 16\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = (v6 & (1<<32)-1) >> 12 | v6 << 20\r\n               v2 = v2 + v6 + W[row[6]]\r\n               vE = vE ~ v2\r\n               vE = (vE & (1<<32)-1) >> 8 | vE << 24\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = (v6 & (1<<32)-1) >> 7 | v6 << 25\r\n               v3 = v3 + v7 + W[row[7]]\r\n               vF = vF ~ v3\r\n               vF = (vF & (1<<32)-1) >> 16 | vF << 16\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = (v7 & (1<<32)-1) >> 12 | v7 << 20\r\n               v3 = v3 + v7 + W[row[8]]\r\n               vF = vF ~ v3\r\n               vF = (vF & (1<<32)-1) >> 8 | vF << 24\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = (v7 & (1<<32)-1) >> 7 | v7 << 25\r\n               v0 = v0 + v5 + W[row[9]]\r\n               vF = vF ~ v0\r\n               vF = (vF & (1<<32)-1) >> 16 | vF << 16\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = (v5 & (1<<32)-1) >> 12 | v5 << 20\r\n               v0 = v0 + v5 + W[row[10]]\r\n               vF = vF ~ v0\r\n               vF = (vF & (1<<32)-1) >> 8 | vF << 24\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = (v5 & (1<<32)-1) >> 7 | v5 << 25\r\n               v1 = v1 + v6 + W[row[11]]\r\n               vC = vC ~ v1\r\n               vC = (vC & (1<<32)-1) >> 16 | vC << 16\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = (v6 & (1<<32)-1) >> 12 | v6 << 20\r\n               v1 = v1 + v6 + W[row[12]]\r\n               vC = vC ~ v1\r\n               vC = (vC & (1<<32)-1) >> 8 | vC << 24\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = (v6 & (1<<32)-1) >> 7 | v6 << 25\r\n               v2 = v2 + v7 + W[row[13]]\r\n               vD = vD ~ v2\r\n               vD = (vD & (1<<32)-1) >> 16 | vD << 16\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = (v7 & (1<<32)-1) >> 12 | v7 << 20\r\n               v2 = v2 + v7 + W[row[14]]\r\n               vD = vD ~ v2\r\n               vD = (vD & (1<<32)-1) >> 8 | vD << 24\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = (v7 & (1<<32)-1) >> 7 | v7 << 25\r\n               v3 = v3 + v4 + W[row[15]]\r\n               vE = vE ~ v3\r\n               vE = (vE & (1<<32)-1) >> 16 | vE << 16\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = (v4 & (1<<32)-1) >> 12 | v4 << 20\r\n               v3 = v3 + v4 + W[row[16]]\r\n               vE = vE ~ v3\r\n               vE = (vE & (1<<32)-1) >> 8 | vE << 24\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = (v4 & (1<<32)-1) >> 7 | v4 << 25\r\n            end\r\n            h1 = h1 ~ v0 ~ v8\r\n            h2 = h2 ~ v1 ~ v9\r\n            h3 = h3 ~ v2 ~ vA\r\n            h4 = h4 ~ v3 ~ vB\r\n            h5 = h5 ~ v4 ~ vC\r\n            h6 = h6 ~ v5 ~ vD\r\n            h7 = h7 ~ v6 ~ vE\r\n            h8 = h8 ~ v7 ~ vF\r\n         end\r\n         H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8] = h1, h2, h3, h4, h5, h6, h7, h8\r\n         return bytes_compressed\r\n      end\r\n\r\n      local function blake2b_feed_128(H, _, str, offs, size, bytes_compressed, last_block_size, is_last_node)\r\n         -- offs >= 0, size >= 0, size is multiple of 128\r\n         local W = common_W\r\n         local h1, h2, h3, h4, h5, h6, h7, h8 = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]\r\n         for pos = offs + 1, offs + size, 128 do\r\n            if str then\r\n               W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n                  string_unpack(\"<i8i8i8i8i8i8i8i8i8i8i8i8i8i8i8i8\", str, pos)\r\n            end\r\n            local v0, v1, v2, v3, v4, v5, v6, v7 = h1, h2, h3, h4, h5, h6, h7, h8\r\n            local v8, v9, vA, vB, vC, vD, vE, vF = sha2_H_lo[1], sha2_H_lo[2], sha2_H_lo[3], sha2_H_lo[4], sha2_H_lo[5], sha2_H_lo[6], sha2_H_lo[7], sha2_H_lo[8]\r\n            bytes_compressed = bytes_compressed + (last_block_size or 128)\r\n            vC = vC ~ bytes_compressed  -- t0 = low_8_bytes(bytes_compressed)\r\n            -- t1 = high_8_bytes(bytes_compressed) = 0,  message length is always below 2^53 bytes\r\n            if last_block_size then  -- flag f0\r\n               vE = ~vE\r\n            end\r\n            if is_last_node then  -- flag f1\r\n               vF = ~vF\r\n            end\r\n            for j = 1, 12 do\r\n               local row = sigma[j]\r\n               v0 = v0 + v4 + W[row[1]]\r\n               vC = vC ~ v0\r\n               vC = vC >> 32 | vC << 32\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = v4 >> 24 | v4 << 40\r\n               v0 = v0 + v4 + W[row[2]]\r\n               vC = vC ~ v0\r\n               vC = vC >> 16 | vC << 48\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = v4 >> 63 | v4 << 1\r\n               v1 = v1 + v5 + W[row[3]]\r\n               vD = vD ~ v1\r\n               vD = vD >> 32 | vD << 32\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = v5 >> 24 | v5 << 40\r\n               v1 = v1 + v5 + W[row[4]]\r\n               vD = vD ~ v1\r\n               vD = vD >> 16 | vD << 48\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = v5 >> 63 | v5 << 1\r\n               v2 = v2 + v6 + W[row[5]]\r\n               vE = vE ~ v2\r\n               vE = vE >> 32 | vE << 32\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = v6 >> 24 | v6 << 40\r\n               v2 = v2 + v6 + W[row[6]]\r\n               vE = vE ~ v2\r\n               vE = vE >> 16 | vE << 48\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = v6 >> 63 | v6 << 1\r\n               v3 = v3 + v7 + W[row[7]]\r\n               vF = vF ~ v3\r\n               vF = vF >> 32 | vF << 32\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = v7 >> 24 | v7 << 40\r\n               v3 = v3 + v7 + W[row[8]]\r\n               vF = vF ~ v3\r\n               vF = vF >> 16 | vF << 48\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = v7 >> 63 | v7 << 1\r\n               v0 = v0 + v5 + W[row[9]]\r\n               vF = vF ~ v0\r\n               vF = vF >> 32 | vF << 32\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = v5 >> 24 | v5 << 40\r\n               v0 = v0 + v5 + W[row[10]]\r\n               vF = vF ~ v0\r\n               vF = vF >> 16 | vF << 48\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = v5 >> 63 | v5 << 1\r\n               v1 = v1 + v6 + W[row[11]]\r\n               vC = vC ~ v1\r\n               vC = vC >> 32 | vC << 32\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = v6 >> 24 | v6 << 40\r\n               v1 = v1 + v6 + W[row[12]]\r\n               vC = vC ~ v1\r\n               vC = vC >> 16 | vC << 48\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = v6 >> 63 | v6 << 1\r\n               v2 = v2 + v7 + W[row[13]]\r\n               vD = vD ~ v2\r\n               vD = vD >> 32 | vD << 32\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = v7 >> 24 | v7 << 40\r\n               v2 = v2 + v7 + W[row[14]]\r\n               vD = vD ~ v2\r\n               vD = vD >> 16 | vD << 48\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = v7 >> 63 | v7 << 1\r\n               v3 = v3 + v4 + W[row[15]]\r\n               vE = vE ~ v3\r\n               vE = vE >> 32 | vE << 32\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = v4 >> 24 | v4 << 40\r\n               v3 = v3 + v4 + W[row[16]]\r\n               vE = vE ~ v3\r\n               vE = vE >> 16 | vE << 48\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = v4 >> 63 | v4 << 1\r\n            end\r\n            h1 = h1 ~ v0 ~ v8\r\n            h2 = h2 ~ v1 ~ v9\r\n            h3 = h3 ~ v2 ~ vA\r\n            h4 = h4 ~ v3 ~ vB\r\n            h5 = h5 ~ v4 ~ vC\r\n            h6 = h6 ~ v5 ~ vD\r\n            h7 = h7 ~ v6 ~ vE\r\n            h8 = h8 ~ v7 ~ vF\r\n         end\r\n         H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8] = h1, h2, h3, h4, h5, h6, h7, h8\r\n         return bytes_compressed\r\n      end\r\n\r\n      local function blake3_feed_64(str, offs, size, flags, chunk_index, H_in, H_out, wide_output, block_length)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         block_length = block_length or 64\r\n         local W = common_W\r\n         local h1, h2, h3, h4, h5, h6, h7, h8 = H_in[1], H_in[2], H_in[3], H_in[4], H_in[5], H_in[6], H_in[7], H_in[8]\r\n         H_out = H_out or H_in\r\n         for pos = offs + 1, offs + size, 64 do\r\n            if str then\r\n               W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n                  string_unpack(\"<I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4I4\", str, pos)\r\n            end\r\n            local v0, v1, v2, v3, v4, v5, v6, v7 = h1, h2, h3, h4, h5, h6, h7, h8\r\n            local v8, v9, vA, vB = sha2_H_hi[1], sha2_H_hi[2], sha2_H_hi[3], sha2_H_hi[4]\r\n            local t0 = chunk_index % 2^32         -- t0 = low_4_bytes(chunk_index)\r\n            local t1 = (chunk_index - t0) / 2^32  -- t1 = high_4_bytes(chunk_index)\r\n            local vC, vD, vE, vF = 0|t0, 0|t1, block_length, flags\r\n            for j = 1, 7 do\r\n               v0 = v0 + v4 + W[perm_blake3[j]]\r\n               vC = vC ~ v0\r\n               vC = (vC & (1<<32)-1) >> 16 | vC << 16\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = (v4 & (1<<32)-1) >> 12 | v4 << 20\r\n               v0 = v0 + v4 + W[perm_blake3[j + 14]]\r\n               vC = vC ~ v0\r\n               vC = (vC & (1<<32)-1) >> 8 | vC << 24\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = (v4 & (1<<32)-1) >> 7 | v4 << 25\r\n               v1 = v1 + v5 + W[perm_blake3[j + 1]]\r\n               vD = vD ~ v1\r\n               vD = (vD & (1<<32)-1) >> 16 | vD << 16\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = (v5 & (1<<32)-1) >> 12 | v5 << 20\r\n               v1 = v1 + v5 + W[perm_blake3[j + 2]]\r\n               vD = vD ~ v1\r\n               vD = (vD & (1<<32)-1) >> 8 | vD << 24\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = (v5 & (1<<32)-1) >> 7 | v5 << 25\r\n               v2 = v2 + v6 + W[perm_blake3[j + 16]]\r\n               vE = vE ~ v2\r\n               vE = (vE & (1<<32)-1) >> 16 | vE << 16\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = (v6 & (1<<32)-1) >> 12 | v6 << 20\r\n               v2 = v2 + v6 + W[perm_blake3[j + 7]]\r\n               vE = vE ~ v2\r\n               vE = (vE & (1<<32)-1) >> 8 | vE << 24\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = (v6 & (1<<32)-1) >> 7 | v6 << 25\r\n               v3 = v3 + v7 + W[perm_blake3[j + 15]]\r\n               vF = vF ~ v3\r\n               vF = (vF & (1<<32)-1) >> 16 | vF << 16\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = (v7 & (1<<32)-1) >> 12 | v7 << 20\r\n               v3 = v3 + v7 + W[perm_blake3[j + 17]]\r\n               vF = vF ~ v3\r\n               vF = (vF & (1<<32)-1) >> 8 | vF << 24\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = (v7 & (1<<32)-1) >> 7 | v7 << 25\r\n               v0 = v0 + v5 + W[perm_blake3[j + 21]]\r\n               vF = vF ~ v0\r\n               vF = (vF & (1<<32)-1) >> 16 | vF << 16\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = (v5 & (1<<32)-1) >> 12 | v5 << 20\r\n               v0 = v0 + v5 + W[perm_blake3[j + 5]]\r\n               vF = vF ~ v0\r\n               vF = (vF & (1<<32)-1) >> 8 | vF << 24\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = (v5 & (1<<32)-1) >> 7 | v5 << 25\r\n               v1 = v1 + v6 + W[perm_blake3[j + 3]]\r\n               vC = vC ~ v1\r\n               vC = (vC & (1<<32)-1) >> 16 | vC << 16\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = (v6 & (1<<32)-1) >> 12 | v6 << 20\r\n               v1 = v1 + v6 + W[perm_blake3[j + 6]]\r\n               vC = vC ~ v1\r\n               vC = (vC & (1<<32)-1) >> 8 | vC << 24\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = (v6 & (1<<32)-1) >> 7 | v6 << 25\r\n               v2 = v2 + v7 + W[perm_blake3[j + 4]]\r\n               vD = vD ~ v2\r\n               vD = (vD & (1<<32)-1) >> 16 | vD << 16\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = (v7 & (1<<32)-1) >> 12 | v7 << 20\r\n               v2 = v2 + v7 + W[perm_blake3[j + 18]]\r\n               vD = vD ~ v2\r\n               vD = (vD & (1<<32)-1) >> 8 | vD << 24\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = (v7 & (1<<32)-1) >> 7 | v7 << 25\r\n               v3 = v3 + v4 + W[perm_blake3[j + 19]]\r\n               vE = vE ~ v3\r\n               vE = (vE & (1<<32)-1) >> 16 | vE << 16\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = (v4 & (1<<32)-1) >> 12 | v4 << 20\r\n               v3 = v3 + v4 + W[perm_blake3[j + 20]]\r\n               vE = vE ~ v3\r\n               vE = (vE & (1<<32)-1) >> 8 | vE << 24\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = (v4 & (1<<32)-1) >> 7 | v4 << 25\r\n            end\r\n            if wide_output then\r\n               H_out[ 9] = h1 ~ v8\r\n               H_out[10] = h2 ~ v9\r\n               H_out[11] = h3 ~ vA\r\n               H_out[12] = h4 ~ vB\r\n               H_out[13] = h5 ~ vC\r\n               H_out[14] = h6 ~ vD\r\n               H_out[15] = h7 ~ vE\r\n               H_out[16] = h8 ~ vF\r\n            end\r\n            h1 = v0 ~ v8\r\n            h2 = v1 ~ v9\r\n            h3 = v2 ~ vA\r\n            h4 = v3 ~ vB\r\n            h5 = v4 ~ vC\r\n            h6 = v5 ~ vD\r\n            h7 = v6 ~ vE\r\n            h8 = v7 ~ vF\r\n         end\r\n         H_out[1], H_out[2], H_out[3], H_out[4], H_out[5], H_out[6], H_out[7], H_out[8] = h1, h2, h3, h4, h5, h6, h7, h8\r\n      end\r\n\r\n      return HEX64, XORA5, XOR_BYTE, sha256_feed_64, sha512_feed_128, md5_feed_64, sha1_feed_64, keccak_feed, blake2s_feed_64, blake2b_feed_128, blake3_feed_64\r\n   ")(vu140, vu138, vu129, vu130, v154, vu133, vu145, vu142, vu131, vu132, vu147)
    vu141 = 1
    vu144 = 4294967296
    vu159 = 4294967296
end
if v59 == "INT32" then
    vu161, vu71, vu157, vu162, vu164, vu165, vu126, vu127, vu160, vu128 = load("-- branch \"INT32\"\r\n      local md5_next_shift, md5_K, sha2_K_lo, sha2_K_hi, build_keccak_format, sha3_RC_lo, sha3_RC_hi, sigma, common_W, sha2_H_lo, sha2_H_hi, perm_blake3 = ...\r\n      local string_unpack, floor = string.unpack, math.floor\r\n\r\n      local function XORA5(x, y)\r\n         return x ~ (y and (y + 2^31) % 2^32 - 2^31 or 0xA5A5A5A5)\r\n      end\r\n\r\n      local function XOR_BYTE(x, y)\r\n         return x ~ y\r\n      end\r\n\r\n      local function sha256_feed_64(H, str, offs, size)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         local W, K = common_W, sha2_K_hi\r\n         local h1, h2, h3, h4, h5, h6, h7, h8 = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]\r\n         for pos = offs + 1, offs + size, 64 do\r\n            W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n               string_unpack(\">i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4\", str, pos)\r\n            for j = 17, 64 do\r\n               local a, b = W[j-15], W[j-2]\r\n               W[j] = (a>>7 ~ a<<25 ~ a<<14 ~ a>>18 ~ a>>3) + (b<<15 ~ b>>17 ~ b<<13 ~ b>>19 ~ b>>10) + W[j-7] + W[j-16]\r\n            end\r\n            local a, b, c, d, e, f, g, h = h1, h2, h3, h4, h5, h6, h7, h8\r\n            for j = 1, 64 do\r\n               local z = (e>>6 ~ e<<26 ~ e>>11 ~ e<<21 ~ e>>25 ~ e<<7) + (g ~ e & (f ~ g)) + h + K[j] + W[j]\r\n               h = g\r\n               g = f\r\n               f = e\r\n               e = z + d\r\n               d = c\r\n               c = b\r\n               b = a\r\n               a = z + ((a ~ c) & d ~ a & c) + (a>>2 ~ a<<30 ~ a>>13 ~ a<<19 ~ a<<10 ~ a>>22)\r\n            end\r\n            h1 = a + h1\r\n            h2 = b + h2\r\n            h3 = c + h3\r\n            h4 = d + h4\r\n            h5 = e + h5\r\n            h6 = f + h6\r\n            h7 = g + h7\r\n            h8 = h + h8\r\n         end\r\n         H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8] = h1, h2, h3, h4, h5, h6, h7, h8\r\n      end\r\n\r\n      local function sha512_feed_128(H_lo, H_hi, str, offs, size)\r\n         -- offs >= 0, size >= 0, size is multiple of 128\r\n         -- W1_hi, W1_lo, W2_hi, W2_lo, ...   Wk_hi = W[2*k-1], Wk_lo = W[2*k]\r\n         local floor, W, K_lo, K_hi = floor, common_W, sha2_K_lo, sha2_K_hi\r\n         local h1_lo, h2_lo, h3_lo, h4_lo, h5_lo, h6_lo, h7_lo, h8_lo = H_lo[1], H_lo[2], H_lo[3], H_lo[4], H_lo[5], H_lo[6], H_lo[7], H_lo[8]\r\n         local h1_hi, h2_hi, h3_hi, h4_hi, h5_hi, h6_hi, h7_hi, h8_hi = H_hi[1], H_hi[2], H_hi[3], H_hi[4], H_hi[5], H_hi[6], H_hi[7], H_hi[8]\r\n         for pos = offs + 1, offs + size, 128 do\r\n            W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16],\r\n               W[17], W[18], W[19], W[20], W[21], W[22], W[23], W[24], W[25], W[26], W[27], W[28], W[29], W[30], W[31], W[32] =\r\n               string_unpack(\">i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4\", str, pos)\r\n            for jj = 17*2, 80*2, 2 do\r\n               local a_lo, a_hi, b_lo, b_hi = W[jj-30], W[jj-31], W[jj-4], W[jj-5]\r\n               local tmp =\r\n                  (a_lo>>1 ~ a_hi<<31 ~ a_lo>>8 ~ a_hi<<24 ~ a_lo>>7 ~ a_hi<<25) % 2^32\r\n                  + (b_lo>>19 ~ b_hi<<13 ~ b_lo<<3 ~ b_hi>>29 ~ b_lo>>6 ~ b_hi<<26) % 2^32\r\n                  + W[jj-14] % 2^32 + W[jj-32] % 2^32\r\n               W[jj-1] =\r\n                  (a_hi>>1 ~ a_lo<<31 ~ a_hi>>8 ~ a_lo<<24 ~ a_hi>>7)\r\n                  + (b_hi>>19 ~ b_lo<<13 ~ b_hi<<3 ~ b_lo>>29 ~ b_hi>>6)\r\n                  + W[jj-15] + W[jj-33] + floor(tmp / 2^32)\r\n               W[jj] = 0|((tmp + 2^31) % 2^32 - 2^31)\r\n            end\r\n            local a_lo, b_lo, c_lo, d_lo, e_lo, f_lo, g_lo, h_lo = h1_lo, h2_lo, h3_lo, h4_lo, h5_lo, h6_lo, h7_lo, h8_lo\r\n            local a_hi, b_hi, c_hi, d_hi, e_hi, f_hi, g_hi, h_hi = h1_hi, h2_hi, h3_hi, h4_hi, h5_hi, h6_hi, h7_hi, h8_hi\r\n            for j = 1, 80 do\r\n               local jj = 2*j\r\n               local z_lo = (e_lo>>14 ~ e_hi<<18 ~ e_lo>>18 ~ e_hi<<14 ~ e_lo<<23 ~ e_hi>>9) % 2^32 + (g_lo ~ e_lo & (f_lo ~ g_lo)) % 2^32 + h_lo % 2^32 + K_lo[j] + W[jj] % 2^32\r\n               local z_hi = (e_hi>>14 ~ e_lo<<18 ~ e_hi>>18 ~ e_lo<<14 ~ e_hi<<23 ~ e_lo>>9) + (g_hi ~ e_hi & (f_hi ~ g_hi)) + h_hi + K_hi[j] + W[jj-1] + floor(z_lo / 2^32)\r\n               z_lo = z_lo % 2^32\r\n               h_lo = g_lo;  h_hi = g_hi\r\n               g_lo = f_lo;  g_hi = f_hi\r\n               f_lo = e_lo;  f_hi = e_hi\r\n               e_lo = z_lo + d_lo % 2^32\r\n               e_hi = z_hi + d_hi + floor(e_lo / 2^32)\r\n               e_lo = 0|((e_lo + 2^31) % 2^32 - 2^31)\r\n               d_lo = c_lo;  d_hi = c_hi\r\n               c_lo = b_lo;  c_hi = b_hi\r\n               b_lo = a_lo;  b_hi = a_hi\r\n               z_lo = z_lo + (d_lo & c_lo ~ b_lo & (d_lo ~ c_lo)) % 2^32 + (b_lo>>28 ~ b_hi<<4 ~ b_lo<<30 ~ b_hi>>2 ~ b_lo<<25 ~ b_hi>>7) % 2^32\r\n               a_hi = z_hi + (d_hi & c_hi ~ b_hi & (d_hi ~ c_hi)) + (b_hi>>28 ~ b_lo<<4 ~ b_hi<<30 ~ b_lo>>2 ~ b_hi<<25 ~ b_lo>>7) + floor(z_lo / 2^32)\r\n               a_lo = 0|((z_lo + 2^31) % 2^32 - 2^31)\r\n            end\r\n            a_lo = h1_lo % 2^32 + a_lo % 2^32\r\n            h1_hi = h1_hi + a_hi + floor(a_lo / 2^32)\r\n            h1_lo = 0|((a_lo + 2^31) % 2^32 - 2^31)\r\n            a_lo = h2_lo % 2^32 + b_lo % 2^32\r\n            h2_hi = h2_hi + b_hi + floor(a_lo / 2^32)\r\n            h2_lo = 0|((a_lo + 2^31) % 2^32 - 2^31)\r\n            a_lo = h3_lo % 2^32 + c_lo % 2^32\r\n            h3_hi = h3_hi + c_hi + floor(a_lo / 2^32)\r\n            h3_lo = 0|((a_lo + 2^31) % 2^32 - 2^31)\r\n            a_lo = h4_lo % 2^32 + d_lo % 2^32\r\n            h4_hi = h4_hi + d_hi + floor(a_lo / 2^32)\r\n            h4_lo = 0|((a_lo + 2^31) % 2^32 - 2^31)\r\n            a_lo = h5_lo % 2^32 + e_lo % 2^32\r\n            h5_hi = h5_hi + e_hi + floor(a_lo / 2^32)\r\n            h5_lo = 0|((a_lo + 2^31) % 2^32 - 2^31)\r\n            a_lo = h6_lo % 2^32 + f_lo % 2^32\r\n            h6_hi = h6_hi + f_hi + floor(a_lo / 2^32)\r\n            h6_lo = 0|((a_lo + 2^31) % 2^32 - 2^31)\r\n            a_lo = h7_lo % 2^32 + g_lo % 2^32\r\n            h7_hi = h7_hi + g_hi + floor(a_lo / 2^32)\r\n            h7_lo = 0|((a_lo + 2^31) % 2^32 - 2^31)\r\n            a_lo = h8_lo % 2^32 + h_lo % 2^32\r\n            h8_hi = h8_hi + h_hi + floor(a_lo / 2^32)\r\n            h8_lo = 0|((a_lo + 2^31) % 2^32 - 2^31)\r\n         end\r\n         H_lo[1], H_lo[2], H_lo[3], H_lo[4], H_lo[5], H_lo[6], H_lo[7], H_lo[8] = h1_lo, h2_lo, h3_lo, h4_lo, h5_lo, h6_lo, h7_lo, h8_lo\r\n         H_hi[1], H_hi[2], H_hi[3], H_hi[4], H_hi[5], H_hi[6], H_hi[7], H_hi[8] = h1_hi, h2_hi, h3_hi, h4_hi, h5_hi, h6_hi, h7_hi, h8_hi\r\n      end\r\n\r\n      local function md5_feed_64(H, str, offs, size)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         local W, K, md5_next_shift = common_W, md5_K, md5_next_shift\r\n         local h1, h2, h3, h4 = H[1], H[2], H[3], H[4]\r\n         for pos = offs + 1, offs + size, 64 do\r\n            W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n               string_unpack(\"<i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4\", str, pos)\r\n            local a, b, c, d = h1, h2, h3, h4\r\n            local s = 32-7\r\n            for j = 1, 16 do\r\n               local F = (d ~ b & (c ~ d)) + a + K[j] + W[j]\r\n               a = d\r\n               d = c\r\n               c = b\r\n               b = (F << 32-s | F>>s) + b\r\n               s = md5_next_shift[s]\r\n            end\r\n            s = 32-5\r\n            for j = 17, 32 do\r\n               local F = (c ~ d & (b ~ c)) + a + K[j] + W[(5*j-4 & 15) + 1]\r\n               a = d\r\n               d = c\r\n               c = b\r\n               b = (F << 32-s | F>>s) + b\r\n               s = md5_next_shift[s]\r\n            end\r\n            s = 32-4\r\n            for j = 33, 48 do\r\n               local F = (b ~ c ~ d) + a + K[j] + W[(3*j+2 & 15) + 1]\r\n               a = d\r\n               d = c\r\n               c = b\r\n               b = (F << 32-s | F>>s) + b\r\n               s = md5_next_shift[s]\r\n            end\r\n            s = 32-6\r\n            for j = 49, 64 do\r\n               local F = (c ~ (b | ~d)) + a + K[j] + W[(j*7-7 & 15) + 1]\r\n               a = d\r\n               d = c\r\n               c = b\r\n               b = (F << 32-s | F>>s) + b\r\n               s = md5_next_shift[s]\r\n            end\r\n            h1 = a + h1\r\n            h2 = b + h2\r\n            h3 = c + h3\r\n            h4 = d + h4\r\n         end\r\n         H[1], H[2], H[3], H[4] = h1, h2, h3, h4\r\n      end\r\n\r\n      local function sha1_feed_64(H, str, offs, size)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         local W = common_W\r\n         local h1, h2, h3, h4, h5 = H[1], H[2], H[3], H[4], H[5]\r\n         for pos = offs + 1, offs + size, 64 do\r\n            W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n               string_unpack(\">i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4\", str, pos)\r\n            for j = 17, 80 do\r\n               local a = W[j-3] ~ W[j-8] ~ W[j-14] ~ W[j-16]\r\n               W[j] = a << 1 ~ a >> 31\r\n            end\r\n            local a, b, c, d, e = h1, h2, h3, h4, h5\r\n            for j = 1, 20 do\r\n               local z = (a << 5 ~ a >> 27) + (d ~ b & (c ~ d)) + 0x5A827999 + W[j] + e      -- constant = floor(2^30 * sqrt(2))\r\n               e = d\r\n               d = c\r\n               c = b << 30 ~ b >> 2\r\n               b = a\r\n               a = z\r\n            end\r\n            for j = 21, 40 do\r\n               local z = (a << 5 ~ a >> 27) + (b ~ c ~ d) + 0x6ED9EBA1 + W[j] + e            -- 2^30 * sqrt(3)\r\n               e = d\r\n               d = c\r\n               c = b << 30 ~ b >> 2\r\n               b = a\r\n               a = z\r\n            end\r\n            for j = 41, 60 do\r\n               local z = (a << 5 ~ a >> 27) + ((b ~ c) & d ~ b & c) + 0x8F1BBCDC + W[j] + e  -- 2^30 * sqrt(5)\r\n               e = d\r\n               d = c\r\n               c = b << 30 ~ b >> 2\r\n               b = a\r\n               a = z\r\n            end\r\n            for j = 61, 80 do\r\n               local z = (a << 5 ~ a >> 27) + (b ~ c ~ d) + 0xCA62C1D6 + W[j] + e            -- 2^30 * sqrt(10)\r\n               e = d\r\n               d = c\r\n               c = b << 30 ~ b >> 2\r\n               b = a\r\n               a = z\r\n            end\r\n            h1 = a + h1\r\n            h2 = b + h2\r\n            h3 = c + h3\r\n            h4 = d + h4\r\n            h5 = e + h5\r\n         end\r\n         H[1], H[2], H[3], H[4], H[5] = h1, h2, h3, h4, h5\r\n      end\r\n\r\n      local keccak_format_i4i4 = build_keccak_format(\"i4i4\")\r\n\r\n      local function keccak_feed(lanes_lo, lanes_hi, str, offs, size, block_size_in_bytes)\r\n         -- offs >= 0, size >= 0, size is multiple of block_size_in_bytes, block_size_in_bytes is positive multiple of 8\r\n         local RC_lo, RC_hi = sha3_RC_lo, sha3_RC_hi\r\n         local qwords_qty = block_size_in_bytes / 8\r\n         local keccak_format = keccak_format_i4i4[qwords_qty]\r\n         for pos = offs + 1, offs + size, block_size_in_bytes do\r\n            local dwords_from_message = {string_unpack(keccak_format, str, pos)}\r\n            for j = 1, qwords_qty do\r\n               lanes_lo[j] = lanes_lo[j] ~ dwords_from_message[2*j-1]\r\n               lanes_hi[j] = lanes_hi[j] ~ dwords_from_message[2*j]\r\n            end\r\n            local L01_lo, L01_hi, L02_lo, L02_hi, L03_lo, L03_hi, L04_lo, L04_hi, L05_lo, L05_hi, L06_lo, L06_hi, L07_lo, L07_hi, L08_lo, L08_hi,\r\n               L09_lo, L09_hi, L10_lo, L10_hi, L11_lo, L11_hi, L12_lo, L12_hi, L13_lo, L13_hi, L14_lo, L14_hi, L15_lo, L15_hi, L16_lo, L16_hi,\r\n               L17_lo, L17_hi, L18_lo, L18_hi, L19_lo, L19_hi, L20_lo, L20_hi, L21_lo, L21_hi, L22_lo, L22_hi, L23_lo, L23_hi, L24_lo, L24_hi, L25_lo, L25_hi =\r\n               lanes_lo[1], lanes_hi[1], lanes_lo[2], lanes_hi[2], lanes_lo[3], lanes_hi[3], lanes_lo[4], lanes_hi[4], lanes_lo[5], lanes_hi[5],\r\n               lanes_lo[6], lanes_hi[6], lanes_lo[7], lanes_hi[7], lanes_lo[8], lanes_hi[8], lanes_lo[9], lanes_hi[9], lanes_lo[10], lanes_hi[10],\r\n               lanes_lo[11], lanes_hi[11], lanes_lo[12], lanes_hi[12], lanes_lo[13], lanes_hi[13], lanes_lo[14], lanes_hi[14], lanes_lo[15], lanes_hi[15],\r\n               lanes_lo[16], lanes_hi[16], lanes_lo[17], lanes_hi[17], lanes_lo[18], lanes_hi[18], lanes_lo[19], lanes_hi[19], lanes_lo[20], lanes_hi[20],\r\n               lanes_lo[21], lanes_hi[21], lanes_lo[22], lanes_hi[22], lanes_lo[23], lanes_hi[23], lanes_lo[24], lanes_hi[24], lanes_lo[25], lanes_hi[25]\r\n            for round_idx = 1, 24 do\r\n               local C1_lo = L01_lo ~ L06_lo ~ L11_lo ~ L16_lo ~ L21_lo\r\n               local C1_hi = L01_hi ~ L06_hi ~ L11_hi ~ L16_hi ~ L21_hi\r\n               local C2_lo = L02_lo ~ L07_lo ~ L12_lo ~ L17_lo ~ L22_lo\r\n               local C2_hi = L02_hi ~ L07_hi ~ L12_hi ~ L17_hi ~ L22_hi\r\n               local C3_lo = L03_lo ~ L08_lo ~ L13_lo ~ L18_lo ~ L23_lo\r\n               local C3_hi = L03_hi ~ L08_hi ~ L13_hi ~ L18_hi ~ L23_hi\r\n               local C4_lo = L04_lo ~ L09_lo ~ L14_lo ~ L19_lo ~ L24_lo\r\n               local C4_hi = L04_hi ~ L09_hi ~ L14_hi ~ L19_hi ~ L24_hi\r\n               local C5_lo = L05_lo ~ L10_lo ~ L15_lo ~ L20_lo ~ L25_lo\r\n               local C5_hi = L05_hi ~ L10_hi ~ L15_hi ~ L20_hi ~ L25_hi\r\n               local D_lo = C1_lo ~ C3_lo<<1 ~ C3_hi>>31\r\n               local D_hi = C1_hi ~ C3_hi<<1 ~ C3_lo>>31\r\n               local T0_lo = D_lo ~ L02_lo\r\n               local T0_hi = D_hi ~ L02_hi\r\n               local T1_lo = D_lo ~ L07_lo\r\n               local T1_hi = D_hi ~ L07_hi\r\n               local T2_lo = D_lo ~ L12_lo\r\n               local T2_hi = D_hi ~ L12_hi\r\n               local T3_lo = D_lo ~ L17_lo\r\n               local T3_hi = D_hi ~ L17_hi\r\n               local T4_lo = D_lo ~ L22_lo\r\n               local T4_hi = D_hi ~ L22_hi\r\n               L02_lo = T1_lo>>20 ~ T1_hi<<12\r\n               L02_hi = T1_hi>>20 ~ T1_lo<<12\r\n               L07_lo = T3_lo>>19 ~ T3_hi<<13\r\n               L07_hi = T3_hi>>19 ~ T3_lo<<13\r\n               L12_lo = T0_lo<<1 ~ T0_hi>>31\r\n               L12_hi = T0_hi<<1 ~ T0_lo>>31\r\n               L17_lo = T2_lo<<10 ~ T2_hi>>22\r\n               L17_hi = T2_hi<<10 ~ T2_lo>>22\r\n               L22_lo = T4_lo<<2 ~ T4_hi>>30\r\n               L22_hi = T4_hi<<2 ~ T4_lo>>30\r\n               D_lo = C2_lo ~ C4_lo<<1 ~ C4_hi>>31\r\n               D_hi = C2_hi ~ C4_hi<<1 ~ C4_lo>>31\r\n               T0_lo = D_lo ~ L03_lo\r\n               T0_hi = D_hi ~ L03_hi\r\n               T1_lo = D_lo ~ L08_lo\r\n               T1_hi = D_hi ~ L08_hi\r\n               T2_lo = D_lo ~ L13_lo\r\n               T2_hi = D_hi ~ L13_hi\r\n               T3_lo = D_lo ~ L18_lo\r\n               T3_hi = D_hi ~ L18_hi\r\n               T4_lo = D_lo ~ L23_lo\r\n               T4_hi = D_hi ~ L23_hi\r\n               L03_lo = T2_lo>>21 ~ T2_hi<<11\r\n               L03_hi = T2_hi>>21 ~ T2_lo<<11\r\n               L08_lo = T4_lo>>3 ~ T4_hi<<29\r\n               L08_hi = T4_hi>>3 ~ T4_lo<<29\r\n               L13_lo = T1_lo<<6 ~ T1_hi>>26\r\n               L13_hi = T1_hi<<6 ~ T1_lo>>26\r\n               L18_lo = T3_lo<<15 ~ T3_hi>>17\r\n               L18_hi = T3_hi<<15 ~ T3_lo>>17\r\n               L23_lo = T0_lo>>2 ~ T0_hi<<30\r\n               L23_hi = T0_hi>>2 ~ T0_lo<<30\r\n               D_lo = C3_lo ~ C5_lo<<1 ~ C5_hi>>31\r\n               D_hi = C3_hi ~ C5_hi<<1 ~ C5_lo>>31\r\n               T0_lo = D_lo ~ L04_lo\r\n               T0_hi = D_hi ~ L04_hi\r\n               T1_lo = D_lo ~ L09_lo\r\n               T1_hi = D_hi ~ L09_hi\r\n               T2_lo = D_lo ~ L14_lo\r\n               T2_hi = D_hi ~ L14_hi\r\n               T3_lo = D_lo ~ L19_lo\r\n               T3_hi = D_hi ~ L19_hi\r\n               T4_lo = D_lo ~ L24_lo\r\n               T4_hi = D_hi ~ L24_hi\r\n               L04_lo = T3_lo<<21 ~ T3_hi>>11\r\n               L04_hi = T3_hi<<21 ~ T3_lo>>11\r\n               L09_lo = T0_lo<<28 ~ T0_hi>>4\r\n               L09_hi = T0_hi<<28 ~ T0_lo>>4\r\n               L14_lo = T2_lo<<25 ~ T2_hi>>7\r\n               L14_hi = T2_hi<<25 ~ T2_lo>>7\r\n               L19_lo = T4_lo>>8 ~ T4_hi<<24\r\n               L19_hi = T4_hi>>8 ~ T4_lo<<24\r\n               L24_lo = T1_lo>>9 ~ T1_hi<<23\r\n               L24_hi = T1_hi>>9 ~ T1_lo<<23\r\n               D_lo = C4_lo ~ C1_lo<<1 ~ C1_hi>>31\r\n               D_hi = C4_hi ~ C1_hi<<1 ~ C1_lo>>31\r\n               T0_lo = D_lo ~ L05_lo\r\n               T0_hi = D_hi ~ L05_hi\r\n               T1_lo = D_lo ~ L10_lo\r\n               T1_hi = D_hi ~ L10_hi\r\n               T2_lo = D_lo ~ L15_lo\r\n               T2_hi = D_hi ~ L15_hi\r\n               T3_lo = D_lo ~ L20_lo\r\n               T3_hi = D_hi ~ L20_hi\r\n               T4_lo = D_lo ~ L25_lo\r\n               T4_hi = D_hi ~ L25_hi\r\n               L05_lo = T4_lo<<14 ~ T4_hi>>18\r\n               L05_hi = T4_hi<<14 ~ T4_lo>>18\r\n               L10_lo = T1_lo<<20 ~ T1_hi>>12\r\n               L10_hi = T1_hi<<20 ~ T1_lo>>12\r\n               L15_lo = T3_lo<<8 ~ T3_hi>>24\r\n               L15_hi = T3_hi<<8 ~ T3_lo>>24\r\n               L20_lo = T0_lo<<27 ~ T0_hi>>5\r\n               L20_hi = T0_hi<<27 ~ T0_lo>>5\r\n               L25_lo = T2_lo>>25 ~ T2_hi<<7\r\n               L25_hi = T2_hi>>25 ~ T2_lo<<7\r\n               D_lo = C5_lo ~ C2_lo<<1 ~ C2_hi>>31\r\n               D_hi = C5_hi ~ C2_hi<<1 ~ C2_lo>>31\r\n               T1_lo = D_lo ~ L06_lo\r\n               T1_hi = D_hi ~ L06_hi\r\n               T2_lo = D_lo ~ L11_lo\r\n               T2_hi = D_hi ~ L11_hi\r\n               T3_lo = D_lo ~ L16_lo\r\n               T3_hi = D_hi ~ L16_hi\r\n               T4_lo = D_lo ~ L21_lo\r\n               T4_hi = D_hi ~ L21_hi\r\n               L06_lo = T2_lo<<3 ~ T2_hi>>29\r\n               L06_hi = T2_hi<<3 ~ T2_lo>>29\r\n               L11_lo = T4_lo<<18 ~ T4_hi>>14\r\n               L11_hi = T4_hi<<18 ~ T4_lo>>14\r\n               L16_lo = T1_lo>>28 ~ T1_hi<<4\r\n               L16_hi = T1_hi>>28 ~ T1_lo<<4\r\n               L21_lo = T3_lo>>23 ~ T3_hi<<9\r\n               L21_hi = T3_hi>>23 ~ T3_lo<<9\r\n               L01_lo = D_lo ~ L01_lo\r\n               L01_hi = D_hi ~ L01_hi\r\n               L01_lo, L02_lo, L03_lo, L04_lo, L05_lo = L01_lo ~ ~L02_lo & L03_lo, L02_lo ~ ~L03_lo & L04_lo, L03_lo ~ ~L04_lo & L05_lo, L04_lo ~ ~L05_lo & L01_lo, L05_lo ~ ~L01_lo & L02_lo\r\n               L01_hi, L02_hi, L03_hi, L04_hi, L05_hi = L01_hi ~ ~L02_hi & L03_hi, L02_hi ~ ~L03_hi & L04_hi, L03_hi ~ ~L04_hi & L05_hi, L04_hi ~ ~L05_hi & L01_hi, L05_hi ~ ~L01_hi & L02_hi\r\n               L06_lo, L07_lo, L08_lo, L09_lo, L10_lo = L09_lo ~ ~L10_lo & L06_lo, L10_lo ~ ~L06_lo & L07_lo, L06_lo ~ ~L07_lo & L08_lo, L07_lo ~ ~L08_lo & L09_lo, L08_lo ~ ~L09_lo & L10_lo\r\n               L06_hi, L07_hi, L08_hi, L09_hi, L10_hi = L09_hi ~ ~L10_hi & L06_hi, L10_hi ~ ~L06_hi & L07_hi, L06_hi ~ ~L07_hi & L08_hi, L07_hi ~ ~L08_hi & L09_hi, L08_hi ~ ~L09_hi & L10_hi\r\n               L11_lo, L12_lo, L13_lo, L14_lo, L15_lo = L12_lo ~ ~L13_lo & L14_lo, L13_lo ~ ~L14_lo & L15_lo, L14_lo ~ ~L15_lo & L11_lo, L15_lo ~ ~L11_lo & L12_lo, L11_lo ~ ~L12_lo & L13_lo\r\n               L11_hi, L12_hi, L13_hi, L14_hi, L15_hi = L12_hi ~ ~L13_hi & L14_hi, L13_hi ~ ~L14_hi & L15_hi, L14_hi ~ ~L15_hi & L11_hi, L15_hi ~ ~L11_hi & L12_hi, L11_hi ~ ~L12_hi & L13_hi\r\n               L16_lo, L17_lo, L18_lo, L19_lo, L20_lo = L20_lo ~ ~L16_lo & L17_lo, L16_lo ~ ~L17_lo & L18_lo, L17_lo ~ ~L18_lo & L19_lo, L18_lo ~ ~L19_lo & L20_lo, L19_lo ~ ~L20_lo & L16_lo\r\n               L16_hi, L17_hi, L18_hi, L19_hi, L20_hi = L20_hi ~ ~L16_hi & L17_hi, L16_hi ~ ~L17_hi & L18_hi, L17_hi ~ ~L18_hi & L19_hi, L18_hi ~ ~L19_hi & L20_hi, L19_hi ~ ~L20_hi & L16_hi\r\n               L21_lo, L22_lo, L23_lo, L24_lo, L25_lo = L23_lo ~ ~L24_lo & L25_lo, L24_lo ~ ~L25_lo & L21_lo, L25_lo ~ ~L21_lo & L22_lo, L21_lo ~ ~L22_lo & L23_lo, L22_lo ~ ~L23_lo & L24_lo\r\n               L21_hi, L22_hi, L23_hi, L24_hi, L25_hi = L23_hi ~ ~L24_hi & L25_hi, L24_hi ~ ~L25_hi & L21_hi, L25_hi ~ ~L21_hi & L22_hi, L21_hi ~ ~L22_hi & L23_hi, L22_hi ~ ~L23_hi & L24_hi\r\n               L01_lo = L01_lo ~ RC_lo[round_idx]\r\n               L01_hi = L01_hi ~ RC_hi[round_idx]\r\n            end\r\n            lanes_lo[1]  = L01_lo;  lanes_hi[1]  = L01_hi\r\n            lanes_lo[2]  = L02_lo;  lanes_hi[2]  = L02_hi\r\n            lanes_lo[3]  = L03_lo;  lanes_hi[3]  = L03_hi\r\n            lanes_lo[4]  = L04_lo;  lanes_hi[4]  = L04_hi\r\n            lanes_lo[5]  = L05_lo;  lanes_hi[5]  = L05_hi\r\n            lanes_lo[6]  = L06_lo;  lanes_hi[6]  = L06_hi\r\n            lanes_lo[7]  = L07_lo;  lanes_hi[7]  = L07_hi\r\n            lanes_lo[8]  = L08_lo;  lanes_hi[8]  = L08_hi\r\n            lanes_lo[9]  = L09_lo;  lanes_hi[9]  = L09_hi\r\n            lanes_lo[10] = L10_lo;  lanes_hi[10] = L10_hi\r\n            lanes_lo[11] = L11_lo;  lanes_hi[11] = L11_hi\r\n            lanes_lo[12] = L12_lo;  lanes_hi[12] = L12_hi\r\n            lanes_lo[13] = L13_lo;  lanes_hi[13] = L13_hi\r\n            lanes_lo[14] = L14_lo;  lanes_hi[14] = L14_hi\r\n            lanes_lo[15] = L15_lo;  lanes_hi[15] = L15_hi\r\n            lanes_lo[16] = L16_lo;  lanes_hi[16] = L16_hi\r\n            lanes_lo[17] = L17_lo;  lanes_hi[17] = L17_hi\r\n            lanes_lo[18] = L18_lo;  lanes_hi[18] = L18_hi\r\n            lanes_lo[19] = L19_lo;  lanes_hi[19] = L19_hi\r\n            lanes_lo[20] = L20_lo;  lanes_hi[20] = L20_hi\r\n            lanes_lo[21] = L21_lo;  lanes_hi[21] = L21_hi\r\n            lanes_lo[22] = L22_lo;  lanes_hi[22] = L22_hi\r\n            lanes_lo[23] = L23_lo;  lanes_hi[23] = L23_hi\r\n            lanes_lo[24] = L24_lo;  lanes_hi[24] = L24_hi\r\n            lanes_lo[25] = L25_lo;  lanes_hi[25] = L25_hi\r\n         end\r\n      end\r\n\r\n      local function blake2s_feed_64(H, str, offs, size, bytes_compressed, last_block_size, is_last_node)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         local W = common_W\r\n         local h1, h2, h3, h4, h5, h6, h7, h8 = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]\r\n         for pos = offs + 1, offs + size, 64 do\r\n            if str then\r\n               W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n                  string_unpack(\"<i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4\", str, pos)\r\n            end\r\n            local v0, v1, v2, v3, v4, v5, v6, v7 = h1, h2, h3, h4, h5, h6, h7, h8\r\n            local v8, v9, vA, vB, vC, vD, vE, vF = sha2_H_hi[1], sha2_H_hi[2], sha2_H_hi[3], sha2_H_hi[4], sha2_H_hi[5], sha2_H_hi[6], sha2_H_hi[7], sha2_H_hi[8]\r\n            bytes_compressed = bytes_compressed + (last_block_size or 64)\r\n            local t0 = bytes_compressed % 2^32\r\n            local t1 = (bytes_compressed - t0) / 2^32\r\n            t0 = (t0 + 2^31) % 2^32 - 2^31  -- convert to int32 range (-2^31)..(2^31-1) to avoid \"number has no integer representation\" error while XORing\r\n            vC = vC ~ t0  -- t0 = low_4_bytes(bytes_compressed)\r\n            vD = vD ~ t1  -- t1 = high_4_bytes(bytes_compressed)\r\n            if last_block_size then  -- flag f0\r\n               vE = ~vE\r\n            end\r\n            if is_last_node then  -- flag f1\r\n               vF = ~vF\r\n            end\r\n            for j = 1, 10 do\r\n               local row = sigma[j]\r\n               v0 = v0 + v4 + W[row[1]]\r\n               vC = vC ~ v0\r\n               vC = vC >> 16 | vC << 16\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = v4 >> 12 | v4 << 20\r\n               v0 = v0 + v4 + W[row[2]]\r\n               vC = vC ~ v0\r\n               vC = vC >> 8 | vC << 24\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = v4 >> 7 | v4 << 25\r\n               v1 = v1 + v5 + W[row[3]]\r\n               vD = vD ~ v1\r\n               vD = vD >> 16 | vD << 16\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = v5 >> 12 | v5 << 20\r\n               v1 = v1 + v5 + W[row[4]]\r\n               vD = vD ~ v1\r\n               vD = vD >> 8 | vD << 24\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = v5 >> 7 | v5 << 25\r\n               v2 = v2 + v6 + W[row[5]]\r\n               vE = vE ~ v2\r\n               vE = vE >> 16 | vE << 16\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = v6 >> 12 | v6 << 20\r\n               v2 = v2 + v6 + W[row[6]]\r\n               vE = vE ~ v2\r\n               vE = vE >> 8 | vE << 24\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = v6 >> 7 | v6 << 25\r\n               v3 = v3 + v7 + W[row[7]]\r\n               vF = vF ~ v3\r\n               vF = vF >> 16 | vF << 16\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = v7 >> 12 | v7 << 20\r\n               v3 = v3 + v7 + W[row[8]]\r\n               vF = vF ~ v3\r\n               vF = vF >> 8 | vF << 24\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = v7 >> 7 | v7 << 25\r\n               v0 = v0 + v5 + W[row[9]]\r\n               vF = vF ~ v0\r\n               vF = vF >> 16 | vF << 16\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = v5 >> 12 | v5 << 20\r\n               v0 = v0 + v5 + W[row[10]]\r\n               vF = vF ~ v0\r\n               vF = vF >> 8 | vF << 24\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = v5 >> 7 | v5 << 25\r\n               v1 = v1 + v6 + W[row[11]]\r\n               vC = vC ~ v1\r\n               vC = vC >> 16 | vC << 16\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = v6 >> 12 | v6 << 20\r\n               v1 = v1 + v6 + W[row[12]]\r\n               vC = vC ~ v1\r\n               vC = vC >> 8 | vC << 24\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = v6 >> 7 | v6 << 25\r\n               v2 = v2 + v7 + W[row[13]]\r\n               vD = vD ~ v2\r\n               vD = vD >> 16 | vD << 16\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = v7 >> 12 | v7 << 20\r\n               v2 = v2 + v7 + W[row[14]]\r\n               vD = vD ~ v2\r\n               vD = vD >> 8 | vD << 24\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = v7 >> 7 | v7 << 25\r\n               v3 = v3 + v4 + W[row[15]]\r\n               vE = vE ~ v3\r\n               vE = vE >> 16 | vE << 16\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = v4 >> 12 | v4 << 20\r\n               v3 = v3 + v4 + W[row[16]]\r\n               vE = vE ~ v3\r\n               vE = vE >> 8 | vE << 24\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = v4 >> 7 | v4 << 25\r\n            end\r\n            h1 = h1 ~ v0 ~ v8\r\n            h2 = h2 ~ v1 ~ v9\r\n            h3 = h3 ~ v2 ~ vA\r\n            h4 = h4 ~ v3 ~ vB\r\n            h5 = h5 ~ v4 ~ vC\r\n            h6 = h6 ~ v5 ~ vD\r\n            h7 = h7 ~ v6 ~ vE\r\n            h8 = h8 ~ v7 ~ vF\r\n         end\r\n         H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8] = h1, h2, h3, h4, h5, h6, h7, h8\r\n         return bytes_compressed\r\n      end\r\n\r\n      local function blake2b_feed_128(H_lo, H_hi, str, offs, size, bytes_compressed, last_block_size, is_last_node)\r\n         -- offs >= 0, size >= 0, size is multiple of 128\r\n         local W = common_W\r\n         local h1_lo, h2_lo, h3_lo, h4_lo, h5_lo, h6_lo, h7_lo, h8_lo = H_lo[1], H_lo[2], H_lo[3], H_lo[4], H_lo[5], H_lo[6], H_lo[7], H_lo[8]\r\n         local h1_hi, h2_hi, h3_hi, h4_hi, h5_hi, h6_hi, h7_hi, h8_hi = H_hi[1], H_hi[2], H_hi[3], H_hi[4], H_hi[5], H_hi[6], H_hi[7], H_hi[8]\r\n         for pos = offs + 1, offs + size, 128 do\r\n            if str then\r\n               W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16],\r\n               W[17], W[18], W[19], W[20], W[21], W[22], W[23], W[24], W[25], W[26], W[27], W[28], W[29], W[30], W[31], W[32] =\r\n                  string_unpack(\"<i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4\", str, pos)\r\n            end\r\n            local v0_lo, v1_lo, v2_lo, v3_lo, v4_lo, v5_lo, v6_lo, v7_lo = h1_lo, h2_lo, h3_lo, h4_lo, h5_lo, h6_lo, h7_lo, h8_lo\r\n            local v0_hi, v1_hi, v2_hi, v3_hi, v4_hi, v5_hi, v6_hi, v7_hi = h1_hi, h2_hi, h3_hi, h4_hi, h5_hi, h6_hi, h7_hi, h8_hi\r\n            local v8_lo, v9_lo, vA_lo, vB_lo, vC_lo, vD_lo, vE_lo, vF_lo = sha2_H_lo[1], sha2_H_lo[2], sha2_H_lo[3], sha2_H_lo[4], sha2_H_lo[5], sha2_H_lo[6], sha2_H_lo[7], sha2_H_lo[8]\r\n            local v8_hi, v9_hi, vA_hi, vB_hi, vC_hi, vD_hi, vE_hi, vF_hi = sha2_H_hi[1], sha2_H_hi[2], sha2_H_hi[3], sha2_H_hi[4], sha2_H_hi[5], sha2_H_hi[6], sha2_H_hi[7], sha2_H_hi[8]\r\n            bytes_compressed = bytes_compressed + (last_block_size or 128)\r\n            local t0_lo = bytes_compressed % 2^32\r\n            local t0_hi = (bytes_compressed - t0_lo) / 2^32\r\n            t0_lo = (t0_lo + 2^31) % 2^32 - 2^31  -- convert to int32 range (-2^31)..(2^31-1) to avoid \"number has no integer representation\" error while XORing\r\n            vC_lo = vC_lo ~ t0_lo  -- t0 = low_8_bytes(bytes_compressed)\r\n            vC_hi = vC_hi ~ t0_hi\r\n            -- t1 = high_8_bytes(bytes_compressed) = 0,  message length is always below 2^53 bytes\r\n            if last_block_size then  -- flag f0\r\n               vE_lo = ~vE_lo\r\n               vE_hi = ~vE_hi\r\n            end\r\n            if is_last_node then  -- flag f1\r\n               vF_lo = ~vF_lo\r\n               vF_hi = ~vF_hi\r\n            end\r\n            for j = 1, 12 do\r\n               local row = sigma[j]\r\n               local k = row[1] * 2\r\n               v0_lo = v0_lo % 2^32 + v4_lo % 2^32 + W[k-1] % 2^32\r\n               v0_hi = v0_hi + v4_hi + floor(v0_lo / 2^32) + W[k]\r\n               v0_lo = 0|((v0_lo + 2^31) % 2^32 - 2^31)\r\n               vC_lo, vC_hi = vC_hi ~ v0_hi, vC_lo ~ v0_lo\r\n               v8_lo = v8_lo % 2^32 + vC_lo % 2^32\r\n               v8_hi = v8_hi + vC_hi + floor(v8_lo / 2^32)\r\n               v8_lo = 0|((v8_lo + 2^31) % 2^32 - 2^31)\r\n               v4_lo, v4_hi = v4_lo ~ v8_lo, v4_hi ~ v8_hi\r\n               v4_lo, v4_hi = v4_lo >> 24 | v4_hi << 8, v4_hi >> 24 | v4_lo << 8\r\n               k = row[2] * 2\r\n               v0_lo = v0_lo % 2^32 + v4_lo % 2^32 + W[k-1] % 2^32\r\n               v0_hi = v0_hi + v4_hi + floor(v0_lo / 2^32) + W[k]\r\n               v0_lo = 0|((v0_lo + 2^31) % 2^32 - 2^31)\r\n               vC_lo, vC_hi = vC_lo ~ v0_lo, vC_hi ~ v0_hi\r\n               vC_lo, vC_hi = vC_lo >> 16 | vC_hi << 16, vC_hi >> 16 | vC_lo << 16\r\n               v8_lo = v8_lo % 2^32 + vC_lo % 2^32\r\n               v8_hi = v8_hi + vC_hi + floor(v8_lo / 2^32)\r\n               v8_lo = 0|((v8_lo + 2^31) % 2^32 - 2^31)\r\n               v4_lo, v4_hi = v4_lo ~ v8_lo, v4_hi ~ v8_hi\r\n               v4_lo, v4_hi = v4_lo << 1 | v4_hi >> 31, v4_hi << 1 | v4_lo >> 31\r\n               k = row[3] * 2\r\n               v1_lo = v1_lo % 2^32 + v5_lo % 2^32 + W[k-1] % 2^32\r\n               v1_hi = v1_hi + v5_hi + floor(v1_lo / 2^32) + W[k]\r\n               v1_lo = 0|((v1_lo + 2^31) % 2^32 - 2^31)\r\n               vD_lo, vD_hi = vD_hi ~ v1_hi, vD_lo ~ v1_lo\r\n               v9_lo = v9_lo % 2^32 + vD_lo % 2^32\r\n               v9_hi = v9_hi + vD_hi + floor(v9_lo / 2^32)\r\n               v9_lo = 0|((v9_lo + 2^31) % 2^32 - 2^31)\r\n               v5_lo, v5_hi = v5_lo ~ v9_lo, v5_hi ~ v9_hi\r\n               v5_lo, v5_hi = v5_lo >> 24 | v5_hi << 8, v5_hi >> 24 | v5_lo << 8\r\n               k = row[4] * 2\r\n               v1_lo = v1_lo % 2^32 + v5_lo % 2^32 + W[k-1] % 2^32\r\n               v1_hi = v1_hi + v5_hi + floor(v1_lo / 2^32) + W[k]\r\n               v1_lo = 0|((v1_lo + 2^31) % 2^32 - 2^31)\r\n               vD_lo, vD_hi = vD_lo ~ v1_lo, vD_hi ~ v1_hi\r\n               vD_lo, vD_hi = vD_lo >> 16 | vD_hi << 16, vD_hi >> 16 | vD_lo << 16\r\n               v9_lo = v9_lo % 2^32 + vD_lo % 2^32\r\n               v9_hi = v9_hi + vD_hi + floor(v9_lo / 2^32)\r\n               v9_lo = 0|((v9_lo + 2^31) % 2^32 - 2^31)\r\n               v5_lo, v5_hi = v5_lo ~ v9_lo, v5_hi ~ v9_hi\r\n               v5_lo, v5_hi = v5_lo << 1 | v5_hi >> 31, v5_hi << 1 | v5_lo >> 31\r\n               k = row[5] * 2\r\n               v2_lo = v2_lo % 2^32 + v6_lo % 2^32 + W[k-1] % 2^32\r\n               v2_hi = v2_hi + v6_hi + floor(v2_lo / 2^32) + W[k]\r\n               v2_lo = 0|((v2_lo + 2^31) % 2^32 - 2^31)\r\n               vE_lo, vE_hi = vE_hi ~ v2_hi, vE_lo ~ v2_lo\r\n               vA_lo = vA_lo % 2^32 + vE_lo % 2^32\r\n               vA_hi = vA_hi + vE_hi + floor(vA_lo / 2^32)\r\n               vA_lo = 0|((vA_lo + 2^31) % 2^32 - 2^31)\r\n               v6_lo, v6_hi = v6_lo ~ vA_lo, v6_hi ~ vA_hi\r\n               v6_lo, v6_hi = v6_lo >> 24 | v6_hi << 8, v6_hi >> 24 | v6_lo << 8\r\n               k = row[6] * 2\r\n               v2_lo = v2_lo % 2^32 + v6_lo % 2^32 + W[k-1] % 2^32\r\n               v2_hi = v2_hi + v6_hi + floor(v2_lo / 2^32) + W[k]\r\n               v2_lo = 0|((v2_lo + 2^31) % 2^32 - 2^31)\r\n               vE_lo, vE_hi = vE_lo ~ v2_lo, vE_hi ~ v2_hi\r\n               vE_lo, vE_hi = vE_lo >> 16 | vE_hi << 16, vE_hi >> 16 | vE_lo << 16\r\n               vA_lo = vA_lo % 2^32 + vE_lo % 2^32\r\n               vA_hi = vA_hi + vE_hi + floor(vA_lo / 2^32)\r\n               vA_lo = 0|((vA_lo + 2^31) % 2^32 - 2^31)\r\n               v6_lo, v6_hi = v6_lo ~ vA_lo, v6_hi ~ vA_hi\r\n               v6_lo, v6_hi = v6_lo << 1 | v6_hi >> 31, v6_hi << 1 | v6_lo >> 31\r\n               k = row[7] * 2\r\n               v3_lo = v3_lo % 2^32 + v7_lo % 2^32 + W[k-1] % 2^32\r\n               v3_hi = v3_hi + v7_hi + floor(v3_lo / 2^32) + W[k]\r\n               v3_lo = 0|((v3_lo + 2^31) % 2^32 - 2^31)\r\n               vF_lo, vF_hi = vF_hi ~ v3_hi, vF_lo ~ v3_lo\r\n               vB_lo = vB_lo % 2^32 + vF_lo % 2^32\r\n               vB_hi = vB_hi + vF_hi + floor(vB_lo / 2^32)\r\n               vB_lo = 0|((vB_lo + 2^31) % 2^32 - 2^31)\r\n               v7_lo, v7_hi = v7_lo ~ vB_lo, v7_hi ~ vB_hi\r\n               v7_lo, v7_hi = v7_lo >> 24 | v7_hi << 8, v7_hi >> 24 | v7_lo << 8\r\n               k = row[8] * 2\r\n               v3_lo = v3_lo % 2^32 + v7_lo % 2^32 + W[k-1] % 2^32\r\n               v3_hi = v3_hi + v7_hi + floor(v3_lo / 2^32) + W[k]\r\n               v3_lo = 0|((v3_lo + 2^31) % 2^32 - 2^31)\r\n               vF_lo, vF_hi = vF_lo ~ v3_lo, vF_hi ~ v3_hi\r\n               vF_lo, vF_hi = vF_lo >> 16 | vF_hi << 16, vF_hi >> 16 | vF_lo << 16\r\n               vB_lo = vB_lo % 2^32 + vF_lo % 2^32\r\n               vB_hi = vB_hi + vF_hi + floor(vB_lo / 2^32)\r\n               vB_lo = 0|((vB_lo + 2^31) % 2^32 - 2^31)\r\n               v7_lo, v7_hi = v7_lo ~ vB_lo, v7_hi ~ vB_hi\r\n               v7_lo, v7_hi = v7_lo << 1 | v7_hi >> 31, v7_hi << 1 | v7_lo >> 31\r\n               k = row[9] * 2\r\n               v0_lo = v0_lo % 2^32 + v5_lo % 2^32 + W[k-1] % 2^32\r\n               v0_hi = v0_hi + v5_hi + floor(v0_lo / 2^32) + W[k]\r\n               v0_lo = 0|((v0_lo + 2^31) % 2^32 - 2^31)\r\n               vF_lo, vF_hi = vF_hi ~ v0_hi, vF_lo ~ v0_lo\r\n               vA_lo = vA_lo % 2^32 + vF_lo % 2^32\r\n               vA_hi = vA_hi + vF_hi + floor(vA_lo / 2^32)\r\n               vA_lo = 0|((vA_lo + 2^31) % 2^32 - 2^31)\r\n               v5_lo, v5_hi = v5_lo ~ vA_lo, v5_hi ~ vA_hi\r\n               v5_lo, v5_hi = v5_lo >> 24 | v5_hi << 8, v5_hi >> 24 | v5_lo << 8\r\n               k = row[10] * 2\r\n               v0_lo = v0_lo % 2^32 + v5_lo % 2^32 + W[k-1] % 2^32\r\n               v0_hi = v0_hi + v5_hi + floor(v0_lo / 2^32) + W[k]\r\n               v0_lo = 0|((v0_lo + 2^31) % 2^32 - 2^31)\r\n               vF_lo, vF_hi = vF_lo ~ v0_lo, vF_hi ~ v0_hi\r\n               vF_lo, vF_hi = vF_lo >> 16 | vF_hi << 16, vF_hi >> 16 | vF_lo << 16\r\n               vA_lo = vA_lo % 2^32 + vF_lo % 2^32\r\n               vA_hi = vA_hi + vF_hi + floor(vA_lo / 2^32)\r\n               vA_lo = 0|((vA_lo + 2^31) % 2^32 - 2^31)\r\n               v5_lo, v5_hi = v5_lo ~ vA_lo, v5_hi ~ vA_hi\r\n               v5_lo, v5_hi = v5_lo << 1 | v5_hi >> 31, v5_hi << 1 | v5_lo >> 31\r\n               k = row[11] * 2\r\n               v1_lo = v1_lo % 2^32 + v6_lo % 2^32 + W[k-1] % 2^32\r\n               v1_hi = v1_hi + v6_hi + floor(v1_lo / 2^32) + W[k]\r\n               v1_lo = 0|((v1_lo + 2^31) % 2^32 - 2^31)\r\n               vC_lo, vC_hi = vC_hi ~ v1_hi, vC_lo ~ v1_lo\r\n               vB_lo = vB_lo % 2^32 + vC_lo % 2^32\r\n               vB_hi = vB_hi + vC_hi + floor(vB_lo / 2^32)\r\n               vB_lo = 0|((vB_lo + 2^31) % 2^32 - 2^31)\r\n               v6_lo, v6_hi = v6_lo ~ vB_lo, v6_hi ~ vB_hi\r\n               v6_lo, v6_hi = v6_lo >> 24 | v6_hi << 8, v6_hi >> 24 | v6_lo << 8\r\n               k = row[12] * 2\r\n               v1_lo = v1_lo % 2^32 + v6_lo % 2^32 + W[k-1] % 2^32\r\n               v1_hi = v1_hi + v6_hi + floor(v1_lo / 2^32) + W[k]\r\n               v1_lo = 0|((v1_lo + 2^31) % 2^32 - 2^31)\r\n               vC_lo, vC_hi = vC_lo ~ v1_lo, vC_hi ~ v1_hi\r\n               vC_lo, vC_hi = vC_lo >> 16 | vC_hi << 16, vC_hi >> 16 | vC_lo << 16\r\n               vB_lo = vB_lo % 2^32 + vC_lo % 2^32\r\n               vB_hi = vB_hi + vC_hi + floor(vB_lo / 2^32)\r\n               vB_lo = 0|((vB_lo + 2^31) % 2^32 - 2^31)\r\n               v6_lo, v6_hi = v6_lo ~ vB_lo, v6_hi ~ vB_hi\r\n               v6_lo, v6_hi = v6_lo << 1 | v6_hi >> 31, v6_hi << 1 | v6_lo >> 31\r\n               k = row[13] * 2\r\n               v2_lo = v2_lo % 2^32 + v7_lo % 2^32 + W[k-1] % 2^32\r\n               v2_hi = v2_hi + v7_hi + floor(v2_lo / 2^32) + W[k]\r\n               v2_lo = 0|((v2_lo + 2^31) % 2^32 - 2^31)\r\n               vD_lo, vD_hi = vD_hi ~ v2_hi, vD_lo ~ v2_lo\r\n               v8_lo = v8_lo % 2^32 + vD_lo % 2^32\r\n               v8_hi = v8_hi + vD_hi + floor(v8_lo / 2^32)\r\n               v8_lo = 0|((v8_lo + 2^31) % 2^32 - 2^31)\r\n               v7_lo, v7_hi = v7_lo ~ v8_lo, v7_hi ~ v8_hi\r\n               v7_lo, v7_hi = v7_lo >> 24 | v7_hi << 8, v7_hi >> 24 | v7_lo << 8\r\n               k = row[14] * 2\r\n               v2_lo = v2_lo % 2^32 + v7_lo % 2^32 + W[k-1] % 2^32\r\n               v2_hi = v2_hi + v7_hi + floor(v2_lo / 2^32) + W[k]\r\n               v2_lo = 0|((v2_lo + 2^31) % 2^32 - 2^31)\r\n               vD_lo, vD_hi = vD_lo ~ v2_lo, vD_hi ~ v2_hi\r\n               vD_lo, vD_hi = vD_lo >> 16 | vD_hi << 16, vD_hi >> 16 | vD_lo << 16\r\n               v8_lo = v8_lo % 2^32 + vD_lo % 2^32\r\n               v8_hi = v8_hi + vD_hi + floor(v8_lo / 2^32)\r\n               v8_lo = 0|((v8_lo + 2^31) % 2^32 - 2^31)\r\n               v7_lo, v7_hi = v7_lo ~ v8_lo, v7_hi ~ v8_hi\r\n               v7_lo, v7_hi = v7_lo << 1 | v7_hi >> 31, v7_hi << 1 | v7_lo >> 31\r\n               k = row[15] * 2\r\n               v3_lo = v3_lo % 2^32 + v4_lo % 2^32 + W[k-1] % 2^32\r\n               v3_hi = v3_hi + v4_hi + floor(v3_lo / 2^32) + W[k]\r\n               v3_lo = 0|((v3_lo + 2^31) % 2^32 - 2^31)\r\n               vE_lo, vE_hi = vE_hi ~ v3_hi, vE_lo ~ v3_lo\r\n               v9_lo = v9_lo % 2^32 + vE_lo % 2^32\r\n               v9_hi = v9_hi + vE_hi + floor(v9_lo / 2^32)\r\n               v9_lo = 0|((v9_lo + 2^31) % 2^32 - 2^31)\r\n               v4_lo, v4_hi = v4_lo ~ v9_lo, v4_hi ~ v9_hi\r\n               v4_lo, v4_hi = v4_lo >> 24 | v4_hi << 8, v4_hi >> 24 | v4_lo << 8\r\n               k = row[16] * 2\r\n               v3_lo = v3_lo % 2^32 + v4_lo % 2^32 + W[k-1] % 2^32\r\n               v3_hi = v3_hi + v4_hi + floor(v3_lo / 2^32) + W[k]\r\n               v3_lo = 0|((v3_lo + 2^31) % 2^32 - 2^31)\r\n               vE_lo, vE_hi = vE_lo ~ v3_lo, vE_hi ~ v3_hi\r\n               vE_lo, vE_hi = vE_lo >> 16 | vE_hi << 16, vE_hi >> 16 | vE_lo << 16\r\n               v9_lo = v9_lo % 2^32 + vE_lo % 2^32\r\n               v9_hi = v9_hi + vE_hi + floor(v9_lo / 2^32)\r\n               v9_lo = 0|((v9_lo + 2^31) % 2^32 - 2^31)\r\n               v4_lo, v4_hi = v4_lo ~ v9_lo, v4_hi ~ v9_hi\r\n               v4_lo, v4_hi = v4_lo << 1 | v4_hi >> 31, v4_hi << 1 | v4_lo >> 31\r\n            end\r\n            h1_lo = h1_lo ~ v0_lo ~ v8_lo\r\n            h2_lo = h2_lo ~ v1_lo ~ v9_lo\r\n            h3_lo = h3_lo ~ v2_lo ~ vA_lo\r\n            h4_lo = h4_lo ~ v3_lo ~ vB_lo\r\n            h5_lo = h5_lo ~ v4_lo ~ vC_lo\r\n            h6_lo = h6_lo ~ v5_lo ~ vD_lo\r\n            h7_lo = h7_lo ~ v6_lo ~ vE_lo\r\n            h8_lo = h8_lo ~ v7_lo ~ vF_lo\r\n            h1_hi = h1_hi ~ v0_hi ~ v8_hi\r\n            h2_hi = h2_hi ~ v1_hi ~ v9_hi\r\n            h3_hi = h3_hi ~ v2_hi ~ vA_hi\r\n            h4_hi = h4_hi ~ v3_hi ~ vB_hi\r\n            h5_hi = h5_hi ~ v4_hi ~ vC_hi\r\n            h6_hi = h6_hi ~ v5_hi ~ vD_hi\r\n            h7_hi = h7_hi ~ v6_hi ~ vE_hi\r\n            h8_hi = h8_hi ~ v7_hi ~ vF_hi\r\n         end\r\n         H_lo[1], H_lo[2], H_lo[3], H_lo[4], H_lo[5], H_lo[6], H_lo[7], H_lo[8] = h1_lo, h2_lo, h3_lo, h4_lo, h5_lo, h6_lo, h7_lo, h8_lo\r\n         H_hi[1], H_hi[2], H_hi[3], H_hi[4], H_hi[5], H_hi[6], H_hi[7], H_hi[8] = h1_hi, h2_hi, h3_hi, h4_hi, h5_hi, h6_hi, h7_hi, h8_hi\r\n         return bytes_compressed\r\n      end\r\n\r\n      local function blake3_feed_64(str, offs, size, flags, chunk_index, H_in, H_out, wide_output, block_length)\r\n         -- offs >= 0, size >= 0, size is multiple of 64\r\n         block_length = block_length or 64\r\n         local W = common_W\r\n         local h1, h2, h3, h4, h5, h6, h7, h8 = H_in[1], H_in[2], H_in[3], H_in[4], H_in[5], H_in[6], H_in[7], H_in[8]\r\n         H_out = H_out or H_in\r\n         for pos = offs + 1, offs + size, 64 do\r\n            if str then\r\n               W[1], W[2], W[3], W[4], W[5], W[6], W[7], W[8], W[9], W[10], W[11], W[12], W[13], W[14], W[15], W[16] =\r\n                  string_unpack(\"<i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4i4\", str, pos)\r\n            end\r\n            local v0, v1, v2, v3, v4, v5, v6, v7 = h1, h2, h3, h4, h5, h6, h7, h8\r\n            local v8, v9, vA, vB = sha2_H_hi[1], sha2_H_hi[2], sha2_H_hi[3], sha2_H_hi[4]\r\n            local t0 = chunk_index % 2^32         -- t0 = low_4_bytes(chunk_index)\r\n            local t1 = (chunk_index - t0) / 2^32  -- t1 = high_4_bytes(chunk_index)\r\n            t0 = (t0 + 2^31) % 2^32 - 2^31  -- convert to int32 range (-2^31)..(2^31-1) to avoid \"number has no integer representation\" error while ORing\r\n            local vC, vD, vE, vF = 0|t0, 0|t1, block_length, flags\r\n            for j = 1, 7 do\r\n               v0 = v0 + v4 + W[perm_blake3[j]]\r\n               vC = vC ~ v0\r\n               vC = vC >> 16 | vC << 16\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = v4 >> 12 | v4 << 20\r\n               v0 = v0 + v4 + W[perm_blake3[j + 14]]\r\n               vC = vC ~ v0\r\n               vC = vC >> 8 | vC << 24\r\n               v8 = v8 + vC\r\n               v4 = v4 ~ v8\r\n               v4 = v4 >> 7 | v4 << 25\r\n               v1 = v1 + v5 + W[perm_blake3[j + 1]]\r\n               vD = vD ~ v1\r\n               vD = vD >> 16 | vD << 16\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = v5 >> 12 | v5 << 20\r\n               v1 = v1 + v5 + W[perm_blake3[j + 2]]\r\n               vD = vD ~ v1\r\n               vD = vD >> 8 | vD << 24\r\n               v9 = v9 + vD\r\n               v5 = v5 ~ v9\r\n               v5 = v5 >> 7 | v5 << 25\r\n               v2 = v2 + v6 + W[perm_blake3[j + 16]]\r\n               vE = vE ~ v2\r\n               vE = vE >> 16 | vE << 16\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = v6 >> 12 | v6 << 20\r\n               v2 = v2 + v6 + W[perm_blake3[j + 7]]\r\n               vE = vE ~ v2\r\n               vE = vE >> 8 | vE << 24\r\n               vA = vA + vE\r\n               v6 = v6 ~ vA\r\n               v6 = v6 >> 7 | v6 << 25\r\n               v3 = v3 + v7 + W[perm_blake3[j + 15]]\r\n               vF = vF ~ v3\r\n               vF = vF >> 16 | vF << 16\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = v7 >> 12 | v7 << 20\r\n               v3 = v3 + v7 + W[perm_blake3[j + 17]]\r\n               vF = vF ~ v3\r\n               vF = vF >> 8 | vF << 24\r\n               vB = vB + vF\r\n               v7 = v7 ~ vB\r\n               v7 = v7 >> 7 | v7 << 25\r\n               v0 = v0 + v5 + W[perm_blake3[j + 21]]\r\n               vF = vF ~ v0\r\n               vF = vF >> 16 | vF << 16\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = v5 >> 12 | v5 << 20\r\n               v0 = v0 + v5 + W[perm_blake3[j + 5]]\r\n               vF = vF ~ v0\r\n               vF = vF >> 8 | vF << 24\r\n               vA = vA + vF\r\n               v5 = v5 ~ vA\r\n               v5 = v5 >> 7 | v5 << 25\r\n               v1 = v1 + v6 + W[perm_blake3[j + 3]]\r\n               vC = vC ~ v1\r\n               vC = vC >> 16 | vC << 16\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = v6 >> 12 | v6 << 20\r\n               v1 = v1 + v6 + W[perm_blake3[j + 6]]\r\n               vC = vC ~ v1\r\n               vC = vC >> 8 | vC << 24\r\n               vB = vB + vC\r\n               v6 = v6 ~ vB\r\n               v6 = v6 >> 7 | v6 << 25\r\n               v2 = v2 + v7 + W[perm_blake3[j + 4]]\r\n               vD = vD ~ v2\r\n               vD = vD >> 16 | vD << 16\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = v7 >> 12 | v7 << 20\r\n               v2 = v2 + v7 + W[perm_blake3[j + 18]]\r\n               vD = vD ~ v2\r\n               vD = vD >> 8 | vD << 24\r\n               v8 = v8 + vD\r\n               v7 = v7 ~ v8\r\n               v7 = v7 >> 7 | v7 << 25\r\n               v3 = v3 + v4 + W[perm_blake3[j + 19]]\r\n               vE = vE ~ v3\r\n               vE = vE >> 16 | vE << 16\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = v4 >> 12 | v4 << 20\r\n               v3 = v3 + v4 + W[perm_blake3[j + 20]]\r\n               vE = vE ~ v3\r\n               vE = vE >> 8 | vE << 24\r\n               v9 = v9 + vE\r\n               v4 = v4 ~ v9\r\n               v4 = v4 >> 7 | v4 << 25\r\n            end\r\n            if wide_output then\r\n               H_out[ 9] = h1 ~ v8\r\n               H_out[10] = h2 ~ v9\r\n               H_out[11] = h3 ~ vA\r\n               H_out[12] = h4 ~ vB\r\n               H_out[13] = h5 ~ vC\r\n               H_out[14] = h6 ~ vD\r\n               H_out[15] = h7 ~ vE\r\n               H_out[16] = h8 ~ vF\r\n            end\r\n            h1 = v0 ~ v8\r\n            h2 = v1 ~ v9\r\n            h3 = v2 ~ vA\r\n            h4 = v3 ~ vB\r\n            h5 = v4 ~ vC\r\n            h6 = v5 ~ vD\r\n            h7 = v6 ~ vE\r\n            h8 = v7 ~ vF\r\n         end\r\n         H_out[1], H_out[2], H_out[3], H_out[4], H_out[5], H_out[6], H_out[7], H_out[8] = h1, h2, h3, h4, h5, h6, h7, h8\r\n      end\r\n\r\n      return XORA5, XOR_BYTE, sha256_feed_64, sha512_feed_128, md5_feed_64, sha1_feed_64, keccak_feed, blake2s_feed_64, blake2b_feed_128, blake3_feed_64\r\n   ")(vu140, vu138, vu129, vu130, v154, vu133, vu134, vu145, vu142, vu131, vu132, vu147)
    vu124 = function(p1358)
        return vu27("%08x", p1358)
    end
    v143 = 4294967296
end
local vu1359 = vu63 or vu161
if v59 == "LIB32" or v59 == "EMUL" then
    vu164 = v59 == "LIB32" and function(p1360, p1361, p1362, p1363)
        local v1364 = vu142
        local v1365 = vu138
        local v1366 = vu140
        local v1367 = p1360[1]
        local v1368 = p1360[2]
        local v1369 = p1360[3]
        local v1370 = p1360[4]
        for v1373 = p1362, p1362 + p1363 - 1, 64 do
            local _ = v1373
            for v1372 = 1, 16 do
                local v1373 = v1373 + 4
                local v1374, v1375, v1376, v1377 = vu21(p1361, v1373 - 3, v1373)
                v1364[v1372] = ((v1377 * 256 + v1376) * 256 + v1375) * 256 + v1374
            end
            local v1378 = v1368
            local v1379 = v1367
            local v1380 = v1370
            local v1381 = v1369
            local v1382 = 25
            for v1383 = 1, 16 do
                local v1384 = vu67(vu61(v1368, v1369) + vu61(- 1 - v1368, v1370) + v1367 + v1365[v1383] + v1364[v1383], v1382) + v1368
                v1382 = v1366[v1382]
                v1367 = v1370
                v1370 = v1369
                v1369 = v1368
                v1368 = v1384
            end
            local v1385 = 27
            for v1386 = 17, 32 do
                local v1387 = vu67(vu61(v1370, v1368) + vu61(- 1 - v1370, v1369) + v1367 + v1365[v1386] + v1364[(5 * v1386 - 4) % 16 + 1], v1385) + v1368
                v1385 = v1366[v1385]
                v1367 = v1370
                v1370 = v1369
                v1369 = v1368
                v1368 = v1387
            end
            local v1388 = 28
            for v1389 = 33, 48 do
                local v1390 = vu67(vu1359(vu1359(v1368, v1369), v1370) + v1367 + v1365[v1389] + v1364[(3 * v1389 + 2) % 16 + 1], v1388) + v1368
                v1388 = v1366[v1388]
                v1367 = v1370
                v1370 = v1369
                v1369 = v1368
                v1368 = v1390
            end
            local v1391 = 26
            for v1392 = 49, 64 do
                local v1393 = vu67(vu1359(v1369, vu62(v1368, - 1 - v1370)) + v1367 + v1365[v1392] + v1364[(v1392 * 7 - 7) % 16 + 1], v1391) + v1368
                v1391 = v1366[v1391]
                v1367 = v1370
                v1370 = v1369
                v1369 = v1368
                v1368 = v1393
            end
            v1367 = (v1367 + v1379) % 4294967296
            v1368 = (v1368 + v1378) % 4294967296
            v1369 = (v1369 + v1381) % 4294967296
            v1370 = (v1370 + v1380) % 4294967296
        end
        p1360[4] = v1370
        p1360[3] = v1369
        p1360[2] = v1368
        p1360[1] = v1367
    end or (v59 == "EMUL" and function(p1394, p1395, p1396, p1397)
        local v1398 = vu142
        local v1399 = vu138
        local v1400 = vu140
        local v1401 = p1394[1]
        local v1402 = p1394[2]
        local v1403 = p1394[3]
        local v1404 = p1394[4]
        for v1407 = p1396, p1396 + p1397 - 1, 64 do
            local _ = v1407
            for v1406 = 1, 16 do
                local v1407 = v1407 + 4
                local v1408, v1409, v1410, v1411 = vu21(p1395, v1407 - 3, v1407)
                v1398[v1406] = ((v1411 * 256 + v1410) * 256 + v1409) * 256 + v1408
            end
            local v1412 = v1402
            local v1413 = v1401
            local v1414 = v1404
            local v1415 = v1403
            local v1416 = 25
            for v1417 = 1, 16 do
                local v1418 = (vu61(v1402, v1403) + vu61(- 1 - v1402, v1404) + v1401 + v1399[v1417] + v1398[v1417]) % 4294967296 / 2 ^ v1416
                local v1419 = v1418 % 1
                v1416 = v1400[v1416]
                local v1420 = v1419 * 4294967296 + (v1418 - v1419) + v1402
                v1401 = v1404
                v1404 = v1403
                v1403 = v1402
                v1402 = v1420
            end
            local v1421 = 27
            for v1422 = 17, 32 do
                local v1423 = (vu61(v1404, v1402) + vu61(- 1 - v1404, v1403) + v1401 + v1399[v1422] + v1398[(5 * v1422 - 4) % 16 + 1]) % 4294967296 / 2 ^ v1421
                local v1424 = v1423 % 1
                v1421 = v1400[v1421]
                local v1425 = v1424 * 4294967296 + (v1423 - v1424) + v1402
                v1401 = v1404
                v1404 = v1403
                v1403 = v1402
                v1402 = v1425
            end
            local v1426 = 28
            for v1427 = 33, 48 do
                local v1428 = (vu1359(vu1359(v1402, v1403), v1404) + v1401 + v1399[v1427] + v1398[(3 * v1427 + 2) % 16 + 1]) % 4294967296 / 2 ^ v1426
                local v1429 = v1428 % 1
                v1426 = v1400[v1426]
                local v1430 = v1429 * 4294967296 + (v1428 - v1429) + v1402
                v1401 = v1404
                v1404 = v1403
                v1403 = v1402
                v1402 = v1430
            end
            local v1431 = 26
            for v1432 = 49, 64 do
                local v1433 = (vu1359(v1403, vu62(v1402, - 1 - v1404)) + v1401 + v1399[v1432] + v1398[(v1432 * 7 - 7) % 16 + 1]) % 4294967296 / 2 ^ v1431
                local v1434 = v1433 % 1
                v1431 = v1400[v1431]
                local v1435 = v1434 * 4294967296 + (v1433 - v1434) + v1402
                v1401 = v1404
                v1404 = v1403
                v1403 = v1402
                v1402 = v1435
            end
            v1401 = (v1401 + v1413) % 4294967296
            v1402 = (v1402 + v1412) % 4294967296
            v1403 = (v1403 + v1415) % 4294967296
            v1404 = (v1404 + v1414) % 4294967296
        end
        p1394[4] = v1404
        p1394[3] = v1403
        p1394[2] = v1402
        p1394[1] = v1401
    end or vu164)
    vu165 = function(p1436, p1437, p1438, p1439)
        local v1440 = vu142
        local v1441 = p1436[1]
        local v1442 = p1436[2]
        local v1443 = p1436[3]
        local v1444 = p1436[4]
        local v1445 = p1436[5]
        for v1448 = p1438, p1438 + p1439 - 1, 64 do
            local _ = v1448
            for v1447 = 1, 16 do
                local v1448 = v1448 + 4
                local v1449, v1450, v1451, v1452 = vu21(p1437, v1448 - 3, v1448)
                v1440[v1447] = ((v1449 * 256 + v1450) * 256 + v1451) * 256 + v1452
            end
            for v1453 = 17, 80 do
                local v1454 = vu1359(v1440[v1453 - 3], v1440[v1453 - 8], v1440[v1453 - 14], v1440[v1453 - 16]) % 4294967296 * 2
                local v1455 = v1454 % 4294967296
                v1440[v1453] = v1455 + (v1454 - v1455) / 4294967296
            end
            local v1456 = v1442
            local v1457 = v1441
            local v1458 = v1444
            local v1459 = v1445
            local v1460 = v1443
            for v1461 = 1, 20 do
                local v1462 = v1441 * 32
                local v1463 = v1462 % 4294967296
                local v1464 = v1463 + (v1462 - v1463) / 4294967296 + vu61(v1442, v1443) + vu61(- 1 - v1442, v1444) + 1518500249 + v1440[v1461] + v1445
                local v1465 = v1442 / 4
                local v1466 = v1465 % 1 * 4294967295 + v1465
                local v1467 = v1464 % 4294967296
                v1445 = v1444
                v1444 = v1443
                v1443 = v1466
                v1442 = v1441
                v1441 = v1467
            end
            for v1468 = 21, 40 do
                local v1469 = v1441 * 32
                local v1470 = v1469 % 4294967296
                local v1471 = v1470 + (v1469 - v1470) / 4294967296 + vu1359(v1442, v1443, v1444) + 1859775393 + v1440[v1468] + v1445
                local v1472 = v1442 / 4
                local v1473 = v1472 % 1 * 4294967295 + v1472
                local v1474 = v1471 % 4294967296
                v1445 = v1444
                v1444 = v1443
                v1443 = v1473
                v1442 = v1441
                v1441 = v1474
            end
            for v1475 = 41, 60 do
                local v1476 = v1441 * 32
                local v1477 = v1476 % 4294967296
                local v1478 = v1477 + (v1476 - v1477) / 4294967296 + vu61(v1444, v1443) + vu61(v1442, vu1359(v1444, v1443)) + 2400959708 + v1440[v1475] + v1445
                local v1479 = v1442 / 4
                local v1480 = v1479 % 1 * 4294967295 + v1479
                local v1481 = v1478 % 4294967296
                v1442 = v1441
                v1441 = v1481
                v1445 = v1444
                v1444 = v1443
                v1443 = v1480
            end
            for v1482 = 61, 80 do
                local v1483 = v1441 * 32
                local v1484 = v1483 % 4294967296
                local v1485 = v1484 + (v1483 - v1484) / 4294967296 + vu1359(v1442, v1443, v1444) + 3395469782 + v1440[v1482] + v1445
                local v1486 = v1442 / 4
                local v1487 = v1486 % 1 * 4294967295 + v1486
                local v1488 = v1485 % 4294967296
                v1445 = v1444
                v1444 = v1443
                v1443 = v1487
                v1442 = v1441
                v1441 = v1488
            end
            v1441 = (v1441 + v1457) % 4294967296
            v1442 = (v1442 + v1456) % 4294967296
            v1443 = (v1443 + v1460) % 4294967296
            v1444 = (v1444 + v1458) % 4294967296
            v1445 = (v1445 + v1459) % 4294967296
        end
        p1436[5] = v1445
        p1436[4] = v1444
        p1436[3] = v1443
        p1436[2] = v1442
        p1436[1] = v1441
    end
    vu127 = function(p1489, p1490, p1491, p1492, p1493, p1494, p1495)
        local v1496 = vu142
        local v1497 = p1489[1]
        local v1498 = p1489[2]
        local v1499 = p1489[3]
        local v1500 = p1489[4]
        local v1501 = p1489[5]
        local v1502 = p1489[6]
        local v1503 = p1489[7]
        local v1504 = p1489[8]
        for v1505 = p1491, p1491 + p1492 - 1, 64 do
            if p1490 then
                local v1506 = v1505
                for v1507 = 1, 16 do
                    v1506 = v1506 + 4
                    local v1508, v1509, v1510, v1511 = vu21(p1490, v1506 - 3, v1506)
                    v1496[v1507] = ((v1511 * 256 + v1510) * 256 + v1509) * 256 + v1508
                end
            end
            local v1512 = vu132[1]
            local v1513 = vu132[2]
            local v1514 = vu132[3]
            local v1515 = vu132[4]
            local v1516 = vu132[5]
            local v1517 = vu132[6]
            local v1518 = vu132[7]
            local v1519 = vu132[8]
            p1493 = p1493 + (p1494 or 64)
            local v1520 = p1493 % 4294967296
            local v1521 = (p1493 - v1520) / 4294967296
            local v1522 = vu1359(v1516, v1520)
            local v1523 = vu1359(v1517, v1521)
            if p1494 then
                v1518 = - 1 - v1518
            end
            if p1495 then
                v1519 = - 1 - v1519
            end
            local v1524 = v1499
            local v1525 = v1502
            local v1526 = v1504
            local v1527 = v1497
            local v1528 = v1498
            local v1529 = v1500
            local v1530 = v1503
            local v1531 = v1501
            for v1532 = 1, 10 do
                local v1533 = vu145[v1532]
                local v1534 = v1497 + v1501 + v1496[v1533[1] ]
                local v1535 = vu1359(v1522, v1534) % 4294967296 / 65536
                local v1536 = v1535 % 1 * 4294967295 + v1535
                local v1537 = v1512 + v1536
                local v1538 = vu1359(v1501, v1537) % 4294967296 / 4096
                local v1539 = v1538 % 1 * 4294967295 + v1538
                local v1540 = v1534 + v1539 + v1496[v1533[2] ]
                local v1541 = vu1359(v1536, v1540) % 4294967296 / 256
                local v1542 = v1541 % 1 * 4294967295 + v1541
                local v1543 = v1537 + v1542
                local v1544 = vu1359(v1539, v1543) % 4294967296 / 128
                local v1545 = v1544 % 1 * 4294967295 + v1544
                local v1546 = v1498 + v1502 + v1496[v1533[3] ]
                local v1547 = vu1359(v1523, v1546) % 4294967296 / 65536
                local v1548 = v1547 % 1 * 4294967295 + v1547
                local v1549 = v1513 + v1548
                local v1550 = vu1359(v1502, v1549) % 4294967296 / 4096
                local v1551 = v1550 % 1 * 4294967295 + v1550
                local v1552 = v1546 + v1551 + v1496[v1533[4] ]
                local v1553 = vu1359(v1548, v1552) % 4294967296 / 256
                local v1554 = v1553 % 1 * 4294967295 + v1553
                local v1555 = v1549 + v1554
                local v1556 = vu1359(v1551, v1555) % 4294967296 / 128
                local v1557 = v1556 % 1 * 4294967295 + v1556
                local v1558 = v1499 + v1503 + v1496[v1533[5] ]
                local v1559 = vu1359(v1518, v1558) % 4294967296 / 65536
                local v1560 = v1559 % 1 * 4294967295 + v1559
                local v1561 = v1514 + v1560
                local v1562 = vu1359(v1503, v1561) % 4294967296 / 4096
                local v1563 = v1562 % 1 * 4294967295 + v1562
                local v1564 = v1558 + v1563 + v1496[v1533[6] ]
                local v1565 = vu1359(v1560, v1564) % 4294967296 / 256
                local v1566 = v1565 % 1 * 4294967295 + v1565
                local v1567 = v1561 + v1566
                local v1568 = vu1359(v1563, v1567) % 4294967296 / 128
                local v1569 = v1568 % 1 * 4294967295 + v1568
                local v1570 = v1500 + v1504 + v1496[v1533[7] ]
                local v1571 = vu1359(v1519, v1570) % 4294967296 / 65536
                local v1572 = v1571 % 1 * 4294967295 + v1571
                local v1573 = v1515 + v1572
                local v1574 = vu1359(v1504, v1573) % 4294967296 / 4096
                local v1575 = v1574 % 1 * 4294967295 + v1574
                local v1576 = v1570 + v1575 + v1496[v1533[8] ]
                local v1577 = vu1359(v1572, v1576) % 4294967296 / 256
                local v1578 = v1577 % 1 * 4294967295 + v1577
                local v1579 = v1573 + v1578
                local v1580 = vu1359(v1575, v1579) % 4294967296 / 128
                local v1581 = v1580 % 1 * 4294967295 + v1580
                local v1582 = v1540 + v1557 + v1496[v1533[9] ]
                local v1583 = vu1359(v1578, v1582) % 4294967296 / 65536
                local v1584 = v1583 % 1 * 4294967295 + v1583
                local v1585 = v1567 + v1584
                local v1586 = vu1359(v1557, v1585) % 4294967296 / 4096
                local v1587 = v1586 % 1 * 4294967295 + v1586
                v1497 = v1582 + v1587 + v1496[v1533[10] ]
                local v1588 = vu1359(v1584, v1497) % 4294967296 / 256
                v1519 = v1588 % 1 * 4294967295 + v1588
                v1514 = v1585 + v1519
                local v1589 = vu1359(v1587, v1514) % 4294967296 / 128
                v1502 = v1589 % 1 * 4294967295 + v1589
                local v1590 = v1552 + v1569 + v1496[v1533[11] ]
                local v1591 = vu1359(v1542, v1590) % 4294967296 / 65536
                local v1592 = v1591 % 1 * 4294967295 + v1591
                local v1593 = v1579 + v1592
                local v1594 = vu1359(v1569, v1593) % 4294967296 / 4096
                local v1595 = v1594 % 1 * 4294967295 + v1594
                v1498 = v1590 + v1595 + v1496[v1533[12] ]
                local v1596 = vu1359(v1592, v1498) % 4294967296 / 256
                v1522 = v1596 % 1 * 4294967295 + v1596
                v1515 = v1593 + v1522
                local v1597 = vu1359(v1595, v1515) % 4294967296 / 128
                v1503 = v1597 % 1 * 4294967295 + v1597
                local v1598 = v1564 + v1581 + v1496[v1533[13] ]
                local v1599 = vu1359(v1554, v1598) % 4294967296 / 65536
                local v1600 = v1599 % 1 * 4294967295 + v1599
                local v1601 = v1543 + v1600
                local v1602 = vu1359(v1581, v1601) % 4294967296 / 4096
                local v1603 = v1602 % 1 * 4294967295 + v1602
                v1499 = v1598 + v1603 + v1496[v1533[14] ]
                local v1604 = vu1359(v1600, v1499) % 4294967296 / 256
                v1523 = v1604 % 1 * 4294967295 + v1604
                v1512 = v1601 + v1523
                local v1605 = vu1359(v1603, v1512) % 4294967296 / 128
                v1504 = v1605 % 1 * 4294967295 + v1605
                local v1606 = v1576 + v1545 + v1496[v1533[15] ]
                local v1607 = vu1359(v1566, v1606) % 4294967296 / 65536
                local v1608 = v1607 % 1 * 4294967295 + v1607
                local v1609 = v1555 + v1608
                local v1610 = vu1359(v1545, v1609) % 4294967296 / 4096
                local v1611 = v1610 % 1 * 4294967295 + v1610
                v1500 = v1606 + v1611 + v1496[v1533[16] ]
                local v1612 = vu1359(v1608, v1500) % 4294967296 / 256
                v1518 = v1612 % 1 * 4294967295 + v1612
                v1513 = v1609 + v1518
                local v1613 = vu1359(v1611, v1513) % 4294967296 / 128
                v1501 = v1613 % 1 * 4294967295 + v1613
            end
            v1497 = vu1359(v1527, v1497, v1512)
            v1498 = vu1359(v1528, v1498, v1513)
            v1499 = vu1359(v1524, v1499, v1514)
            v1500 = vu1359(v1529, v1500, v1515)
            v1501 = vu1359(v1531, v1501, v1522)
            v1502 = vu1359(v1525, v1502, v1523)
            v1503 = vu1359(v1530, v1503, v1518)
            v1504 = vu1359(v1526, v1504, v1519)
        end
        p1489[8] = v1504
        p1489[7] = v1503
        p1489[6] = v1502
        p1489[5] = v1501
        p1489[4] = v1500
        p1489[3] = v1499
        p1489[2] = v1498
        p1489[1] = v1497
        return p1493
    end
    vu128 = function(p1614, p1615, p1616, p1617, p1618, p1619, p1620, p1621, p1622)
        local v1623 = vu142
        local v1624 = p1619[1]
        local v1625 = p1619[2]
        local v1626 = p1619[3]
        local v1627 = p1619[4]
        local v1628 = p1619[5]
        local v1629 = p1619[6]
        local v1630 = p1619[7]
        local v1631 = p1619[8]
        local v1632 = p1620 or p1619
        local v1633 = p1622 or 64
        for v1634 = p1615, p1615 + p1616 - 1, 64 do
            if p1614 then
                local v1635 = v1634
                for v1636 = 1, 16 do
                    v1635 = v1635 + 4
                    local v1637, v1638, v1639, v1640 = vu21(p1614, v1635 - 3, v1635)
                    v1623[v1636] = ((v1640 * 256 + v1639) * 256 + v1638) * 256 + v1637
                end
            end
            local v1641 = vu132[1]
            local v1642 = vu132[2]
            local v1643 = vu132[3]
            local v1644 = vu132[4]
            local v1645 = p1618 % 4294967296
            local v1646 = (p1618 - v1645) / 4294967296
            local v1647 = p1617
            local v1648 = v1633
            local v1649 = v1624
            local v1650 = v1628
            local v1651 = v1627
            local v1652 = v1626
            local v1653 = v1629
            local v1654 = v1631
            local v1655 = v1630
            local v1656 = v1625
            for v1657 = 1, 7 do
                local v1658 = v1624 + v1628 + v1623[vu147[v1657] ]
                local v1659 = vu1359(v1645, v1658) % 4294967296 / 65536
                local v1660 = v1659 % 1 * 4294967295 + v1659
                local v1661 = v1641 + v1660
                local v1662 = vu1359(v1628, v1661) % 4294967296 / 4096
                local v1663 = v1662 % 1 * 4294967295 + v1662
                local v1664 = v1658 + v1663 + v1623[vu147[v1657 + 14] ]
                local v1665 = vu1359(v1660, v1664) % 4294967296 / 256
                local v1666 = v1665 % 1 * 4294967295 + v1665
                local v1667 = v1661 + v1666
                local v1668 = vu1359(v1663, v1667) % 4294967296 / 128
                local v1669 = v1668 % 1 * 4294967295 + v1668
                local v1670 = v1625 + v1629 + v1623[vu147[v1657 + 1] ]
                local v1671 = vu1359(v1646, v1670) % 4294967296 / 65536
                local v1672 = v1671 % 1 * 4294967295 + v1671
                local v1673 = v1642 + v1672
                local v1674 = vu1359(v1629, v1673) % 4294967296 / 4096
                local v1675 = v1674 % 1 * 4294967295 + v1674
                local v1676 = v1670 + v1675 + v1623[vu147[v1657 + 2] ]
                local v1677 = vu1359(v1672, v1676) % 4294967296 / 256
                local v1678 = v1677 % 1 * 4294967295 + v1677
                local v1679 = v1673 + v1678
                local v1680 = vu1359(v1675, v1679) % 4294967296 / 128
                local v1681 = v1680 % 1 * 4294967295 + v1680
                local v1682 = v1626 + v1630 + v1623[vu147[v1657 + 16] ]
                local v1683 = vu1359(v1633, v1682) % 4294967296 / 65536
                local v1684 = v1683 % 1 * 4294967295 + v1683
                local v1685 = v1643 + v1684
                local v1686 = vu1359(v1630, v1685) % 4294967296 / 4096
                local v1687 = v1686 % 1 * 4294967295 + v1686
                local v1688 = v1682 + v1687 + v1623[vu147[v1657 + 7] ]
                local v1689 = vu1359(v1684, v1688) % 4294967296 / 256
                local v1690 = v1689 % 1 * 4294967295 + v1689
                local v1691 = v1685 + v1690
                local v1692 = vu1359(v1687, v1691) % 4294967296 / 128
                local v1693 = v1692 % 1 * 4294967295 + v1692
                local v1694 = v1627 + v1631 + v1623[vu147[v1657 + 15] ]
                local v1695 = vu1359(p1617, v1694) % 4294967296 / 65536
                local v1696 = v1695 % 1 * 4294967295 + v1695
                local v1697 = v1644 + v1696
                local v1698 = vu1359(v1631, v1697) % 4294967296 / 4096
                local v1699 = v1698 % 1 * 4294967295 + v1698
                local v1700 = v1694 + v1699 + v1623[vu147[v1657 + 17] ]
                local v1701 = vu1359(v1696, v1700) % 4294967296 / 256
                local v1702 = v1701 % 1 * 4294967295 + v1701
                local v1703 = v1697 + v1702
                local v1704 = vu1359(v1699, v1703) % 4294967296 / 128
                local v1705 = v1704 % 1 * 4294967295 + v1704
                local v1706 = v1664 + v1681 + v1623[vu147[v1657 + 21] ]
                local v1707 = vu1359(v1702, v1706) % 4294967296 / 65536
                local v1708 = v1707 % 1 * 4294967295 + v1707
                local v1709 = v1691 + v1708
                local v1710 = vu1359(v1681, v1709) % 4294967296 / 4096
                local v1711 = v1710 % 1 * 4294967295 + v1710
                v1624 = v1706 + v1711 + v1623[vu147[v1657 + 5] ]
                local v1712 = vu1359(v1708, v1624) % 4294967296 / 256
                p1617 = v1712 % 1 * 4294967295 + v1712
                v1643 = v1709 + p1617
                local v1713 = vu1359(v1711, v1643) % 4294967296 / 128
                v1629 = v1713 % 1 * 4294967295 + v1713
                local v1714 = v1676 + v1693 + v1623[vu147[v1657 + 3] ]
                local v1715 = vu1359(v1666, v1714) % 4294967296 / 65536
                local v1716 = v1715 % 1 * 4294967295 + v1715
                local v1717 = v1703 + v1716
                local v1718 = vu1359(v1693, v1717) % 4294967296 / 4096
                local v1719 = v1718 % 1 * 4294967295 + v1718
                v1625 = v1714 + v1719 + v1623[vu147[v1657 + 6] ]
                local v1720 = vu1359(v1716, v1625) % 4294967296 / 256
                v1645 = v1720 % 1 * 4294967295 + v1720
                v1644 = v1717 + v1645
                local v1721 = vu1359(v1719, v1644) % 4294967296 / 128
                v1630 = v1721 % 1 * 4294967295 + v1721
                local v1722 = v1688 + v1705 + v1623[vu147[v1657 + 4] ]
                local v1723 = vu1359(v1678, v1722) % 4294967296 / 65536
                local v1724 = v1723 % 1 * 4294967295 + v1723
                local v1725 = v1667 + v1724
                local v1726 = vu1359(v1705, v1725) % 4294967296 / 4096
                local v1727 = v1726 % 1 * 4294967295 + v1726
                v1626 = v1722 + v1727 + v1623[vu147[v1657 + 18] ]
                local v1728 = vu1359(v1724, v1626) % 4294967296 / 256
                v1646 = v1728 % 1 * 4294967295 + v1728
                v1641 = v1725 + v1646
                local v1729 = vu1359(v1727, v1641) % 4294967296 / 128
                v1631 = v1729 % 1 * 4294967295 + v1729
                local v1730 = v1700 + v1669 + v1623[vu147[v1657 + 19] ]
                local v1731 = vu1359(v1690, v1730) % 4294967296 / 65536
                local v1732 = v1731 % 1 * 4294967295 + v1731
                local v1733 = v1679 + v1732
                local v1734 = vu1359(v1669, v1733) % 4294967296 / 4096
                local v1735 = v1734 % 1 * 4294967295 + v1734
                v1627 = v1730 + v1735 + v1623[vu147[v1657 + 20] ]
                local v1736 = vu1359(v1732, v1627) % 4294967296 / 256
                v1633 = v1736 % 1 * 4294967295 + v1736
                v1642 = v1733 + v1633
                local v1737 = vu1359(v1735, v1642) % 4294967296 / 128
                v1628 = v1737 % 1 * 4294967295 + v1737
            end
            if p1621 then
                v1632[9] = vu1359(v1649, v1641)
                v1632[10] = vu1359(v1656, v1642)
                v1632[11] = vu1359(v1652, v1643)
                v1632[12] = vu1359(v1651, v1644)
                v1632[13] = vu1359(v1650, v1645)
                v1632[14] = vu1359(v1653, v1646)
                v1632[15] = vu1359(v1655, v1633)
                v1632[16] = vu1359(v1654, p1617)
            end
            v1624 = vu1359(v1624, v1641)
            v1625 = vu1359(v1625, v1642)
            v1626 = vu1359(v1626, v1643)
            v1627 = vu1359(v1627, v1644)
            v1628 = vu1359(v1628, v1645)
            v1629 = vu1359(v1629, v1646)
            v1630 = vu1359(v1630, v1633)
            v1631 = vu1359(v1631, p1617)
            p1617 = v1647
            v1633 = v1648
        end
        v1632[8] = v1631
        v1632[7] = v1630
        v1632[6] = v1629
        v1632[5] = v1628
        v1632[4] = v1627
        v1632[3] = v1626
        v1632[2] = v1625
        v1632[1] = v1624
    end
    vu160 = function(p1738, p1739, p1740, p1741, p1742, p1743, p1744, p1745)
        local v1746 = vu142
        local v1747 = p1738[1]
        local v1748 = p1738[2]
        local v1749 = p1738[3]
        local v1750 = p1738[4]
        local v1751 = p1738[5]
        local v1752 = p1738[6]
        local v1753 = p1738[7]
        local v1754 = p1738[8]
        local v1755 = p1739[1]
        local v1756 = p1739[2]
        local v1757 = p1739[3]
        local v1758 = p1739[4]
        local v1759 = p1739[5]
        local v1760 = p1739[6]
        local v1761 = p1739[7]
        local v1762 = p1739[8]
        for v1763 = p1741, p1741 + p1742 - 1, 128 do
            if p1740 then
                local v1764 = v1763
                for v1765 = 1, 32 do
                    v1764 = v1764 + 4
                    local v1766, v1767, v1768, v1769 = vu21(p1740, v1764 - 3, v1764)
                    v1746[v1765] = ((v1769 * 256 + v1768) * 256 + v1767) * 256 + v1766
                end
            end
            local v1770 = vu131[1]
            local v1771 = vu131[2]
            local v1772 = vu131[3]
            local v1773 = vu131[4]
            local v1774 = vu131[5]
            local v1775 = vu131[6]
            local v1776 = vu131[7]
            local v1777 = vu131[8]
            local v1778 = vu132[1]
            local v1779 = vu132[2]
            local v1780 = vu132[3]
            local v1781 = vu132[4]
            local v1782 = vu132[5]
            local v1783 = vu132[6]
            local v1784 = vu132[7]
            local v1785 = vu132[8]
            p1743 = p1743 + (p1744 or 128)
            local v1786 = p1743 % 4294967296
            local v1787 = (p1743 - v1786) / 4294967296
            local v1788 = vu1359(v1774, v1786)
            local v1789 = vu1359(v1782, v1787)
            if p1744 then
                v1776 = - 1 - v1776
                v1784 = - 1 - v1784
            end
            if p1745 then
                v1777 = - 1 - v1777
                v1785 = - 1 - v1785
            end
            local v1790 = v1748
            local v1791 = v1758
            local v1792 = v1757
            local v1793 = v1756
            local v1794 = v1755
            local v1795 = v1747
            local v1796 = v1760
            local v1797 = v1759
            local v1798 = v1751
            local v1799 = v1753
            local v1800 = v1762
            local v1801 = v1761
            local v1802 = v1754
            local v1803 = v1752
            local v1804 = v1749
            local v1805 = v1750
            for v1806 = 1, 12 do
                local v1807 = vu145[v1806]
                local v1808 = v1807[1] * 2
                local v1809 = v1747 % 4294967296 + v1751 % 4294967296 + v1746[v1808 - 1]
                local v1810 = v1809 % 4294967296
                local v1811 = v1755 + v1759 + (v1809 - v1810) / 4294967296 + v1746[v1808]
                local v1812 = vu1359(v1789, v1811)
                local v1813 = vu1359(v1788, v1810)
                local v1814 = v1770 % 4294967296 + v1812 % 4294967296
                local v1815 = v1814 % 4294967296
                local v1816 = v1778 + v1813 + (v1814 - v1815) / 4294967296
                local v1817 = vu1359(v1751, v1815)
                local v1818 = vu1359(v1759, v1816)
                local v1819 = v1817 % 16777216
                local v1820 = v1818 % 16777216
                local v1821 = (v1817 - v1819) / 16777216 % 256 + v1820 * 256
                local v1822 = (v1818 - v1820) / 16777216 % 256 + v1819 * 256
                local v1823 = v1807[2] * 2
                local v1824 = v1810 % 4294967296 + v1821 % 4294967296 + v1746[v1823 - 1]
                local v1825 = v1824 % 4294967296
                local v1826 = v1811 + v1822 + (v1824 - v1825) / 4294967296 + v1746[v1823]
                local v1827 = vu1359(v1812, v1825)
                local v1828 = vu1359(v1813, v1826)
                local v1829 = v1827 % 65536
                local v1830 = v1828 % 65536
                local v1831 = (v1827 - v1829) / 65536 % 65536 + v1830 * 65536
                local v1832 = (v1828 - v1830) / 65536 % 65536 + v1829 * 65536
                local v1833 = v1815 % 4294967296 + v1831 % 4294967296
                local v1834 = v1833 % 4294967296
                local v1835 = v1816 + v1832 + (v1833 - v1834) / 4294967296
                local v1836 = vu1359(v1821, v1834)
                local v1837 = vu1359(v1822, v1835)
                local v1838 = v1836 % 2147483648
                local v1839 = v1837 % 2147483648
                local v1840 = v1838 * 2 + (v1837 - v1839) / 2147483648 % 2
                local v1841 = v1839 * 2 + (v1836 - v1838) / 2147483648 % 2
                local v1842 = v1807[3] * 2
                local v1843 = v1748 % 4294967296 + v1752 % 4294967296 + v1746[v1842 - 1]
                local v1844 = v1843 % 4294967296
                local v1845 = v1756 + v1760 + (v1843 - v1844) / 4294967296 + v1746[v1842]
                local v1846 = vu1359(v1783, v1845)
                local v1847 = vu1359(v1775, v1844)
                local v1848 = v1771 % 4294967296 + v1846 % 4294967296
                local v1849 = v1848 % 4294967296
                local v1850 = v1779 + v1847 + (v1848 - v1849) / 4294967296
                local v1851 = vu1359(v1752, v1849)
                local v1852 = vu1359(v1760, v1850)
                local v1853 = v1851 % 16777216
                local v1854 = v1852 % 16777216
                local v1855 = (v1851 - v1853) / 16777216 % 256 + v1854 * 256
                local v1856 = (v1852 - v1854) / 16777216 % 256 + v1853 * 256
                local v1857 = v1807[4] * 2
                local v1858 = v1844 % 4294967296 + v1855 % 4294967296 + v1746[v1857 - 1]
                local v1859 = v1858 % 4294967296
                local v1860 = v1845 + v1856 + (v1858 - v1859) / 4294967296 + v1746[v1857]
                local v1861 = vu1359(v1846, v1859)
                local v1862 = vu1359(v1847, v1860)
                local v1863 = v1861 % 65536
                local v1864 = v1862 % 65536
                local v1865 = (v1861 - v1863) / 65536 % 65536 + v1864 * 65536
                local v1866 = (v1862 - v1864) / 65536 % 65536 + v1863 * 65536
                local v1867 = v1849 % 4294967296 + v1865 % 4294967296
                local v1868 = v1867 % 4294967296
                local v1869 = v1850 + v1866 + (v1867 - v1868) / 4294967296
                local v1870 = vu1359(v1855, v1868)
                local v1871 = vu1359(v1856, v1869)
                local v1872 = v1870 % 2147483648
                local v1873 = v1871 % 2147483648
                local v1874 = v1872 * 2 + (v1871 - v1873) / 2147483648 % 2
                local v1875 = v1873 * 2 + (v1870 - v1872) / 2147483648 % 2
                local v1876 = v1807[5] * 2
                local v1877 = v1749 % 4294967296 + v1753 % 4294967296 + v1746[v1876 - 1]
                local v1878 = v1877 % 4294967296
                local v1879 = v1757 + v1761 + (v1877 - v1878) / 4294967296 + v1746[v1876]
                local v1880 = vu1359(v1784, v1879)
                local v1881 = vu1359(v1776, v1878)
                local v1882 = v1772 % 4294967296 + v1880 % 4294967296
                local v1883 = v1882 % 4294967296
                local v1884 = v1780 + v1881 + (v1882 - v1883) / 4294967296
                local v1885 = vu1359(v1753, v1883)
                local v1886 = vu1359(v1761, v1884)
                local v1887 = v1885 % 16777216
                local v1888 = v1886 % 16777216
                local v1889 = (v1885 - v1887) / 16777216 % 256 + v1888 * 256
                local v1890 = (v1886 - v1888) / 16777216 % 256 + v1887 * 256
                local v1891 = v1807[6] * 2
                local v1892 = v1878 % 4294967296 + v1889 % 4294967296 + v1746[v1891 - 1]
                local v1893 = v1892 % 4294967296
                local v1894 = v1879 + v1890 + (v1892 - v1893) / 4294967296 + v1746[v1891]
                local v1895 = vu1359(v1880, v1893)
                local v1896 = vu1359(v1881, v1894)
                local v1897 = v1895 % 65536
                local v1898 = v1896 % 65536
                local v1899 = (v1895 - v1897) / 65536 % 65536 + v1898 * 65536
                local v1900 = (v1896 - v1898) / 65536 % 65536 + v1897 * 65536
                local v1901 = v1883 % 4294967296 + v1899 % 4294967296
                local v1902 = v1901 % 4294967296
                local v1903 = v1884 + v1900 + (v1901 - v1902) / 4294967296
                local v1904 = vu1359(v1889, v1902)
                local v1905 = vu1359(v1890, v1903)
                local v1906 = v1904 % 2147483648
                local v1907 = v1905 % 2147483648
                local v1908 = v1906 * 2 + (v1905 - v1907) / 2147483648 % 2
                local v1909 = v1907 * 2 + (v1904 - v1906) / 2147483648 % 2
                local v1910 = v1807[7] * 2
                local v1911 = v1750 % 4294967296 + v1754 % 4294967296 + v1746[v1910 - 1]
                local v1912 = v1911 % 4294967296
                local v1913 = v1758 + v1762 + (v1911 - v1912) / 4294967296 + v1746[v1910]
                local v1914 = vu1359(v1785, v1913)
                local v1915 = vu1359(v1777, v1912)
                local v1916 = v1773 % 4294967296 + v1914 % 4294967296
                local v1917 = v1916 % 4294967296
                local v1918 = v1781 + v1915 + (v1916 - v1917) / 4294967296
                local v1919 = vu1359(v1754, v1917)
                local v1920 = vu1359(v1762, v1918)
                local v1921 = v1919 % 16777216
                local v1922 = v1920 % 16777216
                local v1923 = (v1919 - v1921) / 16777216 % 256 + v1922 * 256
                local v1924 = (v1920 - v1922) / 16777216 % 256 + v1921 * 256
                local v1925 = v1807[8] * 2
                local v1926 = v1912 % 4294967296 + v1923 % 4294967296 + v1746[v1925 - 1]
                local v1927 = v1926 % 4294967296
                local v1928 = v1913 + v1924 + (v1926 - v1927) / 4294967296 + v1746[v1925]
                local v1929 = vu1359(v1914, v1927)
                local v1930 = vu1359(v1915, v1928)
                local v1931 = v1929 % 65536
                local v1932 = v1930 % 65536
                local v1933 = (v1929 - v1931) / 65536 % 65536 + v1932 * 65536
                local v1934 = (v1930 - v1932) / 65536 % 65536 + v1931 * 65536
                local v1935 = v1917 % 4294967296 + v1933 % 4294967296
                local v1936 = v1935 % 4294967296
                local v1937 = v1918 + v1934 + (v1935 - v1936) / 4294967296
                local v1938 = vu1359(v1923, v1936)
                local v1939 = vu1359(v1924, v1937)
                local v1940 = v1938 % 2147483648
                local v1941 = v1939 % 2147483648
                local v1942 = v1940 * 2 + (v1939 - v1941) / 2147483648 % 2
                local v1943 = v1941 * 2 + (v1938 - v1940) / 2147483648 % 2
                local v1944 = v1807[9] * 2
                local v1945 = v1825 % 4294967296 + v1874 % 4294967296 + v1746[v1944 - 1]
                local v1946 = v1945 % 4294967296
                local v1947 = v1826 + v1875 + (v1945 - v1946) / 4294967296 + v1746[v1944]
                local v1948 = vu1359(v1934, v1947)
                local v1949 = vu1359(v1933, v1946)
                local v1950 = v1902 % 4294967296 + v1948 % 4294967296
                local v1951 = v1950 % 4294967296
                local v1952 = v1903 + v1949 + (v1950 - v1951) / 4294967296
                local v1953 = vu1359(v1874, v1951)
                local v1954 = vu1359(v1875, v1952)
                local v1955 = v1953 % 16777216
                local v1956 = v1954 % 16777216
                local v1957 = (v1953 - v1955) / 16777216 % 256 + v1956 * 256
                local v1958 = (v1954 - v1956) / 16777216 % 256 + v1955 * 256
                local v1959 = v1807[10] * 2
                local v1960 = v1946 % 4294967296 + v1957 % 4294967296 + v1746[v1959 - 1]
                v1747 = v1960 % 4294967296
                v1755 = v1947 + v1958 + (v1960 - v1747) / 4294967296 + v1746[v1959]
                local v1961 = vu1359(v1948, v1747)
                local v1962 = vu1359(v1949, v1755)
                local v1963 = v1961 % 65536
                local v1964 = v1962 % 65536
                v1777 = (v1961 - v1963) / 65536 % 65536 + v1964 * 65536
                v1785 = (v1962 - v1964) / 65536 % 65536 + v1963 * 65536
                local v1965 = v1951 % 4294967296 + v1777 % 4294967296
                v1772 = v1965 % 4294967296
                v1780 = v1952 + v1785 + (v1965 - v1772) / 4294967296
                local v1966 = vu1359(v1957, v1772)
                local v1967 = vu1359(v1958, v1780)
                local v1968 = v1966 % 2147483648
                local v1969 = v1967 % 2147483648
                v1752 = v1968 * 2 + (v1967 - v1969) / 2147483648 % 2
                v1760 = v1969 * 2 + (v1966 - v1968) / 2147483648 % 2
                local v1970 = v1807[11] * 2
                local v1971 = v1859 % 4294967296 + v1908 % 4294967296 + v1746[v1970 - 1]
                local v1972 = v1971 % 4294967296
                local v1973 = v1860 + v1909 + (v1971 - v1972) / 4294967296 + v1746[v1970]
                local v1974 = vu1359(v1832, v1973)
                local v1975 = vu1359(v1831, v1972)
                local v1976 = v1936 % 4294967296 + v1974 % 4294967296
                local v1977 = v1976 % 4294967296
                local v1978 = v1937 + v1975 + (v1976 - v1977) / 4294967296
                local v1979 = vu1359(v1908, v1977)
                local v1980 = vu1359(v1909, v1978)
                local v1981 = v1979 % 16777216
                local v1982 = v1980 % 16777216
                local v1983 = (v1979 - v1981) / 16777216 % 256 + v1982 * 256
                local v1984 = (v1980 - v1982) / 16777216 % 256 + v1981 * 256
                local v1985 = v1807[12] * 2
                local v1986 = v1972 % 4294967296 + v1983 % 4294967296 + v1746[v1985 - 1]
                v1748 = v1986 % 4294967296
                v1756 = v1973 + v1984 + (v1986 - v1748) / 4294967296 + v1746[v1985]
                local v1987 = vu1359(v1974, v1748)
                local v1988 = vu1359(v1975, v1756)
                local v1989 = v1987 % 65536
                local v1990 = v1988 % 65536
                v1788 = (v1987 - v1989) / 65536 % 65536 + v1990 * 65536
                v1789 = (v1988 - v1990) / 65536 % 65536 + v1989 * 65536
                local v1991 = v1977 % 4294967296 + v1788 % 4294967296
                v1773 = v1991 % 4294967296
                v1781 = v1978 + v1789 + (v1991 - v1773) / 4294967296
                local v1992 = vu1359(v1983, v1773)
                local v1993 = vu1359(v1984, v1781)
                local v1994 = v1992 % 2147483648
                local v1995 = v1993 % 2147483648
                v1753 = v1994 * 2 + (v1993 - v1995) / 2147483648 % 2
                v1761 = v1995 * 2 + (v1992 - v1994) / 2147483648 % 2
                local v1996 = v1807[13] * 2
                local v1997 = v1893 % 4294967296 + v1942 % 4294967296 + v1746[v1996 - 1]
                local v1998 = v1997 % 4294967296
                local v1999 = v1894 + v1943 + (v1997 - v1998) / 4294967296 + v1746[v1996]
                local v2000 = vu1359(v1866, v1999)
                local v2001 = vu1359(v1865, v1998)
                local v2002 = v1834 % 4294967296 + v2000 % 4294967296
                local v2003 = v2002 % 4294967296
                local v2004 = v1835 + v2001 + (v2002 - v2003) / 4294967296
                local v2005 = vu1359(v1942, v2003)
                local v2006 = vu1359(v1943, v2004)
                local v2007 = v2005 % 16777216
                local v2008 = v2006 % 16777216
                local v2009 = (v2005 - v2007) / 16777216 % 256 + v2008 * 256
                local v2010 = (v2006 - v2008) / 16777216 % 256 + v2007 * 256
                local v2011 = v1807[14] * 2
                local v2012 = v1998 % 4294967296 + v2009 % 4294967296 + v1746[v2011 - 1]
                v1749 = v2012 % 4294967296
                v1757 = v1999 + v2010 + (v2012 - v1749) / 4294967296 + v1746[v2011]
                local v2013 = vu1359(v2000, v1749)
                local v2014 = vu1359(v2001, v1757)
                local v2015 = v2013 % 65536
                local v2016 = v2014 % 65536
                v1775 = (v2013 - v2015) / 65536 % 65536 + v2016 * 65536
                v1783 = (v2014 - v2016) / 65536 % 65536 + v2015 * 65536
                local v2017 = v2003 % 4294967296 + v1775 % 4294967296
                v1770 = v2017 % 4294967296
                v1778 = v2004 + v1783 + (v2017 - v1770) / 4294967296
                local v2018 = vu1359(v2009, v1770)
                local v2019 = vu1359(v2010, v1778)
                local v2020 = v2018 % 2147483648
                local v2021 = v2019 % 2147483648
                v1754 = v2020 * 2 + (v2019 - v2021) / 2147483648 % 2
                v1762 = v2021 * 2 + (v2018 - v2020) / 2147483648 % 2
                local v2022 = v1807[15] * 2
                local v2023 = v1927 % 4294967296 + v1840 % 4294967296 + v1746[v2022 - 1]
                local v2024 = v2023 % 4294967296
                local v2025 = v1928 + v1841 + (v2023 - v2024) / 4294967296 + v1746[v2022]
                local v2026 = vu1359(v1900, v2025)
                local v2027 = vu1359(v1899, v2024)
                local v2028 = v1868 % 4294967296 + v2026 % 4294967296
                local v2029 = v2028 % 4294967296
                local v2030 = v1869 + v2027 + (v2028 - v2029) / 4294967296
                local v2031 = vu1359(v1840, v2029)
                local v2032 = vu1359(v1841, v2030)
                local v2033 = v2031 % 16777216
                local v2034 = v2032 % 16777216
                local v2035 = (v2031 - v2033) / 16777216 % 256 + v2034 * 256
                local v2036 = (v2032 - v2034) / 16777216 % 256 + v2033 * 256
                local v2037 = v1807[16] * 2
                local v2038 = v2024 % 4294967296 + v2035 % 4294967296 + v1746[v2037 - 1]
                v1750 = v2038 % 4294967296
                v1758 = v2025 + v2036 + (v2038 - v1750) / 4294967296 + v1746[v2037]
                local v2039 = vu1359(v2026, v1750)
                local v2040 = vu1359(v2027, v1758)
                local v2041 = v2039 % 65536
                local v2042 = v2040 % 65536
                v1776 = (v2039 - v2041) / 65536 % 65536 + v2042 * 65536
                v1784 = (v2040 - v2042) / 65536 % 65536 + v2041 * 65536
                local v2043 = v2029 % 4294967296 + v1776 % 4294967296
                v1771 = v2043 % 4294967296
                v1779 = v2030 + v1784 + (v2043 - v1771) / 4294967296
                local v2044 = vu1359(v2035, v1771)
                local v2045 = vu1359(v2036, v1779)
                local v2046 = v2044 % 2147483648
                local v2047 = v2045 % 2147483648
                v1751 = v2046 * 2 + (v2045 - v2047) / 2147483648 % 2
                v1759 = v2047 * 2 + (v2044 - v2046) / 2147483648 % 2
            end
            v1747 = vu1359(v1795, v1747, v1770) % 4294967296
            v1748 = vu1359(v1790, v1748, v1771) % 4294967296
            v1749 = vu1359(v1804, v1749, v1772) % 4294967296
            v1750 = vu1359(v1805, v1750, v1773) % 4294967296
            v1751 = vu1359(v1798, v1751, v1788) % 4294967296
            v1752 = vu1359(v1803, v1752, v1775) % 4294967296
            v1753 = vu1359(v1799, v1753, v1776) % 4294967296
            v1754 = vu1359(v1802, v1754, v1777) % 4294967296
            v1755 = vu1359(v1794, v1755, v1778) % 4294967296
            v1756 = vu1359(v1793, v1756, v1779) % 4294967296
            v1757 = vu1359(v1792, v1757, v1780) % 4294967296
            v1758 = vu1359(v1791, v1758, v1781) % 4294967296
            v1759 = vu1359(v1797, v1759, v1789) % 4294967296
            v1760 = vu1359(v1796, v1760, v1783) % 4294967296
            v1761 = vu1359(v1801, v1761, v1784) % 4294967296
            v1762 = vu1359(v1800, v1762, v1785) % 4294967296
        end
        p1738[8] = v1754
        p1738[7] = v1753
        p1738[6] = v1752
        p1738[5] = v1751
        p1738[4] = v1750
        p1738[3] = v1749
        p1738[2] = v1748
        p1738[1] = v1747
        p1739[8] = v1762
        p1739[7] = v1761
        p1739[6] = v1760
        p1739[5] = v1759
        p1739[4] = v1758
        p1739[3] = v1757
        p1739[2] = v1756
        p1739[1] = v1755
        return p1743
    end
    vu126 = function(p2048, p2049, p2050, p2051, p2052, p2053)
        local v2054 = vu133
        local v2055 = vu134
        local v2056 = p2053 / 8
        for v2063 = p2051, p2051 + p2052 - 1, p2053 do
            local _ = v2063
            for v2058 = 1, v2056 do
                local v2059, v2060, v2061, v2062 = vu21(p2050, v2063 + 1, v2063 + 4)
                p2048[v2058] = vu1359(p2048[v2058], ((v2062 * 256 + v2061) * 256 + v2060) * 256 + v2059)
                local v2063 = v2063 + 8
                local v2064, v2065, v2066, v2067 = vu21(p2050, v2063 - 3, v2063)
                p2049[v2058] = vu1359(p2049[v2058], ((v2067 * 256 + v2066) * 256 + v2065) * 256 + v2064)
            end
            local v2068 = p2048[1]
            local v2069 = p2049[1]
            local v2070 = p2048[2]
            local v2071 = p2049[2]
            local v2072 = p2048[3]
            local v2073 = p2049[3]
            local v2074 = p2048[4]
            local v2075 = p2049[4]
            local v2076 = p2048[5]
            local v2077 = p2049[5]
            local v2078 = p2048[6]
            local v2079 = p2049[6]
            local v2080 = p2048[7]
            local v2081 = p2049[7]
            local v2082 = p2048[8]
            local v2083 = p2049[8]
            local v2084 = p2048[9]
            local v2085 = p2049[9]
            local v2086 = p2048[10]
            local v2087 = p2049[10]
            local v2088 = p2048[11]
            local v2089 = p2049[11]
            local v2090 = p2048[12]
            local v2091 = p2049[12]
            local v2092 = p2048[13]
            local v2093 = p2049[13]
            local v2094 = p2048[14]
            local v2095 = p2049[14]
            local v2096 = p2048[15]
            local v2097 = p2049[15]
            local v2098 = p2048[16]
            local v2099 = p2049[16]
            local v2100 = p2048[17]
            local v2101 = p2049[17]
            local v2102 = p2048[18]
            local v2103 = p2049[18]
            local v2104 = p2048[19]
            local v2105 = p2049[19]
            local v2106 = p2048[20]
            local v2107 = p2049[20]
            local v2108 = p2048[21]
            local v2109 = p2049[21]
            local v2110 = p2048[22]
            local v2111 = p2049[22]
            local v2112 = p2048[23]
            local v2113 = p2049[23]
            local v2114 = p2048[24]
            local v2115 = p2049[24]
            local v2116 = p2048[25]
            local v2117 = p2049[25]
            for v2118 = 1, 24 do
                local v2119 = vu1359(v2068, v2078, v2088, v2098, v2108)
                local v2120 = vu1359(v2069, v2079, v2089, v2099, v2109)
                local v2121 = vu1359(v2070, v2080, v2090, v2100, v2110)
                local v2122 = vu1359(v2071, v2081, v2091, v2101, v2111)
                local v2123 = vu1359(v2072, v2082, v2092, v2102, v2112)
                local v2124 = vu1359(v2073, v2083, v2093, v2103, v2113)
                local v2125 = vu1359(v2074, v2084, v2094, v2104, v2114)
                local v2126 = vu1359(v2075, v2085, v2095, v2105, v2115)
                local v2127 = vu1359(v2076, v2086, v2096, v2106, v2116)
                local v2128 = vu1359(v2077, v2087, v2097, v2107, v2117)
                local v2129 = vu1359(v2119, v2123 * 2 + (v2124 % 4294967296 - v2124 % 2147483648) / 2147483648)
                local v2130 = vu1359(v2120, v2124 * 2 + (v2123 % 4294967296 - v2123 % 2147483648) / 2147483648)
                local v2131 = vu1359(v2129, v2070)
                local v2132 = vu1359(v2130, v2071)
                local v2133 = vu1359(v2129, v2080)
                local v2134 = vu1359(v2130, v2081)
                local v2135 = vu1359(v2129, v2090)
                local v2136 = vu1359(v2130, v2091)
                local v2137 = vu1359(v2129, v2100)
                local v2138 = vu1359(v2130, v2101)
                local v2139 = vu1359(v2129, v2110)
                local v2140 = vu1359(v2130, v2111)
                local v2141 = (v2133 % 4294967296 - v2133 % 1048576) / 1048576 + v2134 * 4096
                local v2142 = (v2134 % 4294967296 - v2134 % 1048576) / 1048576 + v2133 * 4096
                local v2143 = (v2137 % 4294967296 - v2137 % 524288) / 524288 + v2138 * 8192
                local v2144 = (v2138 % 4294967296 - v2138 % 524288) / 524288 + v2137 * 8192
                local v2145 = v2131 * 2 + (v2132 % 4294967296 - v2132 % 2147483648) / 2147483648
                local v2146 = v2132 * 2 + (v2131 % 4294967296 - v2131 % 2147483648) / 2147483648
                local v2147 = v2135 * 1024 + (v2136 % 4294967296 - v2136 % 4194304) / 4194304
                local v2148 = v2136 * 1024 + (v2135 % 4294967296 - v2135 % 4194304) / 4194304
                local v2149 = v2139 * 4 + (v2140 % 4294967296 - v2140 % 1073741824) / 1073741824
                local v2150 = v2140 * 4 + (v2139 % 4294967296 - v2139 % 1073741824) / 1073741824
                local v2151 = vu1359(v2121, v2125 * 2 + (v2126 % 4294967296 - v2126 % 2147483648) / 2147483648)
                local v2152 = vu1359(v2122, v2126 * 2 + (v2125 % 4294967296 - v2125 % 2147483648) / 2147483648)
                local v2153 = vu1359(v2151, v2072)
                local v2154 = vu1359(v2152, v2073)
                local v2155 = vu1359(v2151, v2082)
                local v2156 = vu1359(v2152, v2083)
                local v2157 = vu1359(v2151, v2092)
                local v2158 = vu1359(v2152, v2093)
                local v2159 = vu1359(v2151, v2102)
                local v2160 = vu1359(v2152, v2103)
                local v2161 = vu1359(v2151, v2112)
                local v2162 = vu1359(v2152, v2113)
                local v2163 = (v2157 % 4294967296 - v2157 % 2097152) / 2097152 + v2158 * 2048
                local v2164 = (v2158 % 4294967296 - v2158 % 2097152) / 2097152 + v2157 * 2048
                local v2165 = (v2161 % 4294967296 - v2161 % 8) / 8 + v2162 * 536870912 % 4294967296
                local v2166 = (v2162 % 4294967296 - v2162 % 8) / 8 + v2161 * 536870912 % 4294967296
                local v2167 = v2155 * 64 + (v2156 % 4294967296 - v2156 % 67108864) / 67108864
                local v2168 = v2156 * 64 + (v2155 % 4294967296 - v2155 % 67108864) / 67108864
                local v2169 = v2159 * 32768 + (v2160 % 4294967296 - v2160 % 131072) / 131072
                local v2170 = v2160 * 32768 + (v2159 % 4294967296 - v2159 % 131072) / 131072
                local v2171 = (v2153 % 4294967296 - v2153 % 4) / 4 + v2154 * 1073741824 % 4294967296
                local v2172 = (v2154 % 4294967296 - v2154 % 4) / 4 + v2153 * 1073741824 % 4294967296
                local v2173 = vu1359(v2123, v2127 * 2 + (v2128 % 4294967296 - v2128 % 2147483648) / 2147483648)
                local v2174 = vu1359(v2124, v2128 * 2 + (v2127 % 4294967296 - v2127 % 2147483648) / 2147483648)
                local v2175 = vu1359(v2173, v2074)
                local v2176 = vu1359(v2174, v2075)
                local v2177 = vu1359(v2173, v2084)
                local v2178 = vu1359(v2174, v2085)
                local v2179 = vu1359(v2173, v2094)
                local v2180 = vu1359(v2174, v2095)
                local v2181 = vu1359(v2173, v2104)
                local v2182 = vu1359(v2174, v2105)
                local v2183 = vu1359(v2173, v2114)
                local v2184 = vu1359(v2174, v2115)
                local v2185 = v2181 * 2097152 % 4294967296 + (v2182 % 4294967296 - v2182 % 2048) / 2048
                local v2186 = v2182 * 2097152 % 4294967296 + (v2181 % 4294967296 - v2181 % 2048) / 2048
                local v2187 = v2175 * 268435456 % 4294967296 + (v2176 % 4294967296 - v2176 % 16) / 16
                local v2188 = v2176 * 268435456 % 4294967296 + (v2175 % 4294967296 - v2175 % 16) / 16
                local v2189 = v2179 * 33554432 % 4294967296 + (v2180 % 4294967296 - v2180 % 128) / 128
                local v2190 = v2180 * 33554432 % 4294967296 + (v2179 % 4294967296 - v2179 % 128) / 128
                local v2191 = (v2183 % 4294967296 - v2183 % 256) / 256 + v2184 * 16777216 % 4294967296
                local v2192 = (v2184 % 4294967296 - v2184 % 256) / 256 + v2183 * 16777216 % 4294967296
                local v2193 = (v2177 % 4294967296 - v2177 % 512) / 512 + v2178 * 8388608 % 4294967296
                local v2194 = (v2178 % 4294967296 - v2178 % 512) / 512 + v2177 * 8388608 % 4294967296
                local v2195 = vu1359(v2125, v2119 * 2 + (v2120 % 4294967296 - v2120 % 2147483648) / 2147483648)
                local v2196 = vu1359(v2126, v2120 * 2 + (v2119 % 4294967296 - v2119 % 2147483648) / 2147483648)
                local v2197 = vu1359(v2195, v2076)
                local v2198 = vu1359(v2196, v2077)
                local v2199 = vu1359(v2195, v2086)
                local v2200 = vu1359(v2196, v2087)
                local v2201 = vu1359(v2195, v2096)
                local v2202 = vu1359(v2196, v2097)
                local v2203 = vu1359(v2195, v2106)
                local v2204 = vu1359(v2196, v2107)
                local v2205 = vu1359(v2195, v2116)
                local v2206 = vu1359(v2196, v2117)
                local v2207 = v2205 * 16384 + (v2206 % 4294967296 - v2206 % 262144) / 262144
                local v2208 = v2206 * 16384 + (v2205 % 4294967296 - v2205 % 262144) / 262144
                local v2209 = v2199 * 1048576 % 4294967296 + (v2200 % 4294967296 - v2200 % 4096) / 4096
                local v2210 = v2200 * 1048576 % 4294967296 + (v2199 % 4294967296 - v2199 % 4096) / 4096
                local v2211 = v2203 * 256 + (v2204 % 4294967296 - v2204 % 16777216) / 16777216
                local v2212 = v2204 * 256 + (v2203 % 4294967296 - v2203 % 16777216) / 16777216
                local v2213 = v2197 * 134217728 % 4294967296 + (v2198 % 4294967296 - v2198 % 32) / 32
                local v2214 = v2198 * 134217728 % 4294967296 + (v2197 % 4294967296 - v2197 % 32) / 32
                local v2215 = (v2201 % 4294967296 - v2201 % 33554432) / 33554432 + v2202 * 128
                local v2216 = (v2202 % 4294967296 - v2202 % 33554432) / 33554432 + v2201 * 128
                local v2217 = vu1359(v2127, v2121 * 2 + (v2122 % 4294967296 - v2122 % 2147483648) / 2147483648)
                local v2218 = vu1359(v2128, v2122 * 2 + (v2121 % 4294967296 - v2121 % 2147483648) / 2147483648)
                local v2219 = vu1359(v2217, v2078)
                local v2220 = vu1359(v2218, v2079)
                local v2221 = vu1359(v2217, v2088)
                local v2222 = vu1359(v2218, v2089)
                local v2223 = vu1359(v2217, v2098)
                local v2224 = vu1359(v2218, v2099)
                local v2225 = vu1359(v2217, v2108)
                local v2226 = vu1359(v2218, v2109)
                local v2227 = v2221 * 8 + (v2222 % 4294967296 - v2222 % 536870912) / 536870912
                local v2228 = v2222 * 8 + (v2221 % 4294967296 - v2221 % 536870912) / 536870912
                local v2229 = v2225 * 262144 + (v2226 % 4294967296 - v2226 % 16384) / 16384
                local v2230 = v2226 * 262144 + (v2225 % 4294967296 - v2225 % 16384) / 16384
                local v2231 = (v2219 % 4294967296 - v2219 % 268435456) / 268435456 + v2220 * 16
                local v2232 = (v2220 % 4294967296 - v2220 % 268435456) / 268435456 + v2219 * 16
                local v2233 = (v2223 % 4294967296 - v2223 % 8388608) / 8388608 + v2224 * 512
                local v2234 = (v2224 % 4294967296 - v2224 % 8388608) / 8388608 + v2223 * 512
                local v2235 = vu1359(v2217, v2068)
                local v2236 = vu1359(v2218, v2069)
                local v2237 = vu1359(v2235, vu61(- 1 - v2141, v2163))
                v2070 = vu1359(v2141, vu61(- 1 - v2163, v2185))
                v2072 = vu1359(v2163, vu61(- 1 - v2185, v2207))
                v2074 = vu1359(v2185, vu61(- 1 - v2207, v2235))
                v2076 = vu1359(v2207, vu61(- 1 - v2235, v2141))
                local v2238 = vu1359(v2236, vu61(- 1 - v2142, v2164))
                v2071 = vu1359(v2142, vu61(- 1 - v2164, v2186))
                v2073 = vu1359(v2164, vu61(- 1 - v2186, v2208))
                v2075 = vu1359(v2186, vu61(- 1 - v2208, v2236))
                v2077 = vu1359(v2208, vu61(- 1 - v2236, v2142))
                v2078 = vu1359(v2187, vu61(- 1 - v2209, v2227))
                v2080 = vu1359(v2209, vu61(- 1 - v2227, v2143))
                v2082 = vu1359(v2227, vu61(- 1 - v2143, v2165))
                v2084 = vu1359(v2143, vu61(- 1 - v2165, v2187))
                v2086 = vu1359(v2165, vu61(- 1 - v2187, v2209))
                v2079 = vu1359(v2188, vu61(- 1 - v2210, v2228))
                v2081 = vu1359(v2210, vu61(- 1 - v2228, v2144))
                v2083 = vu1359(v2228, vu61(- 1 - v2144, v2166))
                v2085 = vu1359(v2144, vu61(- 1 - v2166, v2188))
                v2087 = vu1359(v2166, vu61(- 1 - v2188, v2210))
                v2088 = vu1359(v2145, vu61(- 1 - v2167, v2189))
                v2090 = vu1359(v2167, vu61(- 1 - v2189, v2211))
                v2092 = vu1359(v2189, vu61(- 1 - v2211, v2229))
                v2094 = vu1359(v2211, vu61(- 1 - v2229, v2145))
                v2096 = vu1359(v2229, vu61(- 1 - v2145, v2167))
                v2089 = vu1359(v2146, vu61(- 1 - v2168, v2190))
                v2091 = vu1359(v2168, vu61(- 1 - v2190, v2212))
                v2093 = vu1359(v2190, vu61(- 1 - v2212, v2230))
                v2095 = vu1359(v2212, vu61(- 1 - v2230, v2146))
                v2097 = vu1359(v2230, vu61(- 1 - v2146, v2168))
                v2098 = vu1359(v2213, vu61(- 1 - v2231, v2147))
                v2100 = vu1359(v2231, vu61(- 1 - v2147, v2169))
                v2102 = vu1359(v2147, vu61(- 1 - v2169, v2191))
                v2104 = vu1359(v2169, vu61(- 1 - v2191, v2213))
                v2106 = vu1359(v2191, vu61(- 1 - v2213, v2231))
                v2099 = vu1359(v2214, vu61(- 1 - v2232, v2148))
                v2101 = vu1359(v2232, vu61(- 1 - v2148, v2170))
                v2103 = vu1359(v2148, vu61(- 1 - v2170, v2192))
                v2105 = vu1359(v2170, vu61(- 1 - v2192, v2214))
                v2107 = vu1359(v2192, vu61(- 1 - v2214, v2232))
                v2108 = vu1359(v2171, vu61(- 1 - v2193, v2215))
                v2110 = vu1359(v2193, vu61(- 1 - v2215, v2233))
                v2112 = vu1359(v2215, vu61(- 1 - v2233, v2149))
                v2114 = vu1359(v2233, vu61(- 1 - v2149, v2171))
                v2116 = vu1359(v2149, vu61(- 1 - v2171, v2193))
                v2109 = vu1359(v2172, vu61(- 1 - v2194, v2216))
                v2111 = vu1359(v2194, vu61(- 1 - v2216, v2234))
                v2113 = vu1359(v2216, vu61(- 1 - v2234, v2150))
                v2115 = vu1359(v2234, vu61(- 1 - v2150, v2172))
                v2117 = vu1359(v2150, vu61(- 1 - v2172, v2194))
                v2068 = vu1359(v2237, v2054[v2118])
                v2069 = v2238 + v2055[v2118]
            end
            p2048[1] = v2068
            p2049[1] = v2069
            p2048[2] = v2070
            p2049[2] = v2071
            p2048[3] = v2072
            p2049[3] = v2073
            p2048[4] = v2074
            p2049[4] = v2075
            p2048[5] = v2076
            p2049[5] = v2077
            p2048[6] = v2078
            p2049[6] = v2079
            p2048[7] = v2080
            p2049[7] = v2081
            p2048[8] = v2082
            p2049[8] = v2083
            p2048[9] = v2084
            p2049[9] = v2085
            p2048[10] = v2086
            p2049[10] = v2087
            p2048[11] = v2088
            p2049[11] = v2089
            p2048[12] = v2090
            p2049[12] = v2091
            p2048[13] = v2092
            p2049[13] = v2093
            p2048[14] = v2094
            p2049[14] = v2095
            p2048[15] = v2096
            p2049[15] = v2097
            p2048[16] = v2098
            p2049[16] = v2099
            p2048[17] = v2100
            p2049[17] = v2101
            p2048[18] = v2102
            p2049[18] = v2103
            p2048[19] = v2104
            p2049[19] = v2105
            p2048[20] = v2106
            p2049[20] = v2107
            p2048[21] = v2108
            p2049[21] = v2109
            p2048[22] = v2110
            p2049[22] = v2111
            p2048[23] = v2112
            p2049[23] = v2113
            p2048[24] = v2114
            p2049[24] = v2115
            p2048[25] = v2116
            p2049[25] = v2117
        end
    end
    vu162 = function(p2239, p2240, p2241, p2242, p2243)
        local v2244 = vu142
        local v2245 = vu129
        local v2246 = vu130
        local v2247 = p2239[1]
        local v2248 = p2239[2]
        local v2249 = p2239[3]
        local v2250 = p2239[4]
        local v2251 = p2239[5]
        local v2252 = p2239[6]
        local v2253 = p2239[7]
        local v2254 = p2239[8]
        local v2255 = p2240[1]
        local v2256 = p2240[2]
        local v2257 = p2240[3]
        local v2258 = p2240[4]
        local v2259 = p2240[5]
        local v2260 = p2240[6]
        local v2261 = p2240[7]
        local v2262 = p2240[8]
        for v2265 = p2242, p2242 + p2243 - 1, 128 do
            local _ = v2265
            for v2264 = 1, 32 do
                local v2265 = v2265 + 4
                local v2266, v2267, v2268, v2269 = vu21(p2241, v2265 - 3, v2265)
                v2244[v2264] = ((v2266 * 256 + v2267) * 256 + v2268) * 256 + v2269
            end
            for v2270 = 34, 160, 2 do
                local v2271 = v2244[v2270 - 31]
                local v2272 = v2244[v2270 - 30]
                local v2273 = v2244[v2270 - 5]
                local v2274 = v2244[v2270 - 4]
                local v2275 = v2273 % 64
                local v2276 = v2273 % 524288
                local v2277 = v2273 % 536870912
                local v2278 = v2274 % 524288
                local v2279 = v2274 % 536870912
                local v2280 = v2271 % 2
                local v2281 = v2271 % 128
                local v2282 = v2271 % 256
                local v2283 = v2272 % 2
                local v2284 = v2272 % 256
                local v2285 = vu1359((v2272 - v2283) / 2 + v2280 * 2147483648, (v2272 - v2284) / 256 + v2282 * 16777216, (v2272 - v2272 % 128) / 128 + v2281 * 33554432) % 4294967296 + vu1359((v2274 - v2278) / 524288 + v2276 * 8192, v2279 * 8 + (v2273 - v2277) / 536870912, (v2274 - v2274 % 64) / 64 + v2275 * 67108864) % 4294967296 + v2244[v2270 - 14] + v2244[v2270 - 32]
                local v2286 = v2285 % 4294967296
                v2244[v2270 - 1] = (vu1359((v2271 - v2280) / 2 + v2283 * 2147483648, (v2271 - v2282) / 256 + v2284 * 16777216, (v2271 - v2281) / 128) + vu1359((v2273 - v2276) / 524288 + v2278 * 8192, v2277 * 8 + (v2274 - v2279) / 536870912, (v2273 - v2275) / 64) + v2244[v2270 - 15] + v2244[v2270 - 33] + (v2285 - v2286) / 4294967296) % 4294967296
                v2244[v2270] = v2286
            end
            local v2287 = v2248
            local v2288 = v2250
            local v2289 = v2249
            local v2290 = v2259
            local v2291 = v2262
            local v2292 = v2258
            local v2293 = v2254
            local v2294 = v2247
            local v2295 = v2257
            local v2296 = v2253
            local v2297 = v2251
            local v2298 = v2261
            local v2299 = v2260
            local v2300 = v2252
            local v2301 = v2256
            local v2302 = v2255
            for v2303 = 1, 80 do
                local v2304 = 2 * v2303
                local v2305 = v2251 % 512
                local v2306 = v2251 % 16384
                local v2307 = v2251 % 262144
                local v2308 = v2259 % 512
                local v2309 = v2259 % 16384
                local v2310 = v2259 % 262144
                local v2311 = (vu61(v2251, v2252) + vu61(- 1 - v2251, v2253)) % 4294967296 + v2254 + v2245[v2303] + v2244[v2304] + vu1359((v2251 - v2306) / 16384 + v2309 * 262144, (v2251 - v2307) / 262144 + v2310 * 16384, v2305 * 8388608 + (v2259 - v2308) / 512) % 4294967296
                local v2312 = v2311 % 4294967296
                local v2313 = vu61(v2259, v2260) + vu61(- 1 - v2259, v2261) + v2262 + v2246[v2303] + v2244[v2304 - 1] + (v2311 - v2312) / 4294967296 + vu1359((v2259 - v2309) / 16384 + v2306 * 262144, (v2259 - v2310) / 262144 + v2307 * 16384, v2308 * 8388608 + (v2251 - v2305) / 512)
                local v2314 = v2312 + v2250
                local v2315 = v2314 % 4294967296
                local v2316 = (v2313 + v2258 + (v2314 - v2315) / 4294967296) % 4294967296
                local v2317 = v2247 % 4
                local v2318 = v2247 % 128
                local v2319 = v2247 % 268435456
                local v2320 = v2255 % 4
                local v2321 = v2255 % 128
                local v2322 = v2255 % 268435456
                local v2323 = v2312 + (vu61(v2249, v2248) + vu61(v2247, vu1359(v2249, v2248))) % 4294967296 + vu1359((v2247 - v2319) / 268435456 + v2322 * 16, v2317 * 1073741824 + (v2255 - v2320) / 4, v2318 * 33554432 + (v2255 - v2321) / 128) % 4294967296
                local v2324 = v2323 % 4294967296
                local v2325 = (v2313 + vu61(v2257, v2256) + vu61(v2255, vu1359(v2257, v2256)) + (v2323 - v2324) / 4294967296 + vu1359((v2255 - v2322) / 268435456 + v2319 * 16, v2320 * 1073741824 + (v2247 - v2317) / 4, v2321 * 33554432 + (v2247 - v2318) / 128)) % 4294967296
                v2258 = v2257
                v2257 = v2256
                v2256 = v2255
                v2255 = v2325
                v2250 = v2249
                v2249 = v2248
                v2248 = v2247
                v2247 = v2324
                v2254 = v2253
                v2253 = v2252
                v2252 = v2251
                v2251 = v2315
                v2262 = v2261
                v2261 = v2260
                v2260 = v2259
                v2259 = v2316
            end
            local v2326 = v2294 + v2247
            v2247 = v2326 % 4294967296
            v2255 = (v2302 + v2255 + (v2326 - v2247) / 4294967296) % 4294967296
            local v2327 = v2287 + v2248
            v2248 = v2327 % 4294967296
            v2256 = (v2301 + v2256 + (v2327 - v2248) / 4294967296) % 4294967296
            local v2328 = v2289 + v2249
            v2249 = v2328 % 4294967296
            v2257 = (v2295 + v2257 + (v2328 - v2249) / 4294967296) % 4294967296
            local v2329 = v2288 + v2250
            v2250 = v2329 % 4294967296
            v2258 = (v2292 + v2258 + (v2329 - v2250) / 4294967296) % 4294967296
            local v2330 = v2297 + v2251
            v2251 = v2330 % 4294967296
            v2259 = (v2290 + v2259 + (v2330 - v2251) / 4294967296) % 4294967296
            local v2331 = v2300 + v2252
            v2252 = v2331 % 4294967296
            v2260 = (v2299 + v2260 + (v2331 - v2252) / 4294967296) % 4294967296
            local v2332 = v2296 + v2253
            v2253 = v2332 % 4294967296
            v2261 = (v2298 + v2261 + (v2332 - v2253) / 4294967296) % 4294967296
            local v2333 = v2293 + v2254
            v2254 = v2333 % 4294967296
            v2262 = (v2291 + v2262 + (v2333 - v2254) / 4294967296) % 4294967296
        end
        p2239[8] = v2254
        p2239[7] = v2253
        p2239[6] = v2252
        p2239[5] = v2251
        p2239[4] = v2250
        p2239[3] = v2249
        p2239[2] = v2248
        p2239[1] = v2247
        p2240[8] = v2262
        p2240[7] = v2261
        p2240[6] = v2260
        p2240[5] = v2259
        p2240[4] = v2258
        p2240[3] = v2257
        p2240[2] = v2256
        p2240[1] = v2255
    end
    vu157 = function(p2334, p2335, p2336, p2337)
        local v2338 = vu142
        local v2339 = vu130
        local v2340 = p2334[1]
        local v2341 = p2334[2]
        local v2342 = p2334[3]
        local v2343 = p2334[4]
        local v2344 = p2334[5]
        local v2345 = p2334[6]
        local v2346 = p2334[7]
        local v2347 = p2334[8]
        for v2350 = p2336, p2336 + p2337 - 1, 64 do
            local _ = v2350
            for v2349 = 1, 16 do
                local v2350 = v2350 + 4
                local v2351, v2352, v2353, v2354 = vu21(p2335, v2350 - 3, v2350)
                v2338[v2349] = ((v2351 * 256 + v2352) * 256 + v2353) * 256 + v2354
            end
            for v2355 = 17, 64 do
                local v2356 = v2338[v2355 - 15]
                local v2357 = v2338[v2355 - 2]
                local v2358 = v2356 / 128
                local v2359 = v2356 / 262144
                local v2360 = v2357 / 131072
                local v2361 = v2357 / 524288
                v2338[v2355] = (vu1359(v2358 % 1 * 4294967295 + v2358, v2359 % 1 * 4294967295 + v2359, (v2356 - v2356 % 8) / 8) + v2338[v2355 - 16] + v2338[v2355 - 7] + vu1359(v2360 % 1 * 4294967295 + v2360, v2361 % 1 * 4294967295 + v2361, (v2357 - v2357 % 1024) / 1024)) % 4294967296
            end
            local v2362 = v2342
            local v2363 = v2340
            local v2364 = v2343
            local v2365 = v2341
            local v2366 = v2346
            local v2367 = v2345
            local v2368 = v2344
            local v2369 = v2347
            for v2370 = 1, 64 do
                local v2371 = v2344 % 4294967296
                local v2372 = v2371 / 64
                local v2373 = v2371 / 2048
                local v2374 = v2371 * 128
                local v2375 = v2374 % 4294967296
                local v2376 = vu61(v2371, v2345) + vu61(- 1 - v2371, v2346) + v2347 + v2339[v2370] + v2338[v2370] + vu1359(v2372 % 1 * 4294967295 + v2372, v2373 % 1 * 4294967295 + v2373, v2375 + (v2374 - v2375) / 4294967296)
                v2344 = v2376 + v2343
                local v2377 = v2340 % 4294967296
                local v2378 = v2377 / 4
                local v2379 = v2377 / 8192
                local v2380 = v2377 * 1024
                local v2381 = v2380 % 4294967296
                v2340 = v2376 + vu61(v2342, v2341) + vu61(v2377, vu1359(v2342, v2341)) + vu1359(v2378 % 1 * 4294967295 + v2378, v2379 % 1 * 4294967295 + v2379, v2381 + (v2380 - v2381) / 4294967296)
                v2347 = v2346
                v2346 = v2345
                v2345 = v2371
                v2343 = v2342
                v2342 = v2341
                v2341 = v2377
            end
            v2340 = (v2340 + v2363) % 4294967296
            v2341 = (v2341 + v2365) % 4294967296
            v2342 = (v2342 + v2362) % 4294967296
            v2343 = (v2343 + v2364) % 4294967296
            v2344 = (v2344 + v2368) % 4294967296
            v2345 = (v2345 + v2367) % 4294967296
            v2346 = (v2346 + v2366) % 4294967296
            v2347 = (v2347 + v2369) % 4294967296
        end
        p2334[8] = v2347
        p2334[7] = v2346
        p2334[6] = v2345
        p2334[5] = v2344
        p2334[4] = v2343
        p2334[3] = v2342
        p2334[2] = v2341
        p2334[1] = v2340
    end
end
local v2382 = vu131
local v2383 = vu132
local v2384 = 4
local v2385 = {
    4,
    1,
    2,
    - 2,
    2
}
local function v2397(p2386, p2387, p2388, p2389)
    local v2390 = 0
    local v2391 = {}
    local v2392 = 1
    local v2393 = 0
    for v2394 = 1, p2389 do
        local _ = v2394
        for v2395 = vu31(1, v2394 + 1 - # p2387), vu30(v2394, # p2386) do
            v2390 = v2390 + p2388 * p2386[v2395] * p2387[v2394 + 1 - v2395]
        end
        local v2396 = v2390 % 16777216
        v2391[v2394] = vu28(v2396)
        v2390 = (v2390 - v2396) / 16777216
        v2393 = v2393 + v2396 * v2392
        v2392 = v2392 * 16777216
    end
    return v2391, v2393
end
local v2398 = {
    1
}
local v2399 = 0
while true do
    v2384 = v2384 + v2385[v2384 % 6]
    local v2400 = 1
    v2400 = v2400 + v2385[v2400 % 6]
    if v2384 >= v2400 * v2400 then
        if v2384 % v2400 ~= 0 then
            continue
        end
    else
        local v2401 = v2384 ^ 0.3333333333333333
        local v2402 = v2401 * 1099511627776
        local v2403 = v2397({
            v2402 - v2402 % 1
        }, v2398, 1, 2)
        local _, v2404 = v2397(v2403, v2397(v2403, v2403, 1, 4), - 1, 4)
        local v2405 = v2403[2] % 65536 * 65536 + vu28(v2403[1] / 256)
        local v2406 = v2403[1] % 256 * 16777216 + vu28(v2404 * 4.625929269271485e-18 * v2401 / v2384)
        if v2399 < 16 then
            local v2407 = v2384 ^ 0.5
            local v2408 = v2407 * 1099511627776
            local v2409 = v2397({
                v2408 - v2408 % 1
            }, v2398, 1, 2)
            local _, v2410 = v2397(v2409, v2409, - 1, 2)
            local v2411 = v2409[2] % 65536 * 65536 + vu28(v2409[1] / 256)
            local v2412 = v2409[1] % 256 * 16777216 + vu28(v2410 * 7.62939453125e-6 / v2407)
            local v2413 = v2399 % 8 + 1
            vu135[224][v2413] = v2412
            v2382[v2413] = v2412 + v2411 * vu159
            v2383[v2413] = v2411
            if v2413 > 7 then
                v2383 = vu137[384]
                v2382 = vu136[384]
            end
        end
        v2399 = v2399 + 1
        vu129[v2399] = v2406 % v143 + v2405 * vu159
        vu130[v2399] = v2405
    end
    if v2399 > 79 then
        for v2414 = 224, 256, 32 do
            local v2415 = v2414
            local v2416 = {}
            local v2417 = nil
            if vu163 then
                for v2418 = 1, 8 do
                    local v2419 = v2418
                    v2416[v2419] = vu161(vu131[v2419])
                end
            else
                v2417 = {}
                for v2420 = 1, 8 do
                    local v2421 = v2420
                    v2416[v2421] = vu161(vu131[v2421])
                    v2417[v2421] = vu161(vu132[v2421])
                end
            end
            vu162(v2416, v2417, "SHA-512/" .. tostring(v2415) .. "\239\191\189" .. vu23("\0", 115) .. "X", 0, 128)
            vu136[v2415] = v2416
            vu137[v2415] = v2417
        end
        local v2422 = math.sin
        local v2423 = math.abs
        local v2424 = math.modf
        for v2425 = 1, 64 do
            local v2426 = v2425
            local v2427, v2428 = v2424(v2423(v2422(v2426)) * 65536)
            vu138[v2426] = v2427 * 65536 + vu28(v2428 * 65536)
        end
        local vu2429 = 29
        local function v2431()
            local v2430 = vu2429 % 2
            vu2429 = vu71((vu2429 - v2430) / 2, 142 * v2430)
            return v2430
        end
        for v2432 = 1, 24 do
            local _ = v2432
            local v2433 = nil
            local v2434 = 0
            for _ = 1, 6 do
                v2433 = v2433 and v2433 * v2433 * 2 or 1
                v2434 = v2434 + v2431() * v2433
            end
            local v2435 = v2431() * v2433
            vu133[v2432] = v2434 + v2435 * vu144
            vu134[v2432] = v2435
        end
        if v59 == "FFI" then
            local _ = v54.new("uint32_t[?]", # vu130 + 1, 0, vu19(vu130))
            local _ = v54.new("int64_t[?]", # vu129 + 1, 0, vu19(vu129))
            local v2436
            if vu144 == 0 then
                v2436 = v54.new("uint32_t[?]", # vu133 + 1, 0, vu19(vu133))
                local _ = v54.new("uint32_t[?]", # vu134 + 1, 0, vu19(vu134))
            else
                v2436 = v54.new("int64_t[?]", # vu133 + 1, 0, vu19(vu133))
            end
        end
        local v2437, v2438, v2439 = ipairs({
            "AZ",
            "az",
            "09"
        })
        local vu2440 = {
            ["+"] = 62,
            ["-"] = 62,
            [62] = "+",
            ["/"] = 63,
            _ = 63,
            [63] = "/",
            ["="] = - 1,
            ["."] = - 1,
            [- 1] = "="
        }
        local v2441 = 0
        local function v2444(p2442)
            return vu25(p2442, ".", function(p2443)
                return vu27("%02x", vu21(p2443))
            end)
        end
        local function v2458(p2445)
            local vu2446 = {
                vu19(vu139)
            }
            local vu2447 = 0
            local vu2448 = ""
            local function vu2457(p2449)
                if not p2449 then
                    if vu2448 then
                        local v2450 = {
                            vu2448,
                            "\239\191\189",
                            vu23("\0", (- 9 - vu2447) % 64 + 1)
                        }
                        vu2448 = nil
                        vu2447 = vu2447 * 1.1102230246251565e-16
                        for v2451 = 4, 10 do
                            vu2447 = vu2447 % 1 * 256
                            v2450[v2451] = vu22(vu28(vu2447))
                        end
                        local v2452 = vu20(v2450)
                        vu165(vu2446, v2452, 0, # v2452)
                        for v2453 = 1, 5 do
                            vu2446[v2453] = vu124(vu2446[v2453])
                        end
                        vu2446 = vu20(vu2446)
                    end
                    return vu2446
                end
                if vu2448 then
                    vu2447 = vu2447 + # p2449
                    local v2454
                    if vu2448 == "" or # vu2448 + # p2449 < 64 then
                        v2454 = 0
                    else
                        v2454 = 64 - # vu2448
                        vu165(vu2446, vu2448 .. vu24(p2449, 1, v2454), 0, 64)
                        vu2448 = ""
                    end
                    local v2455 = # p2449 - v2454
                    local v2456 = v2455 % 64
                    vu165(vu2446, p2449, v2454, v2455 - v2456)
                    vu2448 = vu2448 .. vu24(p2449, # p2449 + 1 - v2456)
                    return vu2457
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if p2445 then
                vu2457(p2445)
            end
            return vu2457
        end
        local function vu2461(p2459)
            return vu25(p2459, "%x%x", function(p2460)
                return vu22(vu32(p2460, 16))
            end)
        end
        local function v2476(p2462)
            local vu2463 = {
                vu19(vu139, 1, 4)
            }
            local vu2464 = 0
            local vu2465 = ""
            local function vu2475(p2466)
                if not p2466 then
                    if vu2465 then
                        local v2467 = {
                            vu2465,
                            "\239\191\189",
                            vu23("\0", (- 9 - vu2464) % 64)
                        }
                        vu2465 = nil
                        vu2464 = vu2464 * 8
                        for v2468 = 4, 11 do
                            local v2469 = vu2464 % 256
                            v2467[v2468] = vu22(v2469)
                            vu2464 = (vu2464 - v2469) / 256
                        end
                        local v2470 = vu20(v2467)
                        vu164(vu2463, v2470, 0, # v2470)
                        for v2471 = 1, 4 do
                            vu2463[v2471] = vu124(vu2463[v2471])
                        end
                        vu2463 = vu25(vu20(vu2463), "(..)(..)(..)(..)", "%4%3%2%1")
                    end
                    return vu2463
                end
                if vu2465 then
                    vu2464 = vu2464 + # p2466
                    local v2472
                    if vu2465 == "" or # vu2465 + # p2466 < 64 then
                        v2472 = 0
                    else
                        v2472 = 64 - # vu2465
                        vu164(vu2463, vu2465 .. vu24(p2466, 1, v2472), 0, 64)
                        vu2465 = ""
                    end
                    local v2473 = # p2466 - v2472
                    local v2474 = v2473 % 64
                    vu164(vu2463, p2466, v2472, v2473 - v2474)
                    vu2465 = vu2465 .. vu24(p2466, # p2466 + 1 - v2474)
                    return vu2475
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if p2462 then
                vu2475(p2462)
            end
            return vu2475
        end
        local function vu2512(pu2477, pu2478, pu2479, p2480)
            if vu33(pu2478) ~= "number" then
                error("Argument \'digest_size_in_bytes\' must be a number", 2)
            end
            local vu2481 = ""
            local vu2482 = vu125()
            local vu2483
            if vu144 ~= 0 then
                vu2483 = false
            else
                vu2483 = vu125()
            end
            local vu2484 = nil
            local function vu2511(p2485)
                if not p2485 then
                    if vu2481 then
                        local v2486 = pu2479 and 31 or 6
                        vu2481 = vu2481 .. (# vu2481 + 1 == pu2477 and vu22(v2486 + 128) or vu22(v2486) .. vu23("\0", (- 2 - # vu2481) % pu2477) .. "\239\191\189")
                        vu126(vu2482, vu2483, vu2481, 0, # vu2481, pu2477)
                        vu2481 = nil
                        local vu2487 = 0
                        local vu2488 = vu28(pu2477 / 8)
                        local vu2489 = {}
                        local function vu2494(p2490)
                            if vu2488 <= vu2487 then
                                vu126(vu2482, vu2483, "\0\0\0\0\0\0\0\0", 0, 8, 8)
                                vu2487 = 0
                            end
                            local v2491 = vu28(vu30(p2490, vu2488 - vu2487))
                            if vu144 == 0 then
                                for v2492 = 1, v2491 do
                                    vu2489[v2492] = vu124(vu2483[vu2487 + v2492]) .. vu124(vu2482[vu2487 + v2492])
                                end
                            else
                                for v2493 = 1, v2491 do
                                    vu2489[v2493] = vu163(vu2482[vu2487 + v2493 - 1 + vu141])
                                end
                            end
                            vu2487 = vu2487 + v2491
                            return vu25(vu20(vu2489, "", 1, v2491), "(..)(..)(..)(..)(..)(..)(..)(..)", "%8%7%6%5%4%3%2%1"), v2491 * 8
                        end
                        local vu2495 = {}
                        local vu2496 = ""
                        local vu2497 = 0
                        local function vu2507(p2498)
                            local v2499 = p2498 or 1
                            if v2499 > vu2497 then
                                local v2500
                                if vu2497 <= 0 then
                                    v2500 = 0
                                else
                                    v2500 = 1
                                    vu2495[v2500] = vu2496
                                    v2499 = v2499 - vu2497
                                end
                                while v2499 >= 8 do
                                    local v2501, v2502 = vu2494(v2499 / 8)
                                    v2500 = v2500 + 1
                                    vu2495[v2500] = v2501
                                    v2499 = v2499 - v2502
                                end
                                if v2499 > 0 then
                                    local v2503, v2504 = vu2494(1)
                                    vu2497 = v2504
                                    vu2496 = v2503
                                    v2500 = v2500 + 1
                                    vu2495[v2500] = vu2507(v2499)
                                else
                                    vu2497 = 0
                                    vu2496 = ""
                                end
                                return vu20(vu2495, "", 1, v2500)
                            end
                            vu2497 = vu2497 - v2499
                            local v2505 = v2499 * 2
                            local v2506 = vu24(vu2496, 1, v2505)
                            vu2496 = vu24(vu2496, v2505 + 1)
                            return v2506
                        end
                        if pu2478 >= 0 then
                            vu2484 = vu2507(pu2478)
                        else
                            vu2484 = vu2507
                        end
                    end
                    return vu2484
                end
                if vu2481 then
                    local v2508
                    if vu2481 == "" or pu2477 > # vu2481 + # p2485 then
                        v2508 = 0
                    else
                        v2508 = pu2477 - # vu2481
                        vu126(vu2482, vu2483, vu2481 .. vu24(p2485, 1, v2508), 0, pu2477, pu2477)
                        vu2481 = ""
                    end
                    local v2509 = # p2485 - v2508
                    local v2510 = v2509 % pu2477
                    vu126(vu2482, vu2483, p2485, v2508, v2509 - v2510, pu2477)
                    vu2481 = vu2481 .. vu24(p2485, # p2485 + 1 - v2510)
                    return vu2511
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if p2480 then
                vu2511(p2480)
            end
            return vu2511
        end
        local function vu2528(pu2513, p2514)
            local vu2515 = {
                vu19(vu135[pu2513])
            }
            local vu2516 = 0
            local vu2517 = ""
            local function vu2527(p2518)
                if not p2518 then
                    if vu2517 then
                        local v2519 = {
                            vu2517,
                            "\239\191\189",
                            vu23("\0", (- 9 - vu2516) % 64 + 1)
                        }
                        vu2517 = nil
                        vu2516 = vu2516 * 1.1102230246251565e-16
                        for v2520 = 4, 10 do
                            vu2516 = vu2516 % 1 * 256
                            v2519[v2520] = vu22(vu28(vu2516))
                        end
                        local v2521 = vu20(v2519)
                        vu157(vu2515, v2521, 0, # v2521)
                        local v2522 = pu2513 / 32
                        for v2523 = 1, v2522 do
                            vu2515[v2523] = vu124(vu2515[v2523])
                        end
                        vu2515 = vu20(vu2515, "", 1, v2522)
                    end
                    return vu2515
                end
                if vu2517 then
                    vu2516 = vu2516 + # p2518
                    local v2524
                    if vu2517 == "" or # vu2517 + # p2518 < 64 then
                        v2524 = 0
                    else
                        v2524 = 64 - # vu2517
                        vu157(vu2515, vu2517 .. vu24(p2518, 1, v2524), 0, 64)
                        vu2517 = ""
                    end
                    local v2525 = # p2518 - v2524
                    local v2526 = v2525 % 64
                    vu157(vu2515, p2518, v2524, v2525 - v2526)
                    vu2517 = vu2517 .. vu24(p2518, # p2518 + 1 - v2526)
                    return vu2527
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if p2514 then
                vu2527(p2514)
            end
            return vu2527
        end
        local function vu2546(pu2529, p2530)
            local vu2531 = 0
            local vu2532 = ""
            local vu2533 = {
                vu19(vu136[pu2529])
            }
            local vu2534 = not vu163 and {
                vu19(vu137[pu2529])
            } or false
            local function vu2545(p2535)
                if not p2535 then
                    if vu2532 then
                        local v2536 = {
                            vu2532,
                            "\239\191\189",
                            vu23("\0", (- 17 - vu2531) % 128 + 9)
                        }
                        vu2532 = nil
                        vu2531 = vu2531 * 1.1102230246251565e-16
                        for v2537 = 4, 10 do
                            vu2531 = vu2531 % 1 * 256
                            v2536[v2537] = vu22(vu28(vu2531))
                        end
                        local v2538 = vu20(v2536)
                        vu162(vu2533, vu2534, v2538, 0, # v2538)
                        local v2539 = vu29(pu2529 / 64)
                        if vu163 then
                            for v2540 = 1, v2539 do
                                vu2533[v2540] = vu163(vu2533[v2540])
                            end
                        else
                            for v2541 = 1, v2539 do
                                vu2533[v2541] = vu124(vu2534[v2541]) .. vu124(vu2533[v2541])
                            end
                            vu2534 = nil
                        end
                        vu2533 = vu24(vu20(vu2533, "", 1, v2539), 1, pu2529 / 4)
                    end
                    return vu2533
                end
                if vu2532 then
                    vu2531 = vu2531 + # p2535
                    local v2542
                    if vu2532 == "" or # vu2532 + # p2535 < 128 then
                        v2542 = 0
                    else
                        v2542 = 128 - # vu2532
                        vu162(vu2533, vu2534, vu2532 .. vu24(p2535, 1, v2542), 0, 128)
                        vu2532 = ""
                    end
                    local v2543 = # p2535 - v2542
                    local v2544 = v2543 % 128
                    vu162(vu2533, vu2534, p2535, v2542, v2543 - v2544)
                    vu2532 = vu2532 .. vu24(p2535, # p2535 + 1 - v2544)
                    return vu2545
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if p2530 then
                vu2545(p2530)
            end
            return vu2545
        end
        while true do
            local v2547
            v2439, v2547 = v2437(v2438, v2439)
            if v2439 == nil then
                break
            end
            for v2548 = vu21(v2547), vu21(v2547, 2) do
                local v2549 = vu22(v2548)
                vu2440[v2549] = v2441
                vu2440[v2441] = v2549
                v2441 = v2441 + 1
            end
        end
        local function v2557(p2550)
            local v2551 = {}
            for v2552 = 1, # p2550, 3 do
                local v2553, v2554, v2555, v2556 = vu21(vu24(p2550, v2552, v2552 + 2) .. "\0", 1, - 1)
                v2551[# v2551 + 1] = vu2440[vu28(v2553 / 4)] .. vu2440[v2553 % 4 * 16 + vu28(v2554 / 16)] .. vu2440[v2555 and (v2554 % 16 * 4 + vu28(v2555 / 64) or - 1) or - 1] .. vu2440[v2556 and v2555 % 64 or - 1]
            end
            return vu20(v2551)
        end
        local function v2570(p2558)
            local v2559, v2560, v2561 = vu26(vu25(p2558, "%s+", ""), "()(.)")
            local v2562 = {}
            local v2563 = 3
            while true do
                local v2564
                v2561, v2564 = v2559(v2560, v2561)
                if v2561 == nil then
                    break
                end
                local v2565 = vu2440[v2564]
                if v2565 < 0 then
                    v2563 = v2563 - 1
                    v2565 = 0
                end
                local v2566 = v2561 % 4
                if v2566 > 0 then
                    v2562[- v2566] = v2565
                else
                    local v2567 = v2562[- 1] * 4 + vu28(v2562[- 2] / 16)
                    local v2568 = v2562[- 2] % 16 * 16 + vu28(v2562[- 3] / 4)
                    local v2569 = v2562[- 3] % 4 * 64 + v2565
                    v2562[# v2562 + 1] = vu24(vu22(v2567, v2568, v2569), 1, v2563)
                end
            end
            return vu20(v2562)
        end
        local vu2571 = nil
        local function vu2576(p2572, p2573, pu2574)
            return vu25(p2572, ".", function(p2575)
                return vu22(vu71(vu21(p2575), pu2574))
            end) .. vu23(vu22(pu2574), p2573 - # p2572)
        end
        local function v2585(pu2577, pu2578, p2579)
            local vu2580 = vu2571[pu2577]
            if not vu2580 then
                error("Unknown hash function", 2)
            end
            if vu2580 < # pu2578 then
                pu2578 = vu2461(pu2577(pu2578))
            end
            local vu2581 = pu2577()(vu2576(pu2578, vu2580, 54))
            local vu2582 = nil
            local function vu2584(p2583)
                if not p2583 then
                    vu2582 = vu2582 or pu2577(vu2576(pu2578, vu2580, 92) .. vu2461(vu2581()))
                    return vu2582
                end
                if not vu2582 then
                    vu2581(p2583)
                    return vu2584
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if p2579 then
                vu2584(p2579)
            end
            return vu2584
        end
        local function vu2605(p2586, p2587, p2588, p2589)
            local v2590 = p2587 == "s" and 16 or 32
            local v2591 = # p2586
            if v2590 < v2591 then
                error(vu27("For BLAKE2%s/BLAKE2%sp/BLAKE2X%s the \'salt\' parameter length must not exceed %d bytes", p2587, p2587, p2587, v2590), 2)
            end
            if p2588 then
                local v2592 = p2587 == "s" and 4 or 8
                local v2593 = p2587 == "s" and vu1359 or vu161
                local v2594 = 0
                for v2595 = 5, 4 + vu29(v2591 / v2592) do
                    local _ = v2595
                    local v2596 = nil
                    local v2597 = nil
                    for _ = 1, v2592, 4 do
                        v2594 = v2594 + 4
                        local v2598, v2599, v2600, v2601 = vu21(p2586, v2594 - 3, v2594)
                        local v2602 = (((v2601 or 0) * 256 + (v2600 or 0)) * 256 + (v2599 or 0)) * 256 + (v2598 or 0)
                        v2597 = v2596
                        v2596 = v2602
                    end
                    local v2603 = p2588[v2595]
                    local v2604
                    if v2597 then
                        v2604 = v2596 * vu159 + v2597 or v2596
                    else
                        v2604 = v2596
                    end
                    p2588[v2595] = v2593(v2603, v2604)
                    if p2589 then
                        p2589[v2595] = v2593(p2589[v2595], v2596)
                    end
                end
            end
        end
        local function vu2626(p2606, p2607, p2608, p2609, pu2610, pu2611)
            local vu2612 = p2609 or 32
            if vu2612 < 1 or 32 < vu2612 then
                error("BLAKE2s digest length must be from 1 to 32 bytes", 2)
            end
            local v2613 = p2607 or ""
            local v2614 = # v2613
            if v2614 > 32 then
                error("BLAKE2s key length must not exceed 32 bytes", 2)
            end
            local v2615 = p2608 or ""
            local vu2616 = 0
            local vu2617 = ""
            local vu2618 = {
                vu19(vu132)
            }
            if pu2611 then
                vu2618[1] = vu1359(vu2618[1], vu2612)
                vu2618[2] = vu1359(vu2618[2], 32)
                vu2618[3] = vu1359(vu2618[3], pu2611)
                vu2618[4] = vu1359(vu2618[4], 536870912 + pu2610)
            else
                vu2618[1] = vu1359(vu2618[1], 16842752 + v2614 * 256 + vu2612)
                if pu2610 then
                    vu2618[4] = vu1359(vu2618[4], pu2610)
                end
            end
            if v2615 ~= "" then
                vu2605(v2615, "s", vu2618)
            end
            local function vu2625(p2619)
                if not p2619 then
                    if vu2617 then
                        if pu2611 then
                            vu127(vu2618, nil, 0, 64, 0, 32)
                        else
                            vu127(vu2618, vu2617 .. vu23("\0", 64 - # vu2617), 0, 64, vu2616, # vu2617)
                        end
                        vu2617 = nil
                        if not pu2610 or pu2611 then
                            local v2620 = vu29(vu2612 / 4)
                            for v2621 = 1, v2620 do
                                vu2618[v2621] = vu124(vu2618[v2621])
                            end
                            vu2618 = vu24(vu25(vu20(vu2618, "", 1, v2620), "(..)(..)(..)(..)", "%4%3%2%1"), 1, vu2612 * 2)
                        end
                    end
                    return vu2618
                end
                if vu2617 then
                    local v2622
                    if vu2617 == "" or # vu2617 + # p2619 <= 64 then
                        v2622 = 0
                    else
                        v2622 = 64 - # vu2617
                        vu2616 = vu127(vu2618, vu2617 .. vu24(p2619, 1, v2622), 0, 64, vu2616)
                        vu2617 = ""
                    end
                    local v2623 = # p2619 - v2622
                    local v2624 = v2623 > 0 and ((v2623 - 1) % 64 + 1 or 0) or 0
                    vu2616 = vu127(vu2618, p2619, v2622, v2623 - v2624, vu2616)
                    vu2617 = vu2617 .. vu24(p2619, # p2619 + 1 - v2624)
                    return vu2625
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if v2614 > 0 then
                vu2625(v2613 .. vu23("\0", 64 - v2614))
            end
            if pu2611 then
                return vu2625()
            end
            if p2606 then
                vu2625(p2606)
            end
            return vu2625
        end
        local function vu2650(p2627, p2628, p2629, p2630, pu2631, pu2632)
            local vu2633 = vu28(p2630 or 64)
            if vu2633 < 1 or 64 < vu2633 then
                error("BLAKE2b digest length must be from 1 to 64 bytes", 2)
            end
            local v2634 = p2628 or ""
            local v2635 = # v2634
            if v2635 > 64 then
                error("BLAKE2b key length must not exceed 64 bytes", 2)
            end
            local v2636 = p2629 or ""
            local vu2637 = 0
            local vu2638 = ""
            local vu2639 = {
                vu19(vu131)
            }
            local vu2640 = not vu163 and {
                vu19(vu132)
            } or false
            if pu2632 then
                if vu2640 then
                    vu2639[1] = vu161(vu2639[1], vu2633)
                    vu2640[1] = vu161(vu2640[1], 64)
                    vu2639[2] = vu161(vu2639[2], pu2632)
                    vu2640[2] = vu161(vu2640[2], pu2631)
                else
                    vu2639[1] = vu161(vu2639[1], 64 * vu159 + vu2633)
                    vu2639[2] = vu161(vu2639[2], pu2631 * vu159 + pu2632)
                end
                vu2639[3] = vu161(vu2639[3], 16384)
            else
                vu2639[1] = vu161(vu2639[1], 16842752 + v2635 * 256 + vu2633)
                if pu2631 then
                    if vu2640 then
                        vu2640[2] = vu161(vu2640[2], pu2631)
                    else
                        vu2639[2] = vu161(vu2639[2], pu2631 * vu159)
                    end
                end
            end
            if v2636 ~= "" then
                vu2605(v2636, "b", vu2639, vu2640)
            end
            local function vu2649(p2641)
                if not p2641 then
                    if vu2638 then
                        if pu2632 then
                            vu160(vu2639, vu2640, nil, 0, 128, 0, 64)
                        else
                            vu160(vu2639, vu2640, vu2638 .. vu23("\0", 128 - # vu2638), 0, 128, vu2637, # vu2638)
                        end
                        vu2638 = nil
                        if pu2631 and not pu2632 then
                            if vu2640 then
                                for v2642 = 8, 1, - 1 do
                                    vu2639[v2642 * 2] = vu2640[v2642]
                                    vu2639[v2642 * 2 - 1] = vu2639[v2642]
                                end
                                return vu2639, 16
                            end
                        else
                            local v2643 = vu29(vu2633 / 8)
                            if vu2640 then
                                for v2644 = 1, v2643 do
                                    vu2639[v2644] = vu124(vu2640[v2644]) .. vu124(vu2639[v2644])
                                end
                            else
                                for v2645 = 1, v2643 do
                                    vu2639[v2645] = vu163(vu2639[v2645])
                                end
                            end
                            vu2639 = vu24(vu25(vu20(vu2639, "", 1, v2643), "(..)(..)(..)(..)(..)(..)(..)(..)", "%8%7%6%5%4%3%2%1"), 1, vu2633 * 2)
                        end
                        vu2640 = nil
                    end
                    return vu2639
                end
                if vu2638 then
                    local v2646
                    if vu2638 == "" or # vu2638 + # p2641 <= 128 then
                        v2646 = 0
                    else
                        v2646 = 128 - # vu2638
                        vu2637 = vu160(vu2639, vu2640, vu2638 .. vu24(p2641, 1, v2646), 0, 128, vu2637)
                        vu2638 = ""
                    end
                    local v2647 = # p2641 - v2646
                    local v2648 = v2647 > 0 and ((v2647 - 1) % 128 + 1 or 0) or 0
                    vu2637 = vu160(vu2639, vu2640, p2641, v2646, v2647 - v2648, vu2637)
                    vu2638 = vu2638 .. vu24(p2641, # p2641 + 1 - v2648)
                    return vu2649
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if v2635 > 0 then
                vu2649(v2634 .. vu23("\0", 128 - v2635))
            end
            if pu2632 then
                return vu2649()
            end
            if p2627 then
                vu2649(p2627)
            end
            return vu2649
        end
        local function v2688(p2651, p2652, p2653, p2654)
            local vu2655 = p2654 or 32
            if vu2655 < 1 or 32 < vu2655 then
                error("BLAKE2sp digest length must be from 1 to 32 bytes", 2)
            end
            local v2656 = p2652 or ""
            local v2657 = # v2656
            if v2657 > 32 then
                error("BLAKE2sp key length must not exceed 32 bytes", 2)
            end
            local vu2658 = 34078720 + v2657 * 256 + vu2655
            local vu2659 = {}
            local vu2660 = p2653 or ""
            local vu2661 = nil
            local vu2662 = 0
            for v2663 = 1, 8 do
                local v2664 = v2663
                local v2665 = {
                    vu19(vu132)
                }
                vu2659[v2664] = {
                    0,
                    "",
                    v2665
                }
                v2665[1] = vu1359(v2665[1], vu2658)
                v2665[3] = vu1359(v2665[3], v2664 - 1)
                v2665[4] = vu1359(v2665[4], 536870912)
                if vu2660 ~= "" then
                    vu2605(vu2660, "s", v2665)
                end
            end
            local function vu2685(p2666)
                if not p2666 then
                    if vu2659 then
                        local v2667 = {
                            vu19(vu132)
                        }
                        v2667[1] = vu1359(v2667[1], vu2658)
                        v2667[4] = vu1359(v2667[4], 536936448)
                        if vu2660 ~= "" then
                            vu2605(vu2660, "s", v2667)
                        end
                        for v2668 = 1, 8 do
                            local v2669 = vu2659[v2668]
                            local v2670 = v2669[1]
                            local v2671 = v2669[2]
                            vu127(v2669[3], v2671 .. vu23("\0", 64 - # v2671), 0, 64, v2670, # v2671, v2668 == 8)
                            local v2672
                            if v2668 % 2 ~= 0 then
                                v2672 = v2668
                            else
                                v2672 = v2668
                                local v2673 = 0
                                for v2674 = v2668 - 1, v2668 do
                                    local v2675 = vu2659[v2674][3]
                                    for v2676 = 1, 8 do
                                        v2673 = v2673 + 1
                                        vu156[v2673] = v2675[v2676]
                                    end
                                end
                                vu127(v2667, nil, 0, 64, 64 * (v2668 / 2 - 1), v2668 == 8 and 64 or false, v2668 == 8)
                            end
                        end
                        vu2659 = nil
                        local v2677 = vu29(vu2655 / 4)
                        for v2678 = 1, v2677 do
                            v2667[v2678] = vu124(v2667[v2678])
                        end
                        vu2661 = vu24(vu25(vu20(v2667, "", 1, v2677), "(..)(..)(..)(..)", "%4%3%2%1"), 1, vu2655 * 2)
                    end
                    return vu2661
                end
                if vu2659 then
                    local v2679 = 0
                    while true do
                        local v2680 = vu30(v2679 + 64 - vu2662 % 64, # p2666)
                        if v2679 >= v2680 then
                            break
                        end
                        local v2681 = vu2659[vu28(vu2662 / 64) % 8 + 1]
                        local v2682 = vu24(p2666, v2679 + 1, v2680)
                        vu2662 = vu2662 + v2680 - v2679
                        local v2683 = v2681[1]
                        local v2684 = v2681[2]
                        if # v2684 >= 64 then
                            v2683 = vu127(v2681[3], v2684, 0, 64, v2683)
                        else
                            v2682 = v2684 .. v2682
                        end
                        v2681[2] = v2682
                        v2681[1] = v2683
                        v2679 = v2680
                    end
                    return vu2685
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            local v2686
            if v2657 > 0 then
                local v2687 = v2656 .. vu23("\0", 64 - v2657)
                v2686 = vu2685
                for _ = 1, 8 do
                    v2686(v2687)
                end
            else
                v2686 = vu2685
            end
            if p2651 then
                v2686(p2651)
            end
            return v2686
        end
        local function v2731(p2689, p2690, p2691, p2692)
            local vu2693 = p2692 or 64
            if vu2693 < 1 or 64 < vu2693 then
                error("BLAKE2bp digest length must be from 1 to 64 bytes", 2)
            end
            local v2694 = p2690 or ""
            local v2695 = # v2694
            if v2695 > 64 then
                error("BLAKE2bp key length must not exceed 64 bytes", 2)
            end
            local vu2696 = 33816576 + v2695 * 256 + vu2693
            local vu2697 = p2691 or ""
            local vu2698 = {}
            local vu2699 = nil
            local vu2700 = 0
            for v2701 = 1, 4 do
                local v2702 = v2701
                local v2703 = {
                    vu19(vu131)
                }
                local v2704 = not vu163 and {
                    vu19(vu132)
                } or false
                vu2698[v2702] = {
                    0,
                    "",
                    v2703,
                    v2704
                }
                v2703[1] = vu161(v2703[1], vu2696)
                v2703[2] = vu161(v2703[2], v2702 - 1)
                v2703[3] = vu161(v2703[3], 16384)
                if vu2697 ~= "" then
                    vu2605(vu2697, "b", v2703, v2704)
                end
            end
            local function vu2728(p2705)
                if not p2705 then
                    if vu2698 then
                        local v2706 = {
                            vu19(vu131)
                        }
                        local v2707 = not vu163 and {
                            vu19(vu132)
                        } or false
                        v2706[1] = vu161(v2706[1], vu2696)
                        v2706[3] = vu161(v2706[3], 16385)
                        if vu2697 ~= "" then
                            vu2605(vu2697, "b", v2706, v2707)
                        end
                        for v2708 = 1, 4 do
                            local v2709 = vu2698[v2708]
                            local v2710 = v2709[1]
                            local v2711 = v2709[2]
                            vu160(v2709[3], v2709[4], v2711 .. vu23("\0", 128 - # v2711), 0, 128, v2710, # v2711, v2708 == 4)
                            local v2712
                            if v2708 % 2 ~= 0 then
                                v2712 = v2708
                            else
                                v2712 = v2708
                                local v2713 = 0
                                for v2714 = v2708 - 1, v2708 do
                                    local v2715 = vu2698[v2714]
                                    local v2716 = v2715[3]
                                    local v2717 = v2715[4]
                                    for v2718 = 1, 8 do
                                        v2713 = v2713 + 1
                                        vu158[v2713] = v2716[v2718]
                                        if v2717 then
                                            v2713 = v2713 + 1
                                            vu158[v2713] = v2717[v2718]
                                        end
                                    end
                                end
                                vu160(v2706, v2707, nil, 0, 128, 128 * (v2708 / 2 - 1), v2708 == 4 and 128 or false, v2708 == 4)
                            end
                        end
                        vu2698 = nil
                        local v2719 = vu29(vu2693 / 8)
                        if vu163 then
                            for v2720 = 1, v2719 do
                                v2706[v2720] = vu163(v2706[v2720])
                            end
                        else
                            for v2721 = 1, v2719 do
                                v2706[v2721] = vu124(v2707[v2721]) .. vu124(v2706[v2721])
                            end
                        end
                        vu2699 = vu24(vu25(vu20(v2706, "", 1, v2719), "(..)(..)(..)(..)(..)(..)(..)(..)", "%8%7%6%5%4%3%2%1"), 1, vu2693 * 2)
                    end
                    return vu2699
                end
                if vu2698 then
                    local v2722 = 0
                    while true do
                        local v2723 = vu30(v2722 + 128 - vu2700 % 128, # p2705)
                        if v2722 >= v2723 then
                            break
                        end
                        local v2724 = vu2698[vu28(vu2700 / 128) % 4 + 1]
                        local v2725 = vu24(p2705, v2722 + 1, v2723)
                        vu2700 = vu2700 + v2723 - v2722
                        local v2726 = v2724[1]
                        local v2727 = v2724[2]
                        if # v2727 >= 128 then
                            v2726 = vu160(v2724[3], v2724[4], v2727, 0, 128, v2726)
                        else
                            v2725 = v2727 .. v2725
                        end
                        v2724[2] = v2725
                        v2724[1] = v2726
                        v2722 = v2723
                    end
                    return vu2728
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            local v2729
            if v2695 > 0 then
                local v2730 = v2694 .. vu23("\0", 128 - v2695)
                v2729 = vu2728
                for _ = 1, 4 do
                    v2729(v2730)
                end
            else
                v2729 = vu2728
            end
            if p2689 then
                v2729(p2689)
            end
            return v2729
        end
        local function vu2770(pu2732, p2733, pu2734, pu2735, pu2736, p2737, p2738, p2739)
            local v2740 = 2 ^ (pu2735 / 2) - 1
            local vu2741 = nil
            local vu2742
            if pu2736 == - 1 then
                pu2736 = vu34
                vu2742 = vu28(v2740)
                vu2741 = true
            else
                if pu2736 < 0 then
                    pu2736 = - 1 * pu2736
                    vu2741 = true
                end
                vu2742 = vu28(pu2736)
                if v2740 <= vu2742 then
                    error("Requested digest is too long.  BLAKE2X" .. p2733 .. " finite digest is limited by (2^" .. vu28(pu2735 / 2) .. ")-2 bytes.  Hint: you can generate infinite digest.", 2)
                end
            end
            local vu2743 = p2739 or ""
            if vu2743 ~= "" then
                vu2605(vu2743, p2733)
            end
            local vu2744 = pu2732(nil, p2738, vu2743, nil, vu2742)
            local vu2745 = nil
            local function vu2769(p2746)
                if not p2746 then
                    if vu2744 then
                        local vu2747, v2748 = vu2744()
                        vu2744 = nil
                        local vu2749 = v2748 or 8
                        local function vu2754(p2750)
                            local v2751 = vu30(pu2735, pu2736 - p2750 * pu2735)
                            if v2751 <= 0 then
                                return ""
                            end
                            for v2752 = 1, vu2749 do
                                pu2734[v2752] = vu2747[v2752]
                            end
                            for v2753 = vu2749 + 1, 2 * vu2749 do
                                pu2734[v2753] = 0
                            end
                            return pu2732(nil, nil, vu2743, v2751, vu2742, vu28(p2750))
                        end
                        local vu2755 = {}
                        if vu2741 then
                            local vu2756 = 0
                            local vu2757 = pu2735 * 4294967296
                            local vu2758 = nil
                            local vu2759 = nil
                            vu2745 = function(p2760, p2761)
                                if p2760 == "seek" then
                                    vu2756 = p2761 % vu2757
                                else
                                    local v2762 = p2760 or 1
                                    local v2763 = 0
                                    while v2762 > 0 do
                                        local v2764 = vu2756 % pu2735
                                        local v2765 = (vu2756 - v2764) / pu2735
                                        local v2766 = vu30(v2762, pu2735 - v2764)
                                        if vu2758 ~= v2765 then
                                            vu2758 = v2765
                                            vu2759 = vu2754(v2765)
                                        end
                                        v2763 = v2763 + 1
                                        vu2755[v2763] = vu24(vu2759, v2764 * 2 + 1, (v2764 + v2766) * 2)
                                        v2762 = v2762 - v2766
                                        vu2756 = (vu2756 + v2766) % vu2757
                                    end
                                end
                            end
                        else
                            for v2767 = 1, vu29(pu2736 / pu2735) do
                                local v2768 = v2767
                                vu2755[v2768] = vu2754(v2768 - 1)
                            end
                            vu2745 = vu20(vu2755)
                        end
                    end
                    return vu2745
                end
                if vu2744 then
                    vu2744(p2746)
                    return vu2769
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if p2737 then
                vu2769(p2737)
            end
            return vu2769
        end
        local function v2775(p2771, p2772, p2773, p2774)
            return vu2770(vu2626, "s", vu156, 32, p2771, p2772, p2773, p2774)
        end
        local function v2780(p2776, p2777, p2778, p2779)
            return vu2770(vu2650, "b", vu158, 64, p2776, p2777, p2778, p2779)
        end
        local function vu2866(p2781, p2782, p2783, p2784, p2785, pu2786)
            local v2787 = p2782 or ""
            local vu2788 = p2783 or 32
            local vu2789 = p2784 or 0
            local vu2790
            if v2787 == "" then
                vu2790 = p2785 or vu132
            else
                local v2791 = # v2787
                if v2791 > 32 then
                    error("BLAKE3 key length must not exceed 32 bytes", 2)
                end
                local v2792 = v2787 .. vu23("\0", 32 - v2791)
                vu2790 = {}
                for v2793 = 1, 8 do
                    local v2794 = v2793
                    local v2795, v2796, v2797, v2798 = vu21(v2792, 4 * v2794 - 3, 4 * v2794)
                    vu2790[v2794] = ((v2798 * 256 + v2797) * 256 + v2796) * 256 + v2795
                end
                vu2789 = vu2789 + 16
            end
            local vu2799 = ""
            local vu2800 = {}
            local vu2801 = 0
            local vu2802 = 0
            local vu2803 = 0
            local vu2804 = {}
            local vu2805 = vu2790
            local vu2806 = nil
            local vu2807 = nil
            local vu2808 = nil
            local vu2809 = nil
            local vu2810 = 3
            local function vu2822(p2811, p2812, p2813)
                while p2813 > 0 do
                    local v2814 = 1
                    local v2815 = 0
                    local v2816 = vu2800
                    if vu2802 ~= 0 then
                        if vu2802 ~= 15 then
                            v2814 = vu30(p2813 / 64, 15 - vu2802)
                        else
                            v2815 = 2
                            vu2810 = 3
                            vu2805 = vu2790
                        end
                    else
                        v2815 = 1
                        v2816 = vu2790
                        vu2805 = vu2800
                        vu2810 = 2
                    end
                    local v2817 = v2814 * 64
                    vu128(p2811, p2812, v2817, vu2789 + v2815, vu2801, v2816, vu2800)
                    p2812 = p2812 + v2817
                    p2813 = p2813 - v2817
                    vu2802 = (vu2802 + v2814) % 16
                    if vu2802 == 0 then
                        vu2801 = vu2801 + 1
                        local v2818 = 2
                        while vu2801 % v2818 == 0 do
                            v2818 = v2818 * 2
                            vu2803 = vu2803 - 8
                            for v2819 = 1, 8 do
                                vu156[v2819] = vu2804[vu2803 + v2819]
                            end
                            for v2820 = 1, 8 do
                                vu156[v2820 + 8] = vu2800[v2820]
                            end
                            vu128(nil, 0, 64, vu2789 + 4, 0, vu2790, vu2800)
                        end
                        for v2821 = 1, 8 do
                            vu2804[vu2803 + v2821] = vu2800[v2821]
                        end
                        vu2803 = vu2803 + 8
                    end
                end
            end
            local function vu2828(p2823)
                local v2824 = vu30(64, vu2788 - p2823 * 64)
                if p2823 < 0 or v2824 <= 0 then
                    return ""
                end
                if vu2807 then
                    for v2825 = 1, 16 do
                        vu156[v2825] = vu2804[v2825 + 16]
                    end
                end
                vu128(nil, 0, 64, vu2810, p2823, vu2805, vu2804, vu2809, vu2806)
                if pu2786 then
                    return vu2804
                end
                local v2826 = vu29(v2824 / 4)
                for v2827 = 1, v2826 do
                    vu2804[v2827] = vu124(vu2804[v2827])
                end
                return vu24(vu25(vu20(vu2804, "", 1, v2826), "(..)(..)(..)(..)", "%4%3%2%1"), 1, v2824 * 2)
            end
            local function vu2865(p2829)
                if not p2829 then
                    if vu2799 then
                        vu2806 = # vu2799
                        vu2799 = vu2799 .. vu23("\0", 64 - # vu2799)
                        if vu156[0] then
                            for v2830 = 1, 16 do
                                local v2831 = v2830
                                local v2832, v2833, v2834, v2835 = vu21(vu2799, 4 * v2831 - 3, 4 * v2831)
                                vu156[v2831] = vu62(vu64(v2835, 24), vu64(v2834, 16), vu64(v2833, 8), v2832)
                            end
                        else
                            for v2836 = 1, 16 do
                                local v2837 = v2836
                                local v2838, v2839, v2840, v2841 = vu21(vu2799, 4 * v2837 - 3, 4 * v2837)
                                vu156[v2837] = ((v2841 * 256 + v2840) * 256 + v2839) * 256 + v2838
                            end
                        end
                        vu2799 = nil
                        for v2842 = vu2803 - 8, 0, - 8 do
                            local v2843 = v2842
                            vu128(nil, 0, 64, vu2789 + vu2810, vu2801, vu2805, vu2800, nil, vu2806)
                            local v2844 = vu2790
                            vu2810 = 4
                            vu2805 = v2844
                            vu2806 = 64
                            vu2801 = 0
                            for v2845 = 1, 8 do
                                vu156[v2845] = vu2804[v2843 + v2845]
                            end
                            for v2846 = 1, 8 do
                                vu156[v2846 + 8] = vu2800[v2846]
                            end
                        end
                        vu2810 = vu2789 + vu2810 + 8
                        if vu2788 < 0 then
                            if vu2788 ~= - 1 then
                                vu2788 = - 1 * vu2788
                            else
                                vu2788 = vu34
                            end
                            vu2807 = true
                            for v2847 = 1, 16 do
                                local v2848 = v2847
                                vu2804[v2848 + 16] = vu156[v2848]
                            end
                        end
                        vu2788 = vu30(9007199254740992, vu2788)
                        vu2809 = vu2788 > 32
                        if vu2807 then
                            local vu2849 = 0
                            local vu2850 = nil
                            local vu2851 = nil
                            vu2808 = function(p2852, p2853)
                                if p2852 == "seek" then
                                    vu2849 = p2853 * 1
                                else
                                    local v2854 = p2852 or 1
                                    local v2855 = 32
                                    while v2854 > 0 do
                                        local v2856 = vu2849 % 64
                                        local v2857 = (vu2849 - v2856) / 64
                                        local v2858 = vu30(v2854, 64 - v2856)
                                        if vu2850 ~= v2857 then
                                            vu2850 = v2857
                                            vu2851 = vu2828(v2857)
                                        end
                                        v2855 = v2855 + 1
                                        vu2804[v2855] = vu24(vu2851, v2856 * 2 + 1, (v2856 + v2858) * 2)
                                        v2854 = v2854 - v2858
                                        vu2849 = vu2849 + v2858
                                    end
                                end
                            end
                        elseif vu2788 > 64 then
                            local v2859 = vu29(vu2788 / 64) - 1
                            for v2860 = 0, v2859 do
                                local v2861 = v2860
                                vu2804[33 + v2861] = vu2828(v2861)
                            end
                            vu2808 = vu20(vu2804, "", 33, 33 + v2859)
                        else
                            vu2808 = vu2828(0)
                        end
                    end
                    return vu2808
                end
                if vu2799 then
                    local v2862
                    if vu2799 == "" or # vu2799 + # p2829 <= 64 then
                        v2862 = 0
                    else
                        v2862 = 64 - # vu2799
                        vu2822(vu2799 .. vu24(p2829, 1, v2862), 0, 64)
                        vu2799 = ""
                    end
                    local v2863 = # p2829 - v2862
                    local v2864 = v2863 > 0 and ((v2863 - 1) % 64 + 1 or 0) or 0
                    vu2822(p2829, v2862, v2863 - v2864)
                    vu2799 = vu2799 .. vu24(p2829, # p2829 + 1 - v2864)
                    return vu2865
                end
                error("Adding more chunks is not allowed after receiving the result", 2)
            end
            if p2781 then
                vu2865(p2781)
            end
            return vu2865
        end
        local v2902 = {
            md5 = v2476,
            sha1 = v2458,
            sha224 = function(p2867)
                return vu2528(224, p2867)
            end,
            sha256 = function(p2868)
                return vu2528(256, p2868)
            end,
            sha512_224 = function(p2869)
                return vu2546(224, p2869)
            end,
            sha512_256 = function(p2870)
                return vu2546(256, p2870)
            end,
            sha384 = function(p2871)
                return vu2546(384, p2871)
            end,
            sha512 = function(p2872)
                return vu2546(512, p2872)
            end,
            sha3_224 = function(p2873)
                return vu2512(144, 28, false, p2873)
            end,
            sha3_256 = function(p2874)
                return vu2512(136, 32, false, p2874)
            end,
            sha3_384 = function(p2875)
                return vu2512(104, 48, false, p2875)
            end,
            sha3_512 = function(p2876)
                return vu2512(72, 64, false, p2876)
            end,
            shake128 = function(p2877, p2878)
                return vu2512(168, p2877, true, p2878)
            end,
            shake256 = function(p2879, p2880)
                return vu2512(136, p2879, true, p2880)
            end,
            hmac = v2585,
            hex_to_bin = vu2461,
            bin_to_hex = v2444,
            base64_to_bin = v2570,
            bin_to_base64 = v2557,
            hex2bin = vu2461,
            bin2hex = v2444,
            base642bin = v2570,
            bin2base64 = v2557,
            blake2b = vu2650,
            blake2s = vu2626,
            blake2bp = v2731,
            blake2sp = v2688,
            blake2xb = v2780,
            blake2xs = v2775,
            blake2 = vu2650,
            blake2b_160 = function(p2881, p2882, p2883)
                return vu2650(p2881, p2882, p2883, 20)
            end,
            blake2b_256 = function(p2884, p2885, p2886)
                return vu2650(p2884, p2885, p2886, 32)
            end,
            blake2b_384 = function(p2887, p2888, p2889)
                return vu2650(p2887, p2888, p2889, 48)
            end,
            blake2b_512 = vu2650,
            blake2s_128 = function(p2890, p2891, p2892)
                return vu2626(p2890, p2891, p2892, 16)
            end,
            blake2s_160 = function(p2893, p2894, p2895)
                return vu2626(p2893, p2894, p2895, 20)
            end,
            blake2s_224 = function(p2896, p2897, p2898)
                return vu2626(p2896, p2897, p2898, 28)
            end,
            blake2s_256 = vu2626,
            blake3 = vu2866,
            blake3_derive_key = function(p2899, p2900, p2901)
                if vu33(p2900) ~= "string" then
                    error("\'context_string\' parameter must be a Lua string", 2)
                end
                return vu2866(p2899, nil, p2901, 64, (vu2866(p2900, nil, nil, 32, nil, true)))
            end
        }
        vu2571 = {
            [v2902.md5] = 64,
            [v2902.sha1] = 64,
            [v2902.sha224] = 64,
            [v2902.sha256] = 64,
            [v2902.sha512_224] = 128,
            [v2902.sha512_256] = 128,
            [v2902.sha384] = 128,
            [v2902.sha512] = 128,
            [v2902.sha3_224] = 144,
            [v2902.sha3_256] = 136,
            [v2902.sha3_384] = 104,
            [v2902.sha3_512] = 72
        }
        local vu2903 = game:GetService("HttpService")
        local vu2904 = {
            API_URL = "https://venoxware.vercel.app/api/validate"
        }
        local function vu2908()
            local v2905 = os.clock()
            local v2906 = 0
            for v2907 = 1, 1000 do
                v2906 = v2906 + v2907
            end
            return os.clock() - v2905 > 0.1
        end
        local vu2909 = v2902
        local function v2911(p2910)
            if vu33(p2910) == "string" then
                return vu2909.sha256(p2910)
            else
                return false
            end
        end
        local vu2912 = v2911
        local vu2913 = vu2909
        local vu2914 = {}
        local function vu2917(p2915)
            if p2915 >= 0 then
                return p2915 - p2915 % 1
            else
                local v2916 = p2915 - p2915 % 1
                if v2916 == p2915 then
                    return v2916
                else
                    return v2916 - 1
                end
            end
        end
        local function vu2921(p2918)
            local v2919 = {}
            for v2920 = 1, p2918 do
                v2919[v2920] = 0
            end
            return v2919
        end
        local v2922 = {}
        local v2923 = {}
        for v2924 = 0, 127 do
            local v2925 = v2924
            if v2925 < 32 or v2925 > 126 then
                vu2914[v2925] = " "
            else
                vu2914[v2925] = string.sub(" !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~", v2925 - 31, v2925 - 31)
            end
        end
        local function vu2927(p2926)
            return vu2914[p2926] or " "
        end
        local function vu2931(p2928, p2929)
            local v2930 = ""
            for _ = 1, p2929 do
                v2930 = v2930 .. p2928
            end
            return v2930
        end
        local function vu2936(p2932, p2933)
            local v2934 = ""
            while p2932 > 0 do
                local v2935 = p2932 % 16
                if v2935 < 10 then
                    v2934 = vu2927(48 + v2935) .. v2934
                else
                    v2934 = vu2927(65 + (v2935 - 10)) .. v2934
                end
                p2932 = vu2917(p2932 / 16)
            end
            while # v2934 < p2933 do
                v2934 = "0" .. v2934
            end
            if v2934 == "" then
                v2934 = vu2931("0", p2933)
            end
            return v2934
        end
        local function vu2943(p2937, p2938)
            local v2939 = 0
            local v2940 = 1
            while 0 < p2937 and 0 < p2938 do
                local v2941 = p2937 % 2
                local v2942 = p2938 % 2
                if v2941 == 1 and v2942 == 1 then
                    v2939 = v2939 + v2940
                end
                v2940 = v2940 * 2
                p2937 = vu2917(p2937 / 2)
                p2938 = vu2917(p2938 / 2)
            end
            return v2939
        end
        local function vu2950(p2944, p2945)
            local v2946 = 0
            local v2947 = 1
            while p2944 > 0 or 0 < p2945 do
                local v2948 = p2944 % 2
                local v2949 = p2945 % 2
                if v2948 == 1 or v2949 == 1 then
                    v2946 = v2946 + v2947
                end
                v2947 = v2947 * 2
                p2944 = vu2917(p2944 / 2)
                p2945 = vu2917(p2945 / 2)
            end
            return v2946
        end
        local function vu2955(p2951, p2952)
            local v2953 = 1
            local v2954 = 0
            while p2951 > 0 or 0 < p2952 do
                if p2951 % 2 + p2952 % 2 == 1 then
                    v2954 = v2954 + v2953
                end
                v2953 = v2953 * 2
                p2951 = vu2917(p2951 / 2)
                p2952 = vu2917(p2952 / 2)
            end
            return v2954
        end
        local function vu2958(p2956, p2957)
            return vu2943(p2956 * 2 ^ p2957, 4294967295)
        end
        local function vu2961(p2959, p2960)
            return vu2917(p2959 / 2 ^ p2960) % 2 ^ (32 - p2960)
        end
        local vu2964 = (function()
            return vu2943(vu2950(vu2943(vu2955((function(p2962, p2963)
                return vu2943(vu2955(vu2958(p2962, 3), vu2961(p2963, 5)), 4294967295)
            end)(792353905, 2658865876), 1206985627), 4294967295), 2882343476), 4294967295)
        end)()
        local function vu2967(p2965)
            local v2966 = vu2921(5)
            v2966[1] = vu2943(vu2955(vu2958(78 + p2965 + vu2964, 2), vu2961(122 + p2965, 1)), 255)
            v2966[2] = vu2943(vu2950(vu2958(59 * p2965 + vu2964, 3), vu2961(93 + p2965, 2)), 255)
            v2966[3] = vu2943(vu2955(vu2958(47 + p2965 + vu2964, 4), vu2961(108 + p2965, 3)), 255)
            v2966[4] = vu2943(vu2955(vu2958(21 * p2965 + vu2964, 5), vu2961(62 + p2965, 4)), 255)
            v2966[5] = vu2943(vu2950(vu2958(122 + p2965 + vu2964, 1), vu2961(17 + p2965, 5)), 255)
            return v2966
        end
        local function vu2977(p2968, p2969, p2970)
            local v2971 = ""
            for v2972 = 1, # p2968 do
                local v2973 = vu32(p2968[v2972])
                local v2974 = (v2972 + p2969 + vu2964) % 7 + 1
                local v2975 = vu2943(vu2950(vu2958(v2973 + vu2964, v2974), vu2961(v2973 + vu2964, 8 - v2974)), 255)
                local v2976 = vu2943(vu2955(v2975 * 17 + p2969 * 13 + p2970 + vu2964, vu2961(v2975, 3)), 255)
                v2971 = v2971 .. vu2936(vu2943(vu2950(vu2955(v2976, p2970), vu2958(v2976 + p2969, v2972 * 3 % 8)), 255), 2)
            end
            return v2971 .. vu2936(vu2943(vu2955(p2969 * p2970 + vu2964, vu2961(p2970 * p2969 + vu2964, 5)), 65535), 4)
        end
        local vu2978 = {}
        local function vu2981(p2979, p2980)
            vu2978[p2979] = vu2978[p2979] or vu2967(p2979)
            return vu2977(vu2978[p2979], p2979, p2980) .. "-" .. vu2936(vu2943(vu2955(vu2958(p2979 * 1337 + p2980 + vu2964, 4), 3735928559), 16777215), 6) .. "-" .. vu2936(vu2943(vu2950(vu2958(p2979 * 42 + 255 + vu2964, 5), vu2961(48879 + vu2964, 3)), 4294967295), 8) .. "-" .. vu2936(vu2943(vu2955(p2980 * p2979 + vu2964, vu2961(p2980 + p2979 + vu2964, 7)), 4294967295), 8)
        end
        v2922.__index = {
            _q = function(p2982)
                if vu33(p2982) == "number" then
                    return vu2943(p2982 * 4919 + 255 + vu2964 % 4096, 4294967295)
                else
                    return nil
                end
            end
        }
        function v2922.__call(_, p2983, p2984)
            if p2983 and (p2984 and (vu33(p2983) == "number" and vu33(p2984) == "number")) then
                return vu2981(p2983, p2984)
            else
                return nil
            end
        end
        setmetatable(v2923, v2922)
        local vu2985 = v2923
        local function vu2987(p2986)
            if vu33(p2986) ~= "string" then
                p2986 = vu2903:JSONEncode(p2986)
            end
            return vu2913.hmac(vu2913.sha256, vu2985(2, vu2985._q(2)), p2986)
        end
        local function vu2991(p2988, p2989, p2990)
            if vu33(p2988) ~= "string" or (vu33(p2989) ~= "string" or vu33(p2990) ~= "string") then
                return false
            else
                return p2990 == vu2913.hmac(vu2913.sha256, vu2985(2, vu2985._q(2)), p2988 .. ":" .. p2989)
            end
        end
        local function vu2995()
            local v2992, v2993 = pcall(function()
                return game:GetService("RbxAnalyticsService"):GetClientId()
            end)
            if not v2992 or v2993 == "" then
                local v2994 = game:GetService("Players").LocalPlayer
                if v2994 then
                    v2993 = tostring(v2994.UserId)
                else
                    v2993 = vu2912(game:GetService("RunService").Heartbeat:Wait())
                end
            end
            return v2993
        end
        local function vu3017(pu2996)
            if not pu2996 then
                return false, "no key provided"
            end
            local vu2997 = nil
            local v3014, v3015, v3016 = pcall(function()
                if vu2908() then
                    return false, "try again smth went wrong!"
                end
                if # pu2996 <= 5 or # pu2996 > 100 then
                    return false, "Invalid Key Length!"
                end
                local v2998 = game:HttpGet(vu2904.API_URL)
                local vu2999 = not (http_request or request) and (not (HttpPost or syn and syn.request) and (not (fluxus and fluxus.request) and http))
                if vu2999 then
                    vu2999 = http.request
                end
                if not vu2999 then
                    return false, "HTTP requests are not supported on this executor"
                end
                if vu33(v2998) ~= "string" or # v2998 < 10 then
                    venoxWarn("game:HttpGet seems broken, trying diff method...")
                    v2998 = vu2999({
                        Url = vu2904.API_URL,
                        Method = "GET"
                    }).Body
                    if vu33(v2998) ~= "string" or # v2998 < 10 then
                        return false, "HTTP requests not working, use different executor!"
                    end
                end
                local v3000 = vu2903:JSONDecode(v2998)
                local _ = v3000.seed
                local v3001 = v3000.challenge
                local v3002 = vu2913.hmac(vu2913.sha256, vu2985(1, vu2985._q(1)), v3001)
                local v3003 = vu2995()
                local v3004 = {
                    hashed_key = vu2912(pu2996),
                    identifier = v3003,
                    request_id = vu2903:GenerateGUID(false),
                    timestamp = math.floor(os.time()),
                    challenge = v3001,
                    challenge_response = v3002
                }
                local vu3005 = vu2903:JSONEncode(v3004)
                local vu3006 = vu2987(vu3005)
                local v3009, vu3010 = pcall(function()
                    local v3007 = vu2999
                    local v3008 = {
                        Url = vu2904.API_URL,
                        Method = "POST",
                        Headers = {
                            ["Content-Type"] = "application/json",
                            ["x-signature"] = vu3006
                        },
                        Body = vu3005
                    }
                    return v3007(v3008)
                end)
                if not (v3009 and vu3010) then
                    print("Request failed. Error details:")
                    print("Success:", tostring(v3009))
                    print("Response:", tostring(vu3010))
                    return false, "Network error: Unable to connect to validation server"
                end
                venoxWarn("Server Request completed")
                if vu3010.StatusCode == 429 then
                    local v3011 = vu3010.Headers["retry-after"]
                    if not v3011 then
                        return false, "Too many requests. No retry time specified."
                    end
                    print("Retry-After Header:", tostring(v3011))
                    return false, "Too many requests. Retry in " .. v3011 .. " seconds."
                end
                if not vu3010.Body or vu33(vu3010.Body) ~= "string" then
                    print("Invalid response body or type. Response Body:", tostring(vu3010.Body))
                    return false, "Invalid server response"
                end
                local v3012, v3013 = pcall(function()
                    return vu2903:JSONDecode(vu3010.Body)
                end)
                if not v3012 then
                    venoxWarn("JSON Decode failed. Error details:")
                    venoxWarn("ParseSuccess:", tostring(v3012))
                    venoxWarn("Error Message:", tostring(v3013))
                    venoxWarn("Raw Body:", tostring(vu3010.Body))
                    return false, "Failed to decode server response. Maybe Invalid Response Format"
                end
                venoxWarn("JSON Decode Success. Parsed Response:", v3013)
                if v3013.status ~= "valid" then
                    venoxWarn("Validation failed:", v3013.message or "Unknown error")
                    return false, v3013.message
                end
                if not vu2991(v3013.token, v3004.request_id, v3013.signature) then
                    venoxWarn("Invalid re signature.")
                    return false, "Re signature validation failed"
                end
                venoxWarn("Validation successful.")
                vu2997 = v3013.token or string.char(math.random(97, 122)) .. string.char(math.random(97, 122)) .. string.char(math.random(97, 122))
                vu5 = vu2997
                vu4 = "y7f"
                return true, "Key Valid!"
            end)
            if v3014 then
                return v3015, v3016
            end
            venoxWarn(v3015, v3016)
            return false, "An error occurred during validation"
        end
        local function vu3022(pu3018)
            if not isfile(pu3018) then
                return nil
            end
            local v3020, v3021 = pcall(function()
                local v3019 = readfile(pu3018)
                if pu3018:find(".json") then
                    game:GetService("HttpService"):JSONDecode(v3019)
                end
                return v3019
            end)
            if v3020 then
                return v3021
            end
            pcall(function()
                if writefile then
                    if pu3018:find(".json") then
                        writefile(pu3018, "{}")
                    else
                        writefile(pu3018, "")
                    end
                end
            end)
            return nil
        end
        notifyVXWARE = notifyVXWARE or print
        local function vu4361(pu3023, pu3024)
            if not pu3023 or # pu3023 <= 0 then
                return false, "pls enter a key first!"
            end
            local v3025 = 0
            local v3026 = 2
            local v3027 = 3
            while true do
                local v3028, v3029 = vu3017(pu3023)
                local vu3030 = v3029
                if not v3028 then
                    if not vu3030:match("Auth Error: (ERR[123])") or v3025 >= v3026 then
                        break
                    end
                    notifyVXWARE("retrying...", 5)
                    v3025 = v3025 + 1
                    wait(v3027)
                end
                if v3028 or v3026 <= v3025 then
                    break
                end
            end
            if not v3028 then
                venoxPrint("Validation failed: " .. tostring(vu3030))
                return false, vu3030 or "unknown error! dm venox"
            end
            local _, _ = pcall(function()
                venoxPrint("Key validated successfully!")
                pcall(function()
                    if not vu4 == "y7f" or vu4 == "g" then
                        print("yess 2 ")
                        while true do
                        end
                    elseif not vu3030 ~= "Key Valid!" then
                        if vu5 and vu5 ~= "f" then
                            return
                        else
                            print("yess 3 ")
                            while true do
                            end
                        end
                    else
                        print("yess 3 ")
                        while true do
                        end
                    end
                end)
                pcall(function()
                    if pu3024 then
                        pu3024:Destroy()
                    end
                    writefile("venoxware/key.txt", pu3023)
                end)
                venoxPrint("Thanks for using Venoxware!")
                if getgenv().VXWARE_LOADED then
                    local _ = game:GetService("Players").LocalPlayer
                    notifyVXWARE("[V] - already loaded!")
                end
                getgenv().VXWARE_LOADED = true
                if not getgenv().AutoLoadDisabled then
                    local vu3031 = queue_on_teleport
                    if vu3031 and vu33(vu3031) == "function" then
                        local v3032, v3033 = pcall(function()
                            vu3031("\r\n                           print(\'Detected Teleport! Fixed Spam Load!\')\r\n                           getgenv().AutoLoadDisabled=true\r\n                           loadstring(game:HttpGet(\'https://raw.githubusercontent.com/venoxcc/universalscripts/refs/heads/main/rivals/venoxware\'))()\r\n                        ")
                        end)
                        if not v3032 then
                            print("Error in teleport function: " .. v3033)
                        end
                    else
                        print("venoxware: teleport function is not available. Autoload won\'t work!")
                    end
                end
                task.spawn(function()
                    local v3034 = "2.3.1"
                    if not isfolder("venoxware") then
                        makefolder("venoxware")
                    end
                    local vu3035 = "venoxware/script_version.txt"
                    local function v3037(p3036)
                        writefile(vu3035, p3036)
                    end
                    if (function()
                        if isfile(vu3035) then
                            return readfile(vu3035)
                        else
                            return nil
                        end
                    end)() == v3034 then
                        print("[V] already notified!")
                    else
                        local v3038, v3039 = pcall(function()
                            return loadstring(game:HttpGet("https://raw.githubusercontent.com/venoxcc/universalscripts/refs/heads/main/rivals/misc/upd_gui"))()
                        end)
                        if v3038 and v3039 then
                            v3039(v3034, "NEW Update", {
                                {
                                    text = "Fixed Blank Screen Issue",
                                    type = "fix"
                                },
                                {
                                    text = "Optimized Unlock All (30-50% FPS Boost)",
                                    type = "improvement"
                                },
                                {
                                    text = "Found bugs/issues? Report them on our Discord!",
                                    type = "info"
                                }
                            })
                            v3037(v3034)
                        else
                            warn("Failed to load update GUI:", v3039)
                        end
                    end
                end)
                local vu3040 = loadstring(game:HttpGet(vu1))()
                local v3041 = vu3040:MakeWindow({
                    Name = "vxware | dsc.gg/venoxhub |" .. (getexecutorname and getexecutorname() or (identifyexecutor and identifyexecutor() or "Unknown Exec")),
                    HidePremium = false,
                    TestMode = true,
                    IntroText = "venoxware 1#",
                    SaveConfig = true,
                    ConfigFolder = "venoxware"
                })
                function notifyVXWARE(p3042, p3043)
                    vu3040:MakeNotification({
                        Name = "venoxware",
                        Content = p3042,
                        Image = "rbxassetid://4483345998",
                        Time = p3043 or 5
                    })
                end
                local v3044 = getgenv().AutoLoadDisabled and "DISABLED" or "ENABLED"
                local v3045 = getgenv().AutoLoadDisabled and 255 or 85
                local v3046 = getgenv().AutoLoadDisabled and 85 or 255
                local v3047 = getgenv().AutoLoadDisabled and 85 or 85
                notifyVXWARE(string.format("Auto Run is currently: <font color=\'rgb(%d,%d,%d)\'><b>%s</b></font>", v3045, v3046, v3047, v3044))
                if getgenv().LoadSilent then
                    local v3048 = game:GetService("CoreGui")
                    local v3049 = v3048:FindFirstChild("HiddenUI")
                    local v3050
                    if v3049 then
                        v3050 = v3049:FindFirstChild("Orion")
                    else
                        v3050 = nil
                    end
                    local v3051 = v3050 or v3048:FindFirstChild("Orion")
                    if v3051 then
                        if v3051:GetChildren()[2] then
                            v3051:GetChildren()[2].Visible = false
                        end
                        local v3052 = v3051:FindFirstChild("Frame")
                        if v3052 then
                            v3052.Visible = false
                        end
                    else
                        venoxPrint("Orion GUI could not be found in either HiddenUI or CoreGui!")
                    end
                end
                local v3053 = v3041:MakeTab({
                    Name = "Local",
                    Icon = "rbxassetid://4370344717",
                    PremiumOnly = false
                })
                local vu3054 = v3041:MakeTab({
                    Name = "Visuals",
                    Icon = "rbxassetid://3610254229",
                    PremiumOnly = false
                })
                local v3055 = v3041:MakeTab({
                    Name = "Aim",
                    Icon = "rbxassetid://4384394237",
                    PremiumOnly = false
                })
                local vu3056 = v3041:MakeTab({
                    Name = "Gun Mods",
                    Icon = "rbxassetid://10747383470",
                    PremiumOnly = false
                })
                local vu3057 = v3041:MakeTab({
                    Name = "Weapons",
                    Icon = "rbxassetid://10734977012",
                    PremiumOnly = false
                })
                local vu3058 = v3041:MakeTab({
                    Name = "Unlock All",
                    Icon = "rbxassetid://10734952273",
                    PremiumOnly = false
                })
                local vu3059 = v3041:MakeTab({
                    Name = "Bullet Tracers",
                    Icon = "rbxassetid://10734924532",
                    PremiumOnly = false
                })
                local v3060 = v3041:MakeTab({
                    Name = "RAGE",
                    Icon = "rbxassetid://4335482575",
                    PremiumOnly = false
                })
                local v3061 = v3041:MakeTab({
                    Name = "Teleport",
                    Icon = "rbxassetid://4483362748",
                    PremiumOnly = false
                })
                local v3062 = v3041:MakeTab({
                    Name = "Spoofs",
                    Icon = "rbxassetid://4483346354",
                    PremiumOnly = false
                })
                local vu3063 = v3041:MakeTab({
                    Name = "World",
                    Icon = "rbxassetid://4370344717",
                    PremiumOnly = false
                })
                local vu3064 = v3041:MakeTab({
                    Name = "Misc",
                    Icon = "rbxassetid://4335489011",
                    PremiumOnly = false
                })
                function configMisc()
                    function exportSoundConfig()
                        return vu3022("venoxware/sounds/sounds.json")
                    end
                    function importSoundConfig(p3065)
                        if not p3065 then
                            return "Invalid import data."
                        end
                        writefile("venoxware/sounds/sounds.json", p3065)
                        return "Sound configuration imported successfully."
                    end
                    function exportNormalConfig()
                        return vu3022("venoxware/17625359962.txt")
                    end
                    function importNormalConfig(p3066)
                        if not p3066 then
                            return "Invalid import data."
                        end
                        writefile("venoxware/17625359962.txt", p3066)
                        return "Normal configuration imported successfully."
                    end
                    vu3064:AddSection({
                        Name = "Config Customize"
                    })
                    vu3064:AddButton({
                        Name = "Export Config",
                        Callback = function()
                            setclipboard(exportNormalConfig())
                            notifyVXWARE("exported! (copied to clipboard)")
                        end
                    })
                    vu3064:AddTextbox({
                        Name = "Import Config",
                        Default = "",
                        TextDisappear = true,
                        Callback = function(p3067)
                            local v3068 = importNormalConfig(p3067)
                            notifyVXWARE(v3068)
                        end
                    })
                    vu3064:AddButton({
                        Name = "Export Hit Sound Config",
                        Callback = function()
                            setclipboard(exportSoundConfig())
                            notifyVXWARE("exported! (copied to clipboard)")
                        end
                    })
                    vu3064:AddTextbox({
                        Name = "Import Hit Sound Config",
                        Default = "",
                        TextDisappear = true,
                        Callback = function(p3069)
                            local v3070 = importSoundConfig(p3069)
                            notifyVXWARE(v3070)
                        end
                    })
                    vu3064:AddButton({
                        Name = "Rejoin Game and reload Config",
                        Callback = function()
                            game:GetService("Players").LocalPlayer:Kick("VENOXWARE: Reloading Config... wait!")
                            wait(2)
                            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
                        end
                    })
                end
                configMisc()
                local v3071 = v3041:MakeTab({
                    Name = "Changelog",
                    Icon = "rbxassetid://3944669799",
                    PremiumOnly = false
                })
                getgenv().AimbotToggled = false
                getgenv().AimbotEnabled = false
                getgenv().InfiniteJumpEnabled = false
                getgenv().NoClipEnabled = false
                getgenv().Bhop = false
                getgenv().Smoothness = 0.93
                getgenv().AutoFarmEnabled = false
                getgenv().FlyEnabled = false
                getgenv().FlySpeed = 75
                getgenv().deadCheck = true
                getgenv().wallcheck = true
                getgenv().besttargetEnabled = true
                getgenv().closestPlayerEnabled = false
                getgenv().drawFOV = true
                getgenv().fieldofview = 100
                getgenv().maxAimbotDistance = 600
                getgenv().ESPChamColor = Color3.fromRGB(255, 0, 0)
                getgenv().ESPVisibleColor = Color3.fromRGB(255, 0, 0)
                getgenv().ESPNotVisibleColor = Color3.fromRGB(255, 255, 255)
                getgenv().ESPMaxDistance = 600
                getgenv().silentaimEnabled = false
                local vu3072 = game:GetService("Players")
                local vu3073 = vu3072.LocalPlayer
                local v3074 = vu3073:GetMouse()
                local vu3075 = game:GetService("RunService")
                local vu3076 = workspace.CurrentCamera
                local vu3077 = game:GetService("UserInputService")
                local v3078 = RaycastParams.new()
                v3078.FilterType = Enum.RaycastFilterType.Blacklist
                v3078.IgnoreWater = true
                loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/pissblox/main/modules/fakedrawinglib.lua"))()
                if not Drawing then
                    vu3040:MakeNotification({
                        Name = "venoxware",
                        Content = "Error: No Drawing Found!",
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    })
                end
                local vu3079
                if Drawing and not getgenv().LoadSilent then
                    vu3079 = Drawing.new("Circle")
                    vu3079.Visible = getgenv().drawFOV
                    vu3079.Color = getgenv().ESPVisibleColor
                    vu3079.Thickness = 2
                    vu3079.Filled = false
                else
                    vu3079 = nil
                end
                local function vu3081(p3080)
                    if vu3079 and not getgenv().LoadSilent then
                        vu3079.Visible = getgenv().drawFOV
                        vu3079.Radius = getgenv().fieldofview
                        vu3079.Color = getgenv().ESPVisibleColor
                        vu3079.Position = p3080
                    else
                        venoxPrint("FOVCircle is not initialized.")
                    end
                end
                local vu3082 = RaycastParams.new()
                vu3082.FilterType = Enum.RaycastFilterType.Blacklist
                vu3082.IgnoreWater = true
                local function vu3088(p3083, p3084)
                    if p3083 ~= vu3073 then
                        local v3085 = p3083.Character
                        if v3085 and v3085:FindFirstChild("HumanoidRootPart") then
                            local v3086, v3087 = vu3076:WorldToViewportPoint(v3085.HumanoidRootPart.Position)
                            if v3087 then
                                return (Vector2.new(v3086.X, v3086.Y) - p3084).Magnitude <= getgenv().fieldofview
                            else
                                return false
                            end
                        else
                            return false
                        end
                    else
                        return false
                    end
                end
                vu3075.RenderStepped:Connect(function()
                    vu3081((vu3077:GetMouseLocation()))
                end)
                local function vu3100(pu3089)
                    local v3091, vu3092 = pcall(function()
                        local v3090 = pu3089
                        if v3090 then
                            v3090 = pu3089.Character
                        end
                        return v3090
                    end)
                    if not (v3091 and vu3092) then
                        return false
                    end
                    local v3093, v3094 = pcall(function()
                        return vu3092:FindFirstChild("HumanoidRootPart")
                    end)
                    if not (v3093 and v3094) then
                        return false
                    end
                    local v3095, v3096 = pcall(function()
                        return vu3092:FindFirstChild("Head")
                    end)
                    if not (v3095 and v3096) then
                        return false
                    end
                    vu3082.FilterDescendantsInstances = {
                        vu3073.Character,
                        vu3092
                    }
                    local v3097 = vu3076.CFrame.Position
                    local v3098 = (v3096.Position - v3097).unit * (v3096.Position - v3097).magnitude
                    local v3099 = workspace:Raycast(v3097, v3098, vu3082)
                    return v3099 == nil and true or v3099.Instance:IsDescendantOf(vu3092)
                end
                function isTeammate(pu3101)
                    local v3102, v3103 = pcall(function()
                        return pu3101:FindFirstChild("HumanoidRootPart")
                    end)
                    return v3102 and (v3103 and v3103:FindFirstChild("TeammateLabel")) and true or false
                end
                function CalculateChance(p3104)
                    local v3105 = math.floor(p3104)
                    return math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100) / 100 <= v3105 / 100
                end
                local vu3106 = 0
                local vu3107 = nil
                local function vu3112(p3108, p3109)
                    local v3110 = p3108:FindFirstChild("HumanoidRootPart")
                    if not v3110 then
                        return nil
                    end
                    local v3111 = v3110.Velocity
                    return v3110.Position + v3111 * p3109
                end
                local function vu3172(p3113)
                    local v3114 = nil
                    local v3115 = getgenv().RandomizeDelay or 0.1
                    local v3116 = {
                        "Head",
                        "HumanoidRootPart",
                        "UpperTorso",
                        "LowerTorso",
                        "LeftArm",
                        "RightArm",
                        "LeftLeg",
                        "RightLeg"
                    }
                    local v3117 = {
                        "HitboxHead",
                        "HitboxBody",
                        "HitboxBodySmall"
                    }
                    local v3118 = p3113:FindFirstChild("LowerTorso") ~= nil
                    local v3119 = getgenv().AimBodyPart
                    if v3119 == "Head" then
                        v3114 = p3113:FindFirstChild("Head") or p3113:FindFirstChild("HitboxHead")
                    elseif v3119 == "HumanoidRootPart" then
                        v3114 = p3113:FindFirstChild("HumanoidRootPart")
                    elseif v3119 == "UpperTorso" then
                        v3114 = p3113:FindFirstChild("UpperTorso")
                    elseif v3119 == "HitboxHead" then
                        v3114 = p3113:FindFirstChild("HitboxHead")
                    elseif v3119 == "HitboxBody" then
                        v3114 = p3113:FindFirstChild("HitboxBody")
                    elseif v3119 == "RandomHeadOrBody" then
                        local v3120 = {
                            "Head",
                            "HitboxHead",
                            "UpperTorso",
                            "LowerTorso",
                            "HitboxBody"
                        }
                        v3114 = p3113:FindFirstChild(v3120[math.random(# v3120)])
                    elseif v3119 == "RandomBodyPart" then
                        v3114 = p3113:FindFirstChild(v3116[math.random(# v3116)])
                    elseif v3119 == "RandomHitboxPart" then
                        v3114 = p3113:FindFirstChild(v3117[math.random(# v3117)])
                    elseif v3119 == "LegitMode" then
                        local v3121, v3122, v3123 = ipairs(v3116)
                        local v3124 = {}
                        while true do
                            local v3125
                            v3123, v3125 = v3121(v3122, v3123)
                            if v3123 == nil then
                                break
                            end
                            table.insert(v3124, v3125)
                        end
                        local v3126, v3127, v3128 = ipairs(v3117)
                        while true do
                            local v3129
                            v3128, v3129 = v3126(v3127, v3128)
                            if v3128 == nil then
                                break
                            end
                            table.insert(v3124, v3129)
                        end
                        if math.random() >= 0.15 then
                            v3114 = p3113:FindFirstChild(v3124[math.random(# v3124)])
                        else
                            local v3130 = {
                                "Head",
                                "HitboxHead"
                            }
                            v3114 = p3113:FindFirstChild(v3130[math.random(# v3130)])
                        end
                    elseif v3119 == "DynamicLegitMode" then
                        if (getgenv().LegitHeadshotProbability or 0.1) <= math.random() then
                            v3114 = p3113:FindFirstChild(v3116[math.random(# v3116)]) or p3113:FindFirstChild(v3117[math.random(# v3117)])
                        else
                            local v3131 = {
                                "Head",
                                "HitboxHead"
                            }
                            v3114 = p3113:FindFirstChild(v3131[math.random(# v3131)])
                        end
                    elseif v3119 == "SelectiveBodyMode" then
                        local v3132 = {
                            "HumanoidRootPart",
                            "UpperTorso",
                            "LowerTorso",
                            "LeftArm",
                            "RightArm",
                            "LeftLeg",
                            "RightLeg"
                        }
                        v3114 = p3113:FindFirstChild(v3132[math.random(# v3132)])
                    elseif v3119 == "HighAccuracyMode" then
                        local v3133 = {
                            "Head",
                            "HitboxHead",
                            "HitboxBody"
                        }
                        v3114 = p3113:FindFirstChild(v3133[math.random(# v3133)])
                    elseif v3119 == "RotationalAimingMode" then
                        local v3134 = math.random()
                        if v3134 < 0.3 then
                            v3114 = p3113:FindFirstChild("Head") or p3113:FindFirstChild("HitboxHead")
                        elseif v3134 < 0.6 then
                            v3114 = p3113:FindFirstChild("UpperTorso")
                        elseif v3134 < 0.9 then
                            v3114 = p3113:FindFirstChild("LeftArm") or p3113:FindFirstChild("RightArm")
                        else
                            v3114 = v3118 and p3113:FindFirstChild("LowerTorso") or (p3113:FindFirstChild("LeftLeg") or p3113:FindFirstChild("RightLeg"))
                        end
                    elseif v3119 == "PredictiveAimingMode" then
                        local v3135 = vu3112(p3113, getgenv().LeadTime or 0.5)
                        if v3135 then
                            local v3136 = math.huge
                            local v3137, v3138, v3139 = ipairs(v3116)
                            v3114 = nil
                            while true do
                                local v3140
                                v3139, v3140 = v3137(v3138, v3139)
                                if v3139 == nil then
                                    break
                                end
                                local v3141 = p3113:FindFirstChild(v3140)
                                if v3141 then
                                    local v3142 = (v3141.Position - v3135).magnitude
                                    if v3142 < v3136 then
                                        v3114 = v3141
                                        v3136 = v3142
                                    end
                                end
                            end
                        end
                    elseif v3119 == "LeadAimingMode" then
                        local v3143 = getgenv().LeadDistance or 10
                        local v3144 = p3113:FindFirstChild("HumanoidRootPart")
                        if v3144 then
                            local v3145 = v3144.Velocity
                            local v3146 = v3144.Position + v3145.unit * v3143
                            local v3147 = math.huge
                            local v3148, v3149, v3150 = ipairs(v3116)
                            v3114 = nil
                            while true do
                                local v3151
                                v3150, v3151 = v3148(v3149, v3150)
                                if v3150 == nil then
                                    break
                                end
                                local v3152 = p3113:FindFirstChild(v3151)
                                if v3152 then
                                    local v3153 = (v3152.Position - v3146).magnitude
                                    if v3153 < v3147 then
                                        v3114 = v3152
                                        v3147 = v3153
                                    end
                                end
                            end
                        end
                    elseif v3119 == "AimAtWeakPointsMode" then
                        local v3154 = {
                            "Head",
                            "HitboxHead",
                            "UpperTorso"
                        }
                        v3114 = p3113:FindFirstChild(v3154[math.random(# v3154)])
                    elseif v3119 == "AdaptiveAimingMode" then
                        local v3155 = getgenv().RecentMovement or 0.5
                        local v3156 = getgenv().RecentMovementData or {}
                        local v3157, v3158, v3159 = ipairs(v3156)
                        local v3160 = 0
                        local v3161 = 0
                        local v3162 = {
                            Head = 0.1,
                            UpperTorso = 0.2,
                            LowerTorso = 0.15,
                            LeftArm = 0.1,
                            RightArm = 0.1,
                            LeftLeg = 0.1,
                            RightLeg = 0.1
                        }
                        while true do
                            local v3163
                            v3159, v3163 = v3157(v3158, v3159)
                            if v3159 == nil then
                                break
                            end
                            if tick() - v3163.timestamp <= v3155 then
                                v3160 = v3160 + v3163.velocity.magnitude
                                v3161 = v3161 + 1
                            end
                        end
                        if v3161 > 0 then
                            local v3164 = v3160 / v3161
                            if v3164 > 10 then
                                v3162.Head = v3162.Head + 0.2
                                v3162.UpperTorso = v3162.UpperTorso + 0.1
                            elseif v3164 > 5 then
                                v3162.Head = v3162.Head + 0.1
                                v3162.UpperTorso = v3162.UpperTorso + 0.05
                            end
                        end
                        local v3165, v3166, v3167 = pairs(v3162)
                        local v3168 = 0
                        local v3169 = nil
                        while true do
                            local v3170
                            v3167, v3170 = v3165(v3166, v3167)
                            if v3167 == nil then
                                break
                            end
                            if v3168 < v3170 then
                                v3169 = v3167
                                v3168 = v3170
                            end
                        end
                        v3114 = p3113:FindFirstChild(v3169)
                    end
                    local v3171 = tick()
                    if v3114 and v3115 <= v3171 - vu3106 then
                        vu3107 = v3114
                        vu3106 = v3171
                    else
                        v3114 = vu3107
                    end
                    return v3114
                end
                getgenv().distanceWeight = 0.4
                getgenv().fovWeight = 0.3
                getgenv().healthWeight = 0.3
                local function vu3264()
                    if getgenv().IntelligentPriorityEnabled then
                        local v3173 = - math.huge
                        local v3174 = vu3076.CFrame.LookVector
                        vu3077:GetMouseLocation()
                        Vector2.new(vu3076.ViewportSize.X / 2, vu3076.ViewportSize.Y / 2)
                        local v3175 = vu3072
                        local v3176, v3177, v3178 = pairs(v3175:GetPlayers())
                        local v3179 = nil
                        while true do
                            local v3180, vu3181 = v3176(v3177, v3178)
                            if v3180 == nil then
                                break
                            end
                            v3178 = v3180
                            local v3182
                            if vu3181 == vu3073 then
                                vu3181 = v3179
                                v3182 = v3173
                            else
                                local v3183, vu3184 = pcall(function()
                                    return vu3181.Character
                                end)
                                if v3183 and vu3184 then
                                    local v3185, v3186 = pcall(function()
                                        return vu3184:FindFirstChild("HumanoidRootPart")
                                    end)
                                    if v3185 and (v3186 and not (getgenv().AimTeamCheck and isTeammate(vu3184))) then
                                        local v3187, v3188 = pcall(function()
                                            return vu3184:FindFirstChildOfClass("Humanoid")
                                        end)
                                        if getgenv().deadCheck and (not v3187 or (not v3188 or v3188.Health <= 0)) or getgenv().wallcheck and not vu3100(vu3181) then
                                            vu3181 = v3179
                                            v3182 = v3173
                                        else
                                            local v3189 = (vu3073.Character.HumanoidRootPart.Position - v3186.Position).Magnitude
                                            local v3190 = v3174:Dot((v3186.Position - vu3076.CFrame.Position).unit)
                                            local v3191 = 1 / (v3189 + 0.1)
                                            local v3192 = v3188.Health / v3188.MaxHealth
                                            local v3193 = getgenv().maxAimbotDistance
                                            local v3194 = math.clamp(v3191 / (1 / v3193), 0, 1)
                                            local v3195 = math.clamp(v3190, 0, 1)
                                            local v3196 = math.clamp(v3192, 0, 1)
                                            v3182 = v3194 * getgenv().distanceWeight + v3195 * getgenv().fovWeight + v3196 * getgenv().healthWeight
                                            if v3173 >= v3182 then
                                                vu3181 = v3179
                                                v3182 = v3173
                                            end
                                        end
                                    else
                                        vu3181 = v3179
                                        v3182 = v3173
                                    end
                                else
                                    vu3181 = v3179
                                    v3182 = v3173
                                end
                            end
                            v3179 = vu3181
                            v3173 = v3182
                        end
                        return v3179
                    end
                    if getgenv().besttargetEnabled then
                        local v3197 = math.huge
                        local v3198 = vu3076.CFrame.LookVector
                        local v3199 = vu3072
                        local v3200, v3201, v3202 = pairs(v3199:GetPlayers())
                        local v3203 = nil
                        while true do
                            local v3204, vu3205 = v3200(v3201, v3202)
                            if v3204 == nil then
                                break
                            end
                            v3202 = v3204
                            local v3206
                            if vu3205 == vu3073 then
                                vu3205 = v3203
                                v3206 = v3197
                            else
                                local v3207, vu3208 = pcall(function()
                                    return vu3205.Character
                                end)
                                if v3207 and vu3208 then
                                    local v3209, v3210 = pcall(function()
                                        return vu3208:FindFirstChild("HumanoidRootPart")
                                    end)
                                    if v3209 and (v3210 and not (getgenv().AimTeamCheck and isTeammate(vu3208))) then
                                        local v3211, v3212 = pcall(function()
                                            return vu3208:FindFirstChildOfClass("Humanoid")
                                        end)
                                        if getgenv().deadCheck and (not v3211 or (not v3212 or v3212.Health <= 0)) or getgenv().wallcheck and not vu3100(vu3205) then
                                            vu3205 = v3203
                                            v3206 = v3197
                                        else
                                            local v3213, v3214 = pcall(function()
                                                return vu3208:FindFirstChild("Head")
                                            end)
                                            if v3213 and v3214 and v3198:Dot((v3214.Position - vu3076.CFrame.Position).unit) > 0.9 then
                                                v3206 = (v3214.Position - vu3076.CFrame.Position).Magnitude
                                                if v3206 >= v3197 or v3206 >= getgenv().maxAimbotDistance then
                                                    vu3205 = v3203
                                                    v3206 = v3197
                                                end
                                            else
                                                vu3205 = v3203
                                                v3206 = v3197
                                            end
                                        end
                                    else
                                        vu3205 = v3203
                                        v3206 = v3197
                                    end
                                else
                                    vu3205 = v3203
                                    v3206 = v3197
                                end
                            end
                            v3203 = vu3205
                            v3197 = v3206
                        end
                        return v3203
                    end
                    if getgenv().closestPlayerEnabled then
                        local v3215 = math.huge
                        local v3216 = vu3072
                        local v3217, v3218, v3219 = pairs(v3216:GetPlayers())
                        local v3220 = nil
                        while true do
                            local vu3221
                            v3219, vu3221 = v3217(v3218, v3219)
                            if v3219 == nil then
                                break
                            end
                            local v3222
                            if vu3221 == vu3073 then
                                vu3221 = v3220
                                v3222 = v3215
                            else
                                local v3223, vu3224 = pcall(function()
                                    return vu3221.Character
                                end)
                                if v3223 and vu3224 then
                                    local v3225, v3226 = pcall(function()
                                        return vu3224:FindFirstChild("HumanoidRootPart")
                                    end)
                                    if v3225 and (v3226 and not (getgenv().AimTeamCheck and isTeammate(vu3224))) and (not getgenv().wallcheck or vu3100(vu3221)) then
                                        local v3227, v3228 = pcall(function()
                                            return vu3224:FindFirstChildOfClass("Humanoid")
                                        end)
                                        if getgenv().deadCheck and (not v3227 or (not v3228 or v3228.Health <= 0)) then
                                            vu3221 = v3220
                                            v3222 = v3215
                                        else
                                            local v3230, v3231 = pcall(function()
                                                local v3229 = vu3073.Character
                                                if v3229 then
                                                    v3229 = vu3073.Character:FindFirstChild("HumanoidRootPart")
                                                end
                                                return v3229
                                            end)
                                            if v3230 and v3231 then
                                                v3222 = (v3231.Position - v3226.Position).magnitude
                                                if v3222 >= v3215 or v3222 >= getgenv().maxAimbotDistance then
                                                    vu3221 = v3220
                                                    v3222 = v3215
                                                end
                                            else
                                                vu3221 = v3220
                                                v3222 = v3215
                                            end
                                        end
                                    else
                                        vu3221 = v3220
                                        v3222 = v3215
                                    end
                                else
                                    vu3221 = v3220
                                    v3222 = v3215
                                end
                            end
                            v3220 = vu3221
                            v3215 = v3222
                        end
                        return v3220
                    end
                    if getgenv().fovscaleEnabled then
                        local v3232 = vu3077:GetMouseLocation()
                        local v3233 = math.huge
                        local v3234 = vu3072
                        local v3235, v3236, v3237 = pairs(v3234:GetPlayers())
                        local v3238 = nil
                        while true do
                            local v3239, v3240 = v3235(v3236, v3237)
                            if v3239 == nil then
                                break
                            end
                            v3237 = v3239
                            if v3240 ~= vu3073 then
                                local v3241 = v3240.Character
                                if v3241 then
                                    local v3242 = v3241:FindFirstChild("HumanoidRootPart")
                                    if v3242 then
                                        local v3243 = v3241:FindFirstChildOfClass("Humanoid")
                                        if not getgenv().deadcheck or v3243 and v3243.Health > 0 then
                                            local v3244 = vu3073.Character
                                            if v3244 then
                                                v3244 = vu3073.Character:FindFirstChild("HumanoidRootPart")
                                            end
                                            if v3244 and (not getgenv().wallcheck or vu3100(v3240)) and (vu3088(v3240, v3232) and not (getgenv().AimTeamCheck and isTeammate(v3241))) then
                                                local v3245 = (v3244.Position - v3242.Position).Magnitude
                                                if v3245 < v3233 and v3245 < getgenv().maxAimbotDistance then
                                                    v3238 = v3240
                                                    v3233 = v3245
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        return v3238
                    end
                    if getgenv().closestToCenterEnabled then
                        local v3246 = math.huge
                        local v3247 = Vector2.new(vu3076.ViewportSize.X / 2, vu3076.ViewportSize.Y / 2)
                        local v3248 = vu3072
                        local v3249, v3250, v3251 = pairs(v3248:GetPlayers())
                        local v3252 = nil
                        while true do
                            local v3253, vu3254 = v3249(v3250, v3251)
                            if v3253 == nil then
                                break
                            end
                            v3251 = v3253
                            local v3255
                            if vu3254 == vu3073 then
                                vu3254 = v3252
                                v3255 = v3246
                            else
                                local v3256, vu3257 = pcall(function()
                                    return vu3254.Character
                                end)
                                if v3256 and vu3257 then
                                    local v3258, v3259 = pcall(function()
                                        return vu3257:FindFirstChild("HumanoidRootPart")
                                    end)
                                    if v3258 and (v3259 and not (getgenv().AimTeamCheck and isTeammate(vu3257))) then
                                        local v3260, v3261 = pcall(function()
                                            return vu3257:FindFirstChildOfClass("Humanoid")
                                        end)
                                        if getgenv().deadCheck and (not v3260 or (not v3261 or v3261.Health <= 0)) or getgenv().wallcheck and not vu3100(vu3254) then
                                            vu3254 = v3252
                                            v3255 = v3246
                                        else
                                            local v3262, v3263 = vu3076:WorldToScreenPoint(v3259.Position)
                                            if v3263 then
                                                v3255 = (Vector2.new(v3262.X, v3262.Y) - v3247).Magnitude
                                                if v3255 >= v3246 or v3255 >= getgenv().maxAimbotDistance then
                                                    vu3254 = v3252
                                                    v3255 = v3246
                                                end
                                            else
                                                vu3254 = v3252
                                                v3255 = v3246
                                            end
                                        end
                                    else
                                        vu3254 = v3252
                                        v3255 = v3246
                                    end
                                else
                                    vu3254 = v3252
                                    v3255 = v3246
                                end
                            end
                            v3252 = vu3254
                            v3246 = v3255
                        end
                        return v3252
                    end
                end
                local vu3265 = nil
                local function vu3279()
                    local vu3266 = vu3264()
                    local v3268, vu3269 = pcall(function()
                        local v3267 = vu3266
                        if v3267 then
                            v3267 = vu3266.Character
                        end
                        return v3267
                    end)
                    if v3268 and vu3269 then
                        local v3270, v3271 = pcall(function()
                            return vu3269:FindFirstChild("HumanoidRootPart")
                        end)
                        if v3270 and v3271 then
                            local vu3272 = v3271
                            local function v3278()
                                local v3273, vu3274 = pcall(function()
                                    return vu3073.Character
                                end)
                                if v3273 and vu3274 then
                                    local v3275, v3276 = pcall(function()
                                        return vu3274:FindFirstChild("HumanoidRootPart")
                                    end)
                                    if v3275 and v3276 then
                                        local v3277 = vu3272.Position + Vector3.new(0, 2, 0)
                                        v3276.CFrame = CFrame.new(v3276.Position, v3277)
                                    end
                                end
                            end
                            if vu3265 then
                                vu3265:Disconnect()
                            end
                            vu3265 = vu3075.Heartbeat:Connect(v3278)
                            vu3272.AncestryChanged:Connect(function()
                                if vu3265 then
                                    vu3265:Disconnect()
                                end
                            end)
                        end
                    end
                end
                v3074.Button1Down:Connect(function()
                    if getgenv().AutoFarmEnabled then
                        if vu3265 then
                            vu3265:Disconnect()
                        end
                        vu3279()
                    end
                end)
                game:GetService("UserInputService").JumpRequest:Connect(function()
                    if getgenv().InfiniteJumpEnabled then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
                    end
                end)
                local vu3280 = false
                local vu3281 = nil
                local function vu3284()
                    local v3282 = game:GetService("Players").LocalPlayer.Character
                    if v3282 then
                        local v3283 = v3282:FindFirstChild("HumanoidRootPart")
                        if v3283 then
                            vu3281 = Instance.new("BodyVelocity")
                            vu3281.Velocity = Vector3.new()
                            vu3281.MaxForce = Vector3.new(4000, 4000, 4000)
                            vu3281.Parent = v3283
                            vu3280 = true
                        end
                    else
                        return
                    end
                end
                game:GetService("RunService").RenderStepped:Connect(function()
                    if getgenv().FlyEnabled then
                        if not vu3280 then
                            vu3284()
                        end
                        if vu3281 then
                            local v3285 = game.Workspace.CurrentCamera
                            local v3286 = game:GetService("UserInputService")
                            if v3285 and v3286 then
                                local v3287 = v3285.CFrame
                                local v3288 = v3287.RightVector
                                local v3289 = v3287.LookVector
                                local v3290 = (v3286:IsKeyDown(Enum.KeyCode.W) and 1 or 0) - (v3286:IsKeyDown(Enum.KeyCode.S) and 1 or 0)
                                local v3291 = (v3286:IsKeyDown(Enum.KeyCode.D) and 1 or 0) - (v3286:IsKeyDown(Enum.KeyCode.A) and 1 or 0)
                                local v3292 = (v3286:IsKeyDown(Enum.KeyCode.Space) and 1 or 0) - (v3286:IsKeyDown(Enum.KeyCode.LeftControl) and 1 or 0)
                                local v3293 = (v3289 * v3290 + v3288 * v3291 + Vector3.new(0, v3292, 0)).unit * getgenv().FlySpeed
                                if v3290 == 0 and (v3291 == 0 and v3292 == 0) then
                                    v3293 = Vector3.new()
                                end
                                vu3281.Velocity = v3293
                            end
                        end
                    elseif vu3280 then
                        if vu3281 then
                            vu3281:Destroy()
                        end
                        vu3280 = false
                    end
                end)
                vu3075.RenderStepped:Connect(function()
                    if getgenv().NoClipEnabled and vu3073.Character then
                        local v3294, v3295, v3296 = pairs(vu3073.Character:GetDescendants())
                        while true do
                            local v3297
                            v3296, v3297 = v3294(v3295, v3296)
                            if v3296 == nil then
                                break
                            end
                            if v3297:IsA("BasePart") then
                                v3297.CanCollide = false
                            end
                        end
                    end
                end)
                local vu3298 = game:GetService("RunService")
                local vu3299 = game:GetService("Players")
                local vu3300 = vu3299.LocalPlayer
                local vu3301 = 306
                local vu3302 = 32
                local vu3303 = 119
                local function vu3305(p3304)
                    keypress(p3304)
                end
                local function vu3307(p3306)
                    keyrelease(p3306)
                end
                local function vu3310()
                    while getgenv().bhop do
                        local v3308 = vu3300.Character
                        if v3308 and v3308:FindFirstChild("Humanoid") then
                            local v3309 = v3308.Humanoid
                            if v3309 and v3309.FloorMaterial ~= Enum.Material.Air then
                                vu3305(vu3301)
                                wait(0.2)
                                vu3305(vu3302)
                                wait(0.1)
                                vu3307(vu3302)
                                wait(0.3)
                                vu3307(vu3301)
                            end
                        end
                        wait(0.1)
                    end
                end
                local function vu3311()
                    while getgenv().bhop do
                        vu3305(vu3303)
                        wait(0.05)
                        vu3307(vu3303)
                        wait(0.1)
                    end
                end
                vu3298.RenderStepped:Connect(function()
                    if getgenv().bhop then
                        spawn(vu3310)
                        spawn(vu3311)
                    end
                end)
                local vu3312 = vu3299.LocalPlayer.PlayerScripts.Assets.Misc
                local vu3313 = vu3312.FlashbangEffect
                local function vu3319()
                    if vu3312 and vu3313 then
                        local v3314 = vu3313
                        local v3315, v3316, v3317 = pairs(v3314:GetChildren())
                        while true do
                            local v3318
                            v3317, v3318 = v3315(v3316, v3317)
                            if v3317 == nil then
                                break
                            end
                            v3318:Destroy()
                        end
                    else
                        venoxPrint("flashbang or misc not found")
                    end
                end
                local function vu3321(p3320)
                    getgenv().cframespeed = p3320
                    if not getgenv().cframeran then
                        getgenv().cframeran = true
                        repeat
                            pcall(function()
                                vu3299.LocalPlayer.Character.HumanoidRootPart.CFrame = vu3299.LocalPlayer.Character.HumanoidRootPart.CFrame + vu3299.LocalPlayer.Character.Humanoid.MoveDirection * getgenv().cframespeed
                            end)
                            game:GetService("RunService").Stepped:wait()
                        until getgenv().cframespeed == 0
                        getgenv().cframeran = false
                    end
                end
                v3053:AddSection({
                    Name = "Exploits"
                })
                v3053:AddButton({
                    Name = "No Flash!",
                    Callback = function()
                        vu3319()
                    end
                })
                v3053:AddButton({
                    Name = "No Smoke!",
                    Callback = function()
                        if game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc:FindFirstChild("SmokeClouds") then
                            game:GetService("Players").LocalPlayer.PlayerScripts.Assets.Misc.SmokeClouds:Destroy()
                        end
                    end
                })
                v3053:AddSection({
                    Name = "Movement"
                })
                v3053:AddToggle({
                    Name = "Bhop (laggy)",
                    Default = false,
                    Callback = function(p3322)
                        getgenv().bhop = p3322
                    end
                })
                v3053:AddSlider({
                    Name = "CFrame Walk Speed",
                    Min = 0,
                    Max = 150,
                    Default = 0,
                    Color = Color3.fromRGB(228, 146, 248),
                    Increment = 1,
                    ValueName = "boost",
                    Save = true,
                    Flag = "CFrameWalkSlider",
                    Callback = function(p3323)
                        vu3321(p3323 / 30)
                    end
                })
                v3053:AddSection({
                    Name = "Jumps"
                })
                v3053:AddToggle({
                    Name = "Infinite Jump",
                    Default = false,
                    Save = true,
                    Flag = "InfiniteJumpToggle",
                    Callback = function(p3324)
                        getgenv().InfiniteJumpEnabled = p3324
                    end
                })
                v3053:AddSection({
                    Name = "Misc"
                })
                v3053:AddBind({
                    Name = "NoClip",
                    Default = "NOT SELECTED",
                    Hold = false,
                    Save = true,
                    Flag = "NoClipBind",
                    Callback = function(_)
                        getgenv().NoClipEnabled = not getgenv().NoClipEnabled
                    end
                })
                v3053:AddBind({
                    Name = "Fly and kinda Long Jump",
                    Default = "NOT SELECTED",
                    Hold = false,
                    Save = true,
                    Flag = "FlyBind",
                    Callback = function()
                        getgenv().FlyEnabled = not getgenv().FlyEnabled
                    end
                })
                v3053:AddSlider({
                    Name = "Fly Speed",
                    Min = 19,
                    Max = 200,
                    Default = 75,
                    Color = Color3.fromRGB(169, 146, 255),
                    Increment = 10,
                    ValueName = "Speed",
                    Save = true,
                    Flag = "SplySpeedSlider",
                    Callback = function(p3325)
                        getgenv().FlySpeed = p3325
                    end
                })
                local vu3326 = workspace.CurrentCamera
                getgenv().stretchConnection = nil
                local vu3327 = nil
                local vu3328 = nil
                local vu3329 = nil
                function setStretchedRes(p3330)
                    local vu3331 = math.clamp(p3330, 0, 1)
                    if getgenv().stretchConnection then
                        getgenv().stretchConnection:Disconnect()
                        getgenv().stretchConnection = nil
                    end
                    if vu3331 > 0 then
                        getgenv().stretchConnection = vu3298.RenderStepped:Connect(function()
                            vu3326.CFrame = vu3326.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, vu3331, 0, 0, 0, 1)
                        end)
                    end
                end
                local function vu3335(p3332, p3333, p3334)
                    vu3327 = Color3.fromRGB(p3332, p3333, p3334)
                    vu3.OutdoorAmbient = vu3327
                end
                local function vu3339(p3336, p3337, p3338)
                    vu3328 = Color3.fromRGB(p3336, p3337, p3338)
                    vu3.Ambient = vu3328
                end
                local function vu3341(p3340)
                    vu3329 = p3340
                    vu3.ClockTime = p3340
                end
                if getgenv().lightingConnection then
                    getgenv().lightingConnection:Disconnect()
                end
                getgenv().lightingConnection = vu3.Changed:Connect(function(p3342)
                    if p3342 == "OutdoorAmbient" and (vu3327 and vu3.OutdoorAmbient ~= vu3327) then
                        vu3.OutdoorAmbient = vu3327
                    elseif p3342 == "Ambient" and (vu3328 and vu3.Ambient ~= vu3328) then
                        vu3.Ambient = vu3328
                    elseif p3342 == "ClockTime" and (vu3329 and vu3.ClockTime ~= vu3329) then
                        vu3.ClockTime = vu3329
                    end
                end)
                vu3054:AddSection({
                    Name = "Stretched Resolution"
                })
                vu3054:AddSlider({
                    Name = "Stretched Resolution",
                    Min = 0,
                    Max = 1,
                    Default = 0,
                    Color = Color3.fromRGB(228, 146, 248),
                    Increment = 0.01,
                    ValueName = "Stretch",
                    Save = true,
                    Flag = "StretchedResolutionSlider",
                    Callback = function(p3343)
                        setStretchedRes(p3343)
                    end
                })
                local v3354, vu3355 = pcall(function()
                    if getthreadidentity and getthreadidentity() < 7 or getidentity and getidentity() < 7 then
                        return
                    else
                        local v3344 = game:GetService("Players").LocalPlayer
                        if v3344 then
                            local v3345 = v3344:FindFirstChild("PlayerScripts")
                            if v3345 then
                                local v3346 = v3345:FindFirstChild("Controllers")
                                if v3346 then
                                    local v3347 = v3346:FindFirstChild("CameraController")
                                    if v3347 then
                                        local v3348, vu3349 = pcall(require, v3347)
                                        if v3348 and vu33(vu3349) == "table" then
                                            local vu3353 = {
                                                enableThirdPerson = function()
                                                    if vu3349.HasThirdPersonAccess and vu3349.SetThirdPersonOverride then
                                                        if not vu3349:HasThirdPersonAccess() then
                                                            vu3349:SetThirdPersonOverride(true)
                                                            vu3349.CameraState:VerifyPOV()
                                                            local v3350 = vu3349._pov_spring
                                                            if v3350 then
                                                                v3350.Target = Vector3.new(3, 1.5, 7.5)
                                                            end
                                                        end
                                                    end
                                                end,
                                                disableThirdPerson = function()
                                                    if vu3349.SetThirdPersonOverride then
                                                        vu3349:SetThirdPersonOverride(nil)
                                                        vu3349.CameraState:VerifyPOV()
                                                    end
                                                end,
                                                toggleThirdPerson = function(p3351)
                                                    local v3352 = vu3349.CameraState:GetPublicState() == vu3349.CameraState.States.FirstPerson
                                                    if p3351 and v3352 then
                                                        vu3353.enableThirdPerson()
                                                    elseif not (p3351 or v3352) then
                                                        vu3353.disableThirdPerson()
                                                    end
                                                end
                                            }
                                            return vu3353
                                        end
                                    end
                                else
                                    return
                                end
                            else
                                return
                            end
                        else
                            return
                        end
                    end
                end)
                if not v3354 then
                    vu3355 = nil
                end
                vu3054:AddSection({
                    Name = "Third Person"
                })
                vu3054:AddToggle({
                    Name = "Third Person " .. (not vu3355 and "(not supported)" or "(supported)"),
                    Default = false,
                    Save = true,
                    Flag = "camera_thirdperson",
                    Callback = function(p3356)
                        if not vu3355 then
                            return notifyVXWARE("third person not supported", 5)
                        end
                        notifyVXWARE("third person " .. (p3356 and "enabled" or "disabled"), 5)
                        vu3355.toggleThirdPerson(p3356)
                    end
                })
                vu3054:AddSection({
                    Name = "Ambient"
                })
                local vu3357 = vu3.OutdoorAmbient
                local vu3358 = vu3.Ambient
                local vu3359 = false
                vu3054:AddToggle({
                    Name = "Enable Ambient Control",
                    Default = false,
                    Save = true,
                    Flag = "AmbientToggle",
                    Callback = function(p3360)
                        vu3359 = p3360
                        if not p3360 then
                            vu3.Ambient = vu3358
                            vu3.OutdoorAmbient = vu3357
                        end
                    end
                })
                vu3054:AddColorpicker({
                    Name = "Ambient Color",
                    Default = Color3.fromRGB(50, 50, 50),
                    Save = true,
                    Flag = "AmbientColor",
                    Callback = function(p3361)
                        if vu3359 then
                            vu3339(p3361.R * 255, p3361.G * 255, p3361.B * 255)
                        end
                    end
                })
                vu3054:AddColorpicker({
                    Name = "Outdoor Ambient Color",
                    Default = Color3.fromRGB(50, 50, 50),
                    Save = true,
                    Flag = "OutdoorAmbientColor",
                    Callback = function(p3362)
                        if vu3359 then
                            vu3335(p3362.R * 255, p3362.G * 255, p3362.B * 255)
                        end
                    end
                })
                vu3054:AddToggle({
                    Name = "Disable Shadows",
                    Default = false,
                    Save = true,
                    Flag = "ShadowsToggle",
                    Callback = function(p3363)
                        game:GetService("Lighting").GlobalShadows = not p3363
                    end
                })
                vu3054:AddSection({
                    Name = "Time Control"
                })
                vu3054:AddSlider({
                    Name = "Time of Day",
                    Min = 0,
                    Max = 24,
                    Default = 12,
                    Color = Color3.fromRGB(255, 200, 100),
                    Increment = 0.5,
                    ValueName = "Hour",
                    Save = true,
                    Flag = "TimeSlider",
                    Callback = function(p3364)
                        vu3341(p3364)
                    end
                })
                function runHitEffects()
                    getgenv().hitsoundVOLUME = 1
                    local vu3365 = {
                        Enabled = false,
                        SoundsE = false,
                        EffectType = "confetti",
                        EffectSound = "rbxassetid://9102080552",
                        Color = Color3.new(1, 0.062745, 0.062745),
                        Effects = {
                            confetti = {
                                Color = Color3.new(1, 1, 1)
                            },
                            bubble = {
                                Color = Color3.new(1, 0.062745, 0.062745)
                            }
                        },
                        Sounds = {
                            ["Default Headshot"] = "rbxassetid://9119561046",
                            ["Default Body"] = "rbxassetid://9114487369",
                            Neverlose = "rbxassetid://8726881116",
                            Gamesense = "rbxassetid://4817809188",
                            One = "rbxassetid://7380502345",
                            Bell = "rbxassetid://6534947240",
                            Rust = "rbxassetid://1255040462",
                            TF2 = "rbxassetid://2868331684",
                            Slime = "rbxassetid://6916371803",
                            ["Among Us"] = "rbxassetid://5700183626",
                            Minecraft = "rbxassetid://4018616850",
                            ["CS:GO"] = "rbxassetid://6937353691",
                            Saber = "rbxassetid://8415678813",
                            Baimware = "rbxassetid://3124331820",
                            Osu = "rbxassetid://7149255551",
                            ["TF2 Critical"] = "rbxassetid://296102734",
                            Bat = "rbxassetid://3333907347",
                            ["Call of Duty"] = "rbxassetid://5952120301",
                            Bubble = "rbxassetid://6534947588",
                            Pick = "rbxassetid://1347140027",
                            Pop = "rbxassetid://198598793",
                            Bruh = "rbxassetid://4275842574",
                            Bamboo = "rbxassetid://3769434519",
                            Crowbar = "rbxassetid://546410481",
                            Weeb = "rbxassetid://6442965016",
                            Beep = "rbxassetid://8177256015",
                            Bambi = "rbxassetid://8437203821",
                            Stone = "rbxassetid://3581383408",
                            ["Old Fatality"] = "rbxassetid://6607142036",
                            Click = "rbxassetid://8053704437",
                            Ding = "rbxassetid://7149516994",
                            Snow = "rbxassetid://6455527632",
                            Laser = "rbxassetid://7837461331",
                            Mario = "rbxassetid://2815207981",
                            Steve = "rbxassetid://4965083997"
                        }
                    }
                    local vu3382 = {
                        confetti = function(p3366)
                            local vu3367 = Instance.new("Part")
                            vu3367.Position = p3366
                            vu3367.Anchored = true
                            vu3367.Transparency = 1
                            vu3367.CanCollide = false
                            vu3367.Parent = workspace
                            for _ = 1, 5 do
                                local v3368 = Instance.new("ParticleEmitter")
                                v3368.Acceleration = Vector3.new(0, - 10, 0)
                                v3368.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(0, 1, 0.886275)),
                                    ColorSequenceKeypoint.new(1, Color3.new(0, 1, 0.886275))
                                })
                                v3368.Lifetime = NumberRange.new(1, 2)
                                v3368.Rate = 0
                                v3368.RotSpeed = NumberRange.new(260, 260)
                                v3368.Size = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, 0.1, 0),
                                    NumberSequenceKeypoint.new(1, 0.1, 0)
                                })
                                v3368.Speed = NumberRange.new(15, 15)
                                v3368.SpreadAngle = Vector2.new(360, 360)
                                v3368.Texture = "https://www.roblox.com/asset/?id=241685484"
                                v3368.Parent = vu3367
                                local v3369 = Instance.new("ParticleEmitter")
                                v3369.Acceleration = Vector3.new(0, - 10, 0)
                                v3369.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(0, 0.0980392, 1)),
                                    ColorSequenceKeypoint.new(1, Color3.new(0, 0, 1))
                                })
                                v3369.Lifetime = NumberRange.new(1, 2)
                                v3369.Rate = 0
                                v3369.RotSpeed = NumberRange.new(260, 260)
                                v3369.Size = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, 0.1, 0),
                                    NumberSequenceKeypoint.new(1, 0.1, 0)
                                })
                                v3369.Speed = NumberRange.new(15, 15)
                                v3369.SpreadAngle = Vector2.new(360, 360)
                                v3369.Texture = "https://www.roblox.com/asset/?id=241685484"
                                v3369.Parent = vu3367
                                local v3370 = Instance.new("ParticleEmitter")
                                v3370.Acceleration = Vector3.new(0, - 10, 0)
                                v3370.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(0.901961, 1, 0)),
                                    ColorSequenceKeypoint.new(1, Color3.new(1, 0.933333, 0))
                                })
                                v3370.Lifetime = NumberRange.new(1, 2)
                                v3370.Rate = 0
                                v3370.RotSpeed = NumberRange.new(260, 260)
                                v3370.Size = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, 0.1, 0),
                                    NumberSequenceKeypoint.new(1, 0.1, 0)
                                })
                                v3370.Speed = NumberRange.new(15, 15)
                                v3370.SpreadAngle = Vector2.new(360, 360)
                                v3370.Texture = "https://www.roblox.com/asset/?id=241685484"
                                v3370.Parent = vu3367
                                local v3371 = Instance.new("ParticleEmitter")
                                v3371.Acceleration = Vector3.new(0, - 10, 0)
                                v3371.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(0.180392, 1, 0)),
                                    ColorSequenceKeypoint.new(1, Color3.new(0.180392, 1, 0))
                                })
                                v3371.Lifetime = NumberRange.new(1, 2)
                                v3371.Rate = 0
                                v3371.RotSpeed = NumberRange.new(260, 260)
                                v3371.Size = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, 0.1, 0),
                                    NumberSequenceKeypoint.new(1, 0.1, 0)
                                })
                                v3371.Speed = NumberRange.new(15, 15)
                                v3371.SpreadAngle = Vector2.new(360, 360)
                                v3371.Texture = "https://www.roblox.com/asset/?id=241685484"
                                v3371.Parent = vu3367
                                local v3372 = Instance.new("ParticleEmitter")
                                v3372.Acceleration = Vector3.new(0, - 10, 0)
                                v3372.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(1, 0, 0)),
                                    ColorSequenceKeypoint.new(1, Color3.new(1, 0, 0))
                                })
                                v3372.Lifetime = NumberRange.new(1, 2)
                                v3372.Rate = 0
                                v3372.RotSpeed = NumberRange.new(260, 260)
                                v3372.Size = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, 0.1, 0),
                                    NumberSequenceKeypoint.new(1, 0.1, 0)
                                })
                                v3372.Speed = NumberRange.new(15, 15)
                                v3372.SpreadAngle = Vector2.new(360, 360)
                                v3372.Texture = "https://www.roblox.com/asset/?id=241685484"
                                v3372.Parent = vu3367
                            end
                            local v3373 = vu3367:GetChildren()
                            for v3374 = 1, # v3373 do
                                local v3375 = v3373[v3374]
                                if v3375.ClassName == "ParticleEmitter" then
                                    v3375:Emit(1)
                                end
                            end
                            task.delay(3, function()
                                vu3367:Destroy()
                            end)
                        end,
                        bubble = function(p3376, p3377)
                            local vu3378 = Instance.new("Part")
                            vu3378.Position = p3376
                            vu3378.Anchored = true
                            vu3378.Transparency = 1
                            vu3378.CanCollide = false
                            vu3378.Parent = workspace
                            local v3379 = Instance.new("ParticleEmitter")
                            v3379.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, p3377),
                                ColorSequenceKeypoint.new(1, p3377)
                            })
                            v3379.Lifetime = NumberRange.new(0.5, 0.5)
                            v3379.LightEmission = 1
                            v3379.LockedToPart = true
                            v3379.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                            v3379.Rate = 0
                            v3379.Size = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0, 0),
                                NumberSequenceKeypoint.new(1, 10, 0)
                            })
                            v3379.Speed = NumberRange.new(1.5, 1.5)
                            v3379.Texture = "rbxassetid://1084991215"
                            v3379.Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 1, 0),
                                NumberSequenceKeypoint.new(0.0996047, 0, 0),
                                NumberSequenceKeypoint.new(0.602372, 0, 0),
                                NumberSequenceKeypoint.new(1, 1, 0)
                            })
                            v3379.ZOffset = 1
                            v3379.Parent = vu3378
                            local v3380 = Instance.new("ParticleEmitter")
                            v3380.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, p3377),
                                ColorSequenceKeypoint.new(1, p3377)
                            })
                            v3380.Lifetime = NumberRange.new(0.5, 0.5)
                            v3380.LightEmission = 1
                            v3380.LockedToPart = true
                            v3380.Rate = 0
                            v3380.Size = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0, 0),
                                NumberSequenceKeypoint.new(1, 10, 0)
                            })
                            v3380.Speed = NumberRange.new(0, 0)
                            v3380.Texture = "rbxassetid://1084991215"
                            v3380.Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 1, 0),
                                NumberSequenceKeypoint.new(0.0996047, 0, 0),
                                NumberSequenceKeypoint.new(0.601581, 0, 0),
                                NumberSequenceKeypoint.new(1, 1, 0)
                            })
                            v3380.ZOffset = 1
                            v3380.Parent = vu3378
                            local v3381 = Instance.new("ParticleEmitter")
                            v3381.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
                                ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))
                            })
                            v3381.Lifetime = NumberRange.new(0.2, 0.5)
                            v3381.LockedToPart = true
                            v3381.Orientation = Enum.ParticleOrientation.VelocityParallel
                            v3381.Rate = 0
                            v3381.Rotation = NumberRange.new(- 90, 90)
                            v3381.Size = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 1, 0),
                                NumberSequenceKeypoint.new(1, 8.5, 1.5)
                            })
                            v3381.Speed = NumberRange.new(0.1, 0.1)
                            v3381.SpreadAngle = Vector2.new(180, 180)
                            v3381.Texture = "http://www.roblox.com/asset/?id=6820680001"
                            v3381.Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 1, 0),
                                NumberSequenceKeypoint.new(0.200791, 0, 0),
                                NumberSequenceKeypoint.new(0.699605, 0, 0),
                                NumberSequenceKeypoint.new(1, 1, 0)
                            })
                            v3381.ZOffset = 1.5
                            v3381.Parent = vu3378
                            v3379:Emit(1)
                            v3380:Emit(1)
                            v3381:Emit(1)
                            task.delay(1, function()
                                vu3378:Destroy()
                            end)
                        end
                    }
                    local vu3383 = {}
                    local function vu3387(p3384)
                        if vu3365.Enabled then
                            local v3385 = vu3365.EffectType
                            local v3386 = vu3365.Color
                            if v3385 == "confetti" then
                                vu3382.confetti(p3384)
                            elseif v3385 == "bubble" then
                                vu3382.bubble(p3384, v3386)
                            end
                        end
                    end
                    local function vu3393(p3388)
                        if vu3365.SoundsE then
                            local v3389 = vu3365.EffectSound
                            local vu3390 = Instance.new("Sound")
                            vu3390.SoundId = v3389
                            vu3390.Volume = p3388 or 1
                            vu3390.Looped = false
                            local v3391 = vu3299.LocalPlayer
                            if v3391 and v3391.Character then
                                local v3392 = v3391.Character:FindFirstChild("HumanoidRootPart")
                                if v3392 then
                                    vu3390.Parent = v3392
                                else
                                    vu3390.Parent = v3391.Character
                                end
                            else
                                vu3390.Parent = game.Workspace
                            end
                            vu3390:Play()
                            vu3390.Ended:Connect(function()
                                vu3390:Destroy()
                            end)
                        end
                    end
                    local function vu3408(p3394)
                        local v3395 = Vector2.new(vu3076.ViewportSize.X / 2, vu3076.ViewportSize.Y / 2)
                        local v3396 = vu3299
                        local v3397, v3398, v3399 = ipairs(v3396:GetPlayers())
                        local v3400 = p3394 or 1000
                        local v3401 = nil
                        while true do
                            local v3402
                            v3399, v3402 = v3397(v3398, v3399)
                            if v3399 == nil then
                                break
                            end
                            if v3402 ~= vu3073 and v3402.Character and v3402.Character:FindFirstChild("HumanoidRootPart") then
                                local v3403 = v3402.Character.HumanoidRootPart.Position
                                local v3404, v3405 = vu3076:WorldToScreenPoint(v3403)
                                if v3405 then
                                    local v3406 = (Vector2.new(v3404.X, v3404.Y) - v3395).Magnitude
                                    local v3407 = (v3403 - vu3076.Focus.Position).Magnitude
                                    if v3406 < v3400 then
                                        if v3407 <= p3394 then
                                            v3401 = v3402
                                            v3400 = v3406
                                        end
                                    end
                                end
                            end
                        end
                        return v3401, v3400
                    end
                    local function v3413()
                        local v3409, _ = vu3408(100)
                        local v3410 = v3409 and v3409.Character and v3409.Character:FindFirstChild("Humanoid")
                        if v3410 then
                            local v3411 = v3410.Health
                            if v3411 < (vu3383[v3409] or v3410.MaxHealth) then
                                local v3412 = v3409.Character:FindFirstChild("HumanoidRootPart")
                                if v3412 and not isTeammate(v3409.Character) then
                                    vu3393(getgenv().hitsoundVOLUME)
                                    vu3387(v3412.Position)
                                end
                            end
                            vu3383[v3409] = v3411
                        end
                    end
                    vu3298.Heartbeat:Connect(v3413)
                    local vu3426 = {
                        SetEnabled = function(p3414)
                            vu3365.Enabled = p3414
                        end,
                        SelectEffect = function(p3415)
                            if not vu3365.Effects[p3415] then
                                return false
                            end
                            vu3365.EffectType = p3415
                            return true
                        end,
                        SetSoundsEnabled = function(p3416)
                            vu3365.SoundsE = p3416
                        end,
                        setVolume = function(p3417)
                            if p3417 >= 0 and p3417 >= 1 then
                                getgenv().hitsoundVOLUME = p3417
                            end
                        end,
                        SelectSound = function(p3418)
                            if not vu3365.Sounds[p3418] then
                                return false
                            end
                            vu3365.EffectSound = vu3365.Sounds[p3418]
                            print("[vxware]: updated sound to: " .. vu3365.EffectSound)
                            return true
                        end,
                        setColor = function(p3419)
                            vu3365.Color = p3419
                        end,
                        AddEffectPreset = function(p3420, p3421)
                            vu3365.Effects[p3420] = p3421
                        end,
                        AddSoundPreset = function(p3422, p3423)
                            local v3424 = "venoxware/sounds/sounds.json"
                            if not isfile(v3424) then
                                writefile(v3424, "{}")
                            end
                            local v3425 = game:GetService("HttpService"):JSONDecode(vu3022(v3424))
                            v3425[p3422] = p3423
                            writefile(v3424, game:GetService("HttpService"):JSONEncode(v3425))
                            vu3365.Sounds[p3422] = p3423
                        end,
                        FindNearestPlayer = vu3408
                    }
                    function loadSoundPresets()
                        local v3427 = vu3022("venoxware/sounds/sounds.json")
                        if v3427 then
                            local v3428 = game:GetService("HttpService"):JSONDecode(v3427)
                            local v3429, v3430, v3431 = pairs(v3428)
                            while true do
                                local v3432
                                v3431, v3432 = v3429(v3430, v3431)
                                if v3431 == nil then
                                    break
                                end
                                vu3365.Sounds[v3431] = v3432
                            end
                        end
                    end
                    loadSoundPresets()
                    vu3054:AddSection({
                        Name = "Hit Effects"
                    })
                    vu3054:AddToggle({
                        Name = "Hit Effects",
                        Default = false,
                        Save = true,
                        Flag = "HitEffectsToggle",
                        Callback = function(p3433)
                            vu3426.SetEnabled(p3433)
                        end
                    })
                    vu3054:AddDropdown({
                        Name = "Select Effect",
                        Default = "Not Selected!",
                        Options = {
                            "bubble",
                            "confetti"
                        },
                        Save = true,
                        Flag = "HitEffectsDropdown",
                        Callback = function(p3434)
                            vu3426.SelectEffect(p3434)
                        end
                    })
                    vu3054:AddColorpicker({
                        Name = "Effect Color",
                        Save = true,
                        Flag = "HitEffectsColorpicker",
                        Default = Color3.fromRGB(255, 0, 0),
                        Callback = function(p3435)
                            vu3426.setColor(p3435)
                        end
                    })
                    vu3054:AddSection({
                        Name = "Hit Sounds"
                    })
                    vu3054:AddToggle({
                        Name = "Hit Sounds",
                        Default = false,
                        Save = true,
                        Flag = "HitSoundsToggle",
                        Callback = function(p3436)
                            vu3426.SetSoundsEnabled(p3436)
                        end
                    })
                    local v3437, v3438, v3439 = pairs(vu3365.Sounds)
                    local vu3440 = vu3426
                    local v3441 = {}
                    while true do
                        local v3442
                        v3439, v3442 = v3437(v3438, v3439)
                        if v3439 == nil then
                            break
                        end
                        table.insert(v3441, v3439)
                    end
                    vu3054:AddDropdown({
                        Name = "Select Sound",
                        Default = "Not Selected!",
                        Options = v3441,
                        Save = true,
                        Flag = "HitSoundsDropdown",
                        Callback = function(p3443)
                            vu3440.SelectSound(p3443)
                        end
                    })
                    vu3054:AddSlider({
                        Name = "Sound Volume",
                        Min = 0,
                        Max = 1,
                        Default = 1,
                        Color = Color3.fromRGB(255, 255, 255),
                        Increment = 0.1,
                        ValueName = "volume",
                        Callback = function(p3444)
                            vu3440.setVolume(vu32(p3444))
                        end
                    })
                    vu3054:AddSection({
                        Name = "Add Hit Sounds"
                    })
                    local vu3445 = ""
                    local vu3446 = ""
                    function createSoundData(p3447)
                        return {
                            SoundId = "rbxassetid://" .. tostring(p3447),
                            Volume = 1,
                            Pitch = 1
                        }
                    end
                    vu3054:AddTextbox({
                        Name = "Sound Name",
                        Default = "",
                        TextDisappear = false,
                        Callback = function(p3448)
                            vu3445 = p3448
                        end
                    })
                    vu3054:AddTextbox({
                        Name = "Sound ID",
                        Default = "",
                        TextDisappear = false,
                        Callback = function(p3449)
                            vu3446 = p3449
                        end
                    })
                    vu3054:AddButton({
                        Name = "Add Sound",
                        Callback = function()
                            if not isfolder("venoxware/sounds") then
                                makefolder("venoxware/sounds")
                            end
                            vu3440.AddSoundPreset(vu3445, createSoundData(vu3446))
                            notifyVXWARE("reload script to get the sound!")
                        end
                    })
                end
                runHitEffects()
                local vu3450 = game:GetService("Players")
                local v3451 = game:GetService("RunService")
                getgenv().ESPChamsEnabled = false
                local function vu3454(p3452)
                    if p3452.Character and not p3452.Character:FindFirstChild("ESP_Highlight") then
                        local v3453 = Instance.new("Highlight")
                        v3453.Name = "ESP_Highlight"
                        v3453.Parent = p3452.Character
                        v3453.Adornee = p3452.Character
                        v3453.FillColor = getgenv().ESPChamColor
                        v3453.FillTransparency = 0.5
                        v3453.OutlineColor = Color3.new(0, 0, 0)
                        v3453.OutlineTransparency = 0.5
                    end
                end
                local function vu3456(p3455)
                    if p3455.Character and p3455.Character:FindFirstChild("ESP_Highlight") then
                        p3455.Character.ESP_Highlight:Destroy()
                    end
                end
                local function vu3463()
                    local v3457 = vu3450
                    local v3458, v3459, v3460 = pairs(v3457:GetPlayers())
                    while true do
                        local v3461
                        v3460, v3461 = v3458(v3459, v3460)
                        if v3460 == nil then
                            break
                        end
                        if v3461 ~= vu3450.LocalPlayer and v3461.Character and (v3461.Character:FindFirstChild("HumanoidRootPart") and vu3450.LocalPlayer.Character and vu3450.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
                            if (vu3450.LocalPlayer.Character.HumanoidRootPart.Position - v3461.Character.HumanoidRootPart.Position).Magnitude > getgenv().ESPMaxDistance then
                                vu3456(v3461)
                            else
                                local v3462 = v3461.Character:FindFirstChild("ESP_Highlight")
                                if v3462 then
                                    v3462.FillColor = getgenv().ESPChamColor
                                else
                                    vu3454(v3461)
                                end
                            end
                        end
                    end
                end
                vu3450.PlayerAdded:Connect(function(pu3464)
                    pu3464.CharacterAdded:Connect(function(_)
                        if getgenv().ESPChamsEnabled then
                            vu3454(pu3464)
                        end
                    end)
                end)
                vu3450.PlayerRemoving:Connect(function(p3465)
                    vu3456(p3465)
                end)
                v3451.RenderStepped:Connect(function()
                    if getgenv().ESPChamsEnabled then
                        vu3463()
                    else
                        local v3466 = vu3450
                        local v3467, v3468, v3469 = pairs(v3466:GetPlayers())
                        while true do
                            local v3470
                            v3469, v3470 = v3467(v3468, v3469)
                            if v3469 == nil then
                                break
                            end
                            vu3456(v3470)
                        end
                    end
                end)
                function getWeaponName(p3471)
                    local v3472, v3473, v3474 = pairs(workspace.ViewModels:GetChildren())
                    while true do
                        local v3475
                        v3474, v3475 = v3472(v3473, v3474)
                        if v3474 == nil then
                            break
                        end
                        if string.match(v3475.Name, "^" .. p3471.Name .. " -") then
                            local v3476, v3477, v3478 = string.gmatch(v3475.Name, "[^%-]+")
                            local v3479 = {}
                            while true do
                                v3478 = v3476(v3477, v3478)
                                if v3478 == nil then
                                    break
                                end
                                table.insert(v3479, v3478)
                            end
                            return v3479[2]
                        end
                    end
                    return nil
                end
                vu3054:AddSection({
                    Name = "Nametag ESP"
                })
                spawn((loadstring(game:HttpGet("https://raw.githubusercontent.com/venoxcc/universalscripts/refs/heads/main/rivals/misc/nametag.lua"))))
                vu3054:AddToggle({
                    Name = "Enabled",
                    Default = false,
                    Save = true,
                    Flag = "NameTagsEnabled",
                    Callback = function(p3480)
                        if ConfigureBillboardTags then
                            getgenv().ConfigureBillboardTags({
                                enabled = p3480
                            })
                        end
                    end
                })
                vu3054:AddToggle({
                    Name = "Display Name",
                    Default = false,
                    Save = true,
                    Flag = "DisplayNameEnabled",
                    Callback = function(p3481)
                        if ConfigureBillboardTags then
                            local v3482 = {
                                enabledElements = {
                                    playerName = p3481
                                }
                            }
                            getgenv().ConfigureBillboardTags(v3482)
                        end
                    end
                })
                vu3054:AddToggle({
                    Name = "Health Display",
                    Default = false,
                    Save = true,
                    Flag = "DisplayHealthEnabled",
                    Callback = function(p3483)
                        if ConfigureBillboardTags then
                            local v3484 = {
                                enabledElements = {
                                    healthValue = p3483
                                }
                            }
                            getgenv().ConfigureBillboardTags(v3484)
                        end
                    end
                })
                vu3054:AddToggle({
                    Name = "Weapon Name Display",
                    Default = false,
                    Save = true,
                    Flag = "DisplayWeaponNameEnabled",
                    Callback = function(p3485)
                        if ConfigureBillboardTags then
                            local v3486 = {
                                enabledElements = {
                                    weaponName = p3485
                                }
                            }
                            getgenv().ConfigureBillboardTags(v3486)
                        end
                    end
                })
                vu3054:AddSection({
                    Name = "Basic ESP (low fps impact)"
                })
                vu3054:AddToggle({
                    Name = "ESP Chams",
                    Default = false,
                    Save = true,
                    Flag = "CHamsESPtoggle",
                    Callback = function(p3487)
                        getgenv().ESPChamsEnabled = p3487
                    end
                })
                vu3054:AddColorpicker({
                    Name = "Chams Color",
                    Default = Color3.fromRGB(255, 0, 0),
                    Save = true,
                    Flag = "chamcolorpicker",
                    Callback = function(p3488)
                        getgenv().ESPChamColor = p3488
                    end
                })
                vu3054:AddToggle({
                    Name = "Player Info ESP Display",
                    Default = true,
                    Save = true,
                    Flag = "InfoESPDisplayToggle",
                    Callback = function(p3489)
                        if getgenv().InfoESPDisplay then
                            getgenv().InfoESPDisplay(p3489)
                        end
                    end
                })
                spawn(function()
                    pcall(function()
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/venoxcc/universalscripts/refs/heads/main/rivals/misc/display"))()
                    end)
                end)
                vu3054:AddSection({
                    Name = "Drawing ESP (high fps impact)"
                })
                if Drawing then
                    local vu3490 = loadstring(game:HttpGet("https://raw.githubusercontent.com/venoxcc/universalscripts/refs/heads/main/rivals/misc/esp.lua"))()
                    vu3490.Enabled = false
                    vu3490.ShowBox = false
                    vu3490.ShowName = false
                    vu3490.ShowHealth = false
                    vu3490.ShowTracer = false
                    vu3490.ShowDistance = false
                    vu3490.ShowSkeletons = false
                    vu3490.BoxType = "2D"
                    vu3490.BoxOutlineColor = Color3.fromRGB(0, 0, 0)
                    vu3490.BoxColor = Color3.fromRGB(255, 255, 255)
                    vu3490.NameColor = Color3.fromRGB(255, 255, 255)
                    vu3490.HealthHighColor = Color3.fromRGB(0, 255, 0)
                    vu3490.HealthLowColor = Color3.fromRGB(255, 0, 0)
                    vu3490.TracerColor = Color3.fromRGB(255, 255, 255)
                    vu3490.TracerPosition = "Bottom"
                    vu3490.SkeletonsColor = Color3.fromRGB(255, 255, 255)
                    vu3490.Teamcheck = false
                    vu3054:AddToggle({
                        Name = "--<< - >> - TURN ON ESP - << - >>--",
                        Default = false,
                        Save = true,
                        Flag = "esptoggle",
                        Callback = function(p3491)
                            vu3490.Enabled = p3491
                        end
                    })
                    vu3054:AddToggle({
                        Name = "Name",
                        Default = false,
                        Save = true,
                        Flag = "nametoggle",
                        Callback = function(p3492)
                            vu3490.ShowName = p3492
                        end
                    })
                    vu3054:AddColorpicker({
                        Name = "Name Color",
                        Save = true,
                        Flag = "namecolor",
                        Default = Color3.fromRGB(255, 109, 109),
                        Callback = function(p3493)
                            vu3490.NameColor = p3493
                        end
                    })
                    vu3054:AddToggle({
                        Name = "Box",
                        Default = false,
                        Save = true,
                        Flag = "boxtoggle",
                        Callback = function(p3494)
                            vu3490.ShowBox = p3494
                        end
                    })
                    vu3054:AddColorpicker({
                        Name = "Box Color",
                        Save = true,
                        Flag = "boxcolor",
                        Default = Color3.fromRGB(119, 144, 255),
                        Callback = function(p3495)
                            vu3490.BoxOutlineColor = p3495
                            vu3490.BoxColor = p3495
                        end
                    })
                    vu3054:AddDropdown({
                        Name = "Box Settings",
                        Save = true,
                        Flag = "boxsettings",
                        Options = {
                            "2D",
                            "Corner Box Esp"
                        },
                        Default = "2D",
                        Callback = function(p3496)
                            vu3490.BoxType = p3496
                        end
                    })
                    vu3054:AddToggle({
                        Name = "Tracer",
                        Default = false,
                        Save = true,
                        Flag = "tracertog",
                        Callback = function(p3497)
                            vu3490.ShowTracer = p3497
                        end
                    })
                    vu3054:AddDropdown({
                        Name = "Tracer Settings",
                        Options = {
                            "Bottom",
                            "Top",
                            "Middle"
                        },
                        Default = "Bottom",
                        Save = true,
                        Flag = "tracerset",
                        Callback = function(p3498)
                            vu3490.TracerPosition = p3498
                        end
                    })
                    vu3054:AddColorpicker({
                        Name = "Tracer Color",
                        Save = true,
                        Flag = "Tracercolor",
                        Default = Color3.fromRGB(255, 209, 123),
                        Callback = function(p3499)
                            vu3490.TracerColor = p3499
                        end
                    })
                    vu3054:AddToggle({
                        Name = "Health",
                        Default = false,
                        Save = true,
                        Flag = "healthtr",
                        Callback = function(p3500)
                            vu3490.ShowHealth = p3500
                        end
                    })
                    vu3054:AddColorpicker({
                        Name = "Health High Color",
                        Save = true,
                        Flag = "HealthHighColor",
                        Default = Color3.fromRGB(0, 255, 0),
                        Callback = function(p3501)
                            vu3490.HealthHighColor = p3501
                        end
                    })
                    vu3054:AddColorpicker({
                        Name = "Health Low Color",
                        Save = true,
                        Flag = "HealthLowColor",
                        Default = Color3.fromRGB(255, 0, 0),
                        Callback = function(p3502)
                            vu3490.HealthLowColor = p3502
                        end
                    })
                    vu3054:AddToggle({
                        Name = "Skeleton",
                        Default = false,
                        Save = true,
                        Flag = "skeletontog",
                        Callback = function(p3503)
                            vu3490.ShowSkeletons = p3503
                        end
                    })
                    vu3054:AddColorpicker({
                        Name = "Skeleton Color",
                        Save = true,
                        Flag = "Skeletoncoolor",
                        Default = Color3.fromRGB(121, 141, 255),
                        Callback = function(p3504)
                            vu3490.SkeletonsColor = p3504
                        end
                    })
                    vu3054:AddToggle({
                        Name = "Distance",
                        Default = false,
                        Save = true,
                        Flag = "distance",
                        Callback = function(p3505)
                            vu3490.ShowDistance = p3505
                        end
                    })
                    vu3054:AddToggle({
                        Name = "Team Check",
                        Default = false,
                        Save = true,
                        Flag = "teamcheckesp",
                        Callback = function(p3506)
                            vu3490.Teamcheck = p3506
                        end
                    })
                else
                    vu3054:AddParagraph("No Drawing Library on your Executor!!!", "grrr")
                end
                vu3054:AddSlider({
                    Name = "Max Distance",
                    Min = 50,
                    Max = 1000,
                    Default = 600,
                    Color = Color3.fromRGB(228, 146, 248),
                    Increment = 50,
                    ValueName = "m",
                    Save = true,
                    Flag = "maxdistanceESPSlider",
                    Callback = function(p3507)
                        getgenv().ESPMaxDistance = p3507
                    end
                })
                local vu3508 = game:GetService("RunService")
                local v3509 = game:GetService("Players")
                local vu3510 = game:GetService("UserInputService")
                local vu3511 = v3509.LocalPlayer
                local vu3512 = workspace.CurrentCamera
                local v3513 = vu3511
                local vu3514 = vu3511.GetMouse(v3513)
                local vu3515 = false
                local vu3516 = nil
                getgenv().silentaimHitchance = 100
                local function vu3528(p3517)
                    local v3518 = p3517.Name
                    local v3519 = {
                        v3518 .. " - Katana - Katana",
                        v3518 .. " - Katana - Saber"
                    }
                    local v3520, v3521, v3522 = pairs(workspace.ViewModels.FirstPerson:GetChildren())
                    while true do
                        local v3523
                        v3522, v3523 = v3520(v3521, v3522)
                        if v3522 == nil then
                            break
                        end
                        if v3523.Name == v3519[1] or v3523.Name == v3519[2] then
                            return true
                        end
                    end
                    local v3524, v3525, v3526 = pairs(workspace.ViewModels:GetChildren())
                    while true do
                        local v3527
                        v3526, v3527 = v3524(v3525, v3526)
                        if v3526 == nil then
                            break
                        end
                        if v3527.Name == v3519[1] or v3527.Name == v3519[2] then
                            return true
                        end
                    end
                    return false
                end
                local function vu3540()
                    while vu3515 and getgenv().silentaimEnabled do
                        local v3529 = (vu3511.Character or vu3511.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
                        local v3530 = getgenv().silentaimHitchance
                        local v3531 = (vu33(v3530) ~= "number" or (v3530 < 1 or 100 < v3530)) and 100 or v3530
                        local v3532 = CalculateChance(v3531)
                        if not v3529 then
                            return
                        end
                        local v3533 = vu3264()
                        if (not getgenv().AntiKatana or vu3528(v3533) == false) and v3533 then
                            local v3534 = v3533.Character
                            local v3535 = v3534 and vu3172(v3534)
                            if v3535 then
                                local v3536 = workspace.CurrentCamera
                                if not v3536 then
                                    return
                                end
                                local v3537 = v3535.Position
                                local v3538 = v3536.CFrame
                                if v3532 then
                                    v3536.CFrame = v3538:Lerp(CFrame.new(v3538.Position, v3537), getgenv().Smoothness or 0.93)
                                end
                                local v3539 = error
                                function error()
                                end
                                vu3514.Target = v3535
                                error = v3539
                            end
                        end
                        vu3508.RenderStepped:Wait()
                    end
                end
                vu3514.Button1Down:Connect(function()
                    vu3515 = true
                    if not vu3516 or coroutine.status(vu3516) == "dead" then
                        vu3516 = coroutine.create(vu3540)
                        coroutine.resume(vu3516)
                    end
                end)
                vu3514.Button1Up:Connect(function()
                    vu3515 = false
                end)
                v3055:AddLabel("Be cautious about anti-cheat!")
                v3055:AddSection({
                    Name = "Silent Aim"
                })
                v3055:AddToggle({
                    Name = "Silent Aim (only spam click/tap fire)",
                    Default = false,
                    Save = true,
                    Flag = "silentaimtoggle",
                    Callback = function(p3541)
                        getgenv().silentaimEnabled = p3541
                    end
                })
                v3055:AddSlider({
                    Name = "Silent Aim Hitchance",
                    Min = 0.1,
                    Max = 100,
                    Default = 100,
                    Color = Color3.fromRGB(255, 126, 249),
                    Increment = 0.1,
                    ValueName = "%",
                    Save = true,
                    Flag = "SilentAimHitchanceSlider",
                    Callback = function(p3542)
                        getgenv().silentaimHitchance = p3542
                    end
                })
                getgenv().silentaimRAGEEnabled = false
                getgenv().SilentRageEnabled = false
                getgenv().silentaimFOV = 1000
                function getRageTarget()
                    local v3543 = game:GetService("Players")
                    local v3544 = v3543.LocalPlayer
                    local v3545 = workspace.CurrentCamera
                    if not v3544.Character then
                        return nil
                    end
                    local v3546 = math.huge
                    local v3547, v3548, v3549 = ipairs(v3543:GetPlayers())
                    local v3550 = nil
                    while true do
                        local v3551
                        v3549, v3551 = v3547(v3548, v3549)
                        if v3549 == nil then
                            break
                        end
                        if v3551 ~= v3544 then
                            local v3552 = v3551.Character
                            if v3552 then
                                local v3553 = v3552:FindFirstChild("Humanoid")
                                if v3553 and (v3553.Health > 0 and (not isTeammate(v3552) and (vu3100(v3551) and vu3528(v3551) == false))) then
                                    local v3554 = vu3172(v3552)
                                    if v3554 then
                                        local v3555, v3556 = v3545:WorldToViewportPoint(v3554.Position)
                                        if v3556 then
                                            local v3557 = (Vector2.new(v3555.X, v3555.Y) - Vector2.new(v3545.ViewportSize.X / 2, v3545.ViewportSize.Y / 2)).Magnitude
                                            if v3557 <= getgenv().silentaimFOV * 2 then
                                                if v3557 < v3546 then
                                                    v3550 = v3551
                                                    v3546 = v3557
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return v3550
                end
                function startRageAutoClicker()
                    spawn(function()
                        local v3558 = getgenv().silentaimHitchance
                        local v3559 = 0.01
                        while getgenv().silentaimRAGEEnabled and getgenv().SilentRageEnabled do
                            if getRageTarget() then
                                getgenv().silentaimHitchance = 100
                                getgenv().silentaimEnabled = true
                                mouse1click()
                            end
                            wait(v3559)
                        end
                        getgenv().silentaimHitchance = v3558
                    end)
                end
                local vu3561 = v3055:AddToggle({
                    Name = "Silent Aim Rage (blatant)",
                    Default = false,
                    Save = true,
                    Flag = "silentaimRAGEtoggle",
                    Callback = function(p3560)
                        getgenv().silentaimRAGEEnabled = p3560
                        getgenv().SilentRageEnabled = p3560
                        if p3560 then
                            startRageAutoClicker()
                        end
                    end
                })
                v3055:AddBind({
                    Name = "Silent Aim Rage Keybind",
                    Default = Enum.KeyCode.Y,
                    Hold = false,
                    Save = true,
                    Flag = "SilentAimRageKeybind",
                    Callback = function()
                        getgenv().SilentRageEnabled = not getgenv().SilentRageEnabled
                        vu3561:Set(getgenv().SilentRageEnabled)
                    end
                })
                v3055:AddSection({
                    Name = "Aimbot Settings"
                })
                v3055:AddToggle({
                    Name = "Enable Aimbot",
                    Default = false,
                    Save = true,
                    Flag = "aimbottoggle",
                    Callback = function(p3562)
                        getgenv().AimbotToggled = p3562
                    end
                })
                getgenv().AimbotMode = "Camera"
                v3055:AddDropdown({
                    Name = "Aimbot Mode",
                    Default = "Camera",
                    Save = true,
                    Flag = "AimbotModedropdown",
                    Options = {
                        "Camera",
                        "Mouse"
                    },
                    Callback = function(p3563)
                        getgenv().AimbotMode = p3563
                    end
                })
                getgenv().Smoothness = getgenv().Smoothness or 0.93
                v3055:AddBind({
                    Name = "Aimbot Keybind (Camera / Mouse)",
                    Default = Enum.KeyCode.E,
                    Hold = true,
                    Save = true,
                    Flag = "AimbotHoldBind",
                    Callback = function()
                        getgenv().AimbotEnabled = not getgenv().AimbotEnabled
                        if getgenv().AimbotEnabled then
                            aimLoopRunning = true
                            while getgenv().AimbotEnabled and getgenv().AimbotToggled do
                                local v3564, vu3565 = pcall(vu3264)
                                if v3564 and (vu3565 and pcall(function()
                                    local v3566 = vu3565 and vu3565.Character and vu3565.Character:FindFirstChild("Humanoid")
                                    if v3566 then
                                        v3566 = vu3565.Character.Humanoid.Health > 0
                                    end
                                    return v3566
                                end)) then
                                    local v3567 = vu3172(vu3565.Character)
                                    if v3567 and (typeof(v3567.Position) == "Vector3" and v3567.Position.X == v3567.Position.X) then
                                        local v3568 = v3567.Position
                                        if getgenv().IsScoped then
                                            v3568 = v3568 + Vector3.new(0, 0, 0.5)
                                        end
                                        if getgenv().AimbotMode ~= "Camera" then
                                            if getgenv().AimbotMode == "Mouse" then
                                                local v3569, v3570 = vu3512:WorldToViewportPoint(v3568)
                                                if v3570 and v3569 then
                                                    local v3571 = vu3510:GetMouseLocation()
                                                    local v3572 = Vector2.new(v3569.X, v3569.Y) - Vector2.new(v3571.X, v3571.Y)
                                                    local v3573 = math.clamp(getgenv().Smoothness or 0.93, 0.01, 0.99)
                                                    local v3574 = v3572.X * (1 - v3573) * 1.5
                                                    local v3575 = v3572.Y * (1 - v3573) * 1.5
                                                    print("Delta:", v3572, "Move:", v3574, v3575)
                                                    if typeof(v3574) == "number" and typeof(v3575) == "number" then
                                                        mousemoverel(v3574, v3575)
                                                    end
                                                end
                                            end
                                        elseif typeof(vu3512.CFrame.Position) == "Vector3" then
                                            local v3576 = vu3512.CFrame
                                            local v3577 = (v3568 - v3576.Position).Unit
                                            local v3578 = getgenv().maxAimbotDistance
                                            if v3578 < (v3568 - v3576.Position).Magnitude then
                                                v3568 = v3576.Position + v3577 * v3578
                                            end
                                            local v3579 = CFrame.new(v3576.Position, v3568)
                                            if typeof(v3579) == "CFrame" then
                                                vu3512.CFrame = v3579
                                                local v3580 = workspace:FindFirstChild("ViewModels")
                                                if v3580 then
                                                    v3580 = workspace.ViewModels:FindFirstChild("FirstPerson")
                                                end
                                                if v3580 then
                                                    local v3581, v3582, v3583 = ipairs(v3580:GetChildren())
                                                    while true do
                                                        local v3584
                                                        v3583, v3584 = v3581(v3582, v3583)
                                                        if v3583 == nil then
                                                            break
                                                        end
                                                        local v3585 = v3584:FindFirstChild("HumanoidRootPart")
                                                        if v3585 and typeof(v3585.CFrame) == "CFrame" then
                                                            v3585.CFrame = CFrame.new(v3585.CFrame.Position, v3568)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                                vu3508.RenderStepped:Wait()
                            end
                        else
                            aimLoopRunning = false
                        end
                    end
                })
                local v3586 = game:GetService("UserInputService")
                local vu3587 = game:GetService("RunService")
                local vu3588 = workspace.CurrentCamera
                local function vu3598()
                    vu3587:BindToRenderStep("MobileAimbot", Enum.RenderPriority.Camera.Value + 1, function()
                        if getgenv().MobileAimbot then
                            local v3589, vu3590 = pcall(vu3264)
                            if v3589 and vu3590 then
                                if getgenv().AntiKatana and vu3528(vu3590) == true then
                                    return
                                else
                                    local v3591, vu3592 = pcall(function()
                                        return vu3590.Character
                                    end)
                                    if v3591 and vu3592 then
                                        local v3593, v3594 = pcall(function()
                                            return vu3172(vu3592)
                                        end)
                                        if v3593 and v3594 then
                                            local v3595 = v3594.Position
                                            if getgenv().IsScoped then
                                                v3595 = v3595 + Vector3.new(0, 0, 0.5)
                                            end
                                            local v3596 = vu3588.CFrame
                                            local v3597 = getgenv().Smoothness or 0.93
                                            vu3588.CFrame = v3596:Lerp(CFrame.new(v3596.Position, v3595), v3597)
                                        end
                                    else
                                        return
                                    end
                                end
                            else
                                return
                            end
                        else
                            return
                        end
                    end)
                end
                local function vu3599()
                    vu3587:UnbindFromRenderStep("MobileAimbot")
                end
                v3586.TouchStarted:Connect(function()
                    if getgenv().MobileAimbot then
                        vu3598()
                    end
                end)
                v3586.TouchEnded:Connect(function()
                    vu3599()
                end)
                v3055:AddToggle({
                    Name = "Mobile Aimbot (new, untested!)",
                    Default = false,
                    Save = true,
                    Flag = "mobileaimbottoggle",
                    Callback = function(p3600)
                        getgenv().MobileAimbot = p3600
                        if not p3600 then
                            vu3599()
                        end
                    end
                })
                v3055:AddSlider({
                    Name = "Aimbot Speed",
                    Min = 0.1,
                    Max = 1.5,
                    Default = 0.93,
                    Color = Color3.fromRGB(255, 126, 249),
                    Increment = 0.01,
                    ValueName = "%",
                    Save = true,
                    Flag = "AimStrengthSlider",
                    Callback = function(p3601)
                        getgenv().Smoothness = p3601
                    end
                })
                v3055:AddSlider({
                    Name = "Field Of View",
                    Min = 50,
                    Max = 1000,
                    Default = 100,
                    Color = Color3.fromRGB(255, 126, 249),
                    Increment = 1,
                    ValueName = "%",
                    Save = true,
                    Flag = "FOVSlider",
                    Callback = function(p3602)
                        getgenv().fieldofview = p3602
                    end
                })
                v3055:AddSlider({
                    Name = "Aimbot Max Distance",
                    Min = 50,
                    Max = 2000,
                    Default = 600,
                    Color = Color3.fromRGB(255, 126, 249),
                    Increment = 50,
                    ValueName = "m",
                    Save = true,
                    Flag = "AimbotMaxDistanceSlider",
                    Callback = function(p3603)
                        getgenv().maxAimbotDistance = p3603
                    end
                })
                getgenv().Smoothness = 0.5
                getgenv().fieldofview = 1000
                getgenv().maxAimbotDistance = 1500
                v3055:AddSection({
                    Name = "Triggerbot"
                })
                pcall(function()
                    wait(2)
                    local vu3604 = game:GetService("Players").LocalPlayer
                    local v3605 = vu3604
                    local vu3606 = vu3604.GetMouse(v3605)
                    local vu3607 = game:GetService("Workspace").CurrentCamera
                    game:GetService("RunService")
                    getgenv().triggerbotEnabled = false
                    getgenv().clickDelay = 0.1
                    getgenv().CPS = 10
                    getgenv().maxDistance2 = 500
                    getgenv().checkInterval = 0.1
                    local function vu3613()
                        if getgenv().triggerbotEnabled then
                            local v3608 = vu3607:ScreenPointToRay(vu3606.X, vu3606.Y)
                            local v3609 = Ray.new(v3608.Origin, v3608.Direction * getgenv().maxDistance2)
                            local v3610, v3611 = workspace:FindPartOnRayWithIgnoreList(v3609, {
                                vu3604.Character,
                                vu3607
                            })
                            if v3610 and (v3611 and (not getgenv().AntiKatana or vu3528(v3610) == false)) then
                                local v3612 = v3610.Parent or v3610.Parent.Parent
                                if v3612 and (v3612:FindFirstChildOfClass("Humanoid") and (not isTeammate(v3612) and (v3612.HumanoidRootPart.Position - vu3604.Character.HumanoidRootPart.Position).magnitude <= getgenv().maxDistance2)) then
                                    mouse1click()
                                end
                            end
                        end
                    end
                    local function v3614()
                        while true do
                            while getgenv().triggerbotEnabled do
                                vu3613()
                                wait(getgenv().checkInterval)
                            end
                            wait(2)
                        end
                    end
                    coroutine.wrap(v3614)()
                end)
                v3055:AddToggle({
                    Name = "Triggerbot",
                    Default = false,
                    Save = true,
                    Flag = "triggerbotToggle",
                    Callback = function(p3615)
                        getgenv().triggerbotEnabled = p3615
                    end
                })
                v3055:AddSlider({
                    Name = "Click Delay",
                    Min = 0,
                    Max = 5000,
                    Default = 100,
                    Increment = 1,
                    Color = Color3.fromRGB(255, 126, 249),
                    ValueName = "ms",
                    Save = true,
                    Flag = "triggerbotClickDelay",
                    Callback = function(p3616)
                        getgenv().clickDelay = p3616 / 1000
                    end
                })
                v3055:AddSlider({
                    Name = "CPS",
                    Min = 1,
                    Max = 135,
                    Default = 10,
                    Color = Color3.fromRGB(255, 126, 249),
                    Increment = 1,
                    ValueName = "CPS",
                    Save = true,
                    Flag = "triggerbotCPS",
                    Callback = function(p3617)
                        getgenv().CPS = p3617
                        getgenv().checkInterval = 1 / p3617
                    end
                })
                v3055:AddSlider({
                    Name = "Max Distance",
                    Min = 100,
                    Max = 3000,
                    Default = 500,
                    Color = Color3.fromRGB(255, 126, 249),
                    Increment = 25,
                    ValueName = "Studs",
                    Save = true,
                    Flag = "triggerbotMaxDistance",
                    Callback = function(p3618)
                        getgenv().maxDistance2 = p3618
                    end
                })
                v3055:AddSection({
                    Name = "Body Part Config"
                })
                v3055:AddDropdown({
                    Name = "Aim Body Part",
                    Default = "HitboxHead",
                    Options = {
                        "Head",
                        "HumanoidRootPart",
                        "UpperTorso",
                        "HitboxHead",
                        "HitboxBody",
                        "RandomHeadOrBody",
                        "RandomBodyPart",
                        "RandomHitboxPart",
                        "LegitMode",
                        "DynamicLegitMode",
                        "SelectiveBodyMode",
                        "HighAccuracyMode",
                        "RotationalAimingMode",
                        "PredictiveAimingMode",
                        "LeadAimingMode",
                        "AimAtWeakPointsMode",
                        "AdaptiveAimingMode"
                    },
                    Save = true,
                    Flag = "AimBodyPartDropdown",
                    Callback = function(p3619)
                        getgenv().AimBodyPart = p3619
                    end
                })
                v3055:AddSlider({
                    Name = "Randomize Delay",
                    Min = 0.1,
                    Max = 5,
                    Default = 0.5,
                    Color = Color3.fromRGB(255, 126, 249),
                    Increment = 0.1,
                    ValueName = "s",
                    Save = true,
                    Flag = "BodyPartRandomizeDelaySlider",
                    Callback = function(p3620)
                        getgenv().RandomizeDelay = p3620
                    end
                })
                v3055:AddSection({
                    Name = "Overall Aim Config"
                })
                v3055:AddToggle({
                    Name = "Anti Katana (should be fixed!)",
                    Default = false,
                    Save = true,
                    Flag = "AntiKatanaToggle",
                    Callback = function(p3621)
                        getgenv().AntiKatana = p3621
                    end
                })
                v3055:AddToggle({
                    Name = "Wall Check (bad with snipers!)",
                    Default = false,
                    Save = true,
                    Flag = "aimbotWallCheckToggle",
                    Callback = function(p3622)
                        getgenv().wallcheck = p3622
                    end
                })
                v3055:AddToggle({
                    Name = "Dead Check",
                    Default = false,
                    Save = true,
                    Flag = "aimbotDeadCheckToggle",
                    Callback = function(p3623)
                        getgenv().deadCheck = p3623
                    end
                })
                v3055:AddToggle({
                    Name = "Team Check",
                    Default = false,
                    Save = true,
                    Flag = "aimbotTeamCheckToggle",
                    Callback = function(p3624)
                        getgenv().AimTeamCheck = p3624
                    end
                })
                v3055:AddToggle({
                    Name = "Draw FOV",
                    Default = false,
                    Save = true,
                    Flag = "drawFOVToggle",
                    Callback = function(p3625)
                        getgenv().drawFOV = p3625
                    end
                })
                v3055:AddDropdown({
                    Name = "Aim Priority",
                    Default = "Distance",
                    Options = {
                        "Distance",
                        "Best Target",
                        "FOV",
                        "Closest to Center",
                        "Smart (beta)"
                    },
                    Save = true,
                    Flag = "AimPriorityDropdown",
                    Callback = function(p3626)
                        getgenv().IntelligentPriorityEnabled = false
                        getgenv().closestPlayerEnabled = false
                        getgenv().besttargetEnabled = false
                        getgenv().fovscaleEnabled = false
                        getgenv().closestToCenterEnabled = false
                        if p3626 == "Distance" then
                            getgenv().closestPlayerEnabled = true
                        elseif p3626 == "Best Target" then
                            getgenv().besttargetEnabled = true
                        elseif p3626 == "FOV" then
                            getgenv().fovscaleEnabled = true
                        elseif p3626 == "Closest to Center" then
                            getgenv().closestToCenterEnabled = true
                        elseif p3626 == "Smart (beta)" then
                            getgenv().IntelligentPriorityEnabled = true
                        end
                    end
                })
                local function vu3630(p3627, ...)
                    local v3628, v3629 = pcall(p3627, ...)
                    if v3628 then
                        return v3629
                    end
                    warn("Failed to call function: " .. tostring(p3627) .. " with error: " .. tostring(v3629))
                    return nil
                end
                local vu3631 = game:GetService("Players")
                local vu3632 = game:GetService("RunService")
                game:GetService("UserInputService")
                local vu3633 = game:GetService("Workspace").CurrentCamera
                getgenv().AntiAimMaxRadius = 35
                getgenv().AttachDistance = 5
                getgenv().Smoothness = 0.93
                local vu3634 = vu3631.LocalPlayer
                local vu3635 = vu3634.Character or vu3634.CharacterAdded:Wait()
                local v3636 = vu3635
                local vu3637 = vu3635.WaitForChild(v3636, "HumanoidRootPart")
                local vu3638 = false
                local vu3639 = nil
                local function vu3640()
                    vu3635 = vu3634.Character or vu3634.CharacterAdded:Wait()
                    vu3637 = vu3635:WaitForChild("HumanoidRootPart")
                end
                local function vu3651()
                    local v3641 = math.huge
                    local v3642 = vu3631
                    local v3643, v3644, v3645 = pairs(v3642:GetPlayers())
                    local v3646 = nil
                    while true do
                        local v3647
                        v3645, v3647 = v3643(v3644, v3645)
                        if v3645 == nil then
                            break
                        end
                        if v3647 ~= vu3634 and v3647.Character then
                            local v3648 = v3647.Character:FindFirstChild("HumanoidRootPart")
                            local v3649 = v3647.Character:FindFirstChildOfClass("Humanoid")
                            if not (getgenv().antiaimTeamCheck and isTeammate(v3647.Character)) and (v3649 and (v3649.Health > 0 and v3648)) then
                                local v3650 = (vu3637.Position - v3648.Position).magnitude
                                if v3650 < v3641 then
                                    if v3650 <= getgenv().AntiAimMaxRadius then
                                        v3646 = v3647
                                        v3641 = v3650
                                    end
                                end
                            end
                        end
                    end
                    return v3646
                end
                local function vu3655(p3652)
                    local v3653 = p3652.CFrame.LookVector
                    local v3654 = p3652.Position - v3653 * getgenv().AttachDistance
                    vu3637.CFrame = CFrame.new(v3654, p3652.Position)
                end
                local function vu3658()
                    local v3656 = vu3630(vu3651)
                    local vu3657 = v3656 and v3656.Character and v3656.Character:FindFirstChild("Head")
                    if vu3657 then
                        vu3630(function()
                            vu3633.CFrame = CFrame.new(vu3633.CFrame.Position, vu3657.Position)
                        end)
                    end
                end
                local function vu3661()
                    if vu3639 then
                        vu3639:Disconnect()
                        vu3639 = nil
                    end
                    vu3639 = vu3632.RenderStepped:Connect(function()
                        if vu3638 then
                            local v3659 = vu3651()
                            local v3660 = v3659 and v3659.Character and v3659.Character:FindFirstChild("HumanoidRootPart")
                            if v3660 then
                                vu3655(v3660)
                                vu3658()
                            end
                        elseif vu3637 and vu3637.Parent then
                            vu3637.CFrame = vu3637.CFrame
                        end
                    end)
                end
                local function v3662(_)
                    vu3640()
                end
                vu3634.CharacterAdded:Connect(v3662)
                vu3640()
                v3060:AddLabel("Features here might be risky")
                v3060:AddSection({
                    Name = "TP Behind Anti Aim"
                })
                v3060:AddToggle({
                    Name = "Attach Player Anti Aim ",
                    Default = false,
                    Save = true,
                    Flag = "AntiAimEnabledToggle",
                    Callback = function(p3663)
                        getgenv().antiaimTeleportEnabled = p3663
                    end
                })
                v3060:AddToggle({
                    Name = "Team Check",
                    Default = false,
                    Save = true,
                    Flag = "AntiAimTeamCheckToggle",
                    Callback = function(p3664)
                        getgenv().antiaimTeamCheck = p3664
                    end
                })
                v3060:AddBind({
                    Name = "Anti Aim Bind",
                    Default = "NOT SELECTED",
                    Hold = false,
                    Save = true,
                    Flag = "AntiAimBind",
                    Callback = function()
                        if getgenv().antiaimTeleportEnabled then
                            vu3638 = not vu3638
                            if vu3638 then
                                vu3661()
                            elseif vu3639 then
                                vu3630(function()
                                    vu3639:Disconnect()
                                end)
                                vu3639 = nil
                            end
                        end
                    end
                })
                v3060:AddSlider({
                    Name = "Max Detection Radius",
                    Min = 1,
                    Max = 400,
                    Default = 20,
                    Color = Color3.fromRGB(255, 255, 255),
                    Increment = 0.1,
                    ValueName = "m",
                    Save = true,
                    Flag = "AntiAimMaxRadius",
                    Callback = function(p3665)
                        getgenv().AntiAimMaxRadius = p3665
                    end
                })
                v3060:AddSlider({
                    Name = "Attach Distance",
                    Min = 1,
                    Max = 30,
                    Default = 5,
                    Color = Color3.fromRGB(255, 255, 255),
                    Increment = 0.1,
                    ValueName = "m",
                    Save = true,
                    Flag = "AntiAimAttachDistance",
                    Callback = function(p3666)
                        getgenv().AttachDistance = p3666
                    end
                })
                getgenv().offsetY = 1.5
                getgenv().offsetZ = - 5
                getgenv().AutoKillMaxRadius = 600
                local vu3667 = false
                local vu3668 = nil
                local function vu3683()
                    local v3669 = game:GetService("Players")
                    local v3670 = v3669.LocalPlayer
                    local v3671 = v3670.Character or v3670.CharacterAdded:Wait()
                    local v3672 = vu3630(v3671.WaitForChild, v3671, "HumanoidRootPart")
                    local v3673 = nil
                    local v3674 = math.huge
                    if not v3672 then
                        return nil
                    end
                    local v3675, v3676, v3677 = pairs(v3669:GetPlayers())
                    while true do
                        local v3678
                        v3677, v3678 = v3675(v3676, v3677)
                        if v3677 == nil then
                            break
                        end
                        if v3678 ~= v3670 and (not v3678.Team or v3678.Team ~= v3670.Team) then
                            local v3679 = v3678.Character
                            if v3679 then
                                local v3680 = vu3630(v3679.FindFirstChild, v3679, "HumanoidRootPart")
                                local v3681 = vu3630(v3679.FindFirstChildOfClass, v3679, "Humanoid")
                                if v3680 and (v3681 and (v3681.Health > 0 and not isTeammate(v3679))) then
                                    local v3682 = (v3672.Position - v3680.Position).magnitude
                                    if v3682 < v3674 then
                                        if v3682 <= getgenv().AutoKillMaxRadius then
                                            v3673 = v3678
                                            v3674 = v3682
                                        end
                                    end
                                end
                            end
                        end
                    end
                    return v3673
                end
                local function vu3689(p3684)
                    local v3685 = game:GetService("Players").LocalPlayer
                    local v3686 = (v3685.Character or v3685.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
                    local v3687 = p3684.CFrame.LookVector
                    local v3688 = p3684.Position - v3687 * math.abs(getgenv().offsetZ) + Vector3.new(0, getgenv().offsetY, 0)
                    v3686.CFrame = CFrame.new(v3688, p3684.Position)
                end
                local function vu3693()
                    vu3668 = game:GetService("RunService").Heartbeat:Connect(function()
                        if vu3667 then
                            local v3690 = vu3683()
                            local v3691 = v3690 and v3690.Character and v3690.Character:FindFirstChild("Head")
                            if v3691 then
                                vu3689(v3691)
                                local v3692 = workspace.CurrentCamera
                                v3692.CFrame = CFrame.new(v3692.CFrame.Position, v3691.Position)
                            end
                        end
                    end)
                end
                local vu3694 = 0.1
                local vu3695 = 0
                game:GetService("RunService").RenderStepped:Connect(function()
                    if vu3667 then
                        local v3696 = tick()
                        if vu3694 <= v3696 - vu3695 then
                            mouse1click()
                            vu3695 = v3696
                        end
                    end
                end)
                v3060:AddSection({
                    Name = "Auto Kill"
                })
                v3060:AddParagraph("Auto Kill", "Automatically attaches behind the nearest player and kill them.")
                v3060:AddBind({
                    Name = "Auto Kill",
                    Default = "NOT SELECTED",
                    Hold = false,
                    Save = true,
                    Flag = "AutoKillBindKey",
                    Callback = function()
                        vu3667 = not vu3667
                        if vu3667 then
                            vu3693()
                        elseif vu3668 then
                            vu3668:Disconnect()
                            vu3668 = nil
                        end
                    end
                })
                v3060:AddSlider({
                    Name = "Max Detection Radius",
                    Min = 1,
                    Max = 4000,
                    Default = 1500,
                    Color = Color3.fromRGB(255, 255, 255),
                    Increment = 35,
                    ValueName = "m",
                    Save = true,
                    Flag = "AutoKillMaxRadius",
                    Callback = function(p3697)
                        getgenv().AutoKillMaxRadius = p3697
                    end
                })
                v3060:AddSlider({
                    Name = "Attach Distance (Z Offset)",
                    Min = - 5,
                    Max = 5,
                    Default = 0,
                    Color = Color3.fromRGB(255, 255, 255),
                    Increment = 0.1,
                    ValueName = "m",
                    Save = true,
                    Flag = "AutoKillOffsetZ",
                    Callback = function(p3698)
                        getgenv().offsetZ = - 5 + p3698
                    end
                })
                v3060:AddSlider({
                    Name = "Height Adjustment (Y Offset)",
                    Min = - 5,
                    Max = 5,
                    Default = 0,
                    Color = Color3.fromRGB(255, 255, 255),
                    Increment = 0.1,
                    ValueName = "m",
                    Save = true,
                    Flag = "AutoKillOffsetY",
                    Callback = function(p3699)
                        getgenv().offsetY = 1.5 + p3699
                    end
                })
                function gunTabLoad()
                    local vu3700 = false
                    local vu3701 = {}
                    local vu3702 = nil
                    local vu3703 = false
                    local vu3704 = nil
                    local v3705 = getthreadidentity
                    if v3705 then
                        v3705 = getthreadidentity() > 7
                    end
                    local v3706 = getidentity
                    if v3706 then
                        v3706 = getidentity() > 7
                    end
                    if v3705 or v3706 then
                        if not pcall(function()
                            local v3707 = game:GetService("Players").LocalPlayer
                            vu3702 = require(v3707.PlayerScripts.Modules.ClientReplicatedClasses.ClientFighter.ClientItem)
                            if vu3702 then
                                vu3700 = true
                                vu3701 = {
                                    norecoil = false,
                                    nospread = false,
                                    highspeedbullet = false,
                                    noshootcooldown = false,
                                    noquickshootcooldown = false
                                }
                            end
                        end) then
                            vu3700 = false
                        end
                    else
                        vu3700 = false
                    end
                    local function vu3712()
                        if not vu3700 then
                            return false
                        end
                        local v3708, v3709, v3710 = pairs(vu3701)
                        while true do
                            local v3711
                            v3710, v3711 = v3708(v3709, v3710)
                            if v3710 == nil then
                                break
                            end
                            if v3711 then
                                return true
                            end
                        end
                        return false
                    end
                    local function vu3714(p3713)
                        if not vu3700 then
                            return p3713
                        end
                        if vu3701.norecoil then
                            p3713.ShootRecoil = 0
                        end
                        if vu3701.nospread then
                            p3713.ShootSpread = 0
                        end
                        if vu3701.highspeedbullet then
                            p3713.ProjectileSpeed = 999999999
                        end
                        if vu3701.noshootcooldown then
                            p3713.ShootCooldown = 0
                        end
                        if vu3701.noquickshootcooldown then
                            p3713.QuickShotCooldown = 0
                        end
                        return p3713
                    end
                    local function vu3716()
                        if vu3700 then
                            if not vu3703 and vu3702 then
                                vu3704 = vu3702.Input
                                function vu3702.Input(...)
                                    local v3715 = {
                                        ...
                                    }
                                    if vu33(v3715[1]) == "table" and v3715[1].Info then
                                        v3715[1].Info = vu3714(v3715[1].Info)
                                    end
                                    return vu3704(table.unpack(v3715))
                                end
                                vu3703 = true
                            end
                        end
                    end
                    local function vu3717()
                        if vu3700 then
                            if vu3703 and (vu3702 and vu3704) then
                                vu3702.Input = vu3704
                                vu3703 = false
                            end
                        end
                    end
                    local function vu3720(p3718, p3719)
                        if not vu3700 then
                            return "Executor doesnt Support Gunmod!"
                        end
                        if vu3701[p3718] ~= nil then
                            vu3701[p3718] = p3719
                            if p3719 == true and not vu3703 then
                                vu3716()
                            elseif p3719 == false and not vu3712() then
                                vu3717()
                            end
                        end
                        return "success"
                    end
                    vu3056:AddSection({
                        Name = "Gun Mods (better executors supported)"
                    })
                    vu3056:AddLabel("Only 7+ Level Executors | Report Issues on my Discord!")
                    vu3056:AddToggle({
                        Name = "No Recoil",
                        Default = false,
                        Save = true,
                        Flag = "norecoil",
                        Callback = function(p3721)
                            local v3722 = vu3720("norecoil", p3721)
                            if p3721 then
                                notifyVXWARE(v3722)
                            end
                        end
                    })
                    vu3056:AddToggle({
                        Name = "No Spread",
                        Default = false,
                        Save = true,
                        Flag = "nospread",
                        Callback = function(p3723)
                            local v3724 = vu3720("nospread", p3723)
                            if p3723 then
                                notifyVXWARE(v3724)
                            end
                        end
                    })
                    vu3056:AddToggle({
                        Name = "High Speed Bullet",
                        Default = false,
                        Save = true,
                        Flag = "highspeedbullet",
                        Callback = function(p3725)
                            local v3726 = vu3720("highspeedbullet", p3725)
                            if p3725 then
                                notifyVXWARE(v3726)
                            end
                        end
                    })
                    vu3056:AddToggle({
                        Name = "No Shoot Cooldown",
                        Default = false,
                        Save = true,
                        Flag = "noshootcooldown",
                        Callback = function(p3727)
                            local v3728 = vu3720("noshootcooldown", p3727)
                            if p3727 then
                                notifyVXWARE(v3728)
                            end
                        end
                    })
                    vu3056:AddToggle({
                        Name = "No Quick Shot Cooldown",
                        Default = false,
                        Save = true,
                        Flag = "noquickshootcooldown",
                        Callback = function(p3729)
                            local v3730 = vu3720("noquickshootcooldown", p3729)
                            if p3729 then
                                notifyVXWARE(v3730)
                            end
                        end
                    })
                end
                gunTabLoad()
                local vu3731 = game:GetService("Workspace")
                local vu3732 = game:GetService("ReplicatedStorage")
                local vu3733 = game:GetService("Players").LocalPlayer
                local vu3734 = vu3733:WaitForChild("PlayerScripts"):WaitForChild("Assets"):WaitForChild("ViewModels")
                local vu3735 = Enum.Material.Plastic
                local vu3736 = Color3.fromRGB(255, 255, 255)
                local vu3737 = 0
                local function vu3747(p3738, p3739, p3740)
                    local v3741 = p3738:FindFirstChild("ItemVisual")
                    local v3742 = v3741 and v3741:FindFirstChild(p3739)
                    if v3742 then
                        local v3743, v3744, v3745 = ipairs(v3742:GetChildren())
                        while true do
                            local v3746
                            v3745, v3746 = v3743(v3744, v3745)
                            if v3745 == nil then
                                break
                            end
                            if v3746:IsA("MeshPart") or v3746:IsA("Part") then
                                p3740(v3746)
                            end
                        end
                    end
                end
                local function vu3759(p3748, p3749)
                    local v3750 = p3748:FindFirstChild("ItemVisual")
                    if v3750 then
                        local v3751, v3752, v3753 = ipairs(v3750:GetChildren())
                        while true do
                            local v3754
                            v3753, v3754 = v3751(v3752, v3753)
                            if v3753 == nil then
                                break
                            end
                            local v3755, v3756, v3757 = ipairs(v3754:GetChildren())
                            while true do
                                local v3758
                                v3757, v3758 = v3755(v3756, v3757)
                                if v3757 == nil then
                                    break
                                end
                                if v3758:IsA("MeshPart") or v3758:IsA("Part") then
                                    p3749(v3758)
                                end
                            end
                        end
                    end
                end
                local function vu3776(p3760, p3761, p3762)
                    local v3763, v3764, v3765 = ipairs(p3760:GetChildren())
                    while true do
                        local v3766
                        v3765, v3766 = v3763(v3764, v3765)
                        if v3765 == nil then
                            break
                        end
                        if p3762 then
                            local v3767 = v3766:FindFirstChild(p3762)
                            if v3767 then
                                local v3768, v3769, v3770 = ipairs(v3767:GetChildren())
                                while true do
                                    local v3771
                                    v3770, v3771 = v3768(v3769, v3770)
                                    if v3770 == nil then
                                        break
                                    end
                                    if v3771:IsA("MeshPart") or v3771:IsA("Part") then
                                        p3761(v3771)
                                    end
                                end
                            end
                        else
                            local v3772, v3773, v3774 = ipairs(v3766:GetDescendants())
                            while true do
                                local v3775
                                v3774, v3775 = v3772(v3773, v3774)
                                if v3774 == nil then
                                    break
                                end
                                if v3775:IsA("MeshPart") or v3775:IsA("Part") then
                                    p3761(v3775)
                                end
                            end
                        end
                    end
                end
                local function vu3788(p3777)
                    local v3778 = vu3731:WaitForChild("ViewModels"):WaitForChild("FirstPerson")
                    local v3779, v3780, v3781 = ipairs(v3778:GetChildren())
                    while true do
                        local v3782
                        v3781, v3782 = v3779(v3780, v3781)
                        if v3781 == nil then
                            break
                        end
                        vu3747(v3782, "Body", p3777)
                    end
                    local v3783 = vu3732:WaitForChild("Assets"):WaitForChild("Temp"):WaitForChild("ViewModels")
                    local v3784, v3785, v3786 = ipairs(v3783:GetChildren())
                    while true do
                        local v3787
                        v3786, v3787 = v3784(v3785, v3786)
                        if v3786 == nil then
                            break
                        end
                        vu3747(v3787, "Body", p3777)
                    end
                    vu3776(vu3734, p3777, "Body")
                end
                local function vu3800(p3789)
                    local v3790 = vu3731:WaitForChild("ViewModels"):WaitForChild("FirstPerson")
                    local v3791, v3792, v3793 = ipairs(v3790:GetChildren())
                    while true do
                        local v3794
                        v3793, v3794 = v3791(v3792, v3793)
                        if v3793 == nil then
                            break
                        end
                        vu3759(v3794, p3789)
                    end
                    local v3795 = vu3732:WaitForChild("Assets"):WaitForChild("Temp"):WaitForChild("ViewModels")
                    local v3796, v3797, v3798 = ipairs(v3795:GetChildren())
                    while true do
                        local v3799
                        v3798, v3799 = v3796(v3797, v3798)
                        if v3798 == nil then
                            break
                        end
                        vu3759(v3799, p3789)
                    end
                    vu3776(vu3734, p3789)
                end
                local function vu3804(p3801)
                    local vu3802 = p3801 or vu3735
                    vu3788(function(p3803)
                        p3803.Material = vu3802
                    end)
                end
                local function vu3808(p3805)
                    local vu3806 = p3805 or vu3736
                    vu3800(function(p3807)
                        p3807.Color = vu3806
                    end)
                end
                local function vu3812(p3809)
                    local vu3810 = p3809 or vu3737
                    vu3788(function(p3811)
                        p3811.Transparency = vu3810
                    end)
                end
                vu3057:AddSection({
                    Name = "Weapon Modes"
                })
                local v3813 = game:GetService("Players")
                if not v3813.LocalPlayer.Character then
                    v3813.LocalPlayer.CharacterAdded:Wait()
                end
                local vu3814 = game:GetService("Workspace").ViewModels.FirstPerson
                getgenv().RainbowWeaponEnabled = false
                getgenv().RainbowArmsEnabled = false
                local function vu3817()
                    local v3815 = 0
                    while getgenv().RainbowWeaponEnabled do
                        local v3816 = v3815 + 0.01
                        v3815 = v3816 > 1 and 0 or v3816
                        vu3808((Color3.fromHSV(v3815, 1, 1)))
                        wait(0.2)
                    end
                end
                local function vu3826()
                    local v3818 = 0
                    while getgenv().RainbowArmsEnabled do
                        local v3819 = v3818 + 0.01
                        v3818 = v3819 > 1 and 0 or v3819
                        local v3820 = Color3.fromHSV(v3818, 1, 1)
                        local v3821 = vu3814
                        local v3822, v3823, v3824 = ipairs(v3821:GetDescendants())
                        while true do
                            local v3825
                            v3824, v3825 = v3822(v3823, v3824)
                            if v3824 == nil then
                                break
                            end
                            if v3825.Name == "LeftArm" or v3825.Name == "RightArm" then
                                if v3825:IsA("BasePart") then
                                    v3825.Color = v3820
                                elseif v3825:IsA("MeshPart") then
                                    v3825.Color = v3820
                                end
                            end
                        end
                        wait(0.2)
                    end
                end
                vu3057:AddToggle({
                    Name = "Rainbow Mode",
                    Default = false,
                    Save = true,
                    Flag = "RainbowWeaponToggle",
                    Callback = function(p3827)
                        getgenv().RainbowWeaponEnabled = p3827
                        if p3827 then
                            spawn(vu3817)
                        end
                    end
                })
                vu3057:AddToggle({
                    Name = "Rainbow Arms Mode",
                    Default = false,
                    Save = true,
                    Flag = "RainbowArmsToggle",
                    Callback = function(p3828)
                        getgenv().RainbowArmsEnabled = p3828
                        if p3828 then
                            spawn(vu3826)
                        end
                    end
                });
                (function()
                    local _, _ = pcall(function()
                        vu3057:AddSection({
                            Name = "Skin Change / Weapon Swap"
                        })
                        local v3829 = game:GetService("Players")
                        local v3830 = game:GetService("Workspace")
                        game:GetService("ReplicatedStorage")
                        local vu3831 = v3829.LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("Assets"):WaitForChild("ViewModels")
                        local vu3832 = v3830:WaitForChild("ViewModels"):WaitForChild("FirstPerson")
                        local vu3833 = nil
                        local vu3834 = "None"
                        local vu3835 = "Default"
                        local vu3836 = "venoxware/skinchanger"
                        local vu3837 = {}
                        if not isfolder(vu3836) then
                            makefolder(vu3836)
                        end
                        local function vu3839(p3838)
                            if p3838:sub(1, 4) == "Base" then
                                p3838 = p3838:sub(5)
                            end
                            return p3838:lower():gsub("%s+", ""):gsub("_", "")
                        end
                        local vu3840 = {
                            ["Crystal Daggers"] = true,
                            Keyvolver = true,
                            ["Compound Bow"] = true,
                            ["Frostbite Bow"] = true,
                            ["Raven Bow"] = true,
                            Buzzsaw = true,
                            ["Festive Buzzsaw"] = true,
                            Handsaws = true,
                            ["Firework Launcher"] = true,
                            ["Pumpkin Launcher"] = true,
                            RPKEY = true,
                            ["Advanced Satchel"] = true,
                            ["Suspicious Gift"] = true
                        }
                        local vu3841 = {
                            Bow = {
                                "Compound Bow",
                                "Raven Bow",
                                "Frostbite Bow"
                            },
                            ["Assault Rifle"] = {
                                "AK-47",
                                "AUG",
                                "Phoenix Rifle"
                            },
                            Chainsaw = {
                                "Blobsaw",
                                "Handsaws",
                                "Buzzsaw",
                                "Festive Buzzsaw"
                            },
                            RPG = {
                                "Nuke Launcher",
                                "RPKEY",
                                "Spaceship Launcher",
                                "Firework Launcher",
                                "Pumpkin Launcher"
                            },
                            ["Burst Rifle"] = {
                                "Aqua Burst",
                                "Electro Rifle"
                            },
                            Exogun = {
                                "Singularity",
                                "Wondergun"
                            },
                            Fists = {
                                "Boxing Gloves",
                                "Brass Knuckles"
                            },
                            Flamethrower = {
                                "Lamethrower",
                                "Pixel Flamethrower"
                            },
                            ["Flare Gun"] = {
                                "Dynamite Gun",
                                "Firework Gun"
                            },
                            ["Freeze Ray"] = {
                                "Bubble Ray",
                                "Temporal Ray"
                            },
                            Grenade = {
                                "Water Balloon",
                                "Whoopee Cushion"
                            },
                            ["Grenade Launcher"] = {
                                "Swashbuckler",
                                "Uranium Launcher"
                            },
                            Handgun = {
                                "Blaster",
                                "Keyvolver"
                            },
                            Katana = {
                                "Lightning Bolt",
                                "Saber"
                            },
                            Minigun = {
                                "Lasergun 3000",
                                "Pixel Minigun"
                            },
                            ["Paintball Gun"] = {
                                "Boba Gun",
                                "Slime Gun"
                            },
                            Revolver = {
                                "Sheriff",
                                "Keyvolver"
                            },
                            Slingshot = {
                                "Goalpost",
                                "Stick"
                            },
                            Shorty = {
                                "Not So Shorty",
                                "Too Shorty"
                            },
                            ["Subspace Tripmine"] = {
                                "Don\'t Press",
                                "Spring"
                            },
                            Uzi = {
                                "Electro Uzi",
                                "Water Uzi"
                            },
                            Sniper = {
                                "Pixel Sniper",
                                "Hyper Sniper"
                            },
                            Knife = {
                                "Karambit",
                                "Chancla",
                                "Crystal Daggers"
                            },
                            Daggers = {
                                "Crystal Daggers"
                            }
                        }
                        local function vu3880(p3842)
                            local v3843 = game:GetService("Players").LocalPlayer
                            local v3844 = v3843:WaitForChild("PlayerScripts"):WaitForChild("Assets"):WaitForChild("ViewModels")
                            local v3845 = v3843:WaitForChild("PlayerScripts"):WaitForChild("Modules"):WaitForChild("ViewModels")
                            local v3846 = vu3839(p3842)
                            local v3847, v3848, v3849 = pairs(v3845:GetChildren())
                            local v3850 = nil
                            local v3851 = {}
                            local v3852 = {}
                            while true do
                                local v3853
                                v3849, v3853 = v3847(v3848, v3849)
                                if v3849 == nil then
                                    v3853 = v3850
                                    break
                                end
                                if v3853:IsA("ModuleScript") and vu3839(v3853.Name) == v3846 then
                                    break
                                end
                            end
                            if v3853 then
                                local v3854, v3855, v3856 = pairs(v3853:GetChildren())
                                local v3857 = {}
                                while true do
                                    local v3858
                                    v3856, v3858 = v3854(v3855, v3856)
                                    if v3856 == nil then
                                        break
                                    end
                                    if v3858:IsA("ModuleScript") and not vu3840[v3858.Name] then
                                        v3857[v3858.Name] = true
                                    end
                                end
                                local v3859, v3860, v3861 = pairs(v3844:GetChildren())
                                while true do
                                    local v3862
                                    v3861, v3862 = v3859(v3860, v3861)
                                    if v3861 == nil then
                                        break
                                    end
                                    if v3862:IsA("Folder") then
                                        local v3863, v3864, v3865 = pairs(v3862:GetChildren())
                                        while true do
                                            local v3866
                                            v3865, v3866 = v3863(v3864, v3865)
                                            if v3865 == nil then
                                                break
                                            end
                                            if v3866:IsA("Model") and (v3857[v3866.Name] and not v3851[v3866.Name]) then
                                                table.insert(v3852, v3866.Name)
                                                v3851[v3866.Name] = true
                                            end
                                        end
                                    end
                                end
                            else
                                warn("Weapon module not found in Modules.ViewModels:", p3842)
                            end
                            if vu3841[p3842] then
                                local v3867, v3868, v3869 = ipairs(vu3841[p3842])
                                while true do
                                    local v3870
                                    v3869, v3870 = v3867(v3868, v3869)
                                    if v3869 == nil then
                                        break
                                    end
                                    if not (v3851[v3870] or vu3840[v3870]) then
                                        local v3871, v3872, v3873 = pairs(v3844:GetChildren())
                                        local v3874 = false
                                        while true do
                                            local v3875
                                            v3873, v3875 = v3871(v3872, v3873)
                                            if v3873 == nil then
                                                break
                                            end
                                            if v3875:IsA("Folder") then
                                                local v3876, v3877, v3878 = pairs(v3875:GetChildren())
                                                while true do
                                                    local v3879
                                                    v3878, v3879 = v3876(v3877, v3878)
                                                    if v3878 == nil then
                                                        break
                                                    end
                                                    if v3879:IsA("Model") and v3879.Name == v3870 then
                                                        v3874 = true
                                                        break
                                                    end
                                                end
                                                if v3874 then
                                                    break
                                                end
                                            end
                                        end
                                        if v3874 then
                                            table.insert(v3852, v3870)
                                            v3851[v3870] = true
                                        end
                                    end
                                end
                            end
                            table.sort(v3852)
                            return v3852
                        end
                        local function vu3888()
                            vu3837 = {}
                            if isfolder(vu3836) then
                                local v3881 = listfiles(vu3836)
                                local v3882, v3883, v3884 = pairs(v3881)
                                while true do
                                    local v3885
                                    v3884, v3885 = v3882(v3883, v3884)
                                    if v3884 == nil then
                                        break
                                    end
                                    if string.sub(v3885, - 4) == ".cfg" then
                                        local v3886 = string.match(v3885, "[^/\\]+%.cfg$")
                                        if v3886 then
                                            local v3887 = string.sub(v3886, 1, - 5)
                                            table.insert(vu3837, v3887)
                                        end
                                    end
                                end
                            end
                            if # vu3837 == 0 then
                                table.insert(vu3837, "No configs")
                            end
                            return vu3837
                        end
                        local function vu3916(p3889, p3890)
                            local function v3899(p3891, p3892)
                                local v3893 = p3891:FindFirstChild(p3892)
                                if v3893 and v3893:IsA("Model") then
                                    return v3893
                                end
                                local v3894, v3895, v3896 = pairs(p3891:GetChildren())
                                while true do
                                    local v3897
                                    v3896, v3897 = v3894(v3895, v3896)
                                    if v3896 == nil then
                                        break
                                    end
                                    if v3897:IsA("Folder") then
                                        local v3898 = v3897:FindFirstChild(p3892)
                                        if v3898 and v3898:IsA("Model") then
                                            return v3898
                                        end
                                    end
                                end
                                return nil
                            end
                            local v3900 = p3889 or vu3834
                            local v3901 = p3890 or vu3835
                            if v3901 == "Default" then
                                v3901 = v3900
                            end
                            local vu3902 = v3899(vu3831, v3900)
                            local vu3903 = v3899(vu3831, v3901)
                            if vu3832 then
                                vu3902 = vu3902 or v3899(vu3832, v3900)
                                if not vu3903 then
                                    vu3903 = v3899(vu3832, v3901)
                                end
                            end
                            if vu3902 and vu3903 then
                                local v3914, v3915 = pcall(function()
                                    local _ = vu3902.Parent
                                    local v3904 = vu3902
                                    local v3905, v3906, v3907 = pairs(v3904:GetChildren())
                                    while true do
                                        local v3908
                                        v3907, v3908 = v3905(v3906, v3907)
                                        if v3907 == nil then
                                            break
                                        end
                                        if v3908:IsA("Model") then
                                            v3908:Destroy()
                                        end
                                    end
                                    local v3909 = vu3903
                                    local v3910, v3911, v3912 = pairs(v3909:GetChildren())
                                    while true do
                                        local v3913
                                        v3912, v3913 = v3910(v3911, v3912)
                                        if v3912 == nil then
                                            break
                                        end
                                        if v3913:IsA("Model") then
                                            v3913:Clone().Parent = vu3902
                                        end
                                    end
                                end)
                                if not v3914 then
                                    vu3040:MakeNotification({
                                        Name = "Error",
                                        Content = "Error swapping skin: " .. tostring(v3915),
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                    return
                                end
                                if not getgenv().swap then
                                    getgenv().swap = {}
                                end
                                if v3901 == v3900 then
                                    getgenv().swap[v3900] = nil
                                else
                                    getgenv().swap[v3900] = v3901
                                end
                                vu3040:MakeNotification({
                                    Name = "Success",
                                    Content = "Weapon skin swapped successfully.",
                                    Image = "rbxassetid://4483345998",
                                    Time = 5
                                })
                            else
                                vu3040:MakeNotification({
                                    Name = "Error",
                                    Content = vu3903 == nil and "Skin not found: " .. v3901 or (vu3902 == nil and "Base weapon not found: " .. v3900 or "Unknown error finding models"),
                                    Image = "rbxassetid://4483345998",
                                    Time = 5
                                })
                            end
                        end
                        local function v3929()
                            task.spawn(function()
                                task.wait(5)
                                local v3917 = vu3022(vu3836 .. "/auto.txt")
                                if v3917 then
                                    if v3917 and v3917 ~= "" then
                                        local vu3918 = vu3022(vu3836 .. "/" .. v3917 .. ".cfg")
                                        if vu3918 then
                                            local v3919, v3920 = pcall(function()
                                                return game:GetService("HttpService"):JSONDecode(vu3918)
                                            end)
                                            if v3919 then
                                                getgenv().swap = v3920
                                                vu3040:MakeNotification({
                                                    Name = "Success",
                                                    Content = "Configuration loaded: " .. v3917,
                                                    Image = "rbxassetid://4483345998",
                                                    Time = 5
                                                })
                                                local v3921, v3922, v3923 = pairs(getgenv().swap)
                                                while true do
                                                    local v3924
                                                    v3923, v3924 = v3921(v3922, v3923)
                                                    if v3923 == nil then
                                                        break
                                                    end
                                                    vu3916(v3923, v3924)
                                                end
                                            else
                                                vu3040:MakeNotification({
                                                    Name = "Error",
                                                    Content = "Failed to load configuration: Invalid format",
                                                    Image = "rbxassetid://4483345998",
                                                    Time = 5
                                                })
                                            end
                                        else
                                            vu3040:MakeNotification({
                                                Name = "Error",
                                                Content = "Configuration not found: " .. v3917,
                                                Image = "rbxassetid://4483345998",
                                                Time = 5
                                            })
                                        end
                                    end
                                elseif getgenv().swap then
                                    local v3925, v3926, v3927 = pairs(getgenv().swap)
                                    while true do
                                        local v3928
                                        v3927, v3928 = v3925(v3926, v3927)
                                        if v3927 == nil then
                                            break
                                        end
                                        vu3916(v3927, v3928)
                                    end
                                end
                            end)
                        end
                        local v3937 = (function()
                            local v3930 = {}
                            local v3931 = game:GetService("Players").LocalPlayer.PlayerScripts.Assets.ViewModels.Weapons
                            if not v3931 then
                                return v3930
                            end
                            local v3932, v3933, v3934 = pairs(v3931:GetChildren())
                            while true do
                                local v3935
                                v3934, v3935 = v3932(v3933, v3934)
                                if v3934 == nil then
                                    break
                                end
                                if v3935:IsA("Model") then
                                    local v3936 = v3935.Name
                                    table.insert(v3930, v3936)
                                end
                            end
                            table.sort(v3930)
                            return v3930
                        end)()
                        local v3938 = vu3888()
                        vu3057:AddDropdown({
                            Name = "Select Weapon",
                            Options = v3937,
                            Default = "None",
                            Save = true,
                            Flag = "baseWeaponDropdown",
                            Callback = function(p3939)
                                vu3834 = p3939
                                getgenv().selectedBaseWeapon = p3939
                                vu3833:Refresh(vu3880(p3939), true)
                                vu3833:Set("Default")
                                vu3835 = "Default"
                            end
                        })
                        local _ = vu3057:AddDropdown({
                            Name = "Select Skin",
                            Options = {
                                "Select a weapon first"
                            },
                            Default = "Select a weapon first",
                            Save = true,
                            Flag = "skinDropdown",
                            Callback = function(p3940)
                                vu3835 = p3940
                                getgenv().selectedSkin = p3940
                            end
                        })
                        vu3057:AddButton({
                            Name = "Apply Skin",
                            Callback = function()
                                if vu3834 == "None" or vu3835 == "Select a weapon first" then
                                    vu3040:MakeNotification({
                                        Name = "Error",
                                        Content = "Please select both a weapon and a skin.",
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                else
                                    vu3916()
                                end
                            end
                        })
                        local v3941 = vu3057:AddSection({
                            Name = "Configuration Management"
                        })
                        local vu3942 = ""
                        local vu3943 = ""
                        local v3944 = ""
                        v3941:AddTextbox({
                            Name = "Config Name",
                            Default = "",
                            TextDisappear = false,
                            Callback = function(p3945)
                                vu3942 = p3945
                            end
                        })
                        local vu3947 = v3941:AddDropdown({
                            Name = "Select Config",
                            Options = v3938,
                            Default = v3938[1],
                            Save = true,
                            Flag = "configDropdown",
                            Callback = function(p3946)
                                vu3943 = p3946
                                vu3942 = p3946
                            end
                        })
                        v3941:AddButton({
                            Name = "Save Config",
                            Callback = function()
                                if vu3942 and vu3942 ~= "" then
                                    if not getgenv().swap then
                                        getgenv().swap = {}
                                    end
                                    local vu3948 = vu3836 .. "/" .. vu3942 .. ".cfg"
                                    local v3949, v3950 = pcall(function()
                                        writefile(vu3948, game:GetService("HttpService"):JSONEncode(getgenv().swap))
                                    end)
                                    if v3949 then
                                        vu3040:MakeNotification({
                                            Name = "Success",
                                            Content = "Configuration saved as " .. vu3942,
                                            Image = "rbxassetid://4483345998",
                                            Time = 5
                                        })
                                        vu3947:Refresh(vu3888(), true)
                                        vu3947:Set(vu3942)
                                    else
                                        vu3040:MakeNotification({
                                            Name = "Error",
                                            Content = "Failed to save configuration: " .. tostring(v3950),
                                            Image = "rbxassetid://4483345998",
                                            Time = 5
                                        })
                                    end
                                else
                                    vu3040:MakeNotification({
                                        Name = "Error",
                                        Content = "Please enter a configuration name.",
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                end
                            end
                        })
                        v3941:AddButton({
                            Name = "Load Config",
                            Callback = function()
                                if vu3943 and vu3943 ~= "No configs" then
                                    local vu3951 = vu3022(vu3836 .. "/" .. vu3943 .. ".cfg")
                                    if vu3951 then
                                        local v3952, v3953 = pcall(function()
                                            return game:GetService("HttpService"):JSONDecode(vu3951)
                                        end)
                                        if v3952 then
                                            getgenv().swap = v3953
                                            vu3040:MakeNotification({
                                                Name = "Success",
                                                Content = "Configuration loaded: " .. vu3943,
                                                Image = "rbxassetid://4483345998",
                                                Time = 5
                                            })
                                            local v3954, v3955, v3956 = pairs(getgenv().swap)
                                            while true do
                                                local v3957
                                                v3956, v3957 = v3954(v3955, v3956)
                                                if v3956 == nil then
                                                    break
                                                end
                                                vu3916(v3956, v3957)
                                            end
                                        else
                                            vu3040:MakeNotification({
                                                Name = "Error",
                                                Content = "Failed to load configuration: Invalid format",
                                                Image = "rbxassetid://4483345998",
                                                Time = 5
                                            })
                                        end
                                    else
                                        vu3040:MakeNotification({
                                            Name = "Error",
                                            Content = "Configuration not found: " .. vu3943,
                                            Image = "rbxassetid://4483345998",
                                            Time = 5
                                        })
                                    end
                                else
                                    vu3040:MakeNotification({
                                        Name = "Error",
                                        Content = "Please select a configuration.",
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                end
                            end
                        })
                        v3941:AddButton({
                            Name = "Delete Config",
                            Callback = function()
                                if vu3943 and vu3943 ~= "No configs" then
                                    local v3958 = vu3836 .. "/" .. vu3943 .. ".cfg"
                                    if vu3022(v3958) then
                                        delfile(v3958)
                                        vu3040:MakeNotification({
                                            Name = "Success",
                                            Content = "Configuration deleted: " .. vu3943,
                                            Image = "rbxassetid://4483345998",
                                            Time = 5
                                        })
                                        vu3947:Refresh(vu3888(), true)
                                    else
                                        vu3040:MakeNotification({
                                            Name = "Error",
                                            Content = "Configuration not found: " .. vu3943,
                                            Image = "rbxassetid://4483345998",
                                            Time = 5
                                        })
                                    end
                                else
                                    vu3040:MakeNotification({
                                        Name = "Error",
                                        Content = "Please select a configuration.",
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                end
                            end
                        })
                        local v3959 = vu3057:AddSection({
                            Name = "Auto-Load Settings"
                        })
                        local vu3960 = vu3022(vu3836 .. "/auto.txt")
                        local vu3961
                        if vu3960 then
                            local v3962
                            v3962, vu3961 = pcall(function()
                                return vu3960
                            end)
                            if not v3962 or (not vu3961 or vu3961 == "") then
                                vu3961 = v3944
                            end
                        else
                            vu3961 = v3944
                        end
                        local vu3963 = v3959:AddLabel("Auto-Load: " .. ((vu3961 == "" or not vu3961) and "None" or vu3961))
                        local vu3965 = v3959:AddToggle({
                            Name = "Enable Auto-Load",
                            Default = vu3961 ~= "",
                            Save = true,
                            Flag = "autoLoadEnabled",
                            Callback = function(p3964)
                                if p3964 then
                                    if vu3943 and vu3943 ~= "No configs" then
                                        writefile(vu3836 .. "/auto.txt", vu3943)
                                        vu3961 = vu3943
                                        vu3963:Set("Auto-Load: " .. vu3943)
                                        vu3040:MakeNotification({
                                            Name = "Success",
                                            Content = "Auto-load enabled for: " .. vu3943,
                                            Image = "rbxassetid://4483345998",
                                            Time = 5
                                        })
                                    else
                                        vu3040:MakeNotification({
                                            Name = "Error",
                                            Content = "Please select a configuration first.",
                                            Image = "rbxassetid://4483345998",
                                            Time = 5
                                        })
                                        autoLoadToggle:Set(false)
                                    end
                                else
                                    if isfile(vu3836 .. "/auto.txt") then
                                        delfile(vu3836 .. "/auto.txt")
                                    end
                                    vu3961 = ""
                                    vu3963:Set("Auto-Load: None")
                                end
                            end
                        })
                        v3959:AddButton({
                            Name = "Set Selected Config As Auto-Load",
                            Callback = function()
                                if vu3943 and vu3943 ~= "No configs" then
                                    writefile(vu3836 .. "/auto.txt", vu3943)
                                    vu3961 = vu3943
                                    vu3963:Set("Auto-Load: " .. vu3943)
                                    vu3965:Set(true)
                                    vu3040:MakeNotification({
                                        Name = "Success",
                                        Content = "Auto-load set to: " .. vu3943,
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                else
                                    vu3040:MakeNotification({
                                        Name = "Error",
                                        Content = "Please select a configuration first.",
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                end
                            end
                        })
                        if vu3961 ~= "" then
                            local vu3966 = vu3022(vu3836 .. "/" .. vu3961 .. ".cfg")
                            if vu3966 then
                                local v3967, v3968 = pcall(function()
                                    return game:GetService("HttpService"):JSONDecode(vu3966)
                                end)
                                if v3967 then
                                    getgenv().swap = v3968
                                    vu3040:MakeNotification({
                                        Name = "Auto-Load",
                                        Content = "Auto-loaded configuration: " .. vu3961,
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                    local v3969, v3970, v3971 = pairs(getgenv().swap)
                                    local v3972 = vu3916
                                    while true do
                                        local v3973
                                        v3971, v3973 = v3969(v3970, v3971)
                                        if v3971 == nil then
                                            break
                                        end
                                        v3972(v3971, v3973)
                                    end
                                end
                            end
                        end
                        v3929()
                    end)
                end)()
                vu3057:AddSection({
                    Name = "Weapon Color"
                })
                vu3057:AddLabel("need to wait for next duel or reset character to update!")
                vu3057:AddColorpicker({
                    Name = "Weapon Color",
                    Default = Color3.fromRGB(255, 0, 0),
                    Save = true,
                    Flag = "weaponcolor",
                    Callback = function(p3974)
                        getgenv().weaponcolor = p3974
                    end
                })
                vu3057:AddButton({
                    Name = "Apply Weapon Color",
                    Callback = function()
                        if getgenv().weaponcolor then
                            vu3808(getgenv().weaponcolor)
                        else
                            vu3040:MakeNotification({
                                Name = "venoxware!",
                                Content = "No Weapon Color Selected?",
                                Image = "rbxassetid://4483345998",
                                Time = 5
                            })
                        end
                    end
                })
                vu3057:AddToggle({
                    Name = "Auto Load Color",
                    Default = false,
                    Save = true,
                    Flag = "AutoLoadColorConfigToggle",
                    Callback = function(p3975)
                        getgenv().WeaponConfigColorLoad = p3975
                    end
                })
                vu3057:AddSection({
                    Name = "Weapon Transparency"
                })
                vu3057:AddSlider({
                    Name = "Weapon Transparency",
                    Min = 0,
                    Max = 1,
                    Default = 0,
                    Color = Color3.fromRGB(119, 122, 255),
                    Increment = 0.1,
                    ValueName = "%",
                    Save = true,
                    Flag = "weapontrans",
                    Callback = function(p3976)
                        getgenv().weaponTransparency = p3976
                    end
                })
                vu3057:AddButton({
                    Name = "Apply Weapon Transparency",
                    Callback = function()
                        if getgenv().weaponTransparency then
                            vu3812(getgenv().weaponTransparency)
                        end
                    end
                })
                vu3057:AddSection({
                    Name = "Weapon Material"
                })
                vu3057:AddDropdown({
                    Name = "Select Weapon Material",
                    Default = "Plastic",
                    Options = {
                        "Plastic",
                        "Asphalt",
                        "Basalt",
                        "Brick",
                        "Cardboard",
                        "Carpet",
                        "Ceramic Tiles",
                        "Clay Roof Tiles",
                        "Cobblestone",
                        "Concrete",
                        "Corroded Metal",
                        "Cracked Lava",
                        "Diamond Plate",
                        "Fabric",
                        "Foil",
                        "Force Field",
                        "Glacier",
                        "Glass",
                        "Granite",
                        "Grass",
                        "Ground",
                        "Ice",
                        "Leafy Grass",
                        "Leather",
                        "Limestone",
                        "Marble",
                        "Metal",
                        "Mud",
                        "Neon",
                        "Pavement",
                        "Pebble",
                        "Plaster",
                        "Plastic",
                        "Rock",
                        "Roof Shingles",
                        "Rubber",
                        "Salt",
                        "Sand",
                        "Sandstone",
                        "Slate",
                        "Smooth Plastic",
                        "Snow",
                        "Wood",
                        "Wood Planks"
                    },
                    Save = true,
                    Flag = "weaponmaterial",
                    Callback = function(p3977)
                        getgenv().weaponMaterial = Enum.Material[p3977]
                    end
                })
                vu3057:AddButton({
                    Name = "Set Weapon Material!",
                    Callback = function()
                        if getgenv().weaponMaterial then
                            vu3804(getgenv().weaponMaterial)
                        else
                            vu3040:MakeNotification({
                                Name = "venoxware",
                                Content = "No Weapon Material Selected?",
                                Image = "rbxassetid://4483345998",
                                Time = 5
                            })
                        end
                    end
                })
                function loadUATAB()
                    local v3978 = next
                    local v3979 = {
                        "hookfunction",
                        "hookmetamethod",
                        "getnamecallmethod",
                        "require"
                    }
                    local v3980 = nil
                    local vu3981 = true
                    while true do
                        local v3982
                        v3980, v3982 = v3978(v3979, v3980)
                        if v3980 == nil then
                            break
                        end
                        if not getgenv()[v3982] then
                            vu3981 = false
                            break
                        end
                    end
                    if vu3981 and not pcall(function()
                        require(game:GetService("Players").LocalPlayer.PlayerScripts.Modules.UserInterface.Equipment)
                    end) then
                        vu3981 = false
                    end
                    local vu3983 = false
                    local function vu4104()
                        if not vu3983 and vu3981 then
                            vu3983 = true
                            task.spawn(function()
                                local v4102, v4103 = pcall(function()
                                    if not LPH_NO_VIRTUALIZE then
                                        function LPH_NO_VIRTUALIZE(p3984)
                                            return p3984
                                        end
                                    end
                                    repeat
                                        task.wait()
                                    until game:IsLoaded()
                                    repeat
                                        task.wait()
                                    until game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character
                                    repeat
                                        task.wait()
                                    until not game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("LoadingScreen")
                                    local v3985 = game:GetService("Players")
                                    local vu3986 = game:GetService("HttpService")
                                    local vu3987 = game:GetService("ReplicatedStorage")
                                    local v3988 = v3985.LocalPlayer
                                    local v3989 = v3988.PlayerScripts
                                    local v3990 = v3989.Modules
                                    local v3991 = vu3987.Modules
                                    local function v3995(p3992)
                                        local v3993, v3994 = pcall(require, p3992)
                                        if v3993 then
                                            return v3994
                                        end
                                        warn("Failed to require ", p3992)
                                        return nil
                                    end
                                    if hookfunction and (hookmetamethod and getnamecallmethod) then
                                        local vu3996 = v3995(v3990.UserInterface.Equipment)
                                        local vu3997 = v3995(v3989.Controllers.PlayerDataController)
                                        local vu3998 = v3995(v3991.CosmeticLibrary)
                                        local v3999 = v3995(v3991.Utility)
                                        local v4000 = v3995(v3990.ClientReplicatedClasses.ClientFighter.ClientItem)
                                        local v4001 = v3995(v3990.ClientReplicatedClasses.ClientPlayerData)
                                        local vu4002 = v3995(v3991.AnimationLibrary.Parent.ItemLibrary)
                                        local vu4003 = {}
                                        repeat
                                            task.wait()
                                        until vu3996.Customize
                                        local vu4004 = {}
                                        if not isfolder("venoxware") then
                                            makefolder("venoxware")
                                        end
                                        if not isfolder("venoxware/rivals") then
                                            makefolder("venoxware/rivals")
                                        end
                                        local vu4005 = "venoxware/rivals/cosmetic_loadouts.json"
                                        local function vu4006()
                                        end
                                        local function vu4011(p4007, p4008)
                                            local v4009 = vu4002.ViewModels[p4007]
                                            local v4010 = vu4002.ViewModels[p4008]
                                            if not (v4009 and (v4010 and (v4009.Animations and v4010.Animations))) then
                                                return false
                                            end
                                            vu4006("Starting animation swap from", p4008, "to", p4007)
                                            if not vu4003[p4007] then
                                                vu4003[p4007] = {
                                                    Animations = v4009.Animations,
                                                    Info = v4009
                                                }
                                            end
                                            v4009.Animations = v4010.Animations
                                            vu4006(("Swapped animation table for %s with %s"):format(p4007, p4008))
                                            return true
                                        end
                                        local function vu4015(p4012)
                                            local v4013 = vu4003[p4012]
                                            local v4014 = v4013 and vu4002.ViewModels[p4012]
                                            if not v4014 then
                                                return false
                                            end
                                            v4014.Animations = v4013.Animations
                                            vu4006("Restored animations for:", p4012)
                                            return true
                                        end
                                        local function vu4022(p4016)
                                            if vu33(p4016) ~= "table" then
                                                return p4016
                                            end
                                            local v4017, v4018, v4019 = pairs(p4016)
                                            local v4020 = {}
                                            while true do
                                                local v4021
                                                v4019, v4021 = v4017(v4018, v4019)
                                                if v4019 == nil then
                                                    break
                                                end
                                                if vu33(v4021) == "table" then
                                                    v4021 = vu4022(v4021) or v4021
                                                end
                                                v4020[v4019] = v4021
                                            end
                                            return v4020
                                        end
                                        local vu4023 = false
                                        local function vu4036()
                                            if not vu4023 then
                                                vu4023 = true
                                                task.delay(0.5, function()
                                                    vu4023 = false
                                                    local v4024, v4025, v4026 = pairs(vu4004)
                                                    local v4027 = {}
                                                    while true do
                                                        local v4028
                                                        v4026, v4028 = v4024(v4025, v4026)
                                                        if v4026 == nil then
                                                            break
                                                        end
                                                        local v4029 = ((not v4028.Wrap or v4028.Wrap.Name == "None") and (not v4028.Skin or v4028.Skin.Name == "None") and true or false) and v4028.Charm
                                                        if v4029 then
                                                            v4029 = v4028.Charm.Name ~= "None"
                                                        end
                                                        if v4029 then
                                                            local v4030 = {}
                                                            local v4031
                                                            if v4028.Wrap then
                                                                v4031 = v4028.Wrap.Inverted or false
                                                            else
                                                                v4031 = false
                                                            end
                                                            v4030.inverted = v4031
                                                            local v4032
                                                            if v4028.Wrap and v4028.Wrap.Name ~= "None" then
                                                                v4032 = v4028.Wrap.Name or nil
                                                            else
                                                                v4032 = nil
                                                            end
                                                            v4030.wrap = v4032
                                                            local v4033
                                                            if v4028.Skin and v4028.Skin.Name ~= "None" then
                                                                v4033 = v4028.Skin.Name or nil
                                                            else
                                                                v4033 = nil
                                                            end
                                                            v4030.skin = v4033
                                                            local v4034
                                                            if v4028.Charm then
                                                                v4034 = v4028.Charm.Name ~= "None" and v4028.Charm.Name or nil
                                                            else
                                                                v4034 = nil
                                                            end
                                                            v4030.charm = v4034
                                                            v4027[v4026] = v4030
                                                        end
                                                    end
                                                    local v4035 = vu3986
                                                    writefile(vu4005, v4035:JSONEncode(v4027))
                                                end)
                                            end
                                        end
                                        local function v4043()
                                            if isfile(vu4005) then
                                                local v4037, v4038 = pcall(function()
                                                    return vu3986:JSONDecode(readfile(vu4005))
                                                end)
                                                if v4037 then
                                                    local v4039, v4040, v4041 = pairs(v4038)
                                                    while true do
                                                        local v4042
                                                        v4041, v4042 = v4039(v4040, v4041)
                                                        if v4041 == nil then
                                                            break
                                                        end
                                                        vu4004[v4041] = {
                                                            Wrap = v4042.wrap and ({
                                                                Name = v4042.wrap,
                                                                Type = "Wrap",
                                                                Equipped = true,
                                                                IsUniversal = true,
                                                                Inverted = v4042.inverted
                                                            } or nil) or nil,
                                                            Skin = v4042.skin and ({
                                                                Name = v4042.skin,
                                                                Type = "Skin",
                                                                Equipped = true,
                                                                IsUniversal = true
                                                            } or nil) or nil,
                                                            Charm = v4042.charm and ({
                                                                Name = v4042.charm,
                                                                Type = "Charm",
                                                                Equipped = true,
                                                                IsUniversal = true
                                                            } or nil) or nil
                                                        }
                                                        if v4042.skin then
                                                            vu4011(v4041, v4042.skin)
                                                        end
                                                    end
                                                    task.defer(function()
                                                        if vu3996.Customize and vu3996.Customize.ViewedCosmetics then
                                                            vu3996.Customize.ViewedCosmetics:Fire()
                                                        end
                                                        if vu3996.Scene and vu3996.Scene.PreviewWeaponDataChanged then
                                                            vu3996.Scene.PreviewWeaponDataChanged:Fire()
                                                        end
                                                        vu3997.CurrentData:Replicate("WeaponInventory")
                                                    end)
                                                end
                                            else
                                                return
                                            end
                                        end
                                        local vu4044 = nil
                                        local function vu4051(p4045)
                                            if vu4044 then
                                                return vu4044
                                            end
                                            local v4046, v4047, v4048 = pairs(vu3998.Cosmetics)
                                            local v4049 = p4045 or {}
                                            while true do
                                                local v4050
                                                v4048, v4050 = v4046(v4047, v4048)
                                                if v4048 == nil then
                                                    break
                                                end
                                                v4049[v4048] = {
                                                    IsUniversal = true,
                                                    Name = v4048
                                                }
                                            end
                                            vu4044 = v4049
                                            return v4049
                                        end
                                        local function vu4060(p4052)
                                            if not p4052 then
                                                return {}
                                            end
                                            for v4053 = 1, # p4052 do
                                                local v4054 = p4052[v4053]
                                                local v4055 = vu4004[v4054.Name]
                                                if v4055 then
                                                    local v4056, v4057, v4058 = pairs(v4055)
                                                    while true do
                                                        local v4059
                                                        v4058, v4059 = v4056(v4057, v4058)
                                                        if v4058 == nil then
                                                            break
                                                        end
                                                        if v4059 then
                                                            v4054[v4058] = v4059
                                                        end
                                                    end
                                                end
                                            end
                                            return p4052
                                        end
                                        local function v4070(p4061, p4062)
                                            local v4063 = getrawmetatable(p4061)
                                            if v4063 and (v4063.__index and v4063.__index.Get) then
                                                local vu4064 = v4063.__index.Get
                                                setreadonly(v4063, false)
                                                v4063.__index.Get = newcclosure(LPH_NO_VIRTUALIZE(function(p4065, p4066, ...)
                                                    local v4067 = vu4064(p4065, p4066, ...)
                                                    if p4066 == "CosmeticInventory" then
                                                        return vu4051(v4067)
                                                    end
                                                    if p4066 == "WeaponInventory" then
                                                        return vu4060(v4067)
                                                    end
                                                    if p4066 == "Wrap" then
                                                        local v4068 = vu4004[p4065.Name]
                                                        if v4068 and (v4068.Wrap and v4068.Wrap.Name ~= "None") then
                                                            return {
                                                                Name = v4068.Wrap.Name
                                                            }
                                                        end
                                                    elseif p4066 == "Charm" then
                                                        local v4069 = vu4004[p4065.Name]
                                                        if v4069 and (v4069.Charm and v4069.Charm.Name ~= "None") then
                                                            return {
                                                                Name = v4069.Charm.Name
                                                            }
                                                        end
                                                    end
                                                    return v4067
                                                end))
                                                setreadonly(v4063, true)
                                            else
                                                warn(("No Get on %s"):format(p4062))
                                            end
                                        end
                                        v4070(v4001, "ClientData")
                                        v4070(vu3997.CurrentData, "CurrentData")
                                        local v4071 = v3995(v3990.ClientReplicatedClasses.ClientFighter.ClientItem.ClientViewModel)
                                        local vu4072 = v4071._Setup
                                        function v4071._Setup(p4073, ...)
                                            if p4073 and p4073.ClientItem then
                                                local v4074 = p4073.ClientItem.Name
                                                local v4075 = vu4004[v4074]
                                                if v4075 and (v4075.Skin and v4075.Skin.Name ~= "None") then
                                                    local v4076 = v4075.Skin.Name
                                                    local v4077 = vu4002.ViewModels[v4076]
                                                    if v4077 then
                                                        if not vu4003[v4074] then
                                                            vu4003[v4074] = {
                                                                Info = p4073.Info
                                                            }
                                                        end
                                                        p4073.Info = v4077
                                                        p4073.ClientItem.Name = v4076
                                                    end
                                                end
                                            end
                                            return vu4072(p4073, ...)
                                        end
                                        local vu4078 = v3999.LookThrough
                                        function v3999.LookThrough(p4079, p4080, p4081)
                                            local v4082 = vu4004[p4081]
                                            if v4082 and (v4082.Skin and v4082.Skin.Name ~= "None") then
                                                vu4006("Found equipped skin for", p4081, ":", v4082.Skin.Name)
                                                p4081 = v4082.Skin.Name
                                            end
                                            return vu4078(p4079, p4080, p4081)
                                        end
                                        getgenv().UnlockAllData = {
                                            equippedCosmetics = vu4004,
                                            LocalPlayer = v3988
                                        }
                                        hookfunction(v4000._CreateViewModel, LPH_NO_VIRTUALIZE(function(p4083, p4084)
                                            local v4085 = getgenv().UnlockAllData
                                            local v4086 = v4085.equippedCosmetics[p4083.Name]
                                            local v4087 = v4086 and v4086.Skin
                                            if v4087 then
                                                if v4086.Skin.Name == "None" then
                                                    v4087 = false
                                                else
                                                    v4087 = v4086.Skin.Name
                                                end
                                            end
                                            local v4088 = v4085.LocalPlayer.PlayerScripts.Modules:WaitForChild("ViewModels")
                                            local v4089 = require(v4085.LocalPlayer.PlayerScripts.Modules.ClientReplicatedClasses.ClientFighter.ClientItem.ClientViewModel)
                                            local v4090 = v4087 and v4088:FindFirstChild(v4087, true)
                                            if v4090 then
                                                return require(v4090).new(p4084, p4083)
                                            else
                                                local v4091 = v4088:FindFirstChild(p4084[p4083:ToEnum("Data")][p4083:ToEnum("Name")], true)
                                                if v4091 then
                                                    return require(v4091).new(p4084, p4083)
                                                else
                                                    return v4089.new(p4084, p4083)
                                                end
                                            end
                                        end))
                                        local vu4092 = 0
                                        local vu4093 = 0.1
                                        local vu4094 = nil
                                        vu4094 = hookmetamethod(game, "__namecall", LPH_NO_VIRTUALIZE(function(p4095, ...)
                                            local v4096 = getnamecallmethod()
                                            if p4095 ~= vu3987.Remotes.Data.EquipCosmetic or v4096 ~= "FireServer" then
                                                return vu4094(p4095, ...)
                                            end
                                            local v4097, v4098, v4099, v4100 = ...
                                            if v4098 == "Skin" then
                                                if v4099 == "None" then
                                                    vu4015(v4097)
                                                else
                                                    vu4011(v4097, v4099)
                                                end
                                            end
                                            vu4004[v4097] = vu4004[v4097] or {}
                                            vu4004[v4097][v4098] = {
                                                Name = v4099,
                                                Type = v4098,
                                                Equipped = true,
                                                IsUniversal = true,
                                                Inverted = v4100 and v4100.IsInverted or false
                                            }
                                            getgenv().UnlockAllData.equippedCosmetics = vu4004
                                            local v4101 = tick()
                                            if vu4093 < v4101 - vu4092 then
                                                vu4092 = v4101
                                                if vu3996.Customize and vu3996.Customize.ViewedCosmetics then
                                                    vu3996.Customize.ViewedCosmetics:Fire()
                                                end
                                                if vu3996.Scene and vu3996.Scene.PreviewWeaponDataChanged then
                                                    vu3996.Scene.PreviewWeaponDataChanged:Fire()
                                                end
                                                task.defer(function()
                                                    vu3997.CurrentData:Replicate("WeaponInventory")
                                                    task.wait(0.05)
                                                    if vu3996.Scene and vu3996.Scene.PreviewWeaponDataChanged then
                                                        vu3996.Scene.PreviewWeaponDataChanged:Fire()
                                                    end
                                                end)
                                            end
                                            vu4036()
                                        end))
                                        v4043()
                                        getgenv().UnlockAllData.equippedCosmetics = vu4004
                                        vu4006("rivals unlock all made by vivid.01 (optimized)")
                                    else
                                        v3988:Kick("Your executor does not support required functions for unlock all!")
                                    end
                                end)
                                if not v4102 then
                                    notifyVXWARE("unlock all didn\'t load")
                                    warn("UA ERROR:", v4103)
                                end
                            end)
                        end
                    end
                    vu3058:AddSection({
                        Name = "Unlock All"
                    })
                    vu3058:AddLabel("UA Support: " .. (vu3981 and "\226\156\133 Supported" or "\226\157\140 Not Supported"))
                    vu3058:AddLabel("level 7+ executors (bunni, swift, Wave, Zenith, Velocity, etc.)")
                    vu3058:AddToggle({
                        Name = "Load Unlock All",
                        Default = false,
                        Save = true,
                        Flag = "loadUA_toggle",
                        Callback = function(p4105)
                            if p4105 then
                                if vu3981 and not vu3983 then
                                    vu4104()
                                elseif vu3981 then
                                    if vu3983 then
                                        notifyVXWARE("Unlock All is already loaded!")
                                    else
                                        notifyVXWARE("Unlock All failed to load, check console for error")
                                        print(vu3983)
                                        print(vu3981)
                                        print(vu4104)
                                    end
                                else
                                    notifyVXWARE("Unlock All is not supported on your executor!")
                                end
                            end
                            if not p4105 and vu3983 then
                                notifyVXWARE("Unlock All is already loaded!")
                            end
                        end
                    })
                end
                loadUATAB();
                (function()
                    pcall(function()
                        local vu4106 = loadstring(game:HttpGet("https://raw.githubusercontent.com/venoxcc/universalscripts/refs/heads/main/rivals/misc/bullet", true))()
                        local v4107 = vu4106
                        vu4106.Initialize(v4107)
                        local vu4108 = "venoxware"
                        local vu4109 = vu4108 .. "/custom_tracers.json"
                        local function vu4110()
                            if not isfolder(vu4108) then
                                makefolder(vu4108)
                            end
                        end
                        local function v4118()
                            vu4110()
                            local vu4111 = vu3022(vu4109)
                            if vu4111 then
                                local v4112, v4113 = pcall(function()
                                    return vu2903:JSONDecode(vu4111)
                                end)
                                if v4112 and vu33(v4113) == "table" then
                                    local v4114, v4115, v4116 = pairs(v4113)
                                    while true do
                                        local v4117
                                        v4116, v4117 = v4114(v4115, v4116)
                                        if v4116 == nil then
                                            break
                                        end
                                        vu4106:AddTracerType(v4116, v4117)
                                    end
                                    return v4113
                                end
                            end
                            return {}
                        end
                        local function vu4127()
                            vu4110()
                            local v4119 = vu4106:GetAvailableTracerTypes()
                            local v4120, v4121, v4122 = ipairs(v4119)
                            local vu4123 = {}
                            while true do
                                local v4124
                                v4122, v4124 = v4120(v4121, v4122)
                                if v4122 == nil then
                                    break
                                end
                                if v4124 ~= "Lightning Bolt" and (v4124 ~= "Lightning Bolt2" and (v4124 ~= "Laser" and (v4124 ~= "Red Laser" and v4124 ~= "DNA"))) then
                                    vu4123[v4124] = vu4106.TracerTypes[v4124]
                                end
                            end
                            local v4126, _ = pcall(function()
                                local v4125 = vu2903:JSONEncode(vu4123)
                                writefile(vu4109, v4125)
                                return true
                            end)
                            return v4126
                        end
                        v4118()
                        local v4128 = vu3059:AddSection({
                            Name = "Basic Settings"
                        })
                        local v4129 = v4128.AddToggle
                        local v4130 = {
                            Name = "Enable Bullet Tracers"
                        }
                        local v4131 = vu4106
                        v4130.Default = vu4106.IsEnabled(v4131)
                        v4130.Save = true
                        v4130.Flag = "enableTracers"
                        function v4130.Callback(p4132)
                            if p4132 then
                                vu4106:Enable()
                            else
                                vu4106:Disable()
                            end
                        end
                        v4129(v4128, v4130)
                        local v4133 = v4128.AddColorpicker
                        local v4134 = {
                            Name = "Tracer Color"
                        }
                        local v4135 = vu4106
                        v4134.Default = vu4106.GetColor(v4135)
                        v4134.Save = true
                        v4134.Flag = "tracerColor"
                        function v4134.Callback(p4136)
                            vu4106:SetColor(p4136)
                        end
                        v4133(v4128, v4134)
                        local v4137 = vu4106
                        local v4138 = vu4106.GetAvailableTracerTypes(v4137)
                        local v4139 = v4128.AddDropdown
                        local v4140 = {
                            Name = "Tracer Style"
                        }
                        local v4141 = vu4106
                        v4140.Default = vu4106.GetTracerType(v4141)
                        v4140.Options = v4138
                        v4140.Save = true
                        v4140.Flag = "tracerType"
                        function v4140.Callback(p4142)
                            vu4106:SetTracerType(p4142)
                        end
                        local vu4143 = v4139(v4128, v4140)
                        local v4144 = v4128.AddSlider
                        local v4145 = {
                            Name = "Tracer Thickness",
                            Min = 0.5,
                            Max = 5
                        }
                        local v4146 = vu4106
                        v4145.Default = vu4106.GetThickness(v4146)
                        v4145.Color = Color3.fromRGB(255, 255, 255)
                        v4145.Increment = 0.1
                        v4145.Save = true
                        v4145.Flag = "tracerThickness"
                        function v4145.Callback(p4147)
                            vu4106:SetThickness(p4147)
                        end
                        v4144(v4128, v4145)
                        local v4148 = v4128.AddSlider
                        local v4149 = {
                            Name = "Tracer Lifetime (seconds)",
                            Min = 1,
                            Max = 10
                        }
                        local v4150 = vu4106
                        v4149.Default = vu4106.GetLifetime(v4150)
                        v4149.Color = Color3.fromRGB(255, 255, 255)
                        v4149.Increment = 0.5
                        v4149.Save = true
                        v4149.Flag = "tracerLifetime"
                        function v4149.Callback(p4151)
                            vu4106:SetLifetime(p4151)
                        end
                        v4148(v4128, v4149)
                        local v4152 = v4128.AddSlider
                        local v4153 = {
                            Name = "Fade Delay (seconds)",
                            Min = 0,
                            Max = 3
                        }
                        local v4154 = vu4106
                        v4153.Default = vu4106.GetFadeDelay(v4154)
                        v4153.Color = Color3.fromRGB(255, 255, 255)
                        v4153.Increment = 0.1
                        v4153.Save = true
                        v4153.Flag = "fadingDelay"
                        function v4153.Callback(p4155)
                            vu4106:SetFadeDelay(p4155)
                        end
                        v4152(v4128, v4153)
                        local v4156 = vu3059:AddSection({
                            Name = "Performance Settings"
                        })
                        local v4157 = v4156.AddSlider
                        local v4158 = {
                            Name = "Maximum Tracers",
                            Min = 10,
                            Max = 200
                        }
                        local v4159 = vu4106
                        v4158.Default = vu4106.GetMaxTracers(v4159)
                        v4158.Color = Color3.fromRGB(255, 255, 255)
                        v4158.Increment = 5
                        v4158.Save = true
                        v4158.Flag = "maxTracers"
                        function v4158.Callback(p4160)
                            vu4106:SetMaxTracers(p4160)
                        end
                        v4157(v4156, v4158)
                        local v4161 = v4156.AddSlider
                        local v4162 = {
                            Name = "Rate Limit (seconds)",
                            Min = 0.01,
                            Max = 0.2
                        }
                        local v4163 = vu4106
                        v4162.Default = vu4106.GetRateLimit(v4163)
                        v4162.Color = Color3.fromRGB(255, 255, 255)
                        v4162.Increment = 0.01
                        v4162.Save = true
                        v4162.Flag = "rateLimit"
                        function v4162.Callback(p4164)
                            vu4106:SetRateLimit(p4164)
                        end
                        v4161(v4156, v4162)
                        v4156:AddButton({
                            Name = "Clear All Tracers",
                            Callback = function()
                                vu4106:ClearTracers()
                            end
                        })
                        local v4165 = vu3059:AddSection({
                            Name = "Custom Tracers"
                        })
                        local function vu4166()
                            vu4143:Refresh(vu4106:GetAvailableTracerTypes(), true)
                        end
                        local vu4167 = ""
                        v4165:AddTextbox({
                            Name = "Custom Tracer Name",
                            Default = "",
                            TextDisappear = false,
                            Callback = function(_)
                            end
                        })
                        local vu4168 = ""
                        v4165:AddTextbox({
                            Name = "Custom Tracer Asset ID",
                            Default = "rbxassetid://",
                            TextDisappear = false,
                            Callback = function(p4169)
                                vu4168 = p4169
                            end
                        })
                        v4165:AddButton({
                            Name = "Add Custom Tracer",
                            Callback = function()
                                if vu4167 == "" or vu4168 == "" then
                                    vu3040:MakeNotification({
                                        Name = "Error",
                                        Content = "Please enter both a name and asset ID for the custom tracer",
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                else
                                    vu4106:AddTracerType(vu4167, vu4168)
                                    vu4127()
                                    vu3040:MakeNotification({
                                        Name = "Custom Tracer Added",
                                        Content = "Added tracer: " .. vu4167,
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                    vu4166()
                                end
                            end
                        })
                        v4165:AddDropdown({
                            Name = "Remove Custom Tracer",
                            Default = "",
                            Options = v4138,
                            Save = false,
                            Flag = "removeTracerType",
                            Callback = function(p4170)
                                if p4170 ~= "" then
                                    vu4106:RemoveTracerType(p4170)
                                    vu4127()
                                    vu3040:MakeNotification({
                                        Name = "Custom Tracer Removed",
                                        Content = "Removed tracer: " .. p4170,
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                    vu4166()
                                end
                            end
                        })
                        local v4171 = vu3059:AddSection({
                            Name = "Maintenance"
                        })
                        v4171:AddButton({
                            Name = "Dispose Bullet Tracer",
                            Callback = function()
                                vu4106:Dispose()
                                vu3040:MakeNotification({
                                    Name = "Cleanup Complete",
                                    Content = "Bullet Tracer module has been disposed",
                                    Image = "rbxassetid://4483345998",
                                    Time = 5
                                })
                            end
                        })
                        v4171:AddButton({
                            Name = "Save Configuration",
                            Callback = function()
                                vu4127()
                                vu3040:MakeNotification({
                                    Name = "Configuration Saved",
                                    Content = "Your settings have been saved",
                                    Image = "rbxassetid://4483345998",
                                    Time = 5
                                })
                            end
                        })
                        venoxPrint("bullet tracer tab loaded!")
                    end)
                end)()
                v3061:AddSection({
                    Name = "Teleport"
                })
                v3061:AddDropdown({
                    Name = "Select Teleport",
                    Default = "1v1",
                    Options = {
                        "1v1",
                        "2v2",
                        "3v3",
                        "5v5",
                        "4v4",
                        "2v2v2",
                        "1v1v1"
                    },
                    Save = true,
                    Flag = "TeleportSelectDropdown",
                    Callback = function(p4172)
                        if p4172 == "1v1" then
                            getgenv().TeleportPosition = CFrame.new(- 104.455841, - 682.161377, 1196.62671, - 0.259254485, - 4.75122484e-8, 0.965809047, - 3.96180546e-8, 1, 3.85594738e-8, - 0.965809047, - 2.82667596e-8, - 0.259254485)
                        elseif p4172 == "2v2" then
                            getgenv().TeleportPosition = CFrame.new(- 103.724228, - 681.979431, 1226.97498, 0.0256309137, 1.22303012e-8, 0.999671459, - 3.2096692e-9, 1, - 1.21520269e-8, - 0.999671459, - 2.89714719e-9, 0.0256309137)
                        elseif p4172 == "3v3" then
                            getgenv().TeleportPosition = CFrame.new(- 103.522675, - 681.931396, 1256.41602, 0.0799569339, 7.96051314e-9, 0.996798337, - 2.09731059e-8, 1, - 6.30375041e-9, - 0.996798337, - 2.0401929e-8, 0.0799569339)
                        elseif p4172 == "5v5" then
                            getgenv().TeleportPosition = CFrame.new(- 135.891373, - 682.249939, 1286.05627, - 0.0406345911, 1.04318714e-8, - 0.999174058, 1.08262924e-7, 1, 6.03763839e-9, 0.999174058, - 1.07928173e-7, - 0.0406345911)
                        elseif p4172 == "4v4" then
                            getgenv().TeleportPosition = CFrame.new(- 104.15844, - 682.084473, 1286.68689, - 0.118216194, - 4.74656545e-8, 0.992987871, - 7.94370649e-8, 1, 3.83437779e-8, - 0.992987871, - 7.43471844e-8, - 0.118216194)
                        elseif p4172 == "2v2v2" then
                            getgenv().TeleportPosition = CFrame.new(- 136.314636, - 681.893494, 1321.08179, - 0.10569904, 3.38848345e-8, - 0.994398177, 9.14461324e-8, 1, 2.43555007e-8, 0.994398177, - 8.83595135e-8, - 0.10569904)
                        elseif p4172 == "1v1v1" then
                            getgenv().TeleportPosition = CFrame.new(- 103.992805, - 682.029419, 1321.69946, - 0.11254441, - 2.59767692e-8, 0.993646681, 2.36007409e-8, 1, 2.88159789e-8, - 0.993646681, 2.66938756e-8, - 0.11254441)
                        end
                    end
                })
                v3061:AddButton({
                    Name = "Teleport!",
                    Callback = function()
                        vu3733.Character.HumanoidRootPart.CFrame = getgenv().TeleportPosition
                    end
                })
                v3062:AddSection({
                    Name = "Spoof Device"
                })
                v3062:AddLabel("Spoof Devices | added it bc why not? :)")
                local function vu4174()
                    local v4173 = getgenv().spoofDevice or "MouseKeyboard"
                    game:GetService("ReplicatedStorage").Remotes.Replication.Fighter.SetControls:FireServer(v4173)
                end
                v3062:AddDropdown({
                    Name = "Select Device to Spoof",
                    Default = "PC",
                    Save = true,
                    Flag = "SpoofDeviceDropdown",
                    Options = {
                        "PC",
                        "Mobile",
                        "Console",
                        "VR"
                    },
                    Callback = function(p4175)
                        if p4175 == "PC" then
                            getgenv().spoofDevice = "MouseKeyboard"
                        elseif p4175 == "Mobile" then
                            getgenv().spoofDevice = "Touch"
                        elseif p4175 == "Console" then
                            getgenv().spoofDevice = "Gamepad"
                        elseif p4175 == "VR" then
                            getgenv().spoofDevice = "VR"
                        end
                        vu4174()
                    end
                })
                v3062:AddToggle({
                    Name = "Spoof Device! (server sided)",
                    Default = true,
                    Save = true,
                    Flag = "SpoofDeviceToggle",
                    Callback = function(_)
                        vu4174()
                    end
                })
                v3062:AddButton({
                    Name = "Spoof Name",
                    Callback = function()
                        getgenv().name = "vxwareEnjoyer"
                        local vu4176 = game:GetService("Players").LocalPlayer
                        local v4177 = next
                        local v4178, v4179 = game:GetDescendants()
                        while true do
                            local vu4180
                            v4179, vu4180 = v4177(v4178, v4179)
                            if v4179 == nil then
                                break
                            end
                            if vu4180.ClassName == "TextLabel" then
                                if string.find(vu4180.Text, vu4176.Name) then
                                    vu4180.Text = vu4180.Text:gsub(vu4176.Name, name)
                                end
                                vu4180:GetPropertyChangedSignal("Text"):Connect(function()
                                    vu4180.Text = vu4180.Text:gsub(vu4176.Name, name)
                                end)
                            end
                        end
                        game.DescendantAdded:Connect(function(pu4181)
                            if pu4181.ClassName == "TextLabel" then
                                local v4182 = string.find(pu4181.Text, vu4176.Name)
                                pu4181:GetPropertyChangedSignal("Text"):Connect(function()
                                    pu4181.Text = pu4181.Text:gsub(vu4176.Name, name)
                                end)
                                if v4182 then
                                    pu4181.Text = pu4181.Text:gsub(vu4176.Name, name)
                                end
                            end
                        end)
                    end
                })
                local vu4183 = false
                local vu4184 = false
                function spoofStreak(p4185)
                    local v4186 = game:GetService("Players").LocalPlayer
                    if v4186 and v4186.Character then
                        local v4187 = v4186.Character:WaitForChild("HumanoidRootPart"):WaitForChild("Nametag")
                        local v4188 = v4187 and v4187:WaitForChild("Frame")
                        if v4188 then
                            local v4189 = v4188:WaitForChild("Streak")
                            v4189.Visible = true
                            v4189.Value.Text = p4185
                        end
                    end
                    v4186.leaderstats["Win Streak"].Value = p4185
                end
                function spoofLevel(p4190)
                    local v4191 = game:GetService("Players").LocalPlayer
                    if v4191 and v4191.Character then
                        local v4192 = v4191.Character:WaitForChild("HumanoidRootPart"):WaitForChild("Nametag")
                        local v4193 = v4192 and v4192:WaitForChild("Frame")
                        if v4193 then
                            v4193:WaitForChild("Player"):WaitForChild("Level"):WaitForChild("Title").Text = p4190
                        end
                    end
                    v4191.leaderstats.Level.Value = p4190
                end
                v3062:AddSection({
                    Name = "Spoof Streak"
                })
                v3062:AddTextbox({
                    Name = "Streak Amount",
                    Default = "enter your streak spoof amount",
                    TextDisappear = false,
                    Callback = function(p4194)
                        local v4195 = vu32(p4194)
                        if vu33(v4195) == "number" then
                            getgenv().streakAmount = v4195
                        end
                    end
                })
                v3062:AddToggle({
                    Name = "Spoof Streak! (clientsided)",
                    Default = false,
                    Callback = function(p4196)
                        vu4183 = p4196
                        while vu4183 do
                            spoofStreak(getgenv().streakAmount)
                            wait(1)
                        end
                    end
                })
                v3062:AddSection({
                    Name = "Spoof Level"
                })
                v3062:AddTextbox({
                    Name = "Level Amount",
                    Default = "enter your level spoof amount",
                    TextDisappear = false,
                    Callback = function(p4197)
                        local v4198 = vu32(p4197)
                        if vu33(v4198) == "number" then
                            getgenv().levelAmount = v4198
                        end
                    end
                })
                v3062:AddToggle({
                    Name = "Spoof Level! (clientsided)",
                    Default = false,
                    Callback = function(p4199)
                        vu4184 = p4199
                        while vu4184 do
                            spoofLevel(getgenv().levelAmount)
                            wait(1)
                        end
                    end
                })
                function spinBot()
                    vu3064:AddSection({
                        Name = "Spin Bot"
                    })
                    local vu4200 = false
                    local vu4201 = 20
                    vu3064:AddToggle({
                        Name = "Spinbot",
                        Default = false,
                        Save = true,
                        Flag = "SpinbotToggle",
                        Callback = function(p4202)
                            local v4203 = game:GetService("Players")
                            game:GetService("Workspace")
                            local v4204 = v4203.LocalPlayer
                            local v4205 = v4204.Character:FindFirstChild("HumanoidRootPart")
                            vu4200 = p4202
                            if p4202 then
                                local v4206, v4207, v4208 = pairs(v4205:GetChildren())
                                while true do
                                    local v4209
                                    v4208, v4209 = v4206(v4207, v4208)
                                    if v4208 == nil then
                                        break
                                    end
                                    if v4209.Name == "Spinning" then
                                        v4209:Destroy()
                                    end
                                end
                                v4204.Character.Humanoid.AutoRotate = false
                                local v4210 = Instance.new("BodyAngularVelocity")
                                v4210.Name = "Spinning"
                                v4210.Parent = v4205
                                v4210.MaxTorque = Vector3.new(0, math.huge, 0)
                                v4210.AngularVelocity = Vector3.new(0, vu4201, 0)
                            else
                                local v4211, v4212, v4213 = pairs(v4205:GetChildren())
                                while true do
                                    local v4214
                                    v4213, v4214 = v4211(v4212, v4213)
                                    if v4213 == nil then
                                        break
                                    end
                                    if v4214.Name == "Spinning" then
                                        v4214:Destroy()
                                    end
                                end
                                v4204.Character.Humanoid.AutoRotate = true
                            end
                        end
                    })
                    vu3064:AddSlider({
                        Name = "Spin Speed",
                        Default = 20,
                        Color = Color3.fromRGB(255, 255, 255),
                        Min = 0,
                        Max = 1000,
                        Increment = 1,
                        Save = true,
                        ValueName = "speed",
                        Flag = "AutoVoteSlider",
                        Callback = function(p4215)
                            local v4216 = game:GetService("Players")
                            game:GetService("Workspace")
                            local v4217 = v4216.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            vu4201 = p4215
                            if vu4200 then
                                local v4218, v4219, v4220 = pairs(v4217:GetChildren())
                                while true do
                                    local v4221
                                    v4220, v4221 = v4218(v4219, v4220)
                                    if v4220 == nil then
                                        break
                                    end
                                    if v4221.Name == "Spinning" then
                                        v4221:Destroy()
                                    end
                                end
                                local v4222 = Instance.new("BodyAngularVelocity")
                                v4222.Name = "Spinning"
                                v4222.Parent = v4217
                                v4222.MaxTorque = Vector3.new(0, math.huge, 0)
                                v4222.AngularVelocity = Vector3.new(0, p4215, 0)
                            end
                        end
                    })
                end
                pcall(spinBot)
                function mapVoter()
                    vu3064:AddSection({
                        Name = "Auto Map Vote"
                    })
                    vu3064:AddToggle({
                        Name = "Auto Vote",
                        Default = false,
                        Save = true,
                        Flag = "AutoVotetoggle",
                        Callback = function(p4223)
                            autovote = p4223
                        end
                    })
                    vu3064:AddDropdown({
                        Name = "Auto Vote Map",
                        Options = {
                            "Arena",
                            "Docks",
                            "Backrooms",
                            "Crossroads",
                            "Construction",
                            "Splash",
                            "Onyx",
                            "Bridge",
                            "Station",
                            "Big Splash",
                            "Big Graveyard",
                            "Big Crossroads",
                            "Big Backrooms",
                            "Big Arena",
                            "Battleground",
                            "Shooting Range"
                        },
                        Default = "Arena",
                        Save = true,
                        Flag = "AutoVoteDropdown",
                        Callback = function(p4224)
                            local v4225 = {
                                p4224
                            }
                            while autovote do
                                task.wait(10)
                                game:GetService("ReplicatedStorage").Remotes.Duels.VoteMap:FireServer(vu19(v4225))
                            end
                        end
                    })
                end
                pcall(mapVoter)
                local v4226 = vu3064
                vu3064.AddSection(v4226, {
                    Name = "rndm stuff"
                })
                local v4227 = vu3064
                vu3064.AddButton(v4227, {
                    Name = "FPS Boost / Potato Mode (extreme lol) ",
                    Callback = function()
                        vu3040:MakeNotification({
                            Name = "venoxware",
                            Content = "no idea if this one is good",
                            Image = "rbxassetid://4483345998",
                            Time = 5
                        })
                        local v4228 = {
                            Players = {
                                ["Ignore Me"] = true,
                                ["Ignore Others"] = true
                            },
                            Meshes = {
                                Destroy = false,
                                LowDetail = true
                            },
                            Images = {
                                Invisible = true,
                                LowDetail = true,
                                Destroy = true
                            },
                            Other = {
                                ["No Particles"] = true,
                                ["No Camera Effects"] = true,
                                ["No Explosions"] = true,
                                ["No Clothes"] = true,
                                ["Low Water Graphics"] = true,
                                ["No Shadows"] = true,
                                ["Low Rendering"] = true,
                                ["Low Quality Parts"] = true
                            }
                        }
                        _G.Settings = v4228
                        loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
                    end
                })
                vu3063:AddLabel("That Stuff here could take up some FPS!")
                function setupSkybox()
                    vu3063:AddSection({
                        Name = "Sky Boxes"
                    })
                    local v4229 = game:GetService("Lighting")
                    local vu4230 = v4229:FindFirstChild("Sky") or Instance.new("Sky", v4229)
                    local vu4231 = "https://raw.githubusercontent.com/venoxcc/universalscripts/refs/heads/main/rivals/misc/skyboxes"
                    local vu4232 = loadstring(game:HttpGet(vu4231))()
                    local vu4233 = "Default"
                    local function vu4236(p4234)
                        if vu4232[p4234] then
                            local v4235 = vu4232[p4234]
                            vu4230.SkyboxBk = v4235.SkyboxBk
                            vu4230.SkyboxDn = v4235.SkyboxDn
                            vu4230.SkyboxFt = v4235.SkyboxFt
                            vu4230.SkyboxLf = v4235.SkyboxLf
                            vu4230.SkyboxRt = v4235.SkyboxRt
                            vu4230.SkyboxUp = v4235.SkyboxUp
                        end
                    end
                    local function v4238()
                        while true do
                            repeat
                                task.wait(5)
                                local v4237 = loadstring(game:HttpGet(vu4231))()
                            until v4237 and v4237 ~= vu4232
                            vu4232 = v4237
                            vu4236(vu4233)
                        end
                    end
                    vu3063:AddDropdown({
                        Name = "Skybox",
                        Options = {
                            "Default",
                            "Neptune",
                            "Among Us",
                            "Nebula",
                            "Vaporwave",
                            "Clouds",
                            "Twilight",
                            "DaBaby",
                            "Minecraft",
                            "Chill",
                            "Redshift",
                            "Blue Stars",
                            "Blue Aurora"
                        },
                        Multi = false,
                        Save = true,
                        Flag = "SkyboxDropdown",
                        Default = "Default",
                        Callback = function(p4239)
                            vu4233 = p4239
                            vu4236(vu4233)
                        end
                    })
                    coroutine.wrap(v4238)()
                end
                setupSkybox()
                local vu4240 = game:GetService("Lighting")
                local vu4241 = game:GetService("Workspace")
                getgenv().NightModeEnabled = false
                getgenv().XrayEnabled = false
                getgenv().DarkTexturesEnabled = false
                getgenv().CustomColorEnabled = false
                getgenv().RainbowWorldEnabled = false
                getgenv().ReflectiveTexturesEnabled = false
                getgenv().CartoonOutlineEnabled = false
                getgenv().NeonWorldEnabled = false
                getgenv().SelectedColor = Color3.fromRGB(255, 0, 0)
                local vu4242 = {}
                local vu4243 = {}
                local function vu4244()
                    if getgenv().NightModeEnabled then
                        vu4240:SetMinutesAfterMidnight(0)
                        vu4240.Ambient = Color3.fromRGB(10, 10, 10)
                        vu4240.OutdoorAmbient = Color3.fromRGB(5, 5, 5)
                        vu4240.Brightness = 1
                        vu4240.FogColor = Color3.fromRGB(0, 0, 0)
                        vu4240.FogStart = 0
                        vu4240.FogEnd = 500
                    else
                        vu4240:SetMinutesAfterMidnight(600)
                        vu4240.Ambient = Color3.fromRGB(200, 200, 200)
                        vu4240.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
                        vu4240.Brightness = 2
                        vu4240.FogColor = Color3.fromRGB(135, 206, 235)
                        vu4240.FogStart = 50
                        vu4240.FogEnd = 1000
                    end
                end
                getgenv().WorldMaxDistance = 500
                local function vu4252()
                    local v4245 = vu4241:FindFirstChild("Lobby")
                    if v4245 then
                        local v4246 = getgenv().XrayEnabled and 0.5 or 0
                        local v4247 = (vu3733.Character or vu3733.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").Position
                        local v4248, v4249, v4250 = ipairs(v4245:GetDescendants())
                        while true do
                            local v4251
                            v4250, v4251 = v4248(v4249, v4250)
                            if v4250 == nil then
                                break
                            end
                            if v4251:IsA("BasePart") and (not v4251:IsA("Terrain") and (v4251.Position - v4247).Magnitude <= getgenv().WorldMaxDistance) then
                                if getgenv().XrayEnabled then
                                    if not vu4242[v4251] then
                                        vu4242[v4251] = v4251.Transparency
                                    end
                                    v4251.Transparency = v4246
                                elseif vu4242[v4251] then
                                    v4251.Transparency = vu4242[v4251]
                                    vu4242[v4251] = nil
                                end
                            end
                        end
                    end
                end
                local function vu4263()
                    if not vu4243.DarkTextures then
                        vu4243.DarkTextures = true
                        spawn(function()
                            while getgenv().DarkTexturesEnabled do
                                local vu4253 = Color3.fromRGB(50, 50, 50)
                                local function v4256(p4254)
                                    if p4254:IsA("BasePart") then
                                        local v4255 = p4254.Color
                                        p4254.Color = vu4253:Lerp(v4255, (v4255.R + v4255.G + v4255.B) / 3 * 0.5)
                                    end
                                end
                                local v4257 = (vu3733.Character or vu3733.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").Position
                                local v4258 = vu4241
                                local v4259, v4260, v4261 = ipairs(v4258:GetDescendants())
                                while true do
                                    local v4262
                                    v4261, v4262 = v4259(v4260, v4261)
                                    if v4261 == nil then
                                        break
                                    end
                                    if v4262:IsA("BasePart") and (v4262.Position - v4257).Magnitude <= getgenv().WorldMaxDistance then
                                        v4256(v4262)
                                    end
                                end
                                wait(10)
                            end
                            vu4243.DarkTextures = nil
                        end)
                    end
                end
                local function vu4270()
                    if getgenv().CustomColorEnabled then
                        local v4264 = (vu3733.Character or vu3733.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").Position
                        local v4265 = vu4241
                        local v4266, v4267, v4268 = ipairs(v4265:GetDescendants())
                        while true do
                            local v4269
                            v4268, v4269 = v4266(v4267, v4268)
                            if v4268 == nil then
                                break
                            end
                            if v4269:IsA("BasePart") and (v4269.Position - v4264).Magnitude <= getgenv().WorldMaxDistance then
                                v4269.Color = getgenv().SelectedColor
                            end
                        end
                    end
                end
                local function vu4277()
                    if getgenv().ReflectiveTexturesEnabled then
                        local _ = (vu3733.Character or vu3733.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").Position
                        local v4271 = vu4241
                        local v4272, v4273, v4274 = ipairs(v4271:GetDescendants())
                        local v4275 = 0.3
                        while true do
                            local v4276
                            v4274, v4276 = v4272(v4273, v4274)
                            if v4274 == nil then
                                break
                            end
                            if v4276:IsA("BasePart") then
                                v4276.Material = Enum.Material.SmoothPlastic
                                v4276.Reflectance = v4275
                            end
                        end
                    end
                end
                local v4278 = vu3063:AddSection({
                    Name = "World Visuals"
                })
                v4278:AddToggle({
                    Name = "Night Mode",
                    Default = false,
                    Save = true,
                    Flag = "NightModeToggle",
                    Callback = function(p4279)
                        getgenv().NightModeEnabled = p4279
                        vu4244()
                    end
                })
                v4278:AddToggle({
                    Name = "Xray",
                    Default = false,
                    Save = true,
                    Flag = "XrayToggle",
                    Callback = function(p4280)
                        getgenv().XrayEnabled = p4280
                        vu4252()
                    end
                })
                v4278:AddToggle({
                    Name = "Dark Textures",
                    Default = false,
                    Save = true,
                    Flag = "DarkTextureToggle",
                    Callback = function(p4281)
                        getgenv().DarkTexturesEnabled = p4281
                        if getgenv().DarkTexturesEnabled then
                            vu4263()
                        else
                            vu4243.DarkTextures = nil
                        end
                    end
                })
                local v4282 = vu3063:AddSection({
                    Name = "Custom Texture"
                })
                v4282:AddToggle({
                    Name = "Apply Custom Texture",
                    Default = false,
                    Save = true,
                    Flag = "ApplyCustomTextureToggle",
                    Callback = function(p4283)
                        getgenv().CustomColorEnabled = p4283
                        vu4270()
                    end
                })
                v4282:AddColorpicker({
                    Name = "Texture Color",
                    Save = true,
                    Flag = "TextureColorPicker",
                    Default = Color3.fromRGB(255, 0, 0),
                    Callback = function(p4284)
                        getgenv().SelectedColor = p4284
                        vu4270()
                    end
                })
                vu3063:AddSection({
                    Name = "World Config"
                })
                vu3063:AddSlider({
                    Name = "Max Apply Distance (to minimize fps loss)",
                    Min = 0,
                    Max = 3500,
                    Default = 500,
                    Color = Color3.fromRGB(255, 255, 255),
                    Increment = 50,
                    ValueName = "studs",
                    Callback = function(p4285)
                        getgenv().WorldMaxDistance = p4285
                    end
                })
                vu3063:AddSection({
                    Name = "Special Effects"
                }):AddToggle({
                    Name = "Reflective Textures",
                    Default = false,
                    Save = true,
                    Flag = "ReflectiveTexturesToggle",
                    Callback = function(p4286)
                        getgenv().ReflectiveTexturesEnabled = p4286
                        vu4277()
                    end
                })
                local vu4287 = "https://github.com/venoxcc/universalscripts/raw/refs/heads/main/pe8cPiJ.webm"
                local v4288 = "venoxware"
                local v4289 = v4288 .. "/fat_man_yapping.webm"
                local function v4291(p4290)
                    return isfile(p4290)
                end
                if not (function(p4292)
                    return isfile(p4292)
                end)(v4288) then
                    makefolder(v4288)
                end
                if v4291(v4289) then
                    venoxPrint("File already exists.")
                else
                    local v4293, v4294 = pcall(function()
                        return game:HttpGet(vu4287)
                    end)
                    local v4295 = v4294
                    if v4293 then
                        writefile(v4289, v4295)
                        venoxPrint("File downloaded and saved successfully.")
                    else
                        venoxPrint("Failed to download the file.")
                    end
                end
                local v4296 = vu3064
                vu3064.AddSection(v4296, {
                    Name = "Staff Detection"
                })
                local v4297 = vu3064
                vu3064.AddParagraph(v4297, "Staff Detection (Beta)", "Notifies you about Staffs etc. that join the server or are in the Server! ")
                local vu4298 = loadstring(game:HttpGet("https://raw.githubusercontent.com/venoxcc/universalscripts/main/warnUI"))()
                local vu4299 = 3461453
                local vu4300 = game:GetService("Players").LocalPlayer
                getgenv().VenoxStaffDetect = false
                local vu4301 = {}
                local function vu4307(p4302, p4303, p4304)
                    local v4305 = p4304 and "joined the server" or "is in the server"
                    local v4306 = ({
                        [255] = "Owner (Builder)",
                        [254] = "Admin (Scripter)",
                        [250] = "Admin (Contributor)",
                        [245] = "Moderator (Moderator)",
                        [240] = "Staff (Tester)",
                        [100] = "Staff (Community Staff)",
                        [55] = "Trusted User (Super Fan)",
                        [2] = "Trusted User (Mega Fan)"
                    })[p4303]
                    if v4306 then
                        vu4298:warnVenox(string.format("%s %s: %s", v4306:match("^(%w+)"), v4305, p4302.Name), 5)
                        vu4301[p4302] = true
                    end
                end
                local function vu4312(pu4308, p4309)
                    if pu4308 ~= vu4300 and not vu4301[pu4308] then
                        if not pu4308.Character then
                            pu4308.CharacterAdded:Wait()
                        end
                        local v4310, v4311 = pcall(function()
                            return pu4308:GetRankInGroup(vu4299)
                        end)
                        if v4310 and getgenv().VenoxStaffDetect then
                            vu4307(pu4308, v4311, p4309)
                        elseif not v4310 then
                            warn("Failed to get rank for player: " .. pu4308.Name .. ". Error: " .. v4311)
                        end
                    end
                end
                local function vu4317()
                    local v4313, v4314, v4315 = pairs(game:GetService("Players"):GetPlayers())
                    while true do
                        local v4316
                        v4315, v4316 = v4313(v4314, v4315)
                        if v4315 == nil then
                            break
                        end
                        if getgenv().VenoxStaffDetect then
                            vu4312(v4316, false)
                        end
                    end
                end
                local function vu4319(p4318)
                    if getgenv().VenoxStaffDetect then
                        vu4312(p4318, true)
                    end
                end
                local function vu4321(p4320)
                    vu4301[p4320] = nil
                end
                local vu4322 = nil
                local vu4323 = nil
                local function vu4324()
                    vu4301 = {}
                    vu4317()
                    vu4322 = game:GetService("Players").PlayerAdded:Connect(vu4319)
                    vu4323 = game:GetService("Players").PlayerRemoving:Connect(vu4321)
                end
                local function vu4325()
                    if vu4322 then
                        vu4322:Disconnect()
                        vu4322 = nil
                    end
                    if vu4323 then
                        vu4323:Disconnect()
                        vu4323 = nil
                    end
                    vu4301 = {}
                end
                local v4326 = vu3064
                local v4328 = {
                    Name = "Staff Detection / Notify",
                    Default = false,
                    Save = true,
                    Flag = "VenoxStaffDetect",
                    Callback = function(p4327)
                        getgenv().VenoxStaffDetect = p4327
                        if p4327 then
                            vu4324()
                        else
                            vu4325()
                        end
                    end
                }
                vu3064.AddToggle(v4326, v4328)
                wait(5)
                local v4329 = vu3064
                vu3064.AddSection(v4329, {
                    Name = "Auto Queue"
                })
                local v4330 = vu3064
                vu3064.AddParagraph(v4330, "Auto Queue", "Auto Queues the selected Duel when turned on after game ends!")
                local vu4334, vu4335 = (function(p4331, p4332, p4333)
                    return Vector3.new(math.min(p4331.X - p4332.X / 2, p4333.X), math.min(p4331.Y - p4332.Y / 2, p4333.Y), math.min(p4331.Z - p4332.Z / 2, p4333.Z)), Vector3.new(math.max(p4331.X + p4332.X / 2, p4333.X), math.max(p4331.Y + p4332.Y / 2, p4333.Y), math.max(p4331.Z + p4332.Z / 2, p4333.Z))
                end)(Vector3.new(- 120, - 678.25, 1138.94995), Vector3.new(70, 100, 70), (Vector3.new(- 117.83525085449219, - 682.286376953125, 1338.8934326171875)))
                function isPlayerInArea()
                    local v4336 = game:GetService("Players").LocalPlayer
                    if v4336 then
                        v4336 = v4336.Character
                    end
                    if v4336 then
                        v4336 = v4336:FindFirstChild("HumanoidRootPart")
                    end
                    if not v4336 then
                        return false
                    end
                    local v4337 = v4336.Position
                    return v4337.X >= vu4334.X and (v4337.X <= vu4335.X and (v4337.Y >= vu4334.Y and (v4337.Y <= vu4335.Y and (v4337.Z >= vu4334.Z and v4337.Z <= vu4335.Z))))
                end
                local v4338 = vu3064
                vu3064.AddDropdown(v4338, {
                    Name = "Queue Duel Selection",
                    Default = "1v1",
                    Options = {
                        "1v1",
                        "2v2",
                        "3v3",
                        "4v4",
                        "5v5"
                    },
                    Callback = function(p4339)
                        getgenv().QueueModeSelect = p4339
                    end
                })
                local vu4340 = game:GetService("ReplicatedStorage").Remotes.Matchmaking.JoinQueue
                local vu4341 = false
                local v4342 = vu3064
                local v4345 = {
                    Name = "Auto Queue",
                    Default = false,
                    Save = true,
                    Flag = "VenoxAutoqueueToggle",
                    Callback = function(p4343)
                        vu4341 = p4343
                        local vu4344 = getgenv().QueueModeSelect
                        coroutine.wrap(function()
                            while vu4341 do
                                if not isPlayerInArea() and (vu4344 and (getgenv().QueueModeSelect == "1v1" or (getgenv().QueueModeSelect == "2v2" or (getgenv().QueueModeSelect == "3v3" or (getgenv().QueueModeSelect == "4v4" or getgenv().QueueModeSelect == "5v5"))))) then
                                    vu4340:InvokeServer(getgenv().QueueModeSelect)
                                end
                                wait(12)
                            end
                        end)()
                    end
                }
                vu3064.AddToggle(v4342, v4345)
                local v4346 = vu3064
                vu3064.AddSection(v4346, {
                    Name = "Additional"
                })
                local v4347 = vu3064
                vu3064.AddButton(v4347, {
                    Name = "Reset Config! (will kick u!)",
                    Callback = function()
                        writefile("venoxware/17625359962.txt", "")
                        game:GetService("Players").LocalPlayer:Kick("VENOXWARE: Successfully Reseted Config")
                    end
                })
                local v4348 = vu3064
                vu3064.AddButton(v4348, {
                    Name = "Delete Config! (will kick u!)",
                    Callback = function()
                        local v4349 = "venoxware/17625359962.txt"
                        if isfile(v4349) then
                            delfile(v4349)
                            game:GetService("Players").LocalPlayer:Kick("VENOXWARE: Successfully Deleted Config")
                        else
                            venoxPrint("Config file does not exist.")
                        end
                    end
                })
                v3071:AddSection({
                    Name = "Credits"
                })
                v3071:AddLabel("made by @venox.w")
                local vu4350 = "X4Rhrzemyq"
                v3071:AddButton({
                    Name = "join discord!",
                    Callback = function()
                        local v4351 = setclipboard or toclipboard or (set_clipboard or Clipboard)
                        if v4351 then
                            v4351("discord.gg/" .. vu4350)
                        end
                        vu3040:MakeNotification({
                            Name = "venoxware",
                            Content = "copied link!",
                            Image = "rbxassetid://4483345998",
                            Time = 5
                        })
                        local v4352 = game:GetService("HttpService")
                        request2 = http_request or (request or HttpPost)
                        if request2 then
                            request2({
                                Url = "http://127.0.0.1:6463/rpc?v=1",
                                Method = "POST",
                                Headers = {
                                    ["Content-Type"] = "application/json",
                                    Origin = "https://discord.com"
                                },
                                Body = v4352:JSONEncode({
                                    cmd = "INVITE_BROWSER",
                                    nonce = v4352:GenerateGUID(false),
                                    args = {
                                        code = vu4350
                                    }
                                })
                            })
                        end
                    end
                })
                v3071:AddParagraph("Silently Load ", "To load the Script without UI or Notify or Loading Text popping up join discord server and look into common fixed channel!")
                v3071:AddSection({
                    Name = "Changelog"
                })
                v3071:AddParagraph("4/17/2025: VERY BIG Update!", "+ new mouse aimbot\n+ new mobile aimbot (untested, report issues!)\n+ bullet tracers\n+ better skin changer system\n+ improved esp, way more!\n")
                v3071:AddParagraph("1/10/2025: New Update!", "+ Fixed Anti Katana and now should work fine!\n+ Added Spoof Tab\n+ Spoof Device (serversided)\n+ Spoof Level & Streak (client sided)")
                v3071:AddParagraph("9/11/2024: New Update!", "+ Added Anti Katana for Triggerbot, Aimbot, Mobile Aimbot, Silent Aim")
                v3071:AddParagraph("8/22/2024: New Update!", "+ Slightly Improved Aimbot and Mobile Aimbot. \n+ Added Smart Aim Priotity (mix of multiple prioritys) \n (i) more coming very soon!")
                v3071:AddParagraph("8/19/2024: Update", "+ Significantly enhanced triggerbot with adjustable CPS click delay and distance settings. \n+ Added no spread and no recoil features to the improved executor section. \n+ New World Tab features include Dark Textures, Custom Texture Color, Xray Mode, Cartoon Outlines, Reflective Textures, Night Mode (very dark), Rainbow World, and Neon World (use with caution). \n+ Weapon Tab now supports Rainbow Weapons and Arms with live updates for color, transparency, and material changes without re-equip or waiting. \n+ Fixed issues with Drawing Library affecting FOV and ESP, and resolved auto queue module turning off unexpectedly.")
                v3071:AddParagraph("8/16/2024: Update", "+ Added Aim Body Parts with some rotation modes with delay slider \n+ Added Silentaim hitchance\n")
                v3071:AddParagraph("8/14/2024: Update", "+ Added Back ESP \n+ Auto Weapon Load Config Added\n+ Fixed weird cubes at weapons")
                v3071:AddParagraph("8/11/2024: Update", "+ Added Staff Detection (beta) \n+ Added Auto Queue Module \n+ ")
                v3071:AddParagraph("8/7/2024: Update", "+ Fixed Solara Support bc of Drawing missing \n+ Added Silent aim and Rapid fire (untested) for mobile and better executors \n+ Added Cham esp as replacement\n \n\n")
                v3071:AddParagraph("8/3/2024: Update", "+ Slightly Improved Silent Aim \n+ Added Skin/Weapon Changer \n+ Added Aimbot Hold Keybind!\n+ Added the Silent Aim to the Aimbot Config to change priority etc. \n\n")
                v3071:AddParagraph("8/2/2024: Update", "+ Added No Flash Exploit\n+ Added Triggerbot \n+ Added ESP Teamcheck!\n+ Added ESP Max Distance back!\n\nI Will prob add a hold bind option to the aimbot soon.")
                v3071:AddParagraph("7/30/2024: Update", "+ Added Silent Aim (only single shots)\n+ Added Auto kill (not very good on solara)\n+ Added different cframe walkspeed!\n+ !")
                v3071:AddParagraph("7/27/2024: Update", "+ Added Aimbot Team Check\n+ Added different ESP\n+ Added Semi Autofarm Team Check!\n+ !")
                v3071:AddParagraph("7/24/2024: Update", "+ Added Farm Tab with Teleport behind Feature\n+ Added better FPS Boost\n+ Added queue on teleport so u can use matchmaking!\n+ Added Config saving!")
                v3071:AddLabel("7/24/2024: Resolved flooding errors")
                function loadWeaponConfig()
                    getgenv().weaponcolorAuto = vu3040.Flags.weaponcolor.Value
                    if getgenv().WeaponConfigLoad then
                        if getgenv().weaponcolorAuto then
                            if getgenv().WeaponConfigColorLoad then
                                local v4353, v4354 = pcall(function()
                                    vu3808(getgenv().weaponcolorAuto)
                                end)
                                if v4353 then
                                    venoxPrint("done color")
                                else
                                    vu3040:MakeNotification({
                                        Name = "venoxware",
                                        Content = "Failed to set weapon color: " .. tostring(v4354),
                                        Image = "rbxassetid://4483345998",
                                        Time = 5
                                    })
                                end
                            end
                        else
                            vu3040:MakeNotification({
                                Name = "venoxware",
                                Content = "No weapon color selected",
                                Image = "rbxassetid://4483345998",
                                Time = 5
                            })
                        end
                        if getgenv().weaponTransparency then
                            local v4355, v4356 = pcall(function()
                                vu3812(getgenv().weaponTransparency)
                            end)
                            if v4355 then
                                venoxPrint("done transparency")
                            else
                                vu3040:MakeNotification({
                                    Name = "venoxware",
                                    Content = "Failed to set weapon transparency: " .. tostring(v4356),
                                    Image = "rbxassetid://4483345998",
                                    Time = 5
                                })
                            end
                        else
                            vu3040:MakeNotification({
                                Name = "venoxware",
                                Content = "No weapon transparency selected",
                                Image = "rbxassetid://4483345998",
                                Time = 5
                            })
                        end
                        if getgenv().weaponMaterial then
                            local v4357, v4358 = pcall(function()
                                vu3804(getgenv().weaponMaterial)
                            end)
                            if v4357 then
                                venoxPrint("done material")
                            else
                                vu3040:MakeNotification({
                                    Name = "venoxware",
                                    Content = "Failed to set weapon material: " .. tostring(v4358),
                                    Image = "rbxassetid://4483345998",
                                    Time = 5
                                })
                            end
                        else
                            vu3040:MakeNotification({
                                Name = "venoxware",
                                Content = "No weapon material selected",
                                Image = "rbxassetid://4483345998",
                                Time = 5
                            })
                        end
                    end
                end
                spawn(function()
                    if getgenv().WeaponConfigLoad then
                        local v4359, v4360 = pcall(loadWeaponConfig)
                        if not v4359 then
                            vu3040:MakeNotification({
                                Name = "venoxware",
                                Content = "error loading the weapon config: " .. print(tostring(v4360)),
                                Image = "rbxassetid://4483345998",
                                Time = 5
                            })
                        end
                    end
                end)
                getgenv().VXWARE_LOADED = true
                vu3040:MakeNotification({
                    Name = "Venoxware",
                    Content = "Loaded Successfully",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
                pcall(function()
                    notifyVXWARE("Longer-lasting keys & Lifetime Access now available! Get yours today \226\128\148 link copied.", 15)
                    notifyVXWARE("got issues or suggestions? join discord!", 15);
                    (toclipboard or setclipboard)("https://venox.mysellauth.com/product/vxware-key")
                end)
                vu3040:Init()
            end)
        end
        local function v4374()
            venoxPrint("starting venoxware...")
            venoxPrint("loading components, please wait...")
            local v4362, vu4363 = pcall(function()
                return loadstring(game:HttpGet(vu1))()
            end)
            if v4362 then
                local v4364 = vu4363:MakeWindow({
                    Name = "VXWARE | dsc.gg/venoxhub",
                    HidePremium = false,
                    SaveConfig = true,
                    IntroText = "Venoxware Key System",
                    ConfigFolder = "venoxware"
                }):MakeTab({
                    Name = "Login",
                    Icon = "rbxassetid://6023426915",
                    PremiumOnly = false
                })
                v4364:AddParagraph("Welcome to VXWARE!", "1. Enter your key in the box below. \n2. If you don\'t have a key, click \'Join Discord\' to get a free one.\nOr Buy a Paid Key for longer access without having to do a keysystem!")
                v4364:AddTextbox({
                    Name = "Enter Key/License",
                    Default = "",
                    TextDisappear = true,
                    Callback = function(pu4365)
                        local v4366, v4367, v4368 = pcall(function()
                            return vu4361(pu4365, vu4363)
                        end)
                        if v4366 then
                            if not v4367 then
                                vu4363:MakeNotification({
                                    Name = "venoxware",
                                    Content = v4368,
                                    Image = "rbxassetid://4483345998",
                                    Time = 5
                                })
                            end
                        else
                            vu4363:MakeNotification({
                                Name = "venoxware",
                                Content = "An error occurred!",
                                Image = "rbxassetid://4483345998",
                                Time = 5
                            })
                        end
                    end
                })
                v4364:AddButton({
                    Name = "Join Discord for FREE KEY!",
                    Callback = function()
                        local v4369 = "X4Rhrzemyq"
                        local v4370 = setclipboard or toclipboard or (set_clipboard or Clipboard)
                        if v4370 then
                            v4370("discord.gg/" .. v4369)
                        end
                        vu4363:MakeNotification({
                            Name = "venoxware",
                            Content = "copied link!",
                            Image = "rbxassetid://4483345998",
                            Time = 5
                        })
                        local v4371 = game:GetService("HttpService")
                        request2 = http_request or request
                        if request2 then
                            request2({
                                Url = "http://127.0.0.1:6463/rpc?v=1",
                                Method = "POST",
                                Headers = {
                                    ["Content-Type"] = "application/json",
                                    Origin = "https://discord.com"
                                },
                                Body = v4371:JSONEncode({
                                    cmd = "INVITE_BROWSER",
                                    nonce = v4371:GenerateGUID(false),
                                    args = {
                                        code = v4369
                                    }
                                })
                            })
                        end
                    end
                })
                v4364:AddSection({
                    Name = "Optional!"
                })
                v4364:AddLabel("NEW LIFETIME KEYS OUT!!! get them at our official shop!")
                v4364:AddButton({
                    Name = "COPY SHOP LINK",
                    Callback = function()
                        (toclipboard or setclipboard)("https://venox.mysellauth.com/product/vxware-key")
                        vu4363:MakeNotification({
                            Name = "venoxware",
                            Content = "copied shop link!",
                            Image = "rbxassetid://4483345998",
                            Time = 5
                        })
                    end
                })
                pcall(function()
                    wait(3)
                    if isfile("venoxware/key.txt") then
                        local vu4372 = vu3022("venoxware/key.txt")
                        local _, v4373 = pcall(function()
                            return vu4361(vu4372, vu4363)
                        end)
                        if v4373 then
                            vu4363:MakeNotification({
                                Name = "venoxware",
                                Content = v4373,
                                Image = "rbxassetid://4483345998",
                                Time = 5
                            })
                        end
                    else
                        venoxPrint("Please enter your key to continue")
                    end
                end)
            else
                venoxWarn("Failed to load UI library")
            end
        end
        if v2:IsClient() then
            v4374()
            if setfpscap then
                setfpscap(999)
            end
            if settings then
                settings().Physics.PhysicsEnvironmentalThrottle = 0.6
                settings().Rendering.QualityLevel = 3
            end
        end
        return
    end
end