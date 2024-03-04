import RouteTemplate from 'ember-route-template';
import type { TOC } from '@ember/component/template-only';
import Header from '../components/header';
import Footer from '../components/footer';

interface ApplicationRouteSignature {}

const Template: TOC<ApplicationRouteSignature> = <template>
  <Header />
  {{outlet}}
  <Footer />
</template>;

export default RouteTemplate(Template);
