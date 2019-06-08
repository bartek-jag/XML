package main;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class Deaktywuj {
    private static final String XMLFileName = "hurtownia.xml";
    private static final String XSDFileName = "hurtownia.xsd";

    public static void main(String[] args) {
        if (args.length == 0) return;
        String id = args[0];

        FileSupport obs = new FileSupport();
        Document document = obs.open(XMLFileName, XSDFileName);

        NodeList nodeList = document.getElementsByTagNameNS("hurtownia/" ,"napoje");
        if (nodeList.getLength() == 0)
            System.exit(1);
        int maxId = 0;
        Element newBeverage = null;
        for (int i = 0; i < nodeList.getLength(); i++) {
            if (nodeList.item(i).getNodeType() == Node.ELEMENT_NODE) {
                Element beverage = (Element) nodeList.item(i);
                int nodeId = Integer.parseInt(beverage.getAttribute("id"));
                if (maxId < nodeId) maxId = nodeId;
                if (beverage.getAttribute("id").equals(id)) {

                    if (!beverage.hasAttribute("nieaktualne")) {
                        System.out.println("adsa");
                        newBeverage = (Element) beverage.cloneNode(true);
                        beverage.getElementsByTagName("ilosc").item(0).setTextContent("0");
                        newBeverage.setAttribute("nieaktualne", "true");
                        beverage.getParentNode().appendChild(newBeverage);
                    }
                }
            }
        }
        if (newBeverage != null)
            newBeverage.getAttributeNode("id").setValue("" + (maxId+1));
        obs.save(XMLFileName, document);
    }
}