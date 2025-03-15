--[[

Nome da criatura
Descrição
Atributos
    Ataque
    Defesa
    Vitalidade
    Agilidade
    Inteligência
Habilidades
    Furtividade
    Magia Arcana
    ...


----------------------------------------------
/
/ MARY SIBLEY
/ A mais poderosa das bruxas de Essex.
/
/ Atributos:
/   Ataque: ########
/   Defesa: ########
/   ...
/
----------------------------------------------
]]

-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

--- Criatura
local creatureName = "Mary Sibley"
local description = "A mais poderosa das bruxas de Essex."
local emoji = "🪄"

--- Atributos
local attackAttribute = 10
local defenseAttribute = 2
local vitalityAttribute = 4
local agilityAttribute = 7
local inteligenceAttribute = 10

--- Função que recebe um atributo e retorna uma barra de progresso em string
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then 
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

--- Habilidades
local firstHability = "Magia arcana"
local secondHability = "Glamour"

--- Cartão
print("============================================")
print("|" .. creatureName) -- .. dois pontos sequenciais concatenam strings
print("|" .. description)
print("|" .. "Emoji favorito:" .. emoji)
print("|")
print("|")
print("|" .. "Atributos:")
print("|" .. "Ataque:          " .. getProgressBar(attackAttribute))
print("|" .. "Defesa:          " .. getProgressBar(defenseAttribute))
print("|" .. "Vitalidade:      " .. getProgressBar(vitalityAttribute))
print("|" .. "Agilidade:       " .. getProgressBar(agilityAttribute))
print("|" .. "Inteligência:    " .. getProgressBar(inteligenceAttribute))
print("|")
print("|" .. "Habilidades:")
print("|" .. firstHability)
print("|" .. secondHability)
print("============================================")