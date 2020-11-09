
cd /home/pthorpe/scratch/kenya_metab/pool1
cat db.fa Nempool1_S1_L001_PEAR/Nempool1_S1_L001.assembled.fastq.bio.chopped.fasta > assembled_fa_and_OTU_db.fasta
vsearch --derep_fulllength _L001.assembled.fastq.bio.chopped.fasta --output Nempool1_S1_L001_PEAR/Nempool1_S1_L001.assembled.fastqdrep.vsearch.fasta --sizeout

vsearch --usearch_global derep.fa --uc Nempool1_S1_L001_Vsearch_us_global_0.99/Nempool1_S1_L001vsearch_cluster.uc --blast6out Nempool1_S1_L001_Vsearch_us_global_0.99/Nempool1_S1_L001vsearch_cluster.blast6 --db ../Globodera_db.fasta --id 0.99 --threads 16

INFO: merge these files cat Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001for_vsearch.fasta Nempool1_S1_L001_PEAR/Nempool1_S1_L001.assembled.fastqfor_vsearch.fasta > assembled_fa_and_OTU_db_vesearch.fasta


cat derep.fa ddb_derep.fa > assembled_fa_and_OTU_db_vesearch.fasta 

vsearch --usearch_global derep.fa --uc Nempool1_S1_L001_Vsearch_us_global_0.99/Nempool1_S1_L001vsearch_cluster.uc --blast6out Nempool1_S1_L001_Vsearch_us_global_0.99/Nempool1_S1_L001vsearch_cluster.blast6 --db ../Globodera_db.fasta --id 0.99 --threads 16

vsearch --cluster_fast assembled_fa_and_OTU_db_vesearch.fasta --uc Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast.uc --blast6out Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast.blast6 --centroids Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast_centroids.fasta --consout Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast_consensus.fasta --db ../Globodera_db.fasta --id 0.99 --msaout Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast_msa.fasta --threads 16

##############
# using the dada2 filtered data
cd /home/pthorpe/scratch/kenya_metab/pool1
# pool1
vsearch --derep_fulllength NemPool1_S1_L001_DADA2.fasta --output drNemPool1_S1_L001_DADA2.fasta --sizeout

cat drNemPool1_S1_L001_DADA2.fasta ddb_derep.fa > dada2assembled_fa_and_OTU_db_vesearch.fasta  

mkdir dada2_Nempool1_S1_L001_Vsearch_us_global_0.99

vsearch --usearch_global derep.fa --uc dada2_Nempool1_S1_L001_Vsearch_us_global_0.99/Nempool1_S1_L001vsearch_cluster.uc --blast6out dada2_Nempool1_S1_L001_Vsearch_us_global_0.99/Nempool1_S1_L001vsearch_cluster.blast6 --db ../Globodera_db.fasta --id 0.99 --threads 16

mkdir dada2_Nempool1_S1_L001_Vsearch_clustfast_0.99
vsearch --cluster_fast dada2assembled_fa_and_OTU_db_vesearch.fasta  --uc dada2_Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast.uc --blast6out dada2_Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast.blast6 --centroids dada2_Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast_centroids.fasta --consout dada2_Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast_consensus.fasta --db ../Globodera_db.fasta --id 0.99 --msaout dada2_Nempool1_S1_L001_Vsearch_clustfast_0.99/Nempool1_S1_L001vsearch_cluster_fast_msa.fasta --threads 16


###

#pool2
cd /home/pthorpe/scratch/kenya_metab/pool2
vsearch --derep_fulllength NemPool2_S2_L001_DADA2.fasta --output drNempool2_S1_L001_DADA2.fasta --sizeout

cat drNempool2_S1_L001_DADA2.fasta ddb_derep.fa > dada2assembled_fa_and_OTU_db_vesearch.fasta  

mkdir dada2_Nempool2_S1_L001_Vsearch_us_global_0.99

vsearch --usearch_global derep.fa --uc dada2_Nempool2_S1_L001_Vsearch_us_global_0.99/Nempool2_S1_L001vsearch_cluster.uc --blast6out dada2_Nempool2_S1_L001_Vsearch_us_global_0.99/Nempool2_S1_L001vsearch_cluster.blast6 --db ../Globodera_db.fasta --id 0.99 --threads 16

