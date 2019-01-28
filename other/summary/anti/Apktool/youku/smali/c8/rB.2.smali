.class public Lc8/rB;
.super Ljava/lang/Object;
.source "WVFileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;
    }
.end annotation


# static fields
.field public static final CREATE:I = 0x4

.field public static final DELETE:I = 0x3

.field private static final FILE_INFO:Ljava/lang/String; = "wv_web_info.dat"

.field public static final READ:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field public static final WRITE:I = 0x2


# instance fields
.field private baseDirPath:Ljava/lang/String;

.field private fInfoChannel:Ljava/nio/channels/FileChannel;

.field private fInfoOs:Ljava/io/RandomAccessFile;

.field private infoDirPath:Ljava/lang/String;

.field private isInit:Z

.field private isNoSpaceClear:Z

.field private maxCapacity:I

.field private sdcard:Z

.field private storedFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/tB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "WVFileCache"

    sput-object v0, Lc8/rB;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "infoDirPath"    # Ljava/lang/String;
    .param p3, "capacity"    # I
    .param p4, "sdcard"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/cache/WVFileCache$FixedSizeLinkedHashMap;-><init>(Lc8/rB;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/rB;->isNoSpaceClear:Z

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lc8/rB;->maxCapacity:I

    .line 52
    iput-object p1, p0, Lc8/rB;->baseDirPath:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lc8/rB;->infoDirPath:Ljava/lang/String;

    .line 54
    iput p3, p0, Lc8/rB;->maxCapacity:I

    .line 55
    iput-boolean p4, p0, Lc8/rB;->sdcard:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/rB;->isInit:Z

    .line 58
    return-void
.end method

.method public static synthetic access$000(Lc8/rB;)I
    .locals 1
    .param p0, "x0"    # Lc8/rB;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 29
    iget v0, p0, Lc8/rB;->maxCapacity:I

    return v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lc8/rB;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lc8/rB;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/rB;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lc8/rB;->baseDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lc8/rB;)Ljava/nio/channels/FileChannel;
    .locals 1
    .param p0, "x0"    # Lc8/rB;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method private collectFiles()Z
    .locals 18

    .prologue
    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 372
    .local v12, "time":J
    const/4 v7, 0x0

    .line 374
    .local v7, "infoByte":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    long-to-int v11, v14

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 375
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v11, v3}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 376
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 381
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 382
    sget-object v11, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "collectFiles read fileinfo:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 385
    if-eqz v7, :cond_8

    .line 386
    const/4 v9, 0x0

    .line 387
    .local v9, "reWrite":Z
    const-string/jumbo v11, "collectFiles"

    const-string/jumbo v14, "read fileinfo success"

    invoke-static {v11, v14}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/16 v8, 0x3c

    .line 389
    .local v8, "offset":I
    const/4 v10, 0x0

    .line 390
    .local v10, "startIndex":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 391
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    array-length v11, v7

    if-ge v8, v11, :cond_4

    .line 392
    aget-byte v11, v7, v8

    const/16 v14, 0xa

    if-ne v11, v14, :cond_1

    .line 394
    sub-int v11, v8, v10

    invoke-static {v7, v10, v11}, Lc8/uB;->getFileInfo([BII)Lc8/tB;

    move-result-object v5

    .line 395
    .local v5, "fileInfo":Lc8/tB;
    if-eqz v5, :cond_3

    .line 396
    iget-object v6, v5, Lc8/tB;->fileName:Ljava/lang/String;

    .line 397
    .local v6, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 398
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    int-to-long v14, v11

    iput-wide v14, v5, Lc8/tB;->pos:J

    .line 399
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v11, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sub-int v11, v8, v10

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v2, v7, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 408
    .end local v6    # "fileName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v10, v8, 0x1

    .line 409
    add-int/lit8 v8, v8, 0x3c

    .line 391
    .end local v5    # "fileInfo":Lc8/tB;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 377
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "offset":I
    .end local v9    # "reWrite":Z
    .end local v10    # "startIndex":I
    :catch_0
    move-exception v4

    .line 378
    .local v4, "e":Ljava/io/IOException;
    sget-object v11, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "collectFiles fInfoChannel.read error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 403
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "fileInfo":Lc8/tB;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v8    # "offset":I
    .restart local v9    # "reWrite":Z
    .restart local v10    # "startIndex":I
    :cond_2
    const/4 v9, 0x1

    .line 405
    goto :goto_2

    .line 406
    .end local v6    # "fileName":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x1

    goto :goto_2

    .line 412
    .end local v5    # "fileInfo":Lc8/tB;
    :cond_4
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 413
    sget-object v11, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parse fileinfo:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 416
    if-eqz v9, :cond_6

    .line 418
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v14, v15}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 419
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v14, 0x0

    invoke-virtual {v11, v14, v15}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 420
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 421
    .restart local v3    # "buffer":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 422
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v11, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_6
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 432
    :goto_4
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 433
    sget-object v11, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write fileinfo:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_7
    const/4 v11, 0x1

    .line 437
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "offset":I
    .end local v9    # "reWrite":Z
    .end local v10    # "startIndex":I
    :goto_5
    return v11

    .line 423
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "offset":I
    .restart local v9    # "reWrite":Z
    .restart local v10    # "startIndex":I
    :catch_1
    move-exception v4

    .line 424
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v11, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "collectFiles fInfoChannel.write error:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 429
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 430
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 437
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "offset":I
    .end local v9    # "reWrite":Z
    .end local v10    # "startIndex":I
    :cond_8
    const/4 v11, 0x0

    goto :goto_5
