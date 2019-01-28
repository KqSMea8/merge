.class public Lc8/SJ;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UJ;->onDataReceived(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UJ;

.field final synthetic val$mRequestDataSize:J

.field final synthetic val$mRequestFinishedTime:J

.field final synthetic val$mRequestStartTime:J


# direct methods
.method constructor <init>(Lc8/UJ;JJJ)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lc8/SJ;->this$0:Lc8/UJ;

    iput-wide p2, p0, Lc8/SJ;->val$mRequestStartTime:J

    iput-wide p4, p0, Lc8/SJ;->val$mRequestFinishedTime:J

    iput-wide p6, p0, Lc8/SJ;->val$mRequestDataSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x5

    const/4 v10, 0x3

    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 96
    invoke-static {v3}, Lc8/KL;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    const-string/jumbo v4, "awcn.BandWidthSampler"

    const-string/jumbo v5, "onDataReceived"

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "mRequestStartTime"

    aput-object v8, v7, v12

    iget-wide v8, p0, Lc8/SJ;->val$mRequestStartTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    const-string/jumbo v8, "mRequestFinishedTime"

    aput-object v8, v7, v11

    iget-wide v8, p0, Lc8/SJ;->val$mRequestFinishedTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x4

    const-string/jumbo v9, "mRequestDataSize"

    aput-object v9, v7, v8

    iget-wide v8, p0, Lc8/SJ;->val$mRequestDataSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_0
    invoke-static {}, Lc8/UJ;->access$200()Z

    move-result v4

    if-nez v4, :cond_2

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-wide v4, p0, Lc8/SJ;->val$mRequestDataSize:J

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-wide v4, p0, Lc8/SJ;->val$mRequestStartTime:J

    iget-wide v6, p0, Lc8/SJ;->val$mRequestFinishedTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 110
    sget v4, Lc8/UJ;->mReceivedDataCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lc8/UJ;->mReceivedDataCount:I

    .line 111
    sget-wide v4, Lc8/UJ;->mKalmanDataSize:J

    iget-wide v6, p0, Lc8/SJ;->val$mRequestDataSize:J

    add-long/2addr v4, v6

    sput-wide v4, Lc8/UJ;->mKalmanDataSize:J

    .line 113
    sget v4, Lc8/UJ;->mReceivedDataCount:I

    if-ne v4, v3, :cond_3

    .line 114
    iget-wide v4, p0, Lc8/SJ;->val$mRequestFinishedTime:J

    iget-wide v6, p0, Lc8/SJ;->val$mRequestStartTime:J

    sub-long/2addr v4, v6

    sput-wide v4, Lc8/UJ;->mKalmanTimeUsed:J

    .line 117
    :cond_3
    sget v4, Lc8/UJ;->mReceivedDataCount:I

    if-lt v4, v11, :cond_4

    sget v4, Lc8/UJ;->mReceivedDataCount:I

    if-gt v4, v10, :cond_4

    .line 119
    iget-wide v4, p0, Lc8/SJ;->val$mRequestStartTime:J

    sget-wide v6, Lc8/UJ;->mReceivedRequestFinishedTimePre:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c

    .line 120
    sget-wide v4, Lc8/UJ;->mKalmanTimeUsed:J

    iget-wide v6, p0, Lc8/SJ;->val$mRequestFinishedTime:J

    iget-wide v8, p0, Lc8/SJ;->val$mRequestStartTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    sput-wide v4, Lc8/UJ;->mKalmanTimeUsed:J

    .line 133
    :cond_4
    :goto_1
    iget-wide v4, p0, Lc8/SJ;->val$mRequestStartTime:J

    sput-wide v4, Lc8/UJ;->mReceivedRequestStartTimePre:J

    .line 134
    iget-wide v4, p0, Lc8/SJ;->val$mRequestFinishedTime:J

    sput-wide v4, Lc8/UJ;->mReceivedRequestFinishedTimePre:J

    .line 136
    sget v4, Lc8/UJ;->mReceivedDataCount:I

    if-ne v4, v10, :cond_1

    .line 137
    iget-object v4, p0, Lc8/SJ;->this$0:Lc8/UJ;

    invoke-static {v4}, Lc8/UJ;->access$100(Lc8/UJ;)Lc8/WJ;

    move-result-object v4

    sget-wide v6, Lc8/UJ;->mKalmanDataSize:J

    long-to-double v6, v6

    sget-wide v8, Lc8/UJ;->mKalmanTimeUsed:J

    long-to-double v8, v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lc8/WJ;->addMeasurement(DD)D

    move-result-wide v4

    double-to-long v4, v4

    long-to-double v4, v4

    sput-wide v4, Lc8/UJ;->speed:D

    .line 139
    sget-wide v4, Lc8/UJ;->mSpeedKalmanCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lc8/UJ;->mSpeedKalmanCount:J

    .line 140
    iget-object v4, p0, Lc8/SJ;->this$0:Lc8/UJ;

    invoke-static {v4}, Lc8/UJ;->access$308(Lc8/UJ;)I

    .line 143
    sget-wide v4, Lc8/UJ;->mSpeedKalmanCount:J

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 144
    iget-object v4, p0, Lc8/SJ;->this$0:Lc8/UJ;

    invoke-static {v4}, Lc8/UJ;->access$100(Lc8/UJ;)Lc8/WJ;

    move-result-object v4

    invoke-virtual {v4}, Lc8/WJ;->ResetKalmanParams()V

    .line 145
    const-wide/16 v4, 0x3

    sput-wide v4, Lc8/UJ;->mSpeedKalmanCount:J

    .line 149
    :cond_5
    sget-wide v4, Lc8/UJ;->speed:D

    const-wide v6, 0x3fe5c28f5c28f5c3L    # 0.68

    mul-double/2addr v4, v6

    sget-wide v6, Lc8/UJ;->speedPre:D

    const-wide v8, 0x3fd147ae147ae148L    # 0.27

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    sget-wide v6, Lc8/UJ;->speedPrePre:D

    const-wide v8, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 151
    .local v0, "filtered_speed":D
    sget-wide v4, Lc8/UJ;->speedPre:D

    sput-wide v4, Lc8/UJ;->speedPrePre:D

    .line 152
    sget-wide v4, Lc8/UJ;->speed:D

    sput-wide v4, Lc8/UJ;->speedPre:D

    .line 155
    sget-wide v4, Lc8/UJ;->speed:D

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    sget-wide v8, Lc8/UJ;->speedPrePre:D

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_6

    sget-wide v4, Lc8/UJ;->speed:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sget-wide v8, Lc8/UJ;->speedPrePre:D

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    .line 156
    :cond_6
    sput-wide v0, Lc8/UJ;->speed:D

    .line 159
    :cond_7
    invoke-static {v3}, Lc8/KL;->isPrintLog(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 160
    const-string/jumbo v4, "awcn.BandWidthSampler"

    const-string/jumbo v5, "NetworkSpeed"

    const/4 v6, 0x0

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "mKalmanDataSize"

    aput-object v8, v7, v12

    sget-wide v8, Lc8/UJ;->mKalmanDataSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    const-string/jumbo v8, "mKalmanTimeUsed"

    aput-object v8, v7, v11

    sget-wide v8, Lc8/UJ;->mKalmanTimeUsed:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x4

    const-string/jumbo v9, "speed"

    aput-object v9, v7, v8

    sget-wide v8, Lc8/UJ;->speed:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x6

    const-string/jumbo v9, "mSpeedKalmanCount"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    sget-wide v10, Lc8/UJ;->mSpeedKalmanCount:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_8
    iget-object v4, p0, Lc8/SJ;->this$0:Lc8/UJ;

    invoke-static {v4}, Lc8/UJ;->access$300(Lc8/UJ;)I

    move-result v4

    if-gt v4, v2, :cond_9

    sget-wide v4, Lc8/UJ;->mSpeedKalmanCount:J

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    .line 167
    :cond_9
    invoke-static {}, Lc8/QJ;->getInstance()Lc8/QJ;

    move-result-object v4

    sget-wide v6, Lc8/UJ;->speed:D

    invoke-virtual {v4, v6, v7}, Lc8/QJ;->onNetworkSpeedValueNotify(D)V

    .line 168
    iget-object v4, p0, Lc8/SJ;->this$0:Lc8/UJ;

    invoke-static {v4, v12}, Lc8/UJ;->access$302(Lc8/UJ;I)I

    .line 169
    iget-object v4, p0, Lc8/SJ;->this$0:Lc8/UJ;

    sget-wide v6, Lc8/UJ;->speed:D

    sget-wide v8, Lc8/UJ;->speedThreshold:D

    cmpg-double v5, v6, v8

    if-gez v5, :cond_a

    move v2, v3

    :cond_a
    invoke-static {v4, v2}, Lc8/UJ;->access$402(Lc8/UJ;I)I

    .line 170
    const-string/jumbo v2, "awcn.BandWidthSampler"

    const-string/jumbo v4, "NetworkSpeed notification!"

    const/4 v5, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "Send Network quality notification."

    aput-object v6, v3, v12

    invoke-static {v2, v4, v5, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    :cond_b
    const-wide/16 v2, 0x0

    sput-wide v2, Lc8/UJ;->mKalmanTimeUsed:J

    .line 173
    const-wide/16 v2, 0x0

    sput-wide v2, Lc8/UJ;->mKalmanDataSize:J

    .line 174
    sput v12, Lc8/UJ;->mReceivedDataCount:I

    goto/16 :goto_0

    .line 123
    .end local v0    # "filtered_speed":D
    :cond_c
    iget-wide v4, p0, Lc8/SJ;->val$mRequestStartTime:J

    sget-wide v6, Lc8/UJ;->mReceivedRequestFinishedTimePre:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    iget-wide v4, p0, Lc8/SJ;->val$mRequestFinishedTime:J

    sget-wide v6, Lc8/UJ;->mReceivedRequestFinishedTimePre:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_4

    .line 124
    sget-wide v4, Lc8/UJ;->mKalmanTimeUsed:J

    iget-wide v6, p0, Lc8/SJ;->val$mRequestFinishedTime:J

    iget-wide v8, p0, Lc8/SJ;->val$mRequestStartTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 125
    sput-wide v4, Lc8/UJ;->mKalmanTimeUsed:J

    sget-wide v6, Lc8/UJ;->mReceivedRequestFinishedTimePre:J

    iget-wide v8, p0, Lc8/SJ;->val$mRequestStartTime:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    sput-wide v4, Lc8/UJ;->mKalmanTimeUsed:J

    goto/16 :goto_1
.end method
