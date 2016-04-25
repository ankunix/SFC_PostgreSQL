
All data is real-valued from [0.0000, 1.0000] and comma-separated.
Point queries include ID from data files.
Range queries do not have IDs, and are over two lines representing low and high values.

1. Uniform Data

 - "uniform_D_N.txt" : Data file with D dims and N points.
 - "*_100qp.txt" : 100 point queries randomly drawn from corresponding file.
 - "*_100qr-1-0.2-0.txt" : 100 range centered on randomly drawn points with per-dimensional range width of 0.2.


2. Clustered Data

 - "clustersR_D_N_4_0.1_0.3_1.txt" : Data file with D dims and N points, given 4 clusters with per dimensional range randomly drawn from [0.1, 0.3] width value.
 - "centersR_*" : The cluster center points used to generate data.
 - "*_100qp.txt" : Same as above.
 - "*_100qr-1-0.2-0.txt" : Same as above.


====================
2016-03-23
