import type { TOC } from '@ember/component/template-only';

export interface AddressSignature {
  Element: HTMLDivElement;
}

export default <template>
  <div class="address">
    Horní Chvatliny 15, Zásmuky, 281&nbsp;44
  </div>
</template> satisfies TOC<AddressSignature>;
