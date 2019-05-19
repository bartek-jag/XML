<h1>Hurtownia napojów (XML)</h1>
<h3>Bartosz Jagłowski<h3> 

<h3>XML-Schema (6 pkt.)</h3>

<p>
    <b>Praktyczne użycie własności (0,25 pkt. za każdą różny, max. 4,5 pkt.), np. restrykcje, wzorzec, lista, grupy, elementów, wartości unikatowe, grupy elementów itd.</b>
    <br/>
    <i>restriction, pattern, group, unique, sequence, union, key, keyref, choice, extension, list, import, ref, enumeration, minOccurs, maxOccurs, use: optional, use: required</i>
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
