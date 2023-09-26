import { modifier } from 'ember-modifier';

interface ResizedIFrameElement extends HTMLIFrameElement {
  iFrameResizer?: {
    removeListeners(): void;
  };
}

export interface IFrameResizerSignature {
  Element: HTMLIFrameElement;
}

export default modifier<IFrameResizerSignature>(function iframeResizer(
  element: ResizedIFrameElement,
) {
  import('iframe-resizer').then(({ iframeResizer }) => {
    iframeResizer({}, element);
  });

  return () => {
    element.iFrameResizer?.removeListeners();
  };
});
