import { module, test } from 'qunit';
import { setupRenderingTest } from '#tests/helpers.js';
import { render } from '@ember/test-helpers';
import Footer from '#src/components/footer.gjs';

module('Integration | Component | footer', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><Footer /></template>);

    assert.dom('.phone').exists();
    assert.dom('.email').exists();
    assert.dom('.address').exists();
    assert.dom('.copyright').hasText('© Autoškola Beran. Design TEMPLATED.');
  });
});
