orgaos <- df_orgao |> 
  select(SG_ORGAO_VINCULACAO, gini_index) |> arrange(desc(gini_index)) |>
  distinct(SG_ORGAO_VINCULACAO) |> pull()


for (orgao in orgaos) {
  cat("##", orgao, "\n\n```{r warning=FALSE, echo=FALSE, message=FALSE}\n")
  cat("grafico_lorenz <- criar_grafico_lorenz(\n")
  cat("  df_orgao |> filter(SG_ORGAO_VINCULACAO == '", orgao, "')\n")
  cat(")\n")
  cat("grafico_lorenz\n")
  cat("```\n\n")
}
