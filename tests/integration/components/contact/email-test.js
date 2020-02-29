import { module, test } from 'qunit';
import { setupRenderingTest } from 'ember-qunit';
import { render } from '@ember/test-helpers';
import { hbs } from 'ember-cli-htmlbars';

module('Integration | Component | contact/email', function(hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function(assert) {
    await render(hbs`<Contact::Email />`);

    assert.dom('.email').hasText('ladislavberan@seznam.cz');
    assert.dom('.email').hasAttribute('href', 'mailto:ladislavberan@seznam.cz');
  });
});
