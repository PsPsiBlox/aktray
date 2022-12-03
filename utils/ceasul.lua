return function(ceas, memorie)
    local c = os.clock()
    local iff = ceas - c
    ceas = c
    for i=1, #memorie do
        local v = memorie[i]
        if v.i < c - v.t then
            v.t = c
            v.c(c, iff)
        end
    end
end