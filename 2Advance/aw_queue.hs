-- enque and deque of length n list takes O(n) time
-- enqueueing and dequeueing of n elements takes O(n^2) time

data Queue a = Queue [a]

empty :: Queue a
empty = Queue []

isempty :: Queue [a] -> Bool
isempty (Queue []) = True
isempty (Queue _) = False

enqueue :: a -> Queue a -> Queue a
enqueue x (Queue xs) = Queue (xs ++ [x])

dequeue :: Queue a -> (a,Queue a)
dequeue (Queue (x:xs)) = (x,Queue xs)



