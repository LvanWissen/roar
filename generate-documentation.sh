java -jar widoco/widoco-1.4.10-jar-with-dependencies.jar -ontFile roar.ttl -confFile ./roar.config -outFolder docs -rewriteAll -lang en 

mv docs/ontology.json docs/roar.json
mv docs/ontology.ttl docs/roar.ttl
mv docs/ontology.nt docs/roar.nt
mv docs/ontology.xml docs/roar.rdf

sed -i 's/<\/h1>/<\/h1>\n\n<img src=\"https:\/\/www.leonvanwissen.nl\/vocab\/roar\/docs\/resources\/roar-logo.png\" height=\"200\" alt=\"roar!\">/g' docs/index-en.html
echo "<html><h2 id=\"intro\" class=\"list\">Introduction <span class=\"backlink\"> back to <a href=\"#toc\">ToC</a></span></h2>
<span class=\"markdown\">
This is a place holder text for the introduction. The introduction should briefly describe the ontology, its motivation, state of the art and goals.</span>
<div id=\"namespacedeclarations\">
<h3 id=\"depiction\" class=\"list\">Visualisation</h3>
<div id=\"depiction\" align=\"center\">

    <img src=\"https://www.leonvanwissen.nl/vocab/roar/docs/resources/roar-graph.svg\" width=\"80%\" alt=\"roar!\">

</div>
</div>
</html>" > docs/sections/introduction-en.html

cp docs/index-en.html docs/index.html

