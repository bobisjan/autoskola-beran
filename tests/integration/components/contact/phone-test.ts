import { module, test } from 'qunit';
import { setupRenderingTest } from 'autoskola-beran/tests/helpers';
import { render } from '@ember/test-helpers';
import { hbs } from 'ember-cli-htmlbars';

module('Integration | Component | contact/phone', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(hbs`<Contact::Phone />`);

    assert.dom('.phone').hasText('+420 724 237 845');
    assert.dom('.phone').hasAttribute('href', 'tel:+420724237845');
  });
});
