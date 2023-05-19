import type { TOC } from '@ember/component/template-only';

export interface PhoneSignature {
  Element: HTMLAnchorElement;
}

const Phone: TOC<PhoneSignature> = <template>
  <a href="tel:+420724237845" class="phone" ...attributes>
    +420 724 237 845
  </a>
</template>;

export default Phone;
