package main;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DodajProducenta {
    private static final String XMLFileName = "hurtownia.xml";
    private static final String XSDFileName = "hurtownia.xsd";

    public static void main(String[] args) {
        if (args.length == 0) return;
        String nazwa = args[0];

        FileSupport obs = new FileSupport();
        Document document = obs.open(XMLFileName, XSDFileName);

        Node newManufacturer = document.createElement("producent");
        newManufacturer.setTextContent(nazwa);

        Node node = document.getElementsByTagName("producenci").item(0);

        NodeList manufacturers = node.getChildNodes();

        for (int i = 0; i < manufacturers.getLength(); i++) {
            if (manufacturers.item(i).getTextContent().equals(nazwa)) {
                //System.out.println("aaa");
                return;
            }
        }
        node.insertBefore(newManufacturer, node.getFirstChild());

        obs.save(XMLFileName, document);
    }
}
