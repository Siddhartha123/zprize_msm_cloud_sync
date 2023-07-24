for i in {0..42}
do
echo "always@(posedge ap_clk) begin
    if(cnt_bucket_chunks_${i}_we0==1'b1)
        cnt_bucket_chunks_${i}[cnt_bucket_chunks_${i}_address0] <= cnt_bucket_chunks_${i}_d0;
    if(cnt_bucket_chunks_${i}_we1==1'b1)
        cnt_bucket_chunks_${i}[cnt_bucket_chunks_${i}_address1] <= cnt_bucket_chunks_${i}_d1;
end
always@(posedge ap_clk) begin
    cnt_bucket_chunks_${i}_q0 <= cnt_bucket_chunks_${i}[cnt_bucket_chunks_${i}_address0];
    cnt_bucket_chunks_${i}_q1 <= cnt_bucket_chunks_${i}[cnt_bucket_chunks_${i}_address1];
end"
done