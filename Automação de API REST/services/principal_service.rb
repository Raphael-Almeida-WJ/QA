module Principal
    include HTTParty
    #url base de contato padrão
    base_uri 'http://165.227.93.41/lojinha/'
    #agora novas opcoes do meu service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
                    'Content-Type': 'application/json'
end

#sempre que eu chamar esse módulo a url padrão dele será
#seu headers serão como descrito