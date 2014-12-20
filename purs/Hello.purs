
module Hello (main)
where

import Control.Monad.Eff

foreign import log
"""function log(s) {
    return function() {
        return window.console.log(s);
    };
}""" :: forall eff. String -> Eff eff {}

main = log "hello"
