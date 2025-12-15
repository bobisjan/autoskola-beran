import { module, test } from 'qunit';
import { setupRenderingTest } from 'autoskola-beran/tests/helpers';
import { render } from '@ember/test-helpers';
import Address from 'autoskola-beran/components/contact/address';

module('Integration | Component | contact/address', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><Address /></template>);

    assert.dom('.address').hasText('Horní Chvatliny 15, Zásmuky, 281 44');
  });
});
