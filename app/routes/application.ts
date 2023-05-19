import Route from '@ember/routing/route';

export type ApplicationRouteModel = ReturnType<ApplicationRoute['model']>;

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
    const price = number.format(20000);
    const since = date.format(new Date(2023, 0, 1));

    return {
      price,
      since,
    };
  }
}
