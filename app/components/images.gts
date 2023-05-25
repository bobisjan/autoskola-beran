import type { TOC } from '@ember/component/template-only';
import mgzs1 from '../assets/images/mg-zs-1.jpg';
import mgzs2 from '../assets/images/mg-zs-2.jpg';
import mgzs3 from '../assets/images/mg-zs-3.jpg';

export interface ImagesSignature {
  Element: HTMLElement;
}

const Images: TOC<ImagesSignature> = <template>
  <h2>MG ZS</h2>
  <div class="images">
    <img src={{mgzs1}} alt="" role="presentation" />
    <img src={{mgzs2}} alt="" role="presentation" />
    <img src={{mgzs3}} alt="" role="presentation" />
  </div>
</template>;

export default Images;

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    Images: typeof Images;
  }
}