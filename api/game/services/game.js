'use strict';

/**
 * Read the documentation (https://strapi.io/documentation/v3.x/concepts/services.html#core-services)
 * to customize this service
 */

const axios = require('axios');

async function getGameInfo(slug){
  const jsdom = require('jsdom');
  const { JSDOM } = jsdom;
  const body = await axios.get(`https://www.gog.com/game/${slug}`);
  const dom = new JSDOM(body.data);

  const ratingElement = dom.window.document.querySelector('.age-restrictions .age-restrictions__icon use')

  const descriptionElement = dom.window.document.querySelector('.description')

  return {
    rating: ratingElement
    ? ratingElement
      .getAttribute('xlink:href')
      .replace(/_/g,"")
      .replace(/[^\w-]+/g,"")
    : "BR0",
    short_description: descriptionElement.textContent.trim().slice(0,160),
    description: descriptionElement.innerHTML
  }
}

module.exports = {
  populate: async (params) => {

    const gogApiUrl = `https://www.gog.com/games/ajax/filtered?mediaType=game&page=1&sort=popularity`;

    const { data: { products } } = await axios.get(gogApiUrl)

    console.log(products)

    console.log( await getGameInfo(products[1].slug))

  }
};
