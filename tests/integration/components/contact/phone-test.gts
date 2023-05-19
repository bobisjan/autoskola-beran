import { module, test } from 'qunit';
import { setupRenderingTest } from 'autoskola-beran/tests/helpers';
import { render } from '@ember/test-helpers';
import Phone from 'autoskola-beran/components/contact/phone';

module('Integration | Component | contact/phone', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><Phone /></template>);

    assert.dom('.phone').hasText('+420 724 237 845');
    assert.dom('.phone').hasAttribute('href', 'tel:+420724237845');
  });
});
