#!/bin/bash
chmod +x liquibase-3.2.3/liquibase
POSTGRESQL_DIR=~/.m2/repository/org/postgresql/postgresql/
DB="$1"
./liquibase-3.2.3/liquibase --changeLogFile=descriptors/database/jbilling-upgrade-4.1.xml --contexts=base --driver=org.postgresql.Driver --classpath=$POSTGRESQL_DIR/42.2.23/postgresql-42.2.23.jar:target/classes/ --url="jdbc:postgresql://localhost:5432/$DB" --username=jbilling --password= updateSQL > target/upgrade.sql
./liquibase-3.2.3/liquibase --changeLogFile=descriptors/database/jbilling-upgrade-4.1.xml --contexts=post_base --driver=org.postgresql.Driver --classpath=$POSTGRESQL_DIR/42.2.23/postgresql-42.2.23.jar:target/classes/ --url="jdbc:postgresql://localhost:5432/$DB" --username=jbilling --password= updateSQL >> target/upgrade.sql

./liquibase-3.2.3/liquibase --changeLogFile=descriptors/database/jbilling-upgrade-4.2.xml --contexts=base --driver=org.postgresql.Driver --classpath=$POSTGRESQL_DIR/42.2.23/postgresql-42.2.23.jar:target/classes/ --url="jdbc:postgresql://localhost:5432/$DB" --username=jbilling --password= updateSQL >> target/upgrade.sql
./liquibase-3.2.3/liquibase --changeLogFile=descriptors/database/jbilling-upgrade-4.2.xml --contexts=post_base --driver=org.postgresql.Driver --classpath=$POSTGRESQL_DIR/42.2.23/postgresql-42.2.23.jar:target/classes/ --url="jdbc:postgresql://localhost:5432/$DB" --username=jbilling --password= updateSQL >> target/upgrade.sql

./liquibase-3.2.3/liquibase --changeLogFile=descriptors/database/jbilling-upgrade-4.3.xml --contexts=base --driver=org.postgresql.Driver --classpath=$POSTGRESQL_DIR/42.2.23/postgresql-42.2.23.jar:target/classes/ --url="jdbc:postgresql://localhost:5432/$DB" --username=jbilling --password= updateSQL >> target/upgrade.sql
./liquibase-3.2.3/liquibase --changeLogFile=descriptors/database/jbilling-upgrade-4.3.xml --contexts=post_base --driver=org.postgresql.Driver --classpath=$POSTGRESQL_DIR/42.2.23/postgresql-42.2.23.jar:target/classes/ --url="jdbc:postgresql://localhost:5432/$DB" --username=jbilling --password= updateSQL >> target/upgrade.sql

./liquibase-3.2.3/liquibase --changeLogFile=descriptors/database/jbilling-upgrade-4.4.xml --contexts=base --driver=org.postgresql.Driver --classpath=$POSTGRESQL_DIR/42.2.23/postgresql-42.2.23.jar:target/classes/ --url="jdbc:postgresql://localhost:5432/$DB" --username=jbilling --password= updateSQL >> target/upgrade.sql
./liquibase-3.2.3/liquibase --changeLogFile=descriptors/database/jbilling-upgrade-4.4.xml --contexts=post_base --driver=org.postgresql.Driver --classpath=$POSTGRESQL_DIR/42.2.23/postgresql-42.2.23.jar:target/classes/ --url="jdbc:postgresql://localhost:5432/$DB" --username=jbilling --password= updateSQL >> target/upgrade.sql
