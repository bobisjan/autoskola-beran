import { module, test } from 'qunit';
import { setupRenderingTest } from '#tests/helpers.js';
import { render } from '@ember/test-helpers';
import Header from '#src/components/header.gjs';

module('Integration | Component | header', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><Header /></template>);

    assert.dom('.logo').hasText('Autoškola Beran');
    assert.dom('.phone').exists();
  });
});
