wget -O neo4j-enterprise-2.3.0-unix.tar.gz  http://neo4j.com/artifact.php?name=neo4j-enterprise-2.3.0-unix.tar.gz     && \
tar -xvzf neo4j-enterprise-2.3.0-unix.tar.gz                                                                          && \
cd neo4j-enterprise-2.3.0                                                                                             && \
echo "Please check all ok... Sleeping 30 seconds and then installing..."                                              && \
sleep 30                                                                                                              && \
sudo rm -rf /var/lib/neo4j/bin        && sudo mv bin/ /var/lib/neo4j/             && sudo chown -R neo4j:adm /var/lib/neo4j/bin  && \
sudo rm -rf /usr/share/neo4j/lib      && sudo mv lib/ /usr/share/neo4j/           && sudo chown -R neo4j:adm /usr/share/neo4j    && \
sudo rm -rf /usr/share/neo4j/plugins  && sudo mv plugins /usr/share/neo4j/plugins && sudo chown -R neo4j:adm /usr/share/neo4j/   && \
sudo rm -rf /usr/share/neo4j/system   && sudo mv system /usr/share/neo4j/system   && sudo chown -R neo4j:adm /usr/share/neo4j/   && \
echo "Please check all ok... Sleeping 30 seconds and then restaring neo4j server..."   && \
sleep 30                                                                               && \
sudo service neo4j restart                                                             && \
echo "That's all Folks!"