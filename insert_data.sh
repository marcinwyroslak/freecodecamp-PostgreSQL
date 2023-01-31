#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE games,teams")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS

do 
  
  if [[ $WINNER != "winner" ]]
    then
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    if [[ -z $WINNER_ID ]]
    then
      INSERT_WINNER_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WINNER_NAME == "INSERT 0 1" ]]
      then
        echo Inserted into teams,$WINNER
      fi
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi


  OPPO_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  if [[ $OPPONENT != "opponent" ]]
  then
    INSERT_OPPO_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    if [[ $INSERT_OPPO_NAME == "INSERT 0 1" ]]
      then
        echo Inserted into teams,$OPPONENT
      fi
      OPPO_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi
  fi

  if [[ YEAR != 'year' ]]
  then
    GAME_ID=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPO_ID,$WINNER_GOALS,$OPPONENT_GOALS)")
    if [[ $GAME_ID == "INSERT 0 1" ]]
    then
        echo Inserted into games, $ROUND - $WINNER_ID
    fi
  fi

done
