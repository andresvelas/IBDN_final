

name := "flight_prediction"

version := "0.1"

scalaVersion := "2.12.10"

val sparkVersion = "3.3.0"

mainClass in Compile := Some("es.upm.dit.ging.predictor.MakePrediction")

resolvers ++= Seq(
  "apache-snapshots" at "https://repository.apache.org/snapshots/",
  "datastax-maven" at "https://repo.datastax.com/public-repos/"
)

libraryDependencies ++= Seq(
  "org.apache.spark" %% "spark-core" % sparkVersion,
  "org.apache.spark" %% "spark-sql" % sparkVersion,
  "org.apache.spark" %% "spark-mllib" % sparkVersion,
  "org.apache.spark" %% "spark-streaming" % sparkVersion,
  "org.apache.spark" %% "spark-hive" % sparkVersion,
  "org.apache.spark" %% "spark-sql-kafka-0-10" % "3.3.0",
  "org.mongodb.spark" %% "mongo-spark-connector" % "10.1.1",
  "com.datastax.spark" %% "spark-cassandra-connector" % "3.3.0"

)
