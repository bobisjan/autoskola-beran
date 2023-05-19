import templateOnlyComponent from '@ember/component/template-only';

export interface FooterSignature {
  Element: HTMLElement;
}

const Footer = templateOnlyComponent<FooterSignature>();

export default Footer;

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    Footer: typeof Footer;
  }
}
