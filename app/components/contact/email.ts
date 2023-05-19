import templateOnlyComponent from '@ember/component/template-only';

export interface EmailSignature {
  Element: HTMLAnchorElement;
}

const Email = templateOnlyComponent<EmailSignature>();

export default Email;

declare module '@glint/environment-ember-loose/registry' {
  export default interface Registry {
    'Contact::Email': typeof Email;
  }
}
