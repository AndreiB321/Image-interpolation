function out = bilinear_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica interpolare bilineara pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: extrage canalul rosu al imaginii
    R = img(:, :, 1);
    % TODO: extrage canalul verde al imaginii
    G = img(:, :, 2);
    % TODO: extrace canalul albastru al imaginii
    B = img(:, :, 3);

    % TODO: aplică rotația pe fiecare canal al imaginii

    R_matrix = bilinear_rotate(R, rotation_angle);
    G_matrix = bilinear_rotate(G, rotation_angle);
    B_matrix = bilinear_rotate(B, rotation_angle);
    
    % TODO: reconstruiește imaginea RGB finala (hint: cat)
    out = zeros(length(R), 3 * length(R));
    out = cat(3, R_matrix, G_matrix, B_matrix);
    
    
endfunction