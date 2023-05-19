import type { TOC } from '@ember/component/template-only';
import Phone from './contact/phone';
import Email from './contact/email';
import Address from './contact/address';

export interface FooterSignature {
  Element: HTMLElement;
}

const Footer: TOC<FooterSignature> = <template>
  <footer id="footer">
    <div class="inner">
      <h2>Kontakt</h2>
      <ul class="actions">
        <li><Phone /></li>
        <li><Email /></li>
        <li><Address /></li>
      </ul>
    </div>
    <div class="copyright">
      &copy; Autoškola Beran. Design
      <a href="https://templated.co">TEMPLATED</a>.
    </div>
  </footer>
</template>;

export default Footer;

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    Footer: typeof Footer;
  }
}
