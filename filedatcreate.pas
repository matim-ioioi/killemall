program createfiledat;
  type
    ScoreRec = record
    Name: string[20];
    Score: integer;
    end;
  var
    i: integer;
    FileDat: file of ScoreRec;
    recs: ScoreRec;
begin
  recs.name:= ' ';
  recs.score:= 0;
  Assign(FileDat, 'C:\FPC\scores.dat');
  rewrite(FileDat);
  for i:= 1 to 10 do
  begin
    write(FileDat, recs);
  end;
  Close(FileDat);
end.
