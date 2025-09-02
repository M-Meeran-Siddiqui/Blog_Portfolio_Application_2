// cocoon.js
import jquery from "jquery";
window.$ = jquery;
window.jQuery = jquery;

// Rebind Cocoon events on Turbo page load
document.addEventListener("turbo:load", () => {
  if (window.Cocoon && typeof window.Cocoon.setup_add_association_links === "function") {
    window.Cocoon.setup_add_association_links();
    console.log("Cocoon initialized successfully");
  } else {
    console.warn("Cocoon not loaded or setup_add_association_links missing");
  }
});


