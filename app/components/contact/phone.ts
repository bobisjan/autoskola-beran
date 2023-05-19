import templateOnlyComponent from '@ember/component/template-only';

export interface PhoneSignature {
  Element: HTMLAnchorElement;
}

const Phone = templateOnlyComponent<PhoneSignature>();

export default Phone;

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    'Contact::Phone': typeof Phone;
  }
}
