module Contato
    include HTTParty
    #url base de contato padrão
    base_uri 'https://api-de-tarefas.herokuapp.com/'
    #agora novas opcoes do meu service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
                    'Content-Type': 'application/json'
end

#sempre que eu chamar esse módulo a url padrão dele será
#seu headers serão como descrito