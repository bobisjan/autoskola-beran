import type { TOC } from '@ember/component/template-only';

// eslint-disable-next-line @typescript-eslint/no-empty-object-type
export interface ApplicationSignature {}

export default <template>
  <h2>Přihláška on-line</h2>

  <iframe
    src="https://beran.moje-autoskola.cz/prihlaska.php?iframe=1"
    width="95%"
    height="560px"
    rel="nofollow"
    title="MOJE AUTOŠKOLA"
  ></iframe>
  <br /><br />On-line přihlašování žáků do autoškoly zajišťuje aplikace
  <a
    href="https://www.moje-autoskola.cz"
    target="_blank"
    rel="noopener noreferrer"
  >MOJE AUTOŠKOLA</a>
  -
  <a
    href="https://www.moje-autoskola.cz"
    target="_blank"
    rel="noopener noreferrer"
  >moderní evidence autoškoly</a>.
</template> satisfies TOC<ApplicationSignature>;
