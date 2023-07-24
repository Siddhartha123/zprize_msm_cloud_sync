for i in {0..42}
do
echo "    wire cnt_bucket_chunks_${i}_we0, cnt_bucket_chunks_${i}_we1;
    wire [5:0] cnt_bucket_chunks_${i}_address0, cnt_bucket_chunks_${i}_address1;
    wire [14:0] cnt_bucket_chunks_${i}_d0, cnt_bucket_chunks_${i}_d1;
    reg [14:0] cnt_bucket_chunks_${i}_q0, cnt_bucket_chunks_${i}_q1;
    "
done