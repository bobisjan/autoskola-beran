import { module, test } from 'qunit';
import { setupRenderingTest } from 'autoskola-beran/tests/helpers';
import { render } from '@ember/test-helpers';
import Email from 'autoskola-beran/components/contact/email';

module('Integration | Component | contact/email', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    await render(<template><Email /></template>);

    assert.dom('.email').hasText('ladislavberan@seznam.cz');
    assert.dom('.email').hasAttribute('href', 'mailto:ladislavberan@seznam.cz');
  });
});
