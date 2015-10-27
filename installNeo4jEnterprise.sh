cd /tmp

rm -rf neo4j-enterprise-2.3.0-unix.tar.gz    neo4j-enterprise-2.3.0                                                   && \
wget -O neo4j-enterprise-2.3.0-unix.tar.gz  http://neo4j.com/artifact.php?name=neo4j-enterprise-2.3.0-unix.tar.gz     && \
tar -xvzf neo4j-enterprise-2.3.0-unix.tar.gz                                                                          && \
cd neo4j-enterprise-2.3.0                                                                                             && \
echo && echo "Please check all ok... Sleeping 30 seconds and then installing..."                                      && \
echo "NOTE that conf directory will NOT be overwritten, but data will be moved in .OLD"                               && \
sleep 30                                                                                                              && \
echo && echo "Stopping neo4j server and copying new files..."                                                         && \
sudo service neo4j stop                                                                                               && \
echo "Backup installation in /var/lib/neo4j.OLD and /usr/share/neo4j.OLD !"                                           && \
sudo cp -rf /var/lib/neo4j/ /var/lib/neo4j.OLD/   &&   sudo cp -rf /usr/share/neo4j/ /usr/share/neo4j.OLD/            && \
sudo rm -rf /var/lib/neo4j/bin        && sudo mv bin/ /var/lib/neo4j/             && sudo chown -R neo4j:adm /var/lib/neo4j/bin  && \
sudo rm -rf /usr/share/neo4j/lib      && sudo mv lib/ /usr/share/neo4j/           && sudo chown -R neo4j:adm /usr/share/neo4j    && \
sudo rm -rf /usr/share/neo4j/plugins  && sudo mv plugins/ /usr/share/neo4j/       && sudo chown -R neo4j:adm /usr/share/neo4j/   && \
sudo rm -rf /usr/share/neo4j/system   && sudo mv system/ /usr/share/neo4j/        && sudo chown -R neo4j:adm /usr/share/neo4j/   && \
sudo rm -rf /var/lib/neo4j/data/*                                                                                                && \
sudo ln -s  /var/log/neo4j/ /var/lib/neo4j/data/log                                                                              && \
echo && echo "Please check all ok... Sleeping 30 seconds and then restaring neo4j server..."   && \
sleep 30                                                                               && \
echo && echo "Restaring neo4j server..."                                               && \
sudo service neo4j restart                                                             && \
echo "That's all Folks!"
