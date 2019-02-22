import Typed from 'typed.js';

const createTyper = (sentences, element) => {
  const options = {
  strings: sentences,
  typeSpeed: 40
  }

  const typed = new Typed(`#${element}`, options);
}

export { createTyper }
