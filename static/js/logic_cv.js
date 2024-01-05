// Define the tile layer
const tileLayer = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
});

// Create the Leaflet map
const myMap = L.map('map').setView([37.8, -96], 5); // Set initial view
tileLayer.addTo(myMap); // Add the tile layer to the map

