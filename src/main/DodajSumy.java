package main;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DodajSumy {

    private static final String XMLFileName = "hurtownia.xml";
    private static final String XSDFileName = "hurtownia.xsd";

    public static void main(String[] args) {
        FileSupport obs = new FileSupport();
        Document document = obs.open(XMLFileName, XSDFileName);

        Node g = document.getElementsByTagName("napoje").item(0);
        NodeList nodeList = g.getChildNodes();

        if (nodeList.getLength() == 0)
            System.exit(1);

        for (int i = 0; i < nodeList.getLength(); i++) {
            if (nodeList.item(i).getNodeType() == Node.ELEMENT_NODE) {
                if (!((Element) nodeList.item(i)).hasAttribute("nieaktualne")) {
                    Element wartosc = document.createElement("razem");

                    Node cenaNode = ((Element) nodeList.item(i)).getElementsByTagName("cena").item(0);
                    Node iloscNode = ((Element) nodeList.item(i)).getElementsByTagName("ilosc").item(0);
                    double razem = Integer.parseInt(iloscNode.getTextContent())*Double.parseDouble(cenaNode.getTextContent());

                    wartosc.setTextContent(Double.toString(razem));
                    nodeList.item(i).appendChild(wartosc);
                }
                ((Element) nodeList.item(i)).removeAttribute("nieaktualne");
            }
        }
        obs.save(XMLFileName, document);
    }
}
