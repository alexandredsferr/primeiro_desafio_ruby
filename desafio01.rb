
            #Pergunta o nome e exibe mensagem de boas vindas
            puts 'Qual seu nome?'
            nome = gets.chomp
            puts "Seja Bem vindo(a) #{nome}!"
            
            #Pede para o user escolher um número 
            puts 'Esse é um game aonde você precisa advinhar o número sorteado! Será que você consegue? '
            puts 'Você precisará escolher uma jogada entre 1 a 10'
            numSorteado = rand(10) + 1 
            
            #Monitorar as tentativas que o jogador fez
            num_guesses = 0
            
            #Monitora se o jogador advinhou corretamente
            guessed_it = false
                
            until num_guesses == 10 || guessed_it  
                
                puts "Você tem até 10 tentantivas. No momento você está na #{num_guesses} tentantiva."
                
                #Faça a joagada
                puts 'Vamos lá ...'
                puts 'Digite um número : '
                numEscolhido = gets.to_i
                
                num_guesses += 1
                
                #Condicional para comparar
                if numEscolhido < numSorteado
                        puts 'Ohhh, chegou perto'
                    elsif numEscolhido > numSorteado
                        puts 'Ohhh, agora passou'
                    elsif numEscolhido == numSorteado
                        puts "Bom Trabalho #{nome}"
                        puts "Você encontrou meu número na #{num_guesses} tentativa"
                        guessed_it = true
                end
            
            end    
            
            #Se o jogador ficar sem tentivas dizer para ele qual era o número 
            unless guessed_it
                puts "Desulpe. você não conseguiu :/ O número certo era #{numSorteado}"
            end
            