.end method

.method private onFileOverflow()V
    .locals 8

    .prologue
    .line 344
    sget-object v6, Lc8/rB;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onFileOverflow"

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/taobao/windvane/cache/WVFileInfo;>;"
    iget-object v6, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 348
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/cache/WVFileInfo;>;>;"
    iget-object v6, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v5

    .line 349
    .local v5, "size":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 350
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/cache/WVFileInfo;>;"
    iget v6, p0, Lc8/rB;->maxCapacity:I

    if-lt v5, v6, :cond_1

    .line 351
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/tB;

    .line 352
    .local v4, "info":Lc8/tB;
    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 355
    goto :goto_0

    .line 360
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/cache/WVFileInfo;>;"
    .end local v4    # "info":Lc8/tB;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/tB;

    .line 361
    .restart local v4    # "info":Lc8/tB;
    iget-object v6, v4, Lc8/tB;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lc8/rB;->delete(Ljava/lang/String;)Z

    goto :goto_1

    .line 363
    .end local v4    # "info":Lc8/tB;
    :cond_2
    return-void
.end method

.method private setCapacity(I)V
    .locals 1
    .param p1, "maxCapacity"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 80
    invoke-direct {p0}, Lc8/rB;->onFileOverflow()V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 8

    .prologue
    .line 319
    iget-boolean v7, p0, Lc8/rB;->isInit:Z

    if-eqz v7, :cond_0

    .line 320
    const/4 v6, 0x1

    .line 325
    .local v6, "ret":Z
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lc8/rB;->baseDirPath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, "cacheDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "list":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 329
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v5

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 331
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lc8/rB;->delete(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v6, v7

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cacheDir":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "list":[Ljava/lang/String;
    .end local v6    # "ret":Z
    :cond_0
    const/4 v6, 0x0

    :cond_1
    return v6
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-boolean v3, p0, Lc8/rB;->isInit:Z

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 293
    .local v4, "time":J
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lc8/rB;->baseDirPath:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 295
    .local v2, "ret":Z
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 300
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    iget-object v3, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/tB;

    .local v1, "fileInfo":Lc8/tB;
    if-eqz v1, :cond_3

    .line 301
    sget-object v3, Lc8/rB;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "delete success"

    invoke-static {v3, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v3, 0x3

    iget-object v6, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v3, v1, v6}, Lc8/uB;->updateFileInfo(ILc8/tB;Ljava/nio/channels/FileChannel;)Lc8/tB;

    .line 304
    iget-object v3, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    sget-object v3, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "delete time cost:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    const/4 v2, 0x1

    .line 312
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileInfo":Lc8/tB;
    .end local v2    # "ret":Z
    .end local v4    # "time":J
    :cond_3
    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lc8/rB;->fInfoOs:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    iget-object v1, p0, Lc8/rB;->fInfoOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_1

    .line 104
    :try_start_1
    iget-object v1, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_1
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 110
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc8/rB;->baseDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileInfo(Ljava/lang/String;)Lc8/tB;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-boolean v3, p0, Lc8/rB;->isInit:Z

    if-nez v3, :cond_1

    move-object v1, v2

    .line 190
    :cond_0
    :goto_0
    return-object v1

    .line 180
    :cond_1
    iget-object v3, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/tB;

    .line 181
    .local v1, "info":Lc8/tB;
    if-nez v1, :cond_2

    move-object v1, v2

    .line 182
    goto :goto_0

    .line 184
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lc8/rB;->baseDirPath:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    const/4 v3, 0x3

    iget-object v4, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v3, v1, v4}, Lc8/uB;->updateFileInfo(ILc8/tB;Ljava/nio/channels/FileChannel;)Lc8/tB;

    move-object v1, v2

    .line 188
    goto :goto_0
