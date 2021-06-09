function up --description 'update the database for research papers'
  rm /Users/jakejing/switchdrive/Databases/word-database/alldata/*.txt
  find /Users/jakejing/switchdrive/Databases/word-database/rawpapers/ -name "*.txt" -type f | xargs -I % cp % /Users/jakejing/switchdrive/Databases/word-database/alldata/
end
