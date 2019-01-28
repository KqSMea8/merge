.class public abstract Lc8/rng;
.super Ljava/lang/Object;
.source "AbsBucketFetcher.java"


# instance fields
.field protected bucketFetcherReader:Lc8/sng;

.field protected mContext:Landroid/content/Context;

.field private mMurHashCodeCache:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUtdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/sng;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bucketFetcherReader"    # Lc8/sng;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/rng;->mMurHashCodeCache:Landroid/support/v4/util/ArrayMap;

    .line 45
    iput-object p1, p0, Lc8/rng;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lc8/rng;->bucketFetcherReader:Lc8/sng;

    .line 47
    return-void
.end method

.method private getCurrentGreyLevel(JJLjava/lang/Integer;)I
    .locals 13
    .param p1, "beginTime"    # J
    .param p3, "greyTime"    # J
    .param p5, "grayLevel"    # Ljava/lang/Integer;

    .prologue
    .line 193
    const-wide/16 v6, 0x0

    cmp-long v3, p3, v6

    if-nez v3, :cond_0

    .line 194
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 203
    :goto_0
    return v2

    .line 196
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 197
    .local v4, "now":J
    sub-long v6, v4, p1

    long-to-double v6, v6

    const-wide/16 v8, 0x3c

    mul-long v8, v8, p3

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    long-to-double v8, v8

    div-double v0, v6, v8

    .line 198
    .local v0, "greyFactor":D
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v8, v3

    mul-double v0, v6, v8

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    .line 201
    .local v2, "greyLevel":I
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 202
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 203
    goto :goto_0
.end method