.end method

.method public declared-synchronized init()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v7, p0, Lc8/rB;->isInit:Z

    if-nez v7, :cond_4

    .line 119
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lc8/rB;->infoDirPath:Ljava/lang/String;

    const-string/jumbo v8, "wv_web_info.dat"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v2, "infoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 121
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lc8/rB;->infoDirPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lc8/rB;->baseDirPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "rw"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lc8/rB;->fInfoOs:Ljava/io/RandomAccessFile;

    .line 135
    iget-object v7, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    if-nez v7, :cond_1

    .line 136
    iget-object v7, p0, Lc8/rB;->fInfoOs:Ljava/io/RandomAccessFile;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    iput-object v7, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    .line 140
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 141
    sget-object v7, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "lock success process is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 149
    .local v4, "time":J
    invoke-direct {p0}, Lc8/rB;->collectFiles()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 151
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    sget-object v3, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "init time cost:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/rB;->isInit:Z

    .line 156
    iget v3, p0, Lc8/rB;->maxCapacity:I

    invoke-direct {p0, v3}, Lc8/rB;->setCapacity(I)V

    .line 157
    iget-object v3, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 158
    invoke-virtual {p0}, Lc8/rB;->clear()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "infoFile":Ljava/io/File;
    .end local v4    # "time":J
    :cond_4
    move v3, v6

    .line 170
    :cond_5
    :goto_0
    monitor-exit p0

    return v3

    .line 125
    .restart local v2    # "infoFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e1":Ljava/io/IOException;
    :try_start_5
    sget-object v6, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "init createNewFile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 117
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v2    # "infoFile":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 143
    .restart local v2    # "infoFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v6, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "init fInfoOs RandomAccessFile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public isSdcard()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lc8/rB;->sdcard:Z

    return v0
.end method

