function a_inv = modular_inverse(a, m)
    % Calculates the modular inverse of a under modulo m using the Extended Euclidean Algorithm
    t = 0; newt = 1;
    r = m; newr = a;
    while newr ~= 0
        quotient = floor(r / newr);
        [t, newt] = deal(newt, t - quotient * newt);
        [r, newr] = deal(newr, r - quotient * newr);
    end
    if r > 1
        a_inv = -1; % Return -1 if inverse does not exist (a and m are not coprime)
    else
        a_inv = mod(t, m);
    end
end
