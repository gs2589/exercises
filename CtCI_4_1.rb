#CtCI 4.1



def has_route?(node_1, node_2)
    q= Queue.new()
    node_1.visited=true
    q.enqueue(node_1)
    
    while (!q.isEmpty?)
        r=q.dequeue
        for i in 0..r.adjacent.length
           return true if r.adjacent[i]==node_2
           if !r.adjacent[i].visited
            q.enqueu(r.adjacent[i])
            r.adjacent[i].visited=true
           end 
        end
    end
    
    return false     
end  
