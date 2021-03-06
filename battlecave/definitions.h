#ifndef MODEDEFINITIONS
#define MODEDEFINITIONS

#define SCREENWIDTH 1280
#define SCREENHEIGHT 720

#define MAXBUTTONS 5

// The different modes that the client can be in. Determines what to render and how to interpret mouse clicks / keystrokes etc...
#define STARTUP 0
#define FIND_SERVERS 1
#define OPTIONS 2
#define LOBBY 3
#define JOIN_DEFAULT 4
#define JOIN_CUSTOM 5
#define IN_GAME 6

// Which mode the keyboard is currently in (0 could be used to suspend all game-play keys, and 1 could be used to parse ONLY buttons used for playing)
#define NONE -1
#define ENTERING_TEXT 0
#define PLAYING 1

// Selections while in mode 3
#define LOBBY_ENTER_CHAT_MESSAGE 0

// Selections while in mode 5
#define ENTERING_IP 0
#define ENTERING_PORT 1
#define ENTERING_NAME 2

#define PLAYER_MESSAGE_WRITE 5

#define STRINGLENGTH 100

#define MAX_NAME_LENGTH 15
#define MAX_IP_LENGTH 15
#define MAX_PORT_LENGTH 5
#define MAX_PLAYERS 8

#define QUIT "false"
#define GO  "true"

// Codes that are sent at the begginning of tcp messages which indicate what the content is
#define PREAMBLE_CHAT '$'
#define PREAMBLE_PLAYERS '@'
#define PREAMBLE_READY '#'
#define PREAMBLE_ID '%'
#define PREAMBLE_DISCONNECT '-'
#define PREAMBLE_GAMESTART '!'

#define TEXT_COLOR_BLACK 0  //**** CHANGE WHEN ART CHANDE *************
#define TEXT_COLOR_GREEN 1
#define TEXT_COLOR_RED 2
#define TEXT_COLOR_YELLOW
#define TEXT_COLOR_WHITE

#define MAX_BULLETS 300

#endif // MODEDEFINITIONS
