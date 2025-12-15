import { module, test } from 'qunit';
import { setupRenderingTest } from '#tests/helpers.js';
import { render } from '@ember/test-helpers';
import Address from '#src/components/contact/address.gjs';

module('Integration | Component | contact/address', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><Address /></template>);

    assert.dom('.address').hasText('Horní Chvatliny 15, Zásmuky, 281 44');
  });
});
