import { module, test } from 'qunit';
import { setupRenderingTest } from 'autoskola-beran/tests/helpers';
import { render } from '@ember/test-helpers';
import Header from 'autoskola-beran/components/header';

module('Integration | Component | header', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><Header /></template>);

    assert.dom('.logo').hasText('Autoškola Beran');
    assert.dom('.phone').exists();
  });
});
