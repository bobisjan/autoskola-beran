import '@glint/environment-ember-loose';
import '@glint/environment-ember-template-imports';

declare module '*.jpg' {
  const path: string;
  export default path;
}
