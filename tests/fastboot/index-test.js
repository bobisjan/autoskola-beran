import { module, test } from 'qunit';
import { visit } from '#tests/helpers/fasboot.js';

module('FastBoot | index', function () {
  test('it renders', async function (assert) {
    await visit('/');

    assert.dom('#header').exists();
    assert.dom('#footer').exists();

    assert.dom('.price').hasText('Cena platná od 1. 10. 2026 je 25 000 Kč');
  });
});
