using Random

println("Bem vindo ao simulador de futebol em Júlia!")

global opcao = 1

while opcao == 1
    global opcao

    println("Digite o nome do primeiro time:")
    time_casa = readline()
    global gol_time_casa = 0

    println("Digite o nome do segundo time:")
    time_fora = readline()
    global gol_time_fora = 0

    # Lista de mensagens de gol
    mensagens_gol = ["Dribou, chutou e é gol do ", "Que gol espetacular! Uma aula de futebol do ", "Que chute bem colocado! É gol do ", "Goool, do ", "GOOOOLAÇOOO do ", "Que cavadinha, é gol do "]

    println("Começa o jogo, ", time_casa, " x ", time_fora, "!")
    for i in 1:90
        global gol_time_casa, gol_time_fora
        random = rand()
        println(i)

        if random < 0.05
            println(rand(mensagens_gol), time_casa, "!!")
            gol_time_casa = gol_time_casa + 1
            sleep(0.2)
        elseif random < 0.1
            println(rand(mensagens_gol), time_fora, "!")
            gol_time_fora = gol_time_fora + 1
            sleep(0.2)
        end

        sleep(0.1)

    end

    println("Fim do jogo!")
    println(time_casa, " ", gol_time_casa, " x ", gol_time_fora, " ", time_fora)

    while true
        println("Você quer jogar de novo? Digite 1 para sim ou 2 para sair.")
        opcao = parse(Int, readline())
        if opcao == 1
            break
        elseif opcao == 2
            break
        else
            println("Por favor, digite 1 para sim, 2 para sair.")
        end
    end
end
