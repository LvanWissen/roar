java -jar widoco/widoco-1.4.11-jar-with-dependencies.jar -ontFile roar.ttl -confFile ./roar.config -outFolder roar/docs -crossRef -lang en

mv roar/docs/ontology.json roar/roar.json
mv roar/docs/ontology.ttl roar/roar.ttl
mv roar/docs/ontology.nt roar/roar.nt
mv roar/docs/ontology.xml roar/roar.rdf

cp roar/docs/index-en.html roar/docs/index.html

