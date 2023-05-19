import templateOnlyComponent from '@ember/component/template-only';

export interface AddressSignature {
  Element: HTMLDivElement;
}

const Address = templateOnlyComponent<AddressSignature>();

export default Address;

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    'Contact::Address': typeof Address;
  }
}
