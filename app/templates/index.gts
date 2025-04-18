import type { TOC } from '@ember/component/template-only';
import type { ApplicationRouteModel } from '../routes/application';
import Application from '../components/application';
import Images from '../components/images';

interface IndexRouteSignature {
  Args: {
    model: ApplicationRouteModel;
  };
}

export default <template>
  <section class="wrapper">
    <div class="inner">
      <header class="align-center">
        <h1>Autoškola Beran působí ve výuce nových řidičů od roku 2005.</h1>
        <p>Provádí výuku a výcvik pro vozidla skupiny B.</p>
      </header>
    </div>
  </section>

  <section class="wrapper">
    <div class="inner flex flex-2">
      <div class="flex-item">
        <div>
          <h3>Výuka</h3>
          <p>Výuka probíhá v individuálním studijním plánu, což znamená, že se
            skládá z devíti konzultací. K tomuto účelu používáme počítačovou
            učebnu na Základní škole v Zásmukách, kde si osvětlíme jednotlivá
            úskalí a vyzkoušíme elektronickou podobu zkušebních testů. Žáci,
            kteří si nejsou tak jisti v práci s počítačem si zde jeho ovládání
            osvojí, aby je tato skutečnost neznervózňovala u závěrečných
            zkoušek. Konzultace jsou plánovány tak, že žáci se k učebně dopraví
            po jízdách, nebo po domluvě je do učebny dopravíme.</p>
        </div>
      </div>

      <div class="flex-item">
        <div>
          <h3>Jízdy</h3>
          <p>Jízdy probíhají v počátku v mírnějším provozu a po získání určité
            praxe se soustřeďujeme na městský provoz a jeho jednotlivá úskalí.
            Jednotlivé jízdy začínají po dohodě v místech, které se hodí oběma.
            Tudíž žáky škol vyzvedáváme většinou v okolí škol, popřípadě doma a
            jízdu ukončujeme také podle potřeby, nejčastěji v bydlišti žáků.
            Jakékoli další nejasnosti Vám rádi zodpovíme, a najdeme s Vámi
            vhodný styl výuky a výcviku právě pro Vás.</p>
        </div>
      </div>
    </div>

    <div class="inner flex flex-2">
      <div class="flex-item">
        <div>
          <h3>Nové vozidlo</h3>
          {{! template-lint-disable no-whitespace-within-word }}
          <p>Připravil jsem pro vás nové výukové vozidlo MG ZS 1,5. Jedná se o v
            současnosti populární typ vozidla stylu městského SUV. Vozidlo je
            vyšší, je z něho dobrý výhled, je lehce ovladatelné a vybavené
            spoustou asistentů. Nechybí tedy ABS ani zadní parkovací senzory a
            je vybaveno samozřejmě klimatizací do letních dnů. Jízda s ním je
            velice příjemná a pro žáky poskytuje vhodné prostředí pro získání
            řidičských návyků.</p>
        </div>
      </div>

      <div class="flex-item">
        <div>
          <h3>Vozidlo</h3>
          <p>Vlastí výcvik v současnosti probíhá na vozidle Škoda Roomster 1,2
            TSI- vozidlo je vybaveno posilovači řízení a brzd, ABS a pro letní
            období i klimatizací. Vozidlo je velice dobře ovladatelné a dá se
            výborně nastavit na postavu každého žáka, vzhledem k výškově
            nastavitelnému sedadlu řidiče.</p>
        </div>
      </div>
    </div>
  </section>

  <section class="wrapper">
    <div class="inner">
      <Images />
    </div>
  </section>

  <section class="wrapper style1 special">
    <div class="inner">
      <h2>Cena</h2>
      <figure class="price">
        Cena platná od
        {{@model.since}}
        je
        {{@model.price}}
      </figure>

      <p>V ceně je zahrnuto zapůjčení učebnic, výukových CD a zdravotní
        příprava. Dále v případě neúspěchu není účtována jedna kondiční jízda a
        přistavení vozidla k opravné zkoušce. Cenu je možné zaplatit na splátky
        bez navýšení, maximálně tři splátky.</p>
      <p>K ceně je pouze nutno připočítat správní poplatek městskému úřadu za
        zkoušky.</p>
    </div>
  </section>

  <section class="wrapper special">
    <div class="inner">
      <Application />
    </div>
  </section>

  <section class="wrapper special">
    <div class="inner">
      <h2>Ke stažení</h2>

      <a
        class="button"
        href="/downloads/posudek-dle-271-2015.pdf"
        target="_blank"
        rel="noopener noreferrer"
      >Lékařský posudek</a>
      <br /><br />
      <a
        class="button"
        href="/downloads/zadost-dle-284-2013.pdf"
        target="_blank"
        rel="noopener noreferrer"
      >Žádost o přijetí k výuce a výcviku</a>
    </div>
  </section>
</template> satisfies TOC<IndexRouteSignature>;
