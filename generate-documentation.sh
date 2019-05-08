java -jar widoco/widoco-1.4.10-jar-with-dependencies.jar -ontFile roar.ttl -confFile ./roar.config -outFolder docs -rewriteAll -lang en 

mv docs/ontology.json docs/roar.json
mv docs/ontology.ttl docs/roar.ttl
mv docs/ontology.nt docs/roar.nt
mv docs/ontology.xml docs/roar.rdf

sed -i 's/<\/h1>/<\/h1>\n\n<img src=\"https:\/\/www.leonvanwissen.nl\/vocab\/roar\/docs\/resources\/roar-logo.png\" height=\"200\" alt=\"roar!\">/g' docs/index-en.html

cp docs/index-en.html docs/index.html

