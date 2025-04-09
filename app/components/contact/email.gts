import type { TOC } from '@ember/component/template-only';

export interface EmailSignature {
  Element: HTMLAnchorElement;
}

export default <template>
  <a href="mailto:ladislavberan@seznam.cz" class="email">
    ladislavberan@seznam.cz
  </a>
</template> satisfies TOC<EmailSignature>;
