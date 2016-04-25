
CREATE TABLE uniform_2_1000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text
);

CREATE TABLE uniform_4_1000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text
);

CREATE TABLE uniform_8_1000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text
);

CREATE TABLE uniform_16_1000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text,
  dim8 text,
  dim9 text,
  dim10 text,
  dim11 text,
  dim12 text,
  dim13 text,
  dim14 text,
  dim15 text
);


CREATE TABLE uniform_2_10000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text
);

CREATE TABLE uniform_4_10000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text
);

CREATE TABLE uniform_8_10000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text
);

CREATE TABLE uniform_16_10000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text,
  dim8 text,
  dim9 text,
  dim10 text,
  dim11 text,
  dim12 text,
  dim13 text,
  dim14 text,
  dim15 text
);

CREATE TABLE uniform_2_100000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text
);

CREATE TABLE uniform_4_100000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text
);

CREATE TABLE uniform_8_100000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text
);

CREATE TABLE uniform_16_100000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text,
  dim8 text,
  dim9 text,
  dim10 text,
  dim11 text,
  dim12 text,
  dim13 text,
  dim14 text,
  dim15 text
);

CREATE TABLE uniform_2_1000000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text
);

CREATE TABLE uniform_4_1000000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text
);

CREATE TABLE uniform_8_1000000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text
);

CREATE TABLE uniform_16_1000000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text,
  dim8 text,
  dim9 text,
  dim10 text,
  dim11 text,
  dim12 text,
  dim13 text,
  dim14 text,
  dim15 text
);

CREATE TABLE cluster_2_1000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text
);

CREATE TABLE cluster_4_1000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text
);

CREATE TABLE cluster_8_1000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text
);

CREATE TABLE cluster_16_1000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text,
  dim8 text,
  dim9 text,
  dim10 text,
  dim11 text,
  dim12 text,
  dim13 text,
  dim14 text,
  dim15 text
);

CREATE TABLE cluster_2_10000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text
);

CREATE TABLE cluster_4_10000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text
);

CREATE TABLE cluster_8_10000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text
);

CREATE TABLE cluster_16_10000 (
  id text PRIMARY KEY,
  dim0 text,
  dim1 text,
  dim2 text,
  dim3 text,
  dim4 text,
  dim5 text,
  dim6 text,
  dim7 text,
  dim8 text,
  dim9 text,
  dim10 text,
  dim11 text,
  dim12 text,
  dim13 text,
  dim14 text,
  dim15 text
);

\copy uniform_2_1000 from ~/SyntheticData/uniform_data_1k/uniform_2_1000.txt DELIMITER ',' CSV
\copy uniform_4_1000 from ~/SyntheticData/uniform_data_1k/uniform_4_1000.txt DELIMITER ',' CSV
\copy uniform_8_1000 from ~/SyntheticData/uniform_data_1k/uniform_8_1000.txt DELIMITER ',' CSV
\copy uniform_16_1000 from ~/SyntheticData/uniform_data_1k/uniform_16_1000.txt DELIMITER ',' CSV

\copy uniform_2_10000 from ~/SyntheticData/uniform_data_10k/uniform_2_10000.txt DELIMITER ',' CSV
\copy uniform_4_10000 from ~/SyntheticData/uniform_data_10k/uniform_4_10000.txt DELIMITER ',' CSV
\copy uniform_8_10000 from ~/SyntheticData/uniform_data_10k/uniform_8_10000.txt DELIMITER ',' CSV
\copy uniform_16_10000 from ~/SyntheticData/uniform_data_10k/uniform_16_10000.txt DELIMITER ',' CSV

\copy uniform_2_100000 from ~/SyntheticData/uniform_data_100k/uniform_2_100000.txt DELIMITER ',' CSV
\copy uniform_4_100000 from ~/SyntheticData/uniform_data_100k/uniform_4_100000.txt DELIMITER ',' CSV
\copy uniform_8_100000 from ~/SyntheticData/uniform_data_100k/uniform_8_100000.txt DELIMITER ',' CSV
\copy uniform_16_100000 from ~/SyntheticData/uniform_data_100k/uniform_16_100000.txt DELIMITER ',' CSV

\copy uniform_2_1000000 from ~/SyntheticData/uniform_data_1m/uniform_2_1000000.txt DELIMITER ',' CSV
\copy uniform_4_1000000 from ~/SyntheticData/uniform_data_1m/uniform_4_1000000.txt DELIMITER ',' CSV
\copy uniform_8_1000000 from ~/SyntheticData/uniform_data_1m/uniform_8_1000000.txt DELIMITER ',' CSV
\copy uniform_16_1000000 from ~/SyntheticData/uniform_data_1m/uniform_16_1000000.txt DELIMITER ',' CSV


\copy cluster_2_1000 from ~/SyntheticData/cluster_data_1k/cluster_2_1000.txt DELIMITER ',' CSV
\copy cluster_4_1000 from ~/SyntheticData/cluster_data_1k/cluster_4_1000.txt DELIMITER ',' CSV
\copy cluster_8_1000 from ~/SyntheticData/cluster_data_1k/cluster_8_1000.txt DELIMITER ',' CSV
\copy cluster_16_1000 from ~/SyntheticData/cluster_data_1k/cluster_16_1000.txt DELIMITER ',' CSV

