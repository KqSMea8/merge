.class public final Lc8/VLn;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/uplayer/FileUtils$FileState;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x8000

.field public static final FAILED:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "FileUtils"

.field private static final SIG_SET_PERMISSION:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SUCCESS:I = 0x0

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static exReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 745
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lc8/VLn;->SIG_SET_PERMISSION:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static assetExist(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 3
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 504
    const/4 v1, 0x1

    .line 508
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 513
    :goto_0
    return v1

    :catch_0
    move-exception v1

    .line 508
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 513
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v1

    .line 508
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 510
    :goto_2
    throw v1

    :catch_1
    move-exception v2

    goto :goto_0

    .line 511
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 456
    const/4 v2, 0x0

    .line 459
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 461
    .local v0, "buf":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    .end local v0    # "buf":[B
    :goto_0
    return-object v0

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lc8/VLn;->setLastException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 473
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 468
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 470
    :goto_2
    throw v3

    .restart local v0    # "buf":[B
    :catch_1
    move-exception v3

    goto :goto_0

    .line 471
    .end local v0    # "buf":[B
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public static assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 415
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 416
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lc8/VLn;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 420
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    :goto_0
    return v1

    :catch_0
    move-exception v1

    .line 420
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 425
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v1

    .line 420
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 422
    :goto_2
    throw v1

    :catch_1
    move-exception v2

    goto :goto_0

    .line 423
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2
.end method

.method public static assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 397
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lc8/VLn;->assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static assetToFileIfNotExist(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {p2, v2, v3}, Lc8/VLn;->checkExistBySize(Ljava/io/File;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 433
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lc8/VLn;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 440
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 445
    :goto_0
    return v1

    .line 440
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 445
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v1

    .line 440
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 442
    :goto_2
    throw v1

    :catch_2
    move-exception v2

    goto :goto_0

    .line 443
    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method public static assetToString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-static {p0, p1}, Lc8/VLn;->assetToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 490
    .local v0, "data":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static bytesToFile(Ljava/io/File;[B)I
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 288
    array-length v0, p1

    invoke-static {p0, p1, v1, v0, v1}, Lc8/VLn;->bytesToFile(Ljava/io/File;[BIIZ)I

    move-result v0

    return v0
.end method

.method public static bytesToFile(Ljava/io/File;[BIIZ)I
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isAppend"    # Z

    .prologue
    const/4 v2, -0x1

    .line 257
    invoke-static {p0}, Lc8/VLn;->checkParentPath(Ljava/io/File;)V

    .line 259
    if-nez p1, :cond_0

    .line 280
    :goto_0
    return v2

    .line 262
    :cond_0
    if-gtz p3, :cond_1

    .line 263
    array-length p3, p1

    .line 265
    :cond_1
    const/4 v0, 0x0

    .line 267
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 269
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    const/4 v2, 0x0

    .line 275
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 278
    :catch_2
    move-exception v3

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v2

    .line 275
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 277
    :goto_3
    throw v2

    :catch_3
    move-exception v3

    goto :goto_3

    .line 274
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static bytesToFile(Ljava/io/File;[BZ)I
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .param p2, "isAppend"    # Z

    .prologue
    .line 284
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lc8/VLn;->bytesToFile(Ljava/io/File;[BIIZ)I

    move-result v0

    return v0
.end method

.method public static bytesToFile(Ljava/lang/String;[BIIZ)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "isAppend"    # Z

    .prologue
    .line 300
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2, p3, p4}, Lc8/VLn;->bytesToFile(Ljava/io/File;[BIIZ)I

    move-result v0

    return v0
.end method

.method public static checkExistBySize(Ljava/io/File;J)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "size"    # J

    .prologue
    .line 734
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 735
    :cond_0
    const/4 v0, 0x0

    .line 737
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkParentPath(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 194
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-static {v0}, Lc8/VLn;->createDir(Ljava/io/File;)I

    .line 196
    :cond_0
    return-void
.end method

.method public static checkParentPath(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/VLn;->checkParentPath(Ljava/io/File;)V

    .line 185
    return-void
.end method

.method public static copyTo(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p0, "dstFile"    # Ljava/io/File;
    .param p1, "srcFile"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    .line 374
    invoke-static {p1}, Lc8/VLn;->fileState(Ljava/io/File;)Lcom/youku/uplayer/FileUtils$FileState;

    move-result-object v3

    sget-object v4, Lcom/youku/uplayer/FileUtils$FileState;->FState_File:Lcom/youku/uplayer/FileUtils$FileState;

    if-eq v3, v4, :cond_0

    .line 390
    :goto_0
    return v2

    .line 377
    :cond_0
    const/4 v0, 0x0

    .line 379
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0, v1, v3}, Lc8/VLn;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 385
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 388
    :catch_2
    move-exception v3

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v2

    .line 385
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 387
    :goto_3
    throw v2

    :catch_3
    move-exception v3

    goto :goto_3

    .line 384
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static copyTo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "dstPath"    # Ljava/lang/String;
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 370
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lc8/VLn;->copyTo(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static coverSize(J)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x44800000    # 1024.0f

    const-wide/16 v6, 0x400

    .line 564
    const-string/jumbo v0, ""

    .line 565
    .local v0, "s":Ljava/lang/String;
    cmp-long v1, p0, v6

    if-gez v1, :cond_0

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    :goto_0
    return-object v0

    .line 567
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v1, p0, v2

    if-gez v1, :cond_1

    .line 568
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%.1fK"

    new-array v3, v4, [Ljava/lang/Object;

    long-to-float v4, p0

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 569
    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v1, p0, v2

    if-gez v1, :cond_2

    .line 570
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%.1fM"

    new-array v3, v4, [Ljava/lang/Object;

    div-long v4, p0, v6

    long-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "%.1fG"

    new-array v3, v4, [Ljava/lang/Object;

    div-long v4, p0, v6

    div-long/2addr v4, v6

    long-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createDir(Ljava/io/File;)I
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 141
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static createDir(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/VLn;->createDir(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static createLink(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 771
    :try_start_0
    const-string/jumbo v6, "ln -s %s %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 773
    .local v3, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v3, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 774
    .local v2, "ps":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 777
    .local v1, "in":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 780
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 781
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "ps":Ljava/lang/Process;
    .end local v3    # "runtime":Ljava/lang/Runtime;
    :goto_0
    return v4

    :catch_0
    move-exception v4

    move v4, v5

    goto :goto_0
.end method

.method public static deleteBlankPath(Ljava/lang/String;)I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 702
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 704
    const/4 v1, 0x1

    .line 712
    :goto_0
    return v1

    .line 706
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 707
    const/4 v1, 0x2

    goto :goto_0

    .line 709
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 710
    const/4 v1, 0x0

    goto :goto_0

    .line 712
    :cond_2
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public static fileState(Ljava/io/File;)Lcom/youku/uplayer/FileUtils$FileState;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 106
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/youku/uplayer/FileUtils$FileState;->FState_None:Lcom/youku/uplayer/FileUtils$FileState;

    .line 115
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/youku/uplayer/FileUtils$FileState;->FState_File:Lcom/youku/uplayer/FileUtils$FileState;

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Lcom/youku/uplayer/FileUtils$FileState;->FState_Dir:Lcom/youku/uplayer/FileUtils$FileState;

    goto :goto_0

    .line 115
    :cond_2
    sget-object v0, Lcom/youku/uplayer/FileUtils$FileState;->FState_Other:Lcom/youku/uplayer/FileUtils$FileState;

    goto :goto_0
.end method

.method public static fileState(Ljava/lang/String;)Lcom/youku/uplayer/FileUtils$FileState;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/VLn;->fileState(Ljava/io/File;)Lcom/youku/uplayer/FileUtils$FileState;

    move-result-object v0

    return-object v0
.end method

.method public static fileToBytes(Ljava/io/File;)[B
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-static {p0, v0, v0}, Lc8/VLn;->fileToBytes(Ljava/io/File;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static fileToBytes(Ljava/io/File;II)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 340
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 360
    :goto_0
    return-object v2

    .line 343
    :cond_1
    const/4 v0, 0x0

    .line 345
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .end local v0    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    if-nez p2, :cond_2

    .line 347
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 348
    :cond_2
    new-array v2, p2, [B

    .line 349
    .local v2, "outBuf":[B
    invoke-virtual {v1, v2, p1, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "outBuf":[B
    .restart local v0    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    move-object v2, v3

    .line 360
    goto :goto_0

    .line 354
    :catchall_0
    move-exception v3

    .line 355
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 357
    :goto_4
    throw v3

    .line 358
    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_4

    .line 354
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static fileToBytes(Ljava/lang/String;II)[B
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 316
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lc8/VLn;->fileToBytes(Ljava/io/File;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static fileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 324
    invoke-static {p0}, Lc8/VLn;->fileToBytes(Ljava/io/File;)[B

    move-result-object v0

    .line 325
    .local v0, "data":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static freeFileLock(Ljava/nio/channels/FileLock;Ljava/io/File;)V
    .locals 1
    .param p0, "fl"    # Ljava/nio/channels/FileLock;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 639
    if-eqz p1, :cond_0

    .line 640
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 642
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 649
    :cond_1
    :goto_0
    return-void

    .line 646
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDirPathInPrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 845
    sget-object v0, Lc8/VLn;->exReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/VLn;->exReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPathName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "absolutePath"    # Ljava/lang/String;

    .prologue
    .line 657
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 658
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 659
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getROMLeft()J
    .locals 8

    .prologue
    .line 579
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 581
    .local v4, "data":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 582
    .local v5, "sf":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 583
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    .line 584
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 587
    .local v0, "availCount":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getSDLeftSpace()J
    .locals 6

    .prologue
    .line 553
    invoke-static {}, Lc8/VLn;->isSDMounted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    const-wide/16 v2, 0x0

    .line 559
    .local v0, "statfs":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 556
    .end local v0    # "statfs":Landroid/os/StatFs;
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 558
    .restart local v0    # "statfs":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    .line 559
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    goto :goto_0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 855
    const/4 v1, 0x0

    .line 856
    .local v1, "sdDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    .line 857
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 858
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 859
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 861
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSDRoot()Ljava/lang/String;
    .locals 2

    .prologue
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSoPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoFileName(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "fileAbsolutePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 865
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v4, "vecFile":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 867
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 869
    .local v3, "subFile":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "iFileLength":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 871
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 872
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "filename":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 875
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    .end local v1    # "filename":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 879
    :cond_1
    return-object v4
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 851
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 852
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isSDAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 539
    invoke-static {}, Lc8/VLn;->isSDMounted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 546
    .local v0, "file":Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 542
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 543
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSDAvailable(I)Z
    .locals 7
    .param p0, "minRemainMB"    # I

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x0

    .line 529
    invoke-static {}, Lc8/VLn;->isSDAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 532
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lc8/VLn;->getSDLeftSpace()J

    move-result-wide v2

    int-to-long v4, p0

    shl-long/2addr v4, v6

    shl-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSDMounted()Z
    .locals 2

    .prologue
    .line 520
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "sdState":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static listPath(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v0, "allDir":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/SecurityManager;

    invoke-direct {v1}, Ljava/lang/SecurityManager;-><init>()V

    .line 682
    .local v1, "checker":Ljava/lang/SecurityManager;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 683
    .local v3, "path":Ljava/io/File;
    invoke-virtual {v1, p0}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 685
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 686
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 687
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 691
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method public static printLastException()V
    .locals 1

    .prologue
    .line 835
    invoke-static {}, Lc8/VLn;->getLastException()Ljava/lang/Exception;

    move-result-object v0

    .line 836
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 838
    :cond_0
    return-void
.end method

.method public static reNamePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "oldName"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 670
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public static removeDir(Ljava/io/File;)I
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 167
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    .line 168
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 169
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 170
    invoke-static {v0}, Lc8/VLn;->removeDir(Ljava/io/File;)I

    .line 168
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 177
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static removeDir(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/VLn;->removeDir(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method private static setLastException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 841
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lc8/VLn;->exReference:Ljava/lang/ref/WeakReference;

    .line 842
    return-void
.end method

.method public static setPermissions(Ljava/lang/String;I)I
    .locals 1
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .prologue
    const/4 v0, -0x1

    .line 742
    invoke-static {p0, p1, v0, v0}, Lc8/VLn;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 6
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 749
    :try_start_0
    const-string/jumbo v2, "android.os.FileUtils"

    invoke-static {v2}, Lc8/VLn;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 750
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "setPermissions"

    sget-object v3, Lc8/VLn;->SIG_SET_PERMISSION:[Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 751
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 752
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/VLn;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 756
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static streamToByteArray(Ljava/io/InputStream;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 801
    const/16 v4, 0x100

    :try_start_0
    new-array v1, v4, [B

    .line 803
    .local v1, "buf":[B
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v4, 0x400

    invoke-direct {v0, v4}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 805
    .local v0, "array":Lorg/apache/http/util/ByteArrayBuffer;
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 806
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    .end local v0    # "array":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "buf":[B
    .end local v3    # "read":I
    :catch_0
    move-exception v2

    .line 811
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lc8/VLn;->setLastException(Ljava/lang/Exception;)V

    .line 814
    const/4 v0, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method public static streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "isAppend"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 215
    invoke-static {p0}, Lc8/VLn;->checkParentPath(Ljava/io/File;)V

    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    const v6, 0x8000

    :try_start_1
    new-array v0, v6, [B

    .line 223
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "readSize":I
    if-eq v3, v5, :cond_0

    .line 224
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v0    # "buf":[B
    .end local v3    # "readSize":I
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 231
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move v4, v5

    .line 236
    :goto_3
    return v4

    .line 225
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "readSize":I
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 231
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    move-object v1, v2

    .line 233
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 230
    .end local v0    # "buf":[B
    .end local v3    # "readSize":I
    :catchall_0
    move-exception v4

    .line 231
    :goto_5
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 233
    :goto_6
    throw v4

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "readSize":I
    :catch_1
    move-exception v5

    goto :goto_4

    .line 234
    .end local v0    # "buf":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "readSize":I
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_6

    .line 230
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    :catch_4
    move-exception v4

    goto :goto_1
.end method

.method public static streamToFile(Ljava/lang/String;Ljava/io/InputStream;Z)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "isAppend"    # Z

    .prologue
    .line 211
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lc8/VLn;->streamToFile(Ljava/io/File;Ljava/io/InputStream;Z)I

    move-result v0

    return v0
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 827
    invoke-static {p0}, Lc8/VLn;->streamToByteArray(Ljava/io/InputStream;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 828
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    if-eqz v0, :cond_0

    .line 829
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 831
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static stringToFile(Ljava/io/File;Ljava/lang/String;)I
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lc8/VLn;->bytesToFile(Ljava/io/File;[B)I

    move-result v0

    return v0
.end method

.method public static tryFileLock(Ljava/io/File;)Ljava/nio/channels/FileLock;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 625
    :try_start_0
    invoke-static {p0}, Lc8/VLn;->checkParentPath(Ljava/io/File;)V

    .line 627
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 628
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    .line 629
    .local v0, "fl":Ljava/nio/channels/FileLock;
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    .end local v0    # "fl":Ljava/nio/channels/FileLock;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tryFileLock(Ljava/lang/String;)Ljava/nio/channels/FileLock;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 614
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc8/VLn;->tryFileLock(Ljava/io/File;)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method
