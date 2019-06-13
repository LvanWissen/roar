java -jar widoco/widoco-1.4.10-jar-with-dependencies.jar -ontFile roar.ttl -confFile ./roar.config -outFolder roar/docs -rewriteAll -lang en 

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
This is a place holder text for the introduction. The introduction should briefly describe the ontology, its motivation, state of the art and goals.</span>
<div id=\"namespacedeclarations\">
<h3 id=\"depiction\" class=\"list\">Visualisation</h3>
<div id=\"depiction\" align=\"center\">

    <img src=\"https://www.leonvanwissen.nl/vocab/roar/docs/resources/roar-graph.svg\" width=\"80%\" alt=\"roar!\">

</div>
</div>
</html>" > roar/docs/sections/introduction-en.html

cp roar/docs/index-en.html roar/docs/index.html

