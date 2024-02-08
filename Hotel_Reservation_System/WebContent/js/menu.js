document.addEventListener("DOMContentLoaded", function() {
    var menuSelect = document.getElementById("menu");
    var menuDetails = document.getElementById("menu-details");

    menuSelect.addEventListener("change", function() {
        var selectedMenu = menuSelect.value;
        if (selectedMenu === "menu1") {
            menuDetails.innerHTML = "<h3>Fried Rice - Chicken</h3><p>Buffet: $25 per person</p><p>Dessert: $10 per person</p>";
        } else if (selectedMenu === "menu2") {
            menuDetails.innerHTML = "<h3>Rice and Curry</h3><p>Buffet: $30 per person</p><p>Dessert: $15 per person</p>";
        } else if (selectedMenu === "menu3") {
            menuDetails.innerHTML = "<h3>Noodles/pasta with seafood</h3><p>Buffet: $35 per person</p><p>Dessert: $20 per person</p>";
        } else {
            menuDetails.innerHTML = ""; // Clear menu details
        }
    });
});
