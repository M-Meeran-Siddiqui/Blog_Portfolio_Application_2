// application.js
import Rails from "@rails/ujs";
Rails.start();

import "@hotwired/turbo-rails";
import "controllers";

// jQuery (needed by Cocoon)
import jquery from "jquery";
window.$ = jquery;
window.jQuery = jquery;
import "jquery-ui";

// Your custom JS
import "html5sortable";
import "portfolio";

// Cocoon from CDN pin
import "./cocoon";

// Reinitialize Cocoon on Turbo page load
// document.addEventListener("turbo:load", () => {
//   if (window.Cocoon) {
//     window.Cocoon.setup_add_association_links();
//   }
// });



