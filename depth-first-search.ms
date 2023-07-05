.TL
Depth-First Search Algorithm
.AU
Said Kadrioski <said@kadrioski.de>
.PP
This is a pseudo code of a Depth-First Search algorithm.
.IP
.DS L
.ft C
fn dfs(Node source, Set<Node> discovered)
{
  discovered.add(source);
  for (Node next in source.neighboors) {
    if !discovered.contains(next) {
      dfs(next, discovered);
    }
  }
  return;
}
.ft

