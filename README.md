<h1>Hurtownia napojów (XML)</h1>
<h3>Bartosz Jagłowski</h3>



<hr/>
<h3>CSS (3 pkt.)</h3>
<p>
	<b>Estetyka wyglądu pliku XML przy użyciu pliku CSS (0,5 pkt.).</b>
</p>
<p>
	<b>Wykorzystanie rzeczy, które pojwiły się na zajęciach. Inny styl formatowania to nie nowa rzecz (0,25 pkt za każdą różną, max. 1,5 pkt.).</b>
	<br/>
	<i>font-family, font-size, font-weight, background-color, text-shadow, text-align, padding, :before, :after, :hover, klasy, idendyfikatory</i>
</p>
<p>
	<b>Za użycie rzeczy, które nie zostały podane na zajęciach, np. automatyczna numeracja danych.	(0,25 pkt za każdą różną, max. 1 pkt.).</b>
	<br/>
	<i>linear-gradient, counter, edycja wyglądu przy pomocy js, background-image, border-collapse</i>
</p>



<hr/>
<h3>XSLT (5 pkt.)</h3>
<p>
	<b>Utworzenie przydatnego arkusza przekszatłcającego na inny plik XML lub HTML lub xHTML (w przypadku XML max. 0,5 pkt. w przypadku HTML/xHTML max. 1,5 pkt.). Przy ocenianiu pod uwagę zostanie wzięta estetyka utworzonego pliku (wygląd, użycie CSS w przypadku HTML itp.), użycie różnych elemntów w HTML np. odsyłacze oraz to czy plik przechodzi walidację (walidator w przypadku HTML).</b>
</p>
<p>
	<b>Praktyczne użycie elementów (0,25 pkt. za każdy różny, max. 2 pkt.), tj. sortowanie, instrukcja warunkowa, pętla, wybór (nie liczymy szablonów).</b>
	<br/>
	<i>sort, if, for-each, choose, variable, element, attribute, value-of, text, import, call-template, comment</i>
</p>

<p>
	<b>Praktyczne wykorzystanie funkcji i predykatów w XPath (0,25 pkt. za każdy różny, max. 1,5 pkt.).</b>
	<br/>
	<i>
		contains(hurtownia/napoje/napoj/@nieaktualne, 'true')<br/>
		@nieaktualne='true'<br/>
		format-number(cena,'#.##')<br/>
		dostawcy/dostawca[imie] / [nazwa]<br/>
		sum(hurtownia/napoje/napoj/ilosc)<br/>
		count(hurtownia/napoje/napoj)<br/>
	</i>
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
