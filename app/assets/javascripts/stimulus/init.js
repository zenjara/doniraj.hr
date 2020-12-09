//= require stimulus.umd.js

(() => {
    if (!("stimulus" in window)) {
        window.stimulus = Stimulus.Application.start()
    }
})();