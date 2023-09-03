-- we split the queue into list 1 and 2
-- in enqueueing we add element to the reverse of list 2
-- in dequeing we remove the first element of list 1 takes O(1) time
-- reverse takes O(n) time

data Queue a = NuQu [a] [a]

enqueue :: a -> Queue a -> Queue a
enqueue x (NuQu ys zs) = NuQu ys (x:zs)

dequeue :: Queue a -> (a, Queue a)
dequeue (NuQu (x:xs) ys) = (x,NuQu xs ys)
dequeue (NuQu [] ys) = dequeue (NuQu (reverse ys) [])

