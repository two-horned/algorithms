.TL
Dijkstra Algorithm
.AU
Said Kadrioski <said@kadrioski.de>
.PP
This is a pseudo code of a Dijkstra algorithm.
.IP
.DS L
.ft C
fn dijkstra(Netgraph graph, Node source)
{
  for (Node destination in graph) {
    destination.distance = infinity;
    destination.previous = null;
  }

  source.distance = 0;

  // Initialise Queue list
  Set<Nodes> queue = graph.nodes;

  while (queue not empty) {
    // The Node we are updating our routing table with
    Node update = smallest_distance(queue);
    
    // If we find a node that's not connected to the source
    // we break out of the loop because there's no further use
    if (update.distance = infinity) {
      break;
    }
    queue.remove(update);

    // Here we update the neighbors' distances
    for (Node neighbor in update.neighbor_Nodes) {
      if (neighbor.distance > update.distance + update.costs(neighbor)) {
        neighbor.previous = update;
        neighbor.distance = update.distance + update.costs(neighbor);
      }
    }
  }
  // Set of all nodes with their names, distance number and previous node
  Set<(Node,number,Node)> e = node_distance_prev_set(graph);
  return e;
}
.ft

