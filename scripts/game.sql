create table GAME (
  GAME_ID INTEGER NOT NULL
  , GAME_TYPE_ID INTEGER NOT NULL
  , WEEK INTEGER
  , HOME_TEAM_ID INTEGER
  , AWAY_TEAM_ID INTEGER
  , CONSTRAINT GAME_ID_PK PRIMARY KEY (GAME_ID)
)
;
