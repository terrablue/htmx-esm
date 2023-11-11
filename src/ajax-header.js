import htmx from "htmx-esm";

htmx.defineExtension('ajax-header', {
    onEvent: function (name, evt) {
        if (name === "htmx:configRequest") {
            evt.detail.headers['X-Requested-With'] = 'XMLHttpRequest';
        }
    }
});
