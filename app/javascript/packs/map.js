import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
const styles = [
    {
        "featureType": "all",
        "elementType": "all",
        "stylers": [
            {
                "hue": "#ff6800"
            },
            {
                "saturation": "20"
            },
            {
                "lightness": "-8"
            },
            {
                "gamma": "1.00"
            },
            {
                "weight": "1.12"
            }
        ]
    }
];

map.addStyle({
  styles: styles,
  mapTypeId: 'map_style'
});
map.setStyle('map_style');
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