\copy cluster_2_10000 from ~/SyntheticData/cluster_data_10k/cluster_2_10000.txt DELIMITER ',' CSV
\copy cluster_4_10000 from ~/SyntheticData/cluster_data_10k/cluster_4_10000.txt DELIMITER ',' CSV
\copy cluster_8_10000 from ~/SyntheticData/cluster_data_10k/cluster_8_10000.txt DELIMITER ',' CSV
\copy cluster_16_10000 from ~/SyntheticData/cluster_data_10k/cluster_16_10000.txt DELIMITER ',' CSV

CREATE TABLE HilbertAC_Uniform_2_1000 (
  vkey text PRIMARY KEY,
  id text references uniform_2_1000(id)
);
CREATE TABLE HilbertAC_Uniform_4_1000 (
  vkey text PRIMARY KEY,
  id text references uniform_4_1000(id)
);
CREATE TABLE HilbertAC_Uniform_8_1000 (
  vkey text PRIMARY KEY,
  id text references uniform_8_1000(id)
);
CREATE TABLE HilbertAC_Uniform_16_1000 (
  vkey text PRIMARY KEY,
  id text references uniform_16_1000(id)
);

CREATE TABLE HilbertAC_Uniform_2_10000 (
  vkey text PRIMARY KEY,
  id text references uniform_2_10000(id)
);
CREATE TABLE HilbertAC_Uniform_4_10000 (
  vkey text PRIMARY KEY,
  id text references uniform_4_10000(id)
);
CREATE TABLE HilbertAC_Uniform_8_10000 (
  vkey text PRIMARY KEY,
  id text references uniform_8_10000(id)
);
CREATE TABLE HilbertAC_Uniform_16_10000 (
  vkey text PRIMARY KEY,
  id text references uniform_16_10000(id)
);

CREATE TABLE HilbertAC_Uniform_2_100000 (
  vkey text PRIMARY KEY,
  id text references uniform_2_100000(id)
);
CREATE TABLE HilbertAC_Uniform_4_100000 (
  vkey text PRIMARY KEY,
  id text references uniform_4_100000(id)
);
CREATE TABLE HilbertAC_Uniform_8_100000 (
  vkey text PRIMARY KEY,
  id text references uniform_8_100000(id)
);
CREATE TABLE HilbertAC_Uniform_16_100000 (
  vkey text PRIMARY KEY,
  id text references uniform_16_100000(id)
);

CREATE TABLE HilbertAC_Uniform_2_1000000 (
  vkey text PRIMARY KEY,
  id text references uniform_2_1000000(id)
);
CREATE TABLE HilbertAC_Uniform_4_1000000 (
  vkey text PRIMARY KEY,
  id text references uniform_4_1000000(id)
);
CREATE TABLE HilbertAC_Uniform_8_1000000 (
  vkey text PRIMARY KEY,
  id text references uniform_8_1000000(id)
);
CREATE TABLE HilbertAC_Uniform_16_1000000 (
  vkey text PRIMARY KEY,
  id text references uniform_8_1000000(id)
);

CREATE TABLE HilbertAC_cluster_2_1000 (
  vkey text PRIMARY KEY,
  id text references cluster_2_1000(id)
);
CREATE TABLE HilbertAC_cluster_4_1000 (
  vkey text PRIMARY KEY,
  id text references cluster_4_1000(id)
);
CREATE TABLE HilbertAC_cluster_8_1000 (
  vkey text PRIMARY KEY,
  id text references cluster_8_1000(id)
);
CREATE TABLE HilbertAC_cluster_16_1000 (
  vkey text PRIMARY KEY,
  id text references cluster_16_1000(id)
);

CREATE TABLE HilbertAC_cluster_2_10000 (
  vkey text PRIMARY KEY,
  id text references cluster_2_10000(id)
);
CREATE TABLE HilbertAC_cluster_4_10000 (
  vkey text PRIMARY KEY,
  id text references cluster_4_10000(id)
);
CREATE TABLE HilbertAC_cluster_8_10000 (
  vkey text PRIMARY KEY,
  id text references cluster_8_10000(id)
);
CREATE TABLE HilbertAC_cluster_16_10000 (
  vkey text PRIMARY KEY,
  id text references cluster_16_10000(id)
);

CREATE TABLE range_u_2 (
  id smallint,
  dim0 bigint,
  dim1 bigint
  );
CREATE TABLE range_u_4 (
  id smallint,
  dim0 bigint,
  dim1 bigint,
  dim2 bigint,
  dim3 bigint
  );

\copy range_u_2 from ~/SyntheticData/range_query_uniform/range_u_2.txt DELIMITER ',' CSV
\copy range_u_4 from ~/SyntheticData/range_query_uniform/range_u_4.txt DELIMITER ',' CSV
