import { module, test } from 'qunit';
import { setupRenderingTest } from 'ember-qunit';
import { render } from '@ember/test-helpers';
import { hbs } from 'ember-cli-htmlbars';

module('Integration | Component | footer', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(hbs`<Footer />`);

    assert.dom('.phone').exists();
    assert.dom('.email').exists();
    assert.dom('.address').exists();
    assert.dom('.copyright').hasText('© Autoškola Beran. Design TEMPLATED.');
  });
});
