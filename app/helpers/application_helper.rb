module ApplicationHelper
    def getStatus(status)
        if (status == 'Em andamento')
            'Em andamento'
        elsif (status == 'Encerrado')
            'Encerrado' 
        else
            'Concluido' 
        end
    end
    
end