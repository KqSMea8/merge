.class public Lc8/yUe;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lc8/cTe;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lc8/VSe;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLc8/VSe;Lc8/cTe;)V
    .locals 9
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lc8/VSe;
    .param p4, "cacheResponse"    # Lc8/cTe;

    .prologue
    const/4 v8, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v8, p0, Lc8/yUe;->ageSeconds:I

    .line 126
    iput-wide p1, p0, Lc8/yUe;->nowMillis:J

    .line 127
    iput-object p3, p0, Lc8/yUe;->request:Lc8/VSe;

    .line 128
    iput-object p4, p0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    .line 130
    if-eqz p4, :cond_7

    .line 131
    invoke-virtual {p4}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v1

    .line 132
    .local v1, "headers":Lc8/GSe;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lc8/GSe;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 133
    invoke-virtual {v1, v2}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "Date"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    invoke-static {v4}, Lc8/MUe;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lc8/yUe;->servedDate:Ljava/util/Date;

    .line 137
    iput-object v4, p0, Lc8/yUe;->servedDateString:Ljava/lang/String;

    .line 132
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const-string/jumbo v5, "Expires"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    invoke-static {v4}, Lc8/MUe;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lc8/yUe;->expires:Ljava/util/Date;

    goto :goto_1

    .line 140
    :cond_2
    const-string/jumbo v5, "Last-Modified"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    invoke-static {v4}, Lc8/MUe;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lc8/yUe;->lastModified:Ljava/util/Date;

    .line 142
    iput-object v4, p0, Lc8/yUe;->lastModifiedString:Ljava/lang/String;

    goto :goto_1

    .line 143
    :cond_3
    const-string/jumbo v5, "ETag"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 144
    iput-object v4, p0, Lc8/yUe;->etag:Ljava/lang/String;

    goto :goto_1

    .line 145
    :cond_4
    const-string/jumbo v5, "Age"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 146
    invoke-static {v4, v8}, Lc8/AUe;->parseSeconds(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lc8/yUe;->ageSeconds:I

    goto :goto_1

    .line 147
    :cond_5
    sget-object v5, Lc8/UUe;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 148
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lc8/yUe;->sentRequestMillis:J

    goto :goto_1

    .line 149
    :cond_6
    sget-object v5, Lc8/UUe;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lc8/yUe;->receivedResponseMillis:J

    goto :goto_1

    .line 154
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "headers":Lc8/GSe;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private cacheResponseAge()J
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    .line 275
    iget-object v8, p0, Lc8/yUe;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lc8/yUe;->receivedResponseMillis:J

    iget-object v10, p0, Lc8/yUe;->servedDate:Ljava/util/Date;

    .line 276
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 278
    .local v0, "apparentReceivedAge":J
    :cond_0
    iget v8, p0, Lc8/yUe;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lc8/yUe;->ageSeconds:I

    int-to-long v10, v9

    .line 279
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 281
    .local v2, "receivedAge":J
    :goto_0
    iget-wide v8, p0, Lc8/yUe;->receivedResponseMillis:J

    iget-wide v10, p0, Lc8/yUe;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 282
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lc8/yUe;->nowMillis:J

    iget-wide v10, p0, Lc8/yUe;->receivedResponseMillis:J

    sub-long v4, v8, v10

    .line 283
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_1
    move-wide v2, v0

    .line 279
    goto :goto_0
.end method

.method private computeFreshnessLifetime()J
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    .line 246
    iget-object v3, p0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    invoke-virtual {v3}, Lc8/cTe;->cacheControl()Lc8/iSe;

    move-result-object v2

    .line 247
    .local v2, "responseCaching":Lc8/iSe;
    invoke-virtual {v2}, Lc8/iSe;->maxAgeSeconds()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 248
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lc8/iSe;->maxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 267
    :cond_0
    :goto_0
    return-wide v0

    .line 249
    :cond_1
    iget-object v3, p0, Lc8/yUe;->expires:Ljava/util/Date;

    if-eqz v3, :cond_3

    .line 250
    iget-object v3, p0, Lc8/yUe;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/yUe;->servedDate:Ljava/util/Date;

    .line 251
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 253
    .local v4, "servedMillis":J
    :goto_1
    iget-object v3, p0, Lc8/yUe;->expires:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v8, v4

    .line 254
    .local v0, "delta":J
    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    move-wide v0, v6

    goto :goto_0

    .line 251
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_2
    iget-wide v4, p0, Lc8/yUe;->receivedResponseMillis:J

    goto :goto_1

    .line 255
    :cond_3
    iget-object v3, p0, Lc8/yUe;->lastModified:Ljava/util/Date;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    .line 256
    invoke-virtual {v3}, Lc8/cTe;->request()Lc8/VSe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/JSe;->query()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 261
    iget-object v3, p0, Lc8/yUe;->servedDate:Ljava/util/Date;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lc8/yUe;->servedDate:Ljava/util/Date;

    .line 262
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 264
    .restart local v4    # "servedMillis":J
    :goto_2
    iget-object v3, p0, Lc8/yUe;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v0, v4, v8

    .line 265
    .restart local v0    # "delta":J
    cmp-long v3, v0, v6

    if-lez v3, :cond_5

    const-wide/16 v6, 0xa

    div-long/2addr v0, v6

    goto :goto_0

    .line 262
    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_4
    iget-wide v4, p0, Lc8/yUe;->sentRequestMillis:J

    goto :goto_2

    .restart local v0    # "delta":J
    .restart local v4    # "servedMillis":J
    :cond_5
    move-wide v0, v6

    .line 265
    goto :goto_0

    .end local v0    # "delta":J
    .end local v4    # "servedMillis":J
    :cond_6
    move-wide v0, v6

    .line 267
    goto :goto_0
.end method

.method private getCandidate()Lc8/zUe;
    .locals 24

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 175
    new-instance v19, Lc8/zUe;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->request:Lc8/VSe;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lc8/zUe;-><init>(Lc8/VSe;Lc8/cTe;Lc8/xUe;)V

    .line 236
    :goto_0
    return-object v19

    .line 179
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->request:Lc8/VSe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/VSe;->isHttps()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/cTe;->handshake()Lc8/DSe;

    move-result-object v19

    if-nez v19, :cond_1

    .line 180
    new-instance v19, Lc8/zUe;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->request:Lc8/VSe;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lc8/zUe;-><init>(Lc8/VSe;Lc8/cTe;Lc8/xUe;)V

    goto :goto_0

    .line 186
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->request:Lc8/VSe;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lc8/zUe;->isCacheable(Lc8/cTe;Lc8/VSe;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 187
    new-instance v19, Lc8/zUe;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->request:Lc8/VSe;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lc8/zUe;-><init>(Lc8/VSe;Lc8/cTe;Lc8/xUe;)V

    goto :goto_0

    .line 190
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->request:Lc8/VSe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/VSe;->cacheControl()Lc8/iSe;

    move-result-object v9

    .line 191
    .local v9, "requestCaching":Lc8/iSe;
    invoke-virtual {v9}, Lc8/iSe;->noCache()Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->request:Lc8/VSe;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/yUe;->hasConditions(Lc8/VSe;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 192
    :cond_3
    new-instance v19, Lc8/zUe;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->request:Lc8/VSe;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lc8/zUe;-><init>(Lc8/VSe;Lc8/cTe;Lc8/xUe;)V

    goto :goto_0

    .line 195
    :cond_4
    invoke-direct/range {p0 .. p0}, Lc8/yUe;->cacheResponseAge()J

    move-result-wide v4

    .line 196
    .local v4, "ageMillis":J
    invoke-direct/range {p0 .. p0}, Lc8/yUe;->computeFreshnessLifetime()J

    move-result-wide v10

    .line 198
    .local v10, "freshMillis":J
    invoke-virtual {v9}, Lc8/iSe;->maxAgeSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 199
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lc8/iSe;->maxAgeSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 202
    :cond_5
    const-wide/16 v14, 0x0

    .line 203
    .local v14, "minFreshMillis":J
    invoke-virtual {v9}, Lc8/iSe;->minFreshSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 204
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lc8/iSe;->minFreshSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v14

    .line 207
    :cond_6
    const-wide/16 v12, 0x0

    .line 208
    .local v12, "maxStaleMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/cTe;->cacheControl()Lc8/iSe;

    move-result-object v18

    .line 209
    .local v18, "responseCaching":Lc8/iSe;
    invoke-virtual/range {v18 .. v18}, Lc8/iSe;->mustRevalidate()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-virtual {v9}, Lc8/iSe;->maxStaleSeconds()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 210
    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Lc8/iSe;->maxStaleSeconds()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 213
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lc8/iSe;->noCache()Z

    move-result v19

    if-nez v19, :cond_a

    add-long v20, v4, v14

    add-long v22, v10, v12

    cmp-long v19, v20, v22

    if-gez v19, :cond_a

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/cTe;->newBuilder()Lc8/bTe;

    move-result-object v6

    .line 215
    .local v6, "builder":Lc8/bTe;
    add-long v20, v4, v14

    cmp-long v19, v20, v10

    if-ltz v19, :cond_8

    .line 216
    const-string/jumbo v19, "Warning"

    const-string/jumbo v20, "110 HttpURLConnection \"Response is stale\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lc8/bTe;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/bTe;

    .line 218
    :cond_8
    const-wide/32 v16, 0x5265c00

    .line 219
    .local v16, "oneDayMillis":J
    cmp-long v19, v4, v16

    if-lez v19, :cond_9

    invoke-direct/range {p0 .. p0}, Lc8/yUe;->isFreshnessLifetimeHeuristic()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 220
    const-string/jumbo v19, "Warning"

    const-string/jumbo v20, "113 HttpURLConnection \"Heuristic expiration\""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lc8/bTe;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/bTe;

    .line 222
    :cond_9
    new-instance v19, Lc8/zUe;

    const/16 v20, 0x0

    invoke-virtual {v6}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object v21

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Lc8/zUe;-><init>(Lc8/VSe;Lc8/cTe;Lc8/xUe;)V

    goto/16 :goto_0

    .line 225
    .end local v6    # "builder":Lc8/bTe;
    .end local v16    # "oneDayMillis":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->request:Lc8/VSe;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lc8/VSe;->newBuilder()Lc8/USe;

    move-result-object v8

    .line 227
    .local v8, "conditionalRequestBuilder":Lc8/USe;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->etag:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 228
    const-string/jumbo v19, "If-None-Match"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->etag:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    .line 235
    :cond_b
    :goto_1
    invoke-virtual {v8}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v7

    .line 236
    .local v7, "conditionalRequest":Lc8/VSe;
    invoke-static {v7}, Lc8/yUe;->hasConditions(Lc8/VSe;)Z

    move-result v19

    if-eqz v19, :cond_e

    new-instance v19, Lc8/zUe;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lc8/zUe;-><init>(Lc8/VSe;Lc8/cTe;Lc8/xUe;)V

    goto/16 :goto_0

    .line 229
    .end local v7    # "conditionalRequest":Lc8/VSe;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->lastModified:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 230
    const-string/jumbo v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->lastModifiedString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    goto :goto_1

    .line 231
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->servedDate:Ljava/util/Date;

    move-object/from16 v19, v0

    if-eqz v19, :cond_b

    .line 232
    const-string/jumbo v19, "If-Modified-Since"

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yUe;->servedDateString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    goto :goto_1

    .line 236
    .restart local v7    # "conditionalRequest":Lc8/VSe;
    :cond_e
    new-instance v19, Lc8/zUe;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v7, v1, v2}, Lc8/zUe;-><init>(Lc8/VSe;Lc8/cTe;Lc8/xUe;)V

    goto/16 :goto_0
.end method

.method private static hasConditions(Lc8/VSe;)Z
    .locals 1
    .param p0, "request"    # Lc8/VSe;

    .prologue
    .line 301
    const-string/jumbo v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lc8/VSe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lc8/VSe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lc8/yUe;->cacheResponse:Lc8/cTe;

    invoke-virtual {v0}, Lc8/cTe;->cacheControl()Lc8/iSe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/iSe;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc8/yUe;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get()Lc8/zUe;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Lc8/yUe;->getCandidate()Lc8/zUe;

    move-result-object v0

    .line 163
    .local v0, "candidate":Lc8/zUe;
    iget-object v1, v0, Lc8/zUe;->networkRequest:Lc8/VSe;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/yUe;->request:Lc8/VSe;

    invoke-virtual {v1}, Lc8/VSe;->cacheControl()Lc8/iSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/iSe;->onlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Lc8/zUe;

    .end local v0    # "candidate":Lc8/zUe;
    invoke-direct {v0, v2, v2, v2}, Lc8/zUe;-><init>(Lc8/VSe;Lc8/cTe;Lc8/xUe;)V

    .line 168
    :cond_0
    return-object v0
.end method
