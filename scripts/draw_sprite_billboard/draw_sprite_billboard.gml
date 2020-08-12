function draw_sprite_billboard(sprite, subimg, x, y, z) {
    shader_set(shd_billboard);
    matrix_set(matrix_world, matrix_build(x, y, z, 0, 0, 0, 1, 1, 1));
    draw_sprite(sprite, subimg, 0, 0);
    matrix_set(matrix_world, matrix_build_identity());
    shader_reset();
}