.method public read(Ljava/lang/String;)[B
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    sget-object v4, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-boolean v4, p0, Lc8/rB;->isInit:Z

    if-nez v4, :cond_2

    .line 234
    :cond_1
    :goto_0
    return-object v1

    .line 219
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 221
    .local v2, "time":J
    iget-object v4, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tB;

    .line 222
    .local v0, "fileInfo":Lc8/tB;
    if-eqz v0, :cond_1

    .line 226
    iget-object v4, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const/4 v4, 0x1

    iget-object v5, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v4, v0, v5}, Lc8/uB;->updateFileInfo(ILc8/tB;Ljava/nio/channels/FileChannel;)Lc8/tB;

    move-result-object v0

    .line 228
    iget-object v4, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lc8/rB;->baseDirPath:Ljava/lang/String;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lc8/JD;->read(Ljava/io/File;)[B

    move-result-object v1

    .line 231
    .local v1, "ret":[B
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    sget-object v4, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read time cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lc8/rB;->isInit:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFileInfo(Lc8/tB;)V
    .locals 4
    .param p1, "fileInfo"    # Lc8/tB;

    .prologue
    .line 195
    iget-boolean v2, p0, Lc8/rB;->isInit:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lc8/tB;->fileName:Ljava/lang/String;

    .local v1, "fileName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 207
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 200
    .restart local v1    # "fileName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tB;

    .local v0, "_info":Lc8/tB;
    if-eqz v0, :cond_0

    .line 201
    sget-object v2, Lc8/rB;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "update info success"

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-wide v2, v0, Lc8/tB;->pos:J

    iput-wide v2, p1, Lc8/tB;->pos:J

    .line 204
    const/4 v2, 0x2

    iget-object v3, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v2, p1, v3}, Lc8/uB;->updateFileInfo(ILc8/tB;Ljava/nio/channels/FileChannel;)Lc8/tB;

    move-result-object p1

    .line 205
    iget-object v2, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public write(Lc8/tB;Ljava/nio/ByteBuffer;)Z
    .locals 10
    .param p1, "fileInfo"    # Lc8/tB;
    .param p2, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, 0x0

    .line 242
    if-eqz p1, :cond_0

    iget-object v4, p1, Lc8/tB;->fileName:Ljava/lang/String;

    .local v4, "fileName":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 284
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 245
    .restart local v4    # "fileName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    sget-object v7, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_2
    iget-boolean v7, p0, Lc8/rB;->isInit:Z

    if-eqz v7, :cond_0

    .line 249
    const/4 v5, 0x0

    .line 250
    .local v5, "ret":Z
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lc8/rB;->baseDirPath:Ljava/lang/String;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v3, p2}, Lc8/JD;->write(Ljava/io/File;Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catch Landroid/taobao/windvane/file/NotEnoughSpace; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 267
    :cond_3
    :goto_1
    if-eqz v5, :cond_0

    .line 270
    iget-object v6, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tB;

    .local v0, "_info":Lc8/tB;
    if-eqz v0, :cond_4

    .line 271
    sget-object v6, Lc8/rB;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "writed success, file exist"

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-wide v6, v0, Lc8/tB;->pos:J

    iput-wide v6, p1, Lc8/tB;->pos:J

    .line 274
    const/4 v6, 0x2

    iget-object v7, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v6, p1, v7}, Lc8/uB;->updateFileInfo(ILc8/tB;Ljava/nio/channels/FileChannel;)Lc8/tB;

    move-result-object p1

    .line 275
    iget-object v6, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/tB;->convertToFileInfo()Lc8/tB;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :goto_2
    const/4 v6, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "_info":Lc8/tB;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Landroid/taobao/windvane/file/NotEnoughSpace;
    sget-object v7, Lc8/rB;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "write error. fileName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". NotEnoughSpace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/taobao/windvane/file/NotEnoughSpace;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-boolean v7, p0, Lc8/rB;->isNoSpaceClear:Z

    if-eqz v7, :cond_3

    .line 258
    invoke-virtual {p0}, Lc8/rB;->clear()Z

    .line 260
    :try_start_1
    invoke-static {v3, p2}, Lc8/JD;->write(Ljava/io/File;Ljava/nio/ByteBuffer;)Z
    :try_end_1
    .catch Landroid/taobao/windvane/file/NotEnoughSpace; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    goto :goto_1

    .line 261
    :catch_1
    move-exception v2

    .line 262
    .local v2, "e1":Landroid/taobao/windvane/file/NotEnoughSpace;
    invoke-virtual {v2}, Landroid/taobao/windvane/file/NotEnoughSpace;->printStackTrace()V

    goto :goto_1

    .line 277
    .end local v1    # "e":Landroid/taobao/windvane/file/NotEnoughSpace;
    .end local v2    # "e1":Landroid/taobao/windvane/file/NotEnoughSpace;
    .restart local v0    # "_info":Lc8/tB;
    :cond_4
    sget-object v6, Lc8/rB;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "writed success, file do not exist"

    invoke-static {v6, v7}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v6, 0x4

    iget-object v7, p0, Lc8/rB;->fInfoChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v6, p1, v7}, Lc8/uB;->updateFileInfo(ILc8/tB;Ljava/nio/channels/FileChannel;)Lc8/tB;

    move-result-object p1

    .line 279
    iget-object v6, p0, Lc8/rB;->storedFile:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/tB;->convertToFileInfo()Lc8/tB;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
