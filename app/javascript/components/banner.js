import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["The best sports equipment rental website", "Welcome to SportsX"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
