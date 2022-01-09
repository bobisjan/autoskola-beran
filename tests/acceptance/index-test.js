import { module, test } from 'qunit';
import { visit, currentURL } from '@ember/test-helpers';
import { setupApplicationTest } from 'ember-qunit';

module('Acceptance | index', function(hooks) {
  setupApplicationTest(hooks);

  test('visiting /index', async function(assert) {
    await visit('/');

    assert.equal(currentURL(), '/');

    assert.dom('#header').exists();
    assert.dom('#footer').exists();

    assert.dom('.price').hasText('Cena platná od 1. 1. 2022 je 18 000 Kč');
  });
});
