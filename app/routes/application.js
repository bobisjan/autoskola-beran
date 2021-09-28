import Route from '@ember/routing/route';

const formatter = new Intl.NumberFormat('cs-CZ', {
  style: 'currency',
  currency: 'CZK',
  minimumFractionDigits: 0,
  maximumFractionDigits: 0,
});

export default class ApplicationRoute extends Route {
  model() {
    let price = formatter.format(15000);
    let since = '1. 1. 2021';

    return {
      price,
      since,
    };
  }
}
