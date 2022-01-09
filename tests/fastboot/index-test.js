import { module, test } from 'qunit';
import { setup, visit } from 'ember-cli-fastboot-testing/test-support';

module('FastBoot | index', function (hooks) {
  setup(hooks);

  test('it renders', async function (assert) {
    await visit('/');

    assert.dom('#header').exists();
    assert.dom('#footer').exists();

    assert.dom('.price').hasText('Cena platná od 1. 1. 2022 je 18 000 Kč');
  });
});
