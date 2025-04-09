import type { TOC } from '@ember/component/template-only';
import Header from '../components/header';
import Footer from '../components/footer';

// eslint-disable-next-line @typescript-eslint/no-empty-object-type
interface ApplicationRouteSignature {}

export default <template>
  <Header />
  {{outlet}}
  <Footer />
</template> satisfies TOC<ApplicationRouteSignature>;
