//
// Created by carson on 5/20/20.
//

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "game.h"

static game * GAME = NULL;

void game_init() {
    if (GAME) {
        free(GAME);
    }
    GAME = malloc(sizeof(game));
    GAME->status = CREATED;
    game_init_player_info(&GAME->players[0]);
    game_init_player_info(&GAME->players[1]);
}

void game_init_player_info(player_info *player_info) {
    player_info->ships = 0;
    player_info->hits = 0;
    player_info->shots = 0;
}

int game_fire(game *game, int player, int x, int y) {
    
    //  If the opponents ships value is 0, they have no remaining ships, and you should set the game state to
    //  PLAYER_1_WINS or PLAYER_2_WINS depending on who won.
    int opponent = !player;
    unsigned long long shot = xy_to_bitval(x, y);
    game->status = player ? PLAYER_0_TURN : PLAYER_1_TURN;
    game->players[player].shots = game->players[player].shots ^ shot;
    if (game->players[opponent].ships & shot) {
        game->players[player].hits = game->players[player].hits ^ shot;
        game->players[opponent].ships = game->players[opponent].ships ^ shot;
        if (!game->players[opponent].ships) {
            game->status = player ? PLAYER_1_WINS : PLAYER_0_WINS;
        }
        return 1;
    }
    return 0;
}


unsigned long long int xy_to_bitval(int x, int y) {
    unsigned long long int mask = 1ull;
    mask = (x > 7 || x < 0 || y > 7|| y < 0) ? 0 :(1ull << (x + 8ull*y));
    return mask;
}

struct game * game_get_current() {
    return GAME;
}

int game_load_board(struct game *game, int player, char * spec) {
    char ships[5] = {'C', 'B', 'D', 'S', 'P'};
    int shipLength[5] = {5, 4, 3, 3, 2};
    if(spec == NULL || strlen(spec) != 15){
        return -1;
    }
    for(int i = 0; i < 15; i = i + 3) {
        char ship = spec[i];
        int col = spec[i+1] - '0';
        int row = spec[i+2] - '0';
        if(strchr(ships, toupper(ship))==NULL || *strchr(ships, toupper(ship))== '0'){
            return -1;
        }
        int length = shipLength[strchr(ships, toupper(ship)) - ships];
        *strchr(ships, toupper(ship)) = '0';
        if (ship >= 'A' && ship <= 'Z'){
            if(add_ship_horizontal(&game->players[player], col, row, length) == -1){
                game->players[player].ships = ship;
                return -1;
            }
            
        } else if (add_ship_vertical(&game->players[player], col, row, length) == -1) {
            return -1;
        }
    }
    if (player == 1) {
        game->status = PLAYER_0_TURN;
    }
    return 1;
}

int add_ship_horizontal(player_info *player, int x, int y, int length) {
    // returns 1 if the ship can be added, -1 if not
    if (length == 0){
        return 1;
    }
    if (player->ships & xy_to_bitval(x, y)) {
        player->ships = 0ull;
        return -1;
    } else {
        player->ships = player->ships | xy_to_bitval(x, y);
        add_ship_horizontal(player, x+1, y, length-1);
    }
}

int add_ship_vertical(player_info *player, int x, int y, int length) {
    if (length == 0) {
        return 1;
    }
    if (player->ships & xy_to_bitval(x, y)) {
        player->ships = 0ull;
        return -1;
    }
    else {
        player->ships = player->ships | xy_to_bitval(x,y);
        add_ship_vertical(player, x, y+1, length-1);
    }
}
