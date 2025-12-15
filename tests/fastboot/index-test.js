import { module, test } from 'qunit';
import { visit } from '#tests/helpers/fasboot.js';

module('FastBoot | index', function () {
  test('it renders', async function (assert) {
    await visit('/');

    assert.dom('#header').exists();
    assert.dom('#footer').exists();

    assert.dom('.price').hasText('Cena platná od 1. 1. 2023 je 20 000 Kč');
  });
});
