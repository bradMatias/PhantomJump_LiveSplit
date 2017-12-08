state("PhantomJump")
{
  double loading: 0x00617EDC, 0x80, 0x44, 0x10, 0x10, 0x0;
  double igt: 0x00617EDC, 0x80, 0x44, 0x10, 0x1c, 0x0;
  double endRun: 0x00617EDC, 0x80, 0x44, 0x10, 0x28, 0x0;
  double startTimer: 0x00617EDC, 0x80, 0x44, 0x10, 0x34, 0x0;
}

isLoading
{
  return (current.loading == 0);
}

gameTime
{
  return TimeSpan.FromSeconds(current.igt);
}

//needs a small update to how this is handled in game
//split
//{
//  return (current.endRun == 0);
//}

start
{
  return (current.startTimer == 0);
}
