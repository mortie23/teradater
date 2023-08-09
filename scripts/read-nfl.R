read_nfl <- function(tbl_name) {
  df <- DBI::dbReadTable(td_con(), name = glue("{table_name}"))
  return(df)
}
