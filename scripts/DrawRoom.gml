if (global.blueprint)
{
    for (i = 0; i < room_width; i += 32)
    {
        for (j = 0; j < room_height; j += 32)
        {
            var tile;
            tile = tile_layer_find(1, i, j);
            if tile_exists(tile) tile_set_background(tile, asset_get_index(background_get_name(tile_get_background(tile)) + "_blueprint"));
        }
    }
}
