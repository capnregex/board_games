import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dot"
export default class extends Controller {
  static colors = [ 'white', 'black']; //, 'red', 'orange', 'yellow', 'green', 'cyan', 'blue', 'purple'];

  get colors() {
    return this.constructor.colors;
  }

  rand() {
    return Math.floor(Math.random() * this.constructor.colors.length);
  }

  rand_color() {
    return this.colors[this.rand()];
  }

  connect() {
  }

  change(event) {
    const prevColor = this.element.classList[0];
    const prev = this.colors.indexOf(prevColor);
    const next = (prev + 1) % this.colors.length;
    const nextColor = this.colors[next];
    console.log('change',prevColor,prev,next,nextColor);
    this.element.removeAttribute('class');
    this.element.classList.add(nextColor);
    event.preventDefault();
  }
}
