RSIDRA

Descrição
RSIDRA é um pacote R desenvolvido para facilitar o acesso aos dados do SIDRA (Sistema IBGE de Recuperação Automática). O pacote permite que os usuários baixem e manipulem diretamente no R os dados de pesquisas oficiais do IBGE, como informações de Censo Demográfico, PNADC, PAM, entre outras.

O pacote RSIDRA simplifica a consulta aos dados do SIDRA, oferecendo funções intuitivas e flexíveis para que os analistas possam extrair, tratar e visualizar informações de maneira programática, sem precisar exportar dados manualmente do site do IBGE.

Instalação
Para instalar a versão mais recente do RSIDRA diretamente do GitHub, utilize devtools:

r
Copiar código
# Instale o devtools, se ainda não tiver
install.packages("devtools")

# Instale o RSIDRA diretamente do repositório do GitHub
devtools::install_github("rodrigoesborges/RSIDRA")
Exemplo de Uso
Depois de instalar e carregar o pacote, você pode começar a usar as funções do RSIDRA para consultar dados diretamente do SIDRA:

r
Copiar código
library(RSIDRA)

# Exemplo de consulta aos dados de uma tabela SIDRA específica
dados <- get_sidra(api = "/t/1612/n1/all/v/all/p/all/c11046/40311/d/v585%2013")
head(dados)

# Filtrando dados e visualizando um resumo
dados_filtrados <- subset(dados, valor > 1000)
summary(dados_filtrados)
Funções Principais
get_sidra(): Função principal para consultar dados diretamente de uma API específica do SIDRA. Permite personalizar parâmetros como período, localização e variáveis para filtrar os dados desejados.
sidra_series(): Recupera séries temporais a partir de uma API SIDRA específica, retornando dados prontos para análise de séries temporais no R.
sidra_tableinfo(): Mostra informações sobre uma tabela SIDRA específica, incluindo variáveis disponíveis e parâmetros de consulta, ajudando na configuração de consultas específicas.
Detalhes das Funções
get_sidra(api, ...): Permite consulta específica no SIDRA. O argumento api requer o caminho da API desejada, que pode ser obtido no site do IBGE.
sidra_series(): Útil para obter dados de séries temporais em tabelas específicas do SIDRA.
sidra_tableinfo(): Exibe as informações das tabelas SIDRA para orientação na escolha de variáveis e filtros adequados.
Contribuição
Contribuições são bem-vindas! Se você encontrou um problema, tem sugestões ou deseja adicionar recursos, por favor, abra uma issue ou envie um pull request.

Licença
Este pacote é distribuído sob a licença MIT. Para mais informações, consulte o arquivo LICENSE.
