init_schema <- function() {
  wd <- getwd()
  init_schema <- getSQL(glue("{wd}/scripts/game.sql"))
  # Create table
  # TODO: need a drop table if exists
  DBI::dbSendQuery(td_con(), init_schema)
}

load_nfl <- function(
    data_dir = "/u01/data/nfl/shared/"
    , table_name
) {
  file <- glue("{data_dir}/2014/{table_name}.csv")
  data <- read.csv(file)

  DBI::dbWriteTable(td_con(), name = glue("{table_name}"), value = data, append = TRUE)
}

load_nfl("game")