mkdir dada2_Nempool2_S1_L001_Vsearch_clustfast_0.99
vsearch --cluster_fast dada2assembled_fa_and_OTU_db_vesearch.fasta  --uc dada2_Nempool2_S1_L001_Vsearch_clustfast_0.99/Nempool2_S1_L001vsearch_cluster_fast.uc --blast6out dada2_Nempool2_S1_L001_Vsearch_clustfast_0.99/Nempool2_S1_L001vsearch_cluster_fast.blast6 --centroids dada2_Nempool2_S1_L001_Vsearch_clustfast_0.99/Nempool2_S1_L001vsearch_cluster_fast_centroids.fasta --consout dada2_Nempool2_S1_L001_Vsearch_clustfast_0.99/Nempool2_S1_L001vsearch_cluster_fast_consensus.fasta --db ../Globodera_db.fasta --id 0.99 --msaout dada2_Nempool2_S1_L001_Vsearch_clustfast_0.99/Nempool2_S1_L001vsearch_cluster_fast_msa.fasta --threads 16


# 
######################
# align the create a hmm of globadera

# POOL1

$ hmmbuild --dna globadera_ITS.hmm Globodera_db.aln.fasta

    # align the sentroid to the hmm
    hmmalign --dna --trim ../../globadera_ITS.hmm Nempool1_S1_L001vsearch_cluster_fast_centroids.fasta > Nempool1_S1_L001vsearch_cluster_fast_centroids.hmmAligned.sto
    # convert sto to fasta 
    python ~/apps/public_scripts/convert_file_format/convert_stock_to_fasta_cmd_line.py
    DOESNT WORK WELL

# filter the centroids using the hmm
hmmsearch --domE 0.00001 -E 0.00001 --domtblout Nempool1_S1_L001vsearch_cluster_fast_centroids.vs_hmm.tab ../../globadera_ITS.hmm Nempool1_S1_L001vsearch_cluster_fast_centroids.fasta

# pull out the domains

conda activate python27
python ~/apps/public_scripts/domain_searching/get_DOMAIN_region_i_want_from_fasta_amino_acid.py -i Nempool1_S1_L001vsearch_cluster_fast_centroids.fasta --hmm Nempool1_S1_L001vsearch_cluster_fast_centroids.vs_hmm.tab -o Nempool1_S1_L001vsearch_cluster_fast_centroids.hmm.filtered.fasta

# remove the database sequences. Will add them back in for the tree
 python /home/pthorpe/scratch/kenya_metab/pool1/dada2_Nempool1_S1_L001_Vsearch_clustfast_0.99/get_sequences_i_want_from_fasta.py -i Nempool1_S1_L001vsearch_cluster_fast_centroids.hmm.filtered.fasta  -o temp

cat temp /home/pthorpe/scratch/kenya_metab/Globodera_db.fasta > hmm_filtered_cetroid_plus_db.fasta

hmmalign --dna ../../globadera_ITS.hmm hmm_filtered_cetroid_plus_db.fasta  > hmm_filtered_cetroid_plus_db.fasta.aln

python ~/apps/public_scripts/convert_file_format/convert_stock_to_fasta_cmd_line.py -d /home/pthorpe/scratch/kenya_metab/pool1/dada2_Nempool1_S1_L001_Vsearch_clustfast_0.99 -e db.fasta.aln

~/apps/trimAl/source/trimal -in hmm_filtered_cetroid_plus_db.fasta.fasta -out hmm_filtered_cetroid_plus_db.fasta.aln.trimal.fasta -fasta -gappyout
# does ntpo work
#~/apps/trimAl/source/trimal -in hmm_filtered_cetroid_plus_db.fasta.fasta -out hmm_filtered_cetroid_plus_db.fasta.aln.trimal_nogaps.fasta -fasta -nogaps
 iqtree -s hmm_filtered_cetroid_plus_db.fasta.aln.trimal.fasta -st AA -m TEST -bb 1000 -alrt 1000 -mem 39GB -nt AUTO

# manually edit in jalview

 iqtree -s hmm_filtered_cetroid_plus_db.fasta.aln.trimal_jalview_altered.fasta  -st AA -m TEST -bb 1000 -alrt 1000 -mem 39GB -nt AUTO




########################################################
# trim al to remove spaces

