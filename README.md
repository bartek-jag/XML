<h1>Hurtownia napojów (XML)</h1>
<h3>Bartosz Jagłowski<h3> 
    
<hr/>
    
<h3>CSS (3 pkt.)</h3>
<p>
    <b>Sposób budowy pliku XML, tzn. sposób użycia elementów i atrybutów (1 pkt.).</b>
    <br/>
    <i></i>
</p>

<p>
    <b>Ilość, różnorodność i sensowność wprowadzonych danych, tzn. danych nie powinno być ani za mało oraz powinny związane z tematem projektu (1 pkt.). Jeżeli stworzysz arkusz CSS danych nie może być za dużo, aby to estetcznie wyglądało (np. ok. 5 osób, ok. 5 innych danych itd.).</b>
    <br/>
    <i></i>
</p>

<p>
    <b>Plik musi być syntaktycznie poprawny.</b>
    <br/>
    <i></i>
</p>

<hr/>

<h3>XSLT (5 pkt.)</h3>

<p>
    <b>Utworzenie przydatnego arkusza przekszatłcającego na inny plik XML lub HTML lub xHTML (w przypadku XML max. 0,5 pkt. w przypadku HTML/xHTML max. 1,5 pkt.). Przy ocenianiu pod uwagę zostanie wzięta estetyka utworzonego pliku (wygląd, użycie CSS w przypadku HTML itp.), użycie różnych elemntów w HTML np. odsyłacze oraz to czy plik przechodzi walidację (walidator w przypadku HTML).</b>
    <br/>
    <i></i>
</p>

<p>
    <b>Praktyczne użycie elementów (0,25 pkt. za każdy różny, max. 2 pkt.), tj. sortowanie, instrukcja warunkowa, pętla, wybór (nie liczymy szablonów).</b>
    <br/>
    <i>sort, if, for-each, choose, variable, element, attribute, value-of, text, import, call-template, comment</i>
</p>

<p>
    <b>Praktyczne wykorzystanie funkcji i predykatów w XPath (0,25 pkt. za każdy różny, max. 1,5 pkt.).</b>
    <br/>
    <i>contains(hurtownia/napoje/napoj/@nieaktualne, 'true')<br/>
@nieaktualne='true'<br/>
format-number(cena,'#.##')<br/>
dostawcy/dostawca[imie] / [nazwa]<br/>
sum(hurtownia/napoje/napoj/ilosc)<br/>
count(hurtownia/napoje/napoj)<br/></i>
</p>

<hr/>

<h3>XML-Schema (6 pkt.)</h3>

<p>
    <b>Praktyczne użycie własności (0,25 pkt. za każdą różny, max. 4,5 pkt.), np. restrykcje, wzorzec, lista, grupy, elementów, wartości unikatowe, grupy elementów itd.</b>
    <br/>
    <i>restriction, pattern, group, unique, sequence, union, key, keyref, choice, extension, list, import, ref, enumeration, minOccurs, maxOccurs, annotation, documentation, use: optional, use: required</i>
</p>

<p>
    <b>Praktyczne użycie typów wbudowanych (0,25 pkt. za każdy różny, max. 1,5 pkt.), np. Integer, String itd.</b>
    <br/>
    <i>integer, string, decimal, NCname, nonNegativeInteger, boolean</i>
</p>

<p>
    <b>Powinien walidować dokument.</b>
    <br/>
    <i>xmllint --schema hurtownia.xsd hurtownia.xml --noout</i>
</p>
