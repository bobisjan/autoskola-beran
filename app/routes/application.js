import Route from '@ember/routing/route';

const locale = 'cs-CZ';

const number = new Intl.NumberFormat(locale, {
  style: 'currency',
  currency: 'CZK',
  minimumFractionDigits: 0,
  maximumFractionDigits: 0,
});

const date = new Intl.DateTimeFormat(locale);

export default class ApplicationRoute extends Route {
  model() {
    let price = number.format(20000);
    let since = date.format(new Date(2023, 0, 1));

    return {
      price,
      since,
    };
  }
}
