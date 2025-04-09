import type { TOC } from '@ember/component/template-only';
import { LinkTo } from '@ember/routing';
import Phone from './contact/phone';

export interface HeaderSignature {
  Element: HTMLElement;
}

export default <template>
  <header id="header">
    <LinkTo @route="index" class="logo">
      Autoškola Beran
    </LinkTo>

    <nav class="right">
      <Phone class="button alt" />
    </nav>
  </header>
</template> satisfies TOC<HeaderSignature>;