$ ~/apps/trimAl/source/trimal -in Nempool1_S1_L001vsearch_cluster_fast_centroids.fasta.aln -out Nempool1_S1_L001vsearch_cluster_fast_centroids.fasta.aln.trimal.fasta -fasta -gappyout
conda activate iqtree
 iqtree -s Nempool1_S1_L001vsearch_cluster_fast_centroids.fasta.aln.trimal.fasta -st AA -m TEST -bb 1000 -alrt 1000 -mem 39GB -nt AUTO


##############################################################
##############################################################
##############################################################
# POOL2

$ hmmbuild --dna globadera_ITS.hmm Globodera_db.aln.fasta

    # align the sentroid to the hmm
    hmmalign --dna --trim ../../globadera_ITS.hmm Nempool2_S1_L001vsearch_cluster_fast_centroids.fasta > Nempool2_S1_L001vsearch_cluster_fast_centroids.hmmAligned.sto
    # convert sto to fasta 
    python ~/apps/public_scripts/convert_file_format/convert_stock_to_fasta_cmd_line.py
    DOESNT WORK WELL

# filter the centroids using the hmm
hmmsearch --domE 0.00001 -E 0.00001 --domtblout Nempool2_S1_L001vsearch_cluster_fast_centroids.vs_hmm.tab ../../globadera_ITS.hmm Nempool2_S1_L001vsearch_cluster_fast_centroids.fasta

# pull out the domains

conda activate python27
python ~/apps/public_scripts/domain_searching/get_DOMAIN_region_i_want_from_fasta_amino_acid.py -i Nempool2_S1_L001vsearch_cluster_fast_centroids.fasta --hmm Nempool2_S1_L001vsearch_cluster_fast_centroids.vs_hmm.tab -o Nempool2_S1_L001vsearch_cluster_fast_centroids.hmm.filtered.fasta

# remove the database sequences. Will add them back in for the tree
 python /home/pthorpe/scratch/kenya_metab/pool1/dada2_Nempool1_S1_L001_Vsearch_clustfast_0.99/get_sequences_i_want_from_fasta.py -i Nempool2_S1_L001vsearch_cluster_fast_centroids.hmm.filtered.fasta  -o temp

cat temp /home/pthorpe/scratch/kenya_metab/Globodera_db.fasta > hmm_filtered_cetroid_plus_db.fasta
mkdir fasta_files
hmmalign --dna ../../globadera_ITS.hmm hmm_filtered_cetroid_plus_db.fasta  > hmm_filtered_cetroid_plus_db.fasta.aln

python ~/apps/public_scripts/convert_file_format/convert_stock_to_fasta_cmd_line.py -d /home/pthorpe/scratch/kenya_metab/pool2/dada2_Nempool2_S1_L001_Vsearch_clustfast_0.99 -e db.fasta.aln

~/apps/trimAl/source/trimal -in hmm_filtered_cetroid_plus_db.fasta.fasta -out hmm_filtered_cetroid_plus_db.fasta.aln.trimal.fasta -fasta -gappyout
# does ntpo work
#~/apps/trimAl/source/trimal -in hmm_filtered_cetroid_plus_db.fasta.fasta -out hmm_filtered_cetroid_plus_db.fasta.aln.trimal_nogaps.fasta -fasta -nogaps
 iqtree -s hmm_filtered_cetroid_plus_db.fasta.aln.trimal.fasta -st AA -m TEST -bb 1000 -alrt 1000 -mem 39GB -nt AUTO

# manually edit in jalview

 iqtree -s hmm_filtered_cetroid_plus_db.fasta.aln.trima_jalviewl.fasta -st AA -m TEST -bb 1000 -alrt 1000 -mem 39GB -nt AUTO




########################################################
# trim al to remove spaces

$ ~/apps/trimAl/source/trimal -in Nempool2_S1_L001vsearch_cluster_fast_centroids.fasta.aln -out Nempool2_S1_L001vsearch_cluster_fast_centroids.fasta.aln.trimal.fasta -fasta -gappyout
conda activate iqtree
 iqtree -s Nempool2_S1_L001vsearch_cluster_fast_centroids.fasta.aln.trimal.fasta -st AA -m TEST -bb 1000 -alrt 1000 -mem 39GB -nt AUTO
