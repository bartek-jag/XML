<h1>Hurtownia napojów (XML)</h1>
<h3>Bartosz Jagłowski<h3> 

<h3>DTD (4 pkt.)</h3>

<p>
    <b>Praktyczne użycie własności elementów (0,25 pkt. za każdy różny, max. 1,5 pkt.), np. element opcjonalny, element pusty, jeden element, jeden lub więcej elementów itd.</b>
    <br/>
    <i>ANY, EMPTY, #PCDATA, (), (,), ()?, ()*, ()+</i>
</p>

<p>
    <b>Praktyczne użycie własności atrybutów (0,25 pkt. za każdy różny, max. 1,5 pkt.), np. atrybut obowiązkowy, atrybut z domyślną wartością, wartość unikotowa itd.</b>
    <br/>
    <i>ID, IDREF, CDATA, NMTOKEN, #REQUIRED, default</i>
</p>

<p>
    <b>Praktyczne użycie własności encji parametrych wewnętrznych (0,25 pkt. za każdą, max. 0,5 pkt.), seksji warunkowej (0,5 pkt.).</b>
    <br/>
    <i>Encje parametryczne: &producenci; &rodzaje;, sekcja warunkowa</i>
</p>

<p>
    <b>Powinien walidować dokument.</b>
    <br/>
    <i>xmllint --valid hurtownia.xml --noout</i>
</p>


<!--
Własności elementów:
ANY, EMPTY, #PCDATA, (), (,), ()?, ()*, ()+
Własności atrybutów: ID, IDREF, CDATA, NMTOKEN, #REQUIRED, default
Encje parametryczne: &producenci; &rodzaje;
Sekcja warunkowa

Widzę, że jesteś dumny ze swojego projektu. Ale może wyjaśnisz z czego? Z tego, że sekcji warunkowej użyłeś w dtd? Przerost formy nad treścią. Ale przed kolegami będziesz szpanował jakiego to ty (specjalnie z małej litery) masz featura. Może byś lepiej wykorzystał dtd?
-->
