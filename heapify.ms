.TL
Heapify Algorithm
.AU
Said Kadrioski <said@kadrioski.de>
.PP
This is a pseudo code of a Heapify algorithm.
.IP
.DS L
.ft C
// Heapify knowing child nodes are heaps.
fn heapify<Type>(Array heap, Integer idx)
{
  if (idx >= heap.size) {
    return;
  }
  Integer left  = idx * 2 + 1;
  Integer right = left + 1;
  Integer max   = idx;

  if (left < heap.size && heap[max] < heap[left]) {
    max = left;
  }
  if (right < heap.size && heap[max] < heap[left]) {
    max = right;
  }
  
  if (max != idx) {
    swap<Type>(heap, idx, max);
    heapify<Type>(heap, max);
  }
}

// Build Heap out of an arbitrary array.
fn build-heap<Type>(Array array)
{
  if (array.size < 2) {
    return;
  }
  Integer idx = (array.size - 2) // 2;
  while(0 <= idx) {
    heapify<Type>(array, idx);
    idx--;
  }
}

fn swap<Type>(Array array, Integer idx1, Integer idx2)
{
  Type temp = array[idx1];
  array[idx1] = array[idx2];
  array[idx2] = temp;
}
.ft