.method private hashCoordinate(Ljava/lang/String;)J
    .locals 5
    .param p1, "antId"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v1, p0, Lc8/rng;->mUtdid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lc8/rng;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/rng;->mUtdid:Ljava/lang/String;

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lc8/rng;->mUtdid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "hash":Ljava/lang/String;
    iget-object v1, p0, Lc8/rng;->mMurHashCodeCache:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lc8/rng;->mMurHashCodeCache:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 172
    .local v2, "hashcode":J
    :goto_0
    return-wide v2

    .line 169
    .end local v2    # "hashcode":J
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/rng;->murmurHash([B)J

    move-result-wide v2

    .line 170
    .restart local v2    # "hashcode":J
    iget-object v1, p0, Lc8/rng;->mMurHashCodeCache:Landroid/support/v4/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isInGrey(JJLjava/lang/Integer;J)Z
    .locals 11
    .param p1, "beginTime"    # J
    .param p3, "greyTime"    # J
    .param p5, "maxLevel"    # Ljava/lang/Integer;
    .param p6, "hashCode"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 179
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    rem-long v6, p6, v6

    long-to-int v3, v6

    .line 180
    .local v3, "greyMod":I
    invoke-direct/range {p0 .. p5}, Lc8/rng;->getCurrentGreyLevel(JJLjava/lang/Integer;)I

    move-result v2

    .line 181
    .local v2, "currentGreyLevel":I
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "beginTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "greyTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hashCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p6

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currentGreyLevel: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "greyMod: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lc8/log;->info([Ljava/lang/String;)V

    .line 183
    if-lt v2, v3, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private murmurHash([B)J
    .locals 16
    .param p1, "key"    # [B

    .prologue
    .line 210
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const v10, 0x1234abcd

    .line 213
    .local v10, "seed":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    .line 214
    .local v1, "byteOrder":Ljava/nio/ByteOrder;
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 216
    const-wide v8, -0x395b586ca42e166bL    # -2.0946245025644615E32

    .line 217
    .local v8, "m":J
    const/16 v3, 0x2f

    .line 219
    .local v3, "r":I
    int-to-long v12, v10

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    int-to-long v14, v11

    mul-long/2addr v14, v8

    xor-long v4, v12, v14

    .line 222
    .local v4, "h":J
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    const/16 v12, 0x8

    if-lt v11, v12, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 225
    .local v6, "k":J
    mul-long/2addr v6, v8

    .line 226
    ushr-long v12, v6, v3

    xor-long/2addr v6, v12

    .line 227
    mul-long/2addr v6, v8

    .line 229
    xor-long/2addr v4, v6

    .line 230
    mul-long/2addr v4, v8

    goto :goto_0

    .line 233
    .end local v6    # "k":J
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-lez v11, :cond_1

    .line 234
    const/16 v11, 0x8

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 238
    .local v2, "finish":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 239
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v12

    xor-long/2addr v4, v12

    .line 240
    mul-long/2addr v4, v8

    .line 243
    .end local v2    # "finish":Ljava/nio/ByteBuffer;
    :cond_1
    ushr-long v12, v4, v3

    xor-long/2addr v4, v12

    .line 244
    mul-long/2addr v4, v8

    .line 245
    ushr-long v12, v4, v3

    xor-long/2addr v4, v12

    .line 247
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 249
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    return-wide v12
.end method


# virtual methods
.method public getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lc8/rng;->getBucket(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBucket(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "needTrack"    # Z

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, "bucket":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    .local v2, "start":J
    invoke-virtual {p0, p1, p2}, Lc8/rng;->getEffectiveGroup(Ljava/lang/String;Ljava/lang/String;)Lc8/Vng;

    move-result-object v1

    .line 83
    .local v1, "group":Lc8/Vng;
    invoke-virtual {p0, v1, p1, p2, p3}, Lc8/rng;->getBucketByGroup(Lc8/Vng;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 84
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getBucket:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cost: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lc8/log;->info([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "group":Lc8/Vng;
    .end local v2    # "start":J
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v4

    .line 86
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v4}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract getBucketByGroup(Lc8/Vng;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getEffectiveAbtestId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEffectiveAbtestId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected getEffectiveGroup(Ljava/lang/String;Ljava/lang/String;)Lc8/Vng;
    .locals 21
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual/range {p0 .. p2}, Lc8/rng;->getExperiments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 96
    .local v13, "experimentList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;"
    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    :cond_0
    const/4 v11, 0x0

    .line 157
    :cond_1
    :goto_0
    return-object v11

    .line 101
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/Ung;

    .line 102
    .local v12, "experiment":Lc8/Ung;
    if-eqz v12, :cond_3

    .line 105
    iget-object v0, v12, Lc8/Ung;->groups:Ljava/util/List;

    move-object/from16 v18, v0

    .line 106
    .local v18, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 110
    const/4 v11, 0x0

    .line 111
    .local v11, "effectiveGroup":Lc8/Vng;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lc8/Vng;

    .line 114
    .local v16, "firstGroup":Lc8/Vng;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lc8/Vng;

    .line 115
    .local v17, "group":Lc8/Vng;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rng;->bucketFetcherReader:Lc8/sng;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Lc8/sng;->isGroupInWhitelist(Lc8/Vng;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    move-object/from16 v11, v17

    .line 120
    .end local v17    # "group":Lc8/Vng;
    :cond_5
    if-nez v11, :cond_1

    .line 125
    invoke-virtual/range {v16 .. v16}, Lc8/Vng;->isEffective()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    iget v3, v12, Lc8/Ung;->antId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lc8/rng;->hashCoordinate(Ljava/lang/String;)J

    move-result-wide v9

    .line 132
    .local v9, "hashcode":J
    iget-wide v4, v12, Lc8/Ung;->grey:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 133
    iget-wide v4, v12, Lc8/Ung;->begin:J

    iget-wide v6, v12, Lc8/Ung;->grey:J

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lc8/rng;->isInGrey(JJLjava/lang/Integer;J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    :cond_6
    const-wide/32 v4, 0xf4240

    rem-long v14, v9, v4

    .line 140
    .local v14, "factorHashcode":J
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lc8/Vng;

    .line 141
    .restart local v17    # "group":Lc8/Vng;
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Lc8/Vng;->isInSample(J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 142
    move-object/from16 v11, v17

    .line 146
    .end local v17    # "group":Lc8/Vng;
    :cond_8
    if-eqz v11, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rng;->bucketFetcherReader:Lc8/sng;

    iget-object v4, v11, Lc8/Vng;->condition:Ljava/lang/String;

    invoke-interface {v3, v4}, Lc8/sng;->conditionEvaluate(Ljava/lang/String;)Z

    move-result v2

    .line 152
    .local v2, "conditionMatch":Z
    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 157
    .end local v2    # "conditionMatch":Z
    .end local v9    # "hashcode":J
    .end local v11    # "effectiveGroup":Lc8/Vng;
    .end local v12    # "experiment":Lc8/Ung;
    .end local v14    # "factorHashcode":J
    .end local v16    # "firstGroup":Lc8/Vng;
    .end local v18    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected abstract getExperiments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Ung;",
            ">;"
        }
    .end annotation
.end method
