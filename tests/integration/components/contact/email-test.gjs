import { module, test } from 'qunit';
import { setupRenderingTest } from '#tests/helpers.js';
import { render } from '@ember/test-helpers';
import Email from '#src/components/contact/email.gjs';

module('Integration | Component | contact/email', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><Email /></template>);

    assert.dom('.email').hasText('ladislavberan@seznam.cz');
    assert.dom('.email').hasAttribute('href', 'mailto:ladislavberan@seznam.cz');
  });
});
