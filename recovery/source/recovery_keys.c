#include <linux/input.h>

#include "common.h"
#include "extendedcommands.h"
#include "recovery_ui.h"

#ifndef KEY_APP_SWITCH
#define KEY_APP_SWITCH 249
#endif

int device_handle_key(int key_code, int visible) {
    if (visible) {
        switch (key_code) {
            case KEY_CAPSLOCK:
            case KEY_DOWN:
            case KEY_VOLUMEDOWN:
            case KEY_MENU:
            case KEY_HOME: // Changed from UP to DOWN
                return HIGHLIGHT_DOWN;

            case KEY_LEFTSHIFT:
            case KEY_UP:
            case KEY_VOLUMEUP:
                return HIGHLIGHT_UP;

            case KEY_POWER:
            case KEY_LEFTBRACE:
            case KEY_ENTER:
            case BTN_MOUSE:
            case KEY_CAMERA:
            case KEY_F21:
            case KEY_SEND:
            case KEY_HOMEPAGE:
            case KEY_SEARCH:
            case KEY_APP_SWITCH: // Added
                return SELECT_ITEM;

            case KEY_END:
            case KEY_BACKSPACE:
            case KEY_BACK:
                if (!ui_root_menu) {
                    return GO_BACK;
                }
        }
    }

    return NO_ACTION;
}
