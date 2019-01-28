.class public Lc8/BZe;
.super Ljava/lang/Object;
.source "CipherDB.java"


# static fields
.field private static DEFAULT_CIPHERDB_DIR_NAME:Ljava/lang/String;


# instance fields
.field protected cipherDBBridge:Lc8/CZe;

.field protected dbPath:Ljava/lang/String;

.field protected key:Ljava/lang/String;

.field public mICipherDBUpgradeCallback:Lc8/JZe;

.field protected nativeCipherDBInstance:J

.field protected threadSafe:Z

.field protected version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "CipherDB"

    sput-object v0, Lc8/BZe;->DEFAULT_CIPHERDB_DIR_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "dbPath"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lc8/BZe;->nativeCipherDBInstance:J

    .line 23
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/BZe;->threadSafe:Z

    .line 28
    iput-object v6, p0, Lc8/BZe;->dbPath:Ljava/lang/String;

    .line 33
    const/4 v3, -0x1

    iput v3, p0, Lc8/BZe;->version:I

    .line 38
    iput-object v6, p0, Lc8/BZe;->key:Ljava/lang/String;

    .line 48
    iput-object v6, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    .line 61
    iput-object p1, p0, Lc8/BZe;->dbPath:Ljava/lang/String;

    .line 62
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 63
    .local v2, "slashIndex":I
    if-lez v2, :cond_0

    .line 64
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "dbDir":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "cipherDBDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70
    .end local v0    # "cipherDBDir":Ljava/io/File;
    .end local v1    # "dbDir":Ljava/lang/String;
    :cond_0
    iput p2, p0, Lc8/BZe;->version:I

    .line 71
    new-instance v3, Lc8/CZe;

    invoke-direct {v3, p0}, Lc8/CZe;-><init>(Lc8/BZe;)V

    iput-object v3, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "dbPath"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lc8/BZe;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lc8/BZe;->key:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private bindParam(J[Ljava/lang/Object;)Lc8/DZe;
    .locals 11
    .param p1, "nativeStatementInstance"    # J
    .param p3, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-boolean v2, p0, Lc8/BZe;->threadSafe:Z

    invoke-virtual {v1, p1, p2, v2}, Lc8/CZe;->getParamCount(JZ)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 282
    .local v10, "paramCount":I
    if-nez p3, :cond_1

    .line 283
    if-nez v10, :cond_0

    .line 284
    const/4 v8, 0x0

    .line 319
    .end local v10    # "paramCount":I
    :goto_0
    return-object v8

    .line 278
    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    .line 279
    new-instance v8, Lc8/DZe;

    const/16 v1, -0x64

    const-string/jumbo v2, "Cipher db so load fail"

    invoke-direct {v8, v1, v2}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .line 280
    .local v8, "error":Lc8/DZe;
    goto :goto_0

    .line 286
    .end local v8    # "error":Lc8/DZe;
    .restart local v10    # "paramCount":I
    :cond_0
    new-instance v8, Lc8/DZe;

    const/4 v1, -0x2

    const-string/jumbo v2, "Input argument error"

    invoke-direct {v8, v1, v2}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_1
    array-length v1, p3

    if-eq v1, v10, :cond_2

    .line 291
    new-instance v8, Lc8/DZe;

    const/4 v1, -0x2

    const-string/jumbo v2, "Input argument error"

    invoke-direct {v8, v1, v2}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_2
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    :try_start_1
    array-length v1, p3

    if-ge v9, v1, :cond_b

    .line 295
    aget-object v1, p3, v9

    instance-of v1, v1, [B

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-boolean v4, p0, Lc8/BZe;->threadSafe:Z

    add-int/lit8 v5, v9, 0x1

    aget-object v6, p3, v9

    check-cast v6, [B

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lc8/CZe;->bind(JZI[B)I

    .line 294
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 297
    :cond_3
    aget-object v1, p3, v9

    instance-of v1, v1, Ljava/lang/Float;

    if-nez v1, :cond_4

    aget-object v1, p3, v9

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 298
    :cond_4
    iget-object v1, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-boolean v4, p0, Lc8/BZe;->threadSafe:Z

    add-int/lit8 v5, v9, 0x1

    aget-object v2, p3, v9

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lc8/CZe;->bind(JZID)I
    :try_end_1
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 312
    :catch_1
    move-exception v0

    .line 313
    .local v0, "e":Lcom/taobao/android/cipherdb/CipherDBException;
    new-instance v8, Lc8/DZe;

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 299
    .end local v0    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    :cond_5
    :try_start_2
    aget-object v1, p3, v9

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 300
    iget-object v1, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-boolean v4, p0, Lc8/BZe;->threadSafe:Z

    add-int/lit8 v5, v9, 0x1

    aget-object v2, p3, v9

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v6, v2

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lc8/CZe;->bind(JZID)I
    :try_end_2
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 315
    :catch_2
    move-exception v1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    .line 316
    new-instance v8, Lc8/DZe;

    const/16 v1, -0x64

    const-string/jumbo v2, "Cipher db so load fail"

    invoke-direct {v8, v1, v2}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .line 317
    .restart local v8    # "error":Lc8/DZe;
    goto/16 :goto_0

    .line 301
    .end local v8    # "error":Lc8/DZe;
    :cond_6
    :try_start_3
    aget-object v1, p3, v9

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_7

    aget-object v1, p3, v9

    instance-of v1, v1, Ljava/lang/Short;

    if-nez v1, :cond_7

    aget-object v1, p3, v9

    instance-of v1, v1, Ljava/lang/Byte;

    if-eqz v1, :cond_8

    .line 303
    :cond_7
    iget-object v1, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-boolean v4, p0, Lc8/BZe;->threadSafe:Z

    add-int/lit8 v5, v9, 0x1

    aget-object v2, p3, v9

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lc8/CZe;->bind(JZII)I

    goto/16 :goto_2

    .line 304
    :cond_8
    aget-object v1, p3, v9

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 305
    iget-object v1, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-boolean v4, p0, Lc8/BZe;->threadSafe:Z

    add-int/lit8 v5, v9, 0x1

    aget-object v6, p3, v9

    check-cast v6, Ljava/lang/String;

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lc8/CZe;->bind(JZILjava/lang/String;)I

    goto/16 :goto_2

    .line 306
    :cond_9
    aget-object v1, p3, v9

    if-nez v1, :cond_a

    .line 307
    iget-object v1, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-boolean v2, p0, Lc8/BZe;->threadSafe:Z

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lc8/CZe;->bind(JZI)I

    goto/16 :goto_2

    .line 309
    :cond_a
    new-instance v8, Lc8/DZe;

    const/4 v1, -0x2

    const-string/jumbo v2, "Input argument error"

    invoke-direct {v8, v1, v2}, Lc8/DZe;-><init>(ILjava/lang/String;)V
    :try_end_3
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 319
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public beginTransaction()I
    .locals 4

    .prologue
    .line 149
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    iget-boolean v1, p0, Lc8/BZe;->threadSafe:Z

    invoke-virtual {v0, v2, v3, v1}, Lc8/CZe;->beginTransaction(JZ)I

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x9

    goto :goto_0
.end method

.method public close()Lc8/DZe;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 129
    const/4 v1, 0x0

    .line 131
    .local v1, "error":Lc8/DZe;
    :try_start_0
    iget-object v3, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-wide v4, p0, Lc8/BZe;->nativeCipherDBInstance:J

    invoke-virtual {v3, v4, v5}, Lc8/CZe;->close(J)V

    .line 132
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lc8/BZe;->nativeCipherDBInstance:J
    :try_end_0
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v2, v1

    .line 140
    .end local v1    # "error":Lc8/DZe;
    .local v2, "error":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 133
    .end local v2    # "error":Ljava/lang/Object;
    .restart local v1    # "error":Lc8/DZe;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/taobao/android/cipherdb/CipherDBException;
    new-instance v1, Lc8/DZe;

    .end local v1    # "error":Lc8/DZe;
    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .line 139
    .restart local v1    # "error":Lc8/DZe;
    goto :goto_0

    .line 136
    .end local v0    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    :catch_1
    move-exception v3

    iput-wide v6, p0, Lc8/BZe;->nativeCipherDBInstance:J

    .line 137
    new-instance v1, Lc8/DZe;

    .end local v1    # "error":Lc8/DZe;
    const/16 v3, -0x64

    const-string/jumbo v4, "Cipher db so load fail"

    invoke-direct {v1, v3, v4}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .restart local v1    # "error":Lc8/DZe;
    move-object v2, v1

    .line 138
    .restart local v2    # "error":Ljava/lang/Object;
    goto :goto_1
.end method

.method public endTransaction()I
    .locals 4

    .prologue
    .line 173
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    iget-boolean v1, p0, Lc8/BZe;->threadSafe:Z

    invoke-virtual {v0, v2, v3, v1}, Lc8/CZe;->endTransaction(JZ)I

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x9

    goto :goto_0
.end method

.method public execBatchUpdate(Ljava/lang/String;)Lc8/GZe;
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    .line 250
    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    cmp-long v2, v6, v2

    if-nez v2, :cond_0

    .line 251
    new-instance v1, Lc8/DZe;

    const/16 v2, -0x9

    const-string/jumbo v3, "The db is closed, please open first"

    invoke-direct {v1, v2, v3}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .line 252
    .local v1, "error":Lc8/DZe;
    new-instance v2, Lc8/GZe;

    invoke-direct {v2, v1}, Lc8/GZe;-><init>(Lc8/DZe;)V

    .line 264
    .end local v1    # "error":Lc8/DZe;
    :goto_0
    return-object v2

    .line 256
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-wide v4, p0, Lc8/BZe;->nativeCipherDBInstance:J

    iget-boolean v3, p0, Lc8/BZe;->threadSafe:Z

    invoke-virtual {v2, v4, v5, p1, v3}, Lc8/CZe;->execBatchUpdate(JLjava/lang/String;Z)I
    :try_end_0
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :goto_1
    new-instance v2, Lc8/GZe;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lc8/GZe;-><init>(Lc8/DZe;)V

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lcom/taobao/android/cipherdb/CipherDBException;
    new-instance v1, Lc8/DZe;

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .line 259
    .restart local v1    # "error":Lc8/DZe;
    new-instance v2, Lc8/GZe;

    invoke-direct {v2, v1}, Lc8/GZe;-><init>(Lc8/DZe;)V

    goto :goto_0

    .line 261
    .end local v0    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    .end local v1    # "error":Lc8/DZe;
    :catch_1
    move-exception v2

    iput-wide v6, p0, Lc8/BZe;->nativeCipherDBInstance:J

    goto :goto_1
.end method

.method public execQuery(Ljava/lang/String;)Lc8/FZe;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/BZe;->execQuery(Ljava/lang/String;[Ljava/lang/Object;)Lc8/FZe;

    move-result-object v0

    return-object v0
.end method

.method public execQuery(Ljava/lang/String;[Ljava/lang/Object;)Lc8/FZe;
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 339
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lc8/BZe;->nativeCipherDBInstance:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 340
    new-instance v3, Lc8/FZe;

    new-instance v6, Lc8/DZe;

    const/4 v7, -0x3

    const-string/jumbo v8, "Handle is NULL"

    invoke-direct {v6, v7, v8}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    invoke-direct {v3, v6, v10}, Lc8/FZe;-><init>(Lc8/DZe;Lc8/IZe;)V

    .line 356
    :goto_0
    return-object v3

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lc8/BZe;->getStatement(Ljava/lang/String;)J

    move-result-wide v4

    .line 344
    .local v4, "nativeStatementInstance":J
    invoke-direct {p0, v4, v5, p2}, Lc8/BZe;->bindParam(J[Ljava/lang/Object;)Lc8/DZe;

    move-result-object v2

    .line 345
    .local v2, "error":Lc8/DZe;
    if-eqz v2, :cond_1

    .line 346
    new-instance v3, Lc8/FZe;

    invoke-direct {v3, v2, v10}, Lc8/FZe;-><init>(Lc8/DZe;Lc8/IZe;)V

    goto :goto_0

    .line 350
    :cond_1
    :try_start_0
    new-instance v0, Lc8/IZe;

    invoke-direct {v0, v4, v5}, Lc8/IZe;-><init>(J)V
    :try_end_0
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .local v0, "cipherResultSet":Lc8/IZe;
    new-instance v3, Lc8/FZe;

    invoke-direct {v3, v10, v0}, Lc8/FZe;-><init>(Lc8/DZe;Lc8/IZe;)V

    goto :goto_0

    .line 351
    .end local v0    # "cipherResultSet":Lc8/IZe;
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Lcom/taobao/android/cipherdb/CipherDBException;
    new-instance v2, Lc8/DZe;

    .end local v2    # "error":Lc8/DZe;
    invoke-virtual {v1}, Lcom/taobao/android/cipherdb/CipherDBException;->getErrorCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/taobao/android/cipherdb/CipherDBException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .line 353
    .restart local v2    # "error":Lc8/DZe;
    new-instance v3, Lc8/FZe;

    invoke-direct {v3, v2, v10}, Lc8/FZe;-><init>(Lc8/DZe;Lc8/IZe;)V

    goto :goto_0
.end method

.method public execUpdate(Ljava/lang/String;)Lc8/GZe;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/BZe;->execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Lc8/GZe;

    move-result-object v0

    return-object v0
.end method

.method public execUpdate(Ljava/lang/String;[Ljava/lang/Object;)Lc8/GZe;
    .locals 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    const-wide/16 v8, 0x0

    .line 214
    iget-wide v6, p0, Lc8/BZe;->nativeCipherDBInstance:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_0

    .line 215
    new-instance v1, Lc8/DZe;

    const/16 v3, -0x9

    const-string/jumbo v6, "The db is closed, please open first"

    invoke-direct {v1, v3, v6}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .line 216
    .local v1, "error":Lc8/DZe;
    new-instance v3, Lc8/GZe;

    invoke-direct {v3, v1}, Lc8/GZe;-><init>(Lc8/DZe;)V

    .line 240
    :goto_0
    return-object v3

    .line 219
    .end local v1    # "error":Lc8/DZe;
    :cond_0
    invoke-virtual {p0, p1}, Lc8/BZe;->getStatement(Ljava/lang/String;)J

    move-result-wide v4

    .line 220
    .local v4, "nativeStatementInstance":J
    invoke-direct {p0, v4, v5, p2}, Lc8/BZe;->bindParam(J[Ljava/lang/Object;)Lc8/DZe;

    move-result-object v1

    .line 221
    .restart local v1    # "error":Lc8/DZe;
    if-nez v1, :cond_1

    .line 223
    :try_start_0
    iget-object v3, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-boolean v6, p0, Lc8/BZe;->threadSafe:Z

    invoke-virtual {v3, v4, v5, v6}, Lc8/CZe;->execStatement(JZ)I
    :try_end_0
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    .line 233
    :try_start_1
    iget-boolean v3, p0, Lc8/BZe;->threadSafe:Z

    invoke-static {v4, v5, v3}, Lc8/CZe;->closeStatement(JZ)I
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 240
    :cond_1
    :goto_1
    new-instance v3, Lc8/GZe;

    invoke-direct {v3, v1}, Lc8/GZe;-><init>(Lc8/DZe;)V

    goto :goto_0

    .line 235
    :catch_0
    move-exception v3

    iput-wide v8, p0, Lc8/BZe;->nativeCipherDBInstance:J

    goto :goto_1

    .line 224
    :catch_1
    move-exception v0

    .line 225
    .local v0, "e":Lcom/taobao/android/cipherdb/CipherDBException;
    :try_start_2
    new-instance v2, Lc8/DZe;

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lc8/DZe;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .end local v1    # "error":Lc8/DZe;
    .local v2, "error":Lc8/DZe;
    :try_start_3
    new-instance v3, Lc8/GZe;

    invoke-direct {v3, v2}, Lc8/GZe;-><init>(Lc8/DZe;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    cmp-long v6, v8, v4

    if-eqz v6, :cond_2

    .line 233
    :try_start_4
    iget-boolean v6, p0, Lc8/BZe;->threadSafe:Z

    invoke-static {v4, v5, v6}, Lc8/CZe;->closeStatement(JZ)I
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_2
    move-object v1, v2

    .line 236
    .end local v2    # "error":Lc8/DZe;
    .restart local v1    # "error":Lc8/DZe;
    goto :goto_0

    .line 235
    .end local v1    # "error":Lc8/DZe;
    .restart local v2    # "error":Lc8/DZe;
    :catch_2
    move-exception v6

    iput-wide v8, p0, Lc8/BZe;->nativeCipherDBInstance:J

    goto :goto_2

    .line 228
    .end local v0    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    .end local v2    # "error":Lc8/DZe;
    .restart local v1    # "error":Lc8/DZe;
    :catch_3
    move-exception v3

    const-wide/16 v6, 0x0

    :try_start_5
    iput-wide v6, p0, Lc8/BZe;->nativeCipherDBInstance:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 231
    cmp-long v3, v8, v4

    if-eqz v3, :cond_1

    .line 233
    :try_start_6
    iget-boolean v3, p0, Lc8/BZe;->threadSafe:Z

    invoke-static {v4, v5, v3}, Lc8/CZe;->closeStatement(JZ)I
    :try_end_6
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 235
    :catch_4
    move-exception v3

    iput-wide v8, p0, Lc8/BZe;->nativeCipherDBInstance:J

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v3

    :goto_3
    cmp-long v6, v8, v4

    if-eqz v6, :cond_3

    .line 233
    :try_start_7
    iget-boolean v6, p0, Lc8/BZe;->threadSafe:Z

    invoke-static {v4, v5, v6}, Lc8/CZe;->closeStatement(JZ)I
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_5

    .line 236
    :cond_3
    :goto_4
    throw v3

    .line 235
    :catch_5
    move-exception v6

    iput-wide v8, p0, Lc8/BZe;->nativeCipherDBInstance:J

    goto :goto_4

    .line 231
    .end local v1    # "error":Lc8/DZe;
    .restart local v0    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    .restart local v2    # "error":Lc8/DZe;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "error":Lc8/DZe;
    .restart local v1    # "error":Lc8/DZe;
    goto :goto_3
.end method

.method public getChangeCount(Z)I
    .locals 4
    .param p1, "bIsMulti"    # Z

    .prologue
    .line 181
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    iget-boolean v1, p0, Lc8/BZe;->threadSafe:Z

    invoke-virtual {v0, v2, v3, p1, v1}, Lc8/CZe;->getChangeCount(JZZ)I

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x9

    goto :goto_0
.end method

.method public getErrorMsg(I)Ljava/lang/String;
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 369
    :try_start_0
    invoke-static {p1}, Lc8/CZe;->getErrorMsg(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    .line 371
    :catch_0
    move-exception v1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    .line 372
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getStatement(Ljava/lang/String;)J
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 190
    :try_start_0
    iget-object v2, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-wide v4, p0, Lc8/BZe;->nativeCipherDBInstance:J

    iget-boolean v3, p0, Lc8/BZe;->threadSafe:Z

    invoke-virtual {v2, v4, v5, v3, p1}, Lc8/CZe;->createStatement(JZLjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 193
    :goto_0
    return-wide v0

    .line 192
    :catch_0
    move-exception v2

    iput-wide v0, p0, Lc8/BZe;->nativeCipherDBInstance:J

    goto :goto_0
.end method

.method public isThreadSafe()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lc8/BZe;->threadSafe:Z

    return v0
.end method

.method public open(ILc8/JZe;)Lc8/DZe;
    .locals 11
    .param p1, "flag"    # I
    .param p2, "iCipherDBUpgradeCallback"    # Lc8/JZe;

    .prologue
    .line 108
    iput-object p2, p0, Lc8/BZe;->mICipherDBUpgradeCallback:Lc8/JZe;

    .line 109
    const/4 v9, 0x0

    .line 111
    .local v9, "error":Lc8/DZe;
    :try_start_0
    iget-object v1, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    invoke-virtual {v1}, Lc8/CZe;->getDBHandleInstance()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    .line 112
    iget-object v1, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    iget-boolean v4, p0, Lc8/BZe;->threadSafe:Z

    iget-object v5, p0, Lc8/BZe;->dbPath:Ljava/lang/String;

    iget-object v7, p0, Lc8/BZe;->key:Ljava/lang/String;

    iget v8, p0, Lc8/BZe;->version:I

    move v6, p1

    invoke-virtual/range {v1 .. v8}, Lc8/CZe;->openDB(JZLjava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catch Lcom/taobao/android/cipherdb/CipherDBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, v9

    .line 122
    .end local v9    # "error":Lc8/DZe;
    .local v10, "error":Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 113
    .end local v10    # "error":Ljava/lang/Object;
    .restart local v9    # "error":Lc8/DZe;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lcom/taobao/android/cipherdb/CipherDBException;
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    .line 115
    new-instance v9, Lc8/DZe;

    .end local v9    # "error":Lc8/DZe;
    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/taobao/android/cipherdb/CipherDBException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .restart local v9    # "error":Lc8/DZe;
    move-object v10, v9

    .line 116
    .restart local v10    # "error":Ljava/lang/Object;
    goto :goto_0

    .line 118
    .end local v0    # "e":Lcom/taobao/android/cipherdb/CipherDBException;
    .end local v10    # "error":Ljava/lang/Object;
    :catch_1
    move-exception v1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    .line 119
    new-instance v9, Lc8/DZe;

    .end local v9    # "error":Lc8/DZe;
    const/16 v1, -0x64

    const-string/jumbo v2, "Cipher db so load fail"

    invoke-direct {v9, v1, v2}, Lc8/DZe;-><init>(ILjava/lang/String;)V

    .restart local v9    # "error":Lc8/DZe;
    move-object v10, v9

    .line 120
    .restart local v10    # "error":Ljava/lang/Object;
    goto :goto_0
.end method

.method public setThreadSafe(Z)V
    .locals 0
    .param p1, "threadSafe"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lc8/BZe;->threadSafe:Z

    .line 99
    return-void
.end method

.method public setTransactionSuccessful()I
    .locals 4

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lc8/BZe;->cipherDBBridge:Lc8/CZe;

    iget-wide v2, p0, Lc8/BZe;->nativeCipherDBInstance:J

    iget-boolean v1, p0, Lc8/BZe;->threadSafe:Z

    invoke-virtual {v0, v2, v3, v1}, Lc8/CZe;->setTransactionSuccessful(JZ)I

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x9

    goto :goto_0
.end method
