#' Conexão do R com a SIDRA - IBGE
#'
#' Esta função a fonte de uma das tabelas da SIDRA.
#' @param tabela Número da tabela.
#' @keywords IBGE SIDRA dados
#' @export
#' @examples
#' fonte_PAM <- SIDRA_fonte(1612)

SIDRA_fonte <- function(tabela) {
  requireNamespace("rvest")

  resposta <- descritores(tabela)

  ids_fonte <- grep(pattern = "Fonte", x = resposta$ids, value = TRUE)
  lapply(ids_fonte, pega_texto, pagina = resposta$conteudo) %>% paste(collapse = " ")
}




