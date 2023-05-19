import templateOnlyComponent from '@ember/component/template-only';

export interface HeaderSignature {
  Element: HTMLElement;
}

const Header = templateOnlyComponent<HeaderSignature>();

export default Header;

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    Header: typeof Header;
  }
}
