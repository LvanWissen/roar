java -jar widoco/widoco-1.4.11-jar-with-dependencies.jar -ontFile roar.ttl -confFile ./roar.config -outFolder roar/docs -rewriteAll -lang en 

mv roar/docs/ontology.json roar/roar.json
mv roar/docs/ontology.ttl roar/roar.ttl
mv roar/docs/ontology.nt roar/roar.nt
mv roar/docs/ontology.xml roar/roar.rdf

sed -i 's/<\/h1>/<\/h1>\n\n<img src=\"https:\/\/www.leonvanwissen.nl\/vocab\/roar\/docs\/resources\/roar-logo.png\" height=\"200\" alt=\"roar!\">/g' roar/docs/index-en.html

sed -i 's/roar.ttl/..\/roar.ttl/g' roar/docs/index-en.html
sed -i 's/roar.nt/..\/roar.nt/g' roar/docs/index-en.html
sed -i 's/roar.rdf/..\/roar.rdf/g' roar/docs/index-en.html
sed -i 's/roar.json/..\/roar.json/g' roar/docs/index-en.html

echo "<html><h2 id=\"intro\" class=\"list\">Introduction <span class=\"backlink\"> back to <a href=\"#toc\">ToC</a></span></h2>
<span class=\"markdown\">
<p>Most archivists will tell you they make indexes, not identifications - which makes sense. But often researchers, genealogists, and sometimes even archivists want to reconstruct lives (or places) from the available sources. We designed the roar ontology to do both.</p>

<p>On the one hand, roar will let you describe the people and places you find in a specific document. Each person and place mentioned in the document is an <em>observation</em>, that can be used as a piece of the puzzle later on. The observations, of course, help create indexes right away.</p>

<p>On the other, roar lets you make reconstructions - the puzzle put together. A <em>person reconstruction</em> can be derived from observations in a birth certificate, a notary deed, a newspaper article, a diary and even a photograph.</p>

<img src=\"https://www.leonvanwissen.nl/vocab/roar/docs/resources/roar-example1.svg\" width=\"60%\" alt=\"roar-example1\" style=\"display: block; margin-left: auto; margin-right: auto;\">

<p>Reconstructions can be made manually, but also in an automated process. When using algorithms, changing parameters can even result in multiple reconstructions for different purposes of the same person or location. With the prov ontology you may annotate who made what reconstruction when, and which software or parameters where used in doing so.</p></span>
<div id=\"namespacedeclarations\">
<h3 id=\"depiction\" class=\"list\">Visualisation</h3>
<div id=\"depiction\" align=\"center\">

<p><img src=\"https://www.leonvanwissen.nl/vocab/roar/docs/resources/roar-graph.svg\" width=\"80%\" alt=\"roar-visualisation\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p>
<p>Visualisation made with [<cite><a class="bibref" href="#bib-WEBVOWL">WEBVOWL</a></cite>]</p>

</div>
</div>
</html>" > roar/docs/sections/introduction-en.html

echo "<html>
<h2 id=\"ref\" class=\"list\">References <span class=\"backlink\"> back to <a href=\"#toc\">ToC</a></span></h2>
<span>
    <dl class=\"bibliography\">
        <dt id=\"bib-WEBVOWL\">[WEBVOWL]</dt>
        <dd>Lohmann, S., Negru, S., Haag F., Ertl, T. <a
                href=\"http://www.semantic-web-journal.net/content/visualizing-ontologies-vowl-0\"><cite>Visualizing
                    Ontologies with VOWL</cite></a>. Semantic Web 7(4): 399-419 (2016) URL: <a
                href=\"http://www.visualdataweb.de/webvowl/\">http://www.visualdataweb.de/webvowl/</a>
        </dd>
    </dl>
</span>

</html>" > roar/docs/sections/references-en.html

cp roar/docs/index-en.html roar/docs/index.html

