module Enjoeat
    def prato_do_dia(dia)
        if dia == 'segunda-feira'
            'Virado a Paulista'
        elsif dia == 'terça-feira'
            'Dobradinha'
        elsif dia == 'quarta-feira'
            'Feijoada'
        end
    end
end
World Enjoeat

Dado("que hoje é {string}") do |dia|
    @hoje = dia 
end

Quando("eu pergunto qual é o prato do dia") do
    @resposta_obtida = prato_do_dia(@hoje)
end

Então("a resposta deve ser {string}") do |resposta_esperada|
    expect(@resposta_obtida).to eql resposta_esperada
end