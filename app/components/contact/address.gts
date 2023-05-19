import type { TOC } from '@ember/component/template-only';

export interface AddressSignature {
  Element: HTMLDivElement;
}

const Address: TOC<AddressSignature> = <template>
  <div class="address">
    Horní Chvatliny 15, Zásmuky, 281&nbsp;44
  </div>
</template>;

export default Address;
