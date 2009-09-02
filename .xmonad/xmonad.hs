import XMonad
import XMonad.Config.Gnome
import XMonad.Util.EZConfig
import qualified XMonad.StackSet as W
import qualified Data.Map as M

import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog
import XMonad.Actions.CycleWS

main = xmonad $ gnomeConfig
    `additionalKeysP`
        [ ("M-d", kill)
        , ("M-t", windows W.focusDown)
        , ("M-n", windows W.focusUp)
        , ("S-M-t", windows W.swapDown)
        , ("S-M-n", windows W.swapUp)
        , ("<F9>", spawn "xsel -o | /home/bruno/bin/pastebin") -- TODO: Show clipboard in dzen
        , ("<F10>", spawn "/home/bruno/bin/twitter `echo | dmenu -p Twitter`")
        , ("M-0", shiftTo Next EmptyWS)
        ]
    --`additionalKeys`
    --    [ ((0, xK_Print), withFocused $ \w -> spawn ("/home/bruno/bin/screenshot " ++ show w))
        --, ((modMask .|. xK_Print), spawn ("/home/bruno/bin/screenshot root"))
    --    ]
