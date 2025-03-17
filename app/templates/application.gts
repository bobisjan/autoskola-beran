import type { TOC } from '@ember/component/template-only';
import Header from '../components/header';
import Footer from '../components/footer';

// eslint-disable-next-line @typescript-eslint/no-empty-object-type
interface ApplicationRouteSignature {}

const Template: TOC<ApplicationRouteSignature> = <template>
  <Header />
  {{outlet}}
  <Footer />
</template>;

export default Template;
