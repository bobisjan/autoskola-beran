import type { TOC } from '@ember/component/template-only';

export interface EmailSignature {
  Element: HTMLAnchorElement;
}

const Email: TOC<EmailSignature> = <template>
  <a href="mailto:ladislavberan@seznam.cz" class="email">
    ladislavberan@seznam.cz
  </a>
</template>;

export default Email;
