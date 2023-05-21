// Types for compiled templates
declare module 'autoskola-beran/templates/*' {
  import { TemplateFactory } from 'ember-cli-htmlbars';

  const tmpl: TemplateFactory;
  export default tmpl;
}

declare module '*.jpg' {
  const path: string;
  export default path;
}
