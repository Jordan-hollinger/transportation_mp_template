library(yaml)

towns <- yaml::read_yaml("towns.yml")

for (t in towns) {
  quarto::quarto_render(
    input = "index.qmd",
    execute_params = t,
    output_file = paste0("TMP_", t$output_slug, ".docx")
  )
}
