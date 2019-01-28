.class public Lc8/nuf;
.super Ljava/lang/Object;
.source "Pexode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/luf;,
        Lc8/muf;
    }
.end annotation


# static fields
.field public static final APPEND_DECODE_CHUNK_SIZE:I = 0x800

.field public static final MB:I = 0x100000

.field public static final MINIMUM_HEADER_BUFFER_SIZE:I = 0x40

.field public static final TAG:Ljava/lang/String; = "Pexode"


# instance fields
.field private forcedDegrade2System:Z

.field private final installedDecoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Auf;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedDegradationListener:Lc8/luf;

.field private preparedContext:Landroid/content/Context;

.field private final systemDecoder:Lc8/Auf;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lc8/Fuf;

    invoke-direct {v0}, Lc8/Fuf;-><init>()V

    iput-object v0, p0, Lc8/nuf;->systemDecoder:Lc8/Auf;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    new-instance v1, Lc8/Huf;

    invoke-direct {v1}, Lc8/Huf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    new-instance v1, Lc8/Cuf;

    invoke-direct {v1}, Lc8/Cuf;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    iget-object v1, p0, Lc8/nuf;->systemDecoder:Lc8/Auf;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lc8/kuf;)V
    .locals 0
    .param p1, "x0"    # Lc8/kuf;

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/nuf;-><init>()V

    return-void
.end method

.method public static canSupport(Lc8/Yuf;)Z
    .locals 3
    .param p0, "type"    # Lc8/Yuf;

    .prologue
    .line 235
    if-eqz p0, :cond_1

    .line 236
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v1

    iget-object v1, v1, Lc8/nuf;->installedDecoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Auf;

    .line 237
    .local v0, "decoder":Lc8/Auf;
    invoke-interface {v0, p0}, Lc8/Auf;->isSupported(Lc8/Yuf;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 242
    .end local v0    # "decoder":Lc8/Auf;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static canSystemSupport(Lc8/Yuf;)Z
    .locals 1
    .param p0, "type"    # Lc8/Yuf;

    .prologue
    .line 231
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->systemDecoder:Lc8/Auf;

    invoke-interface {v0, p0}, Lc8/Auf;->isSupported(Lc8/Yuf;)Z

    move-result v0

    return v0
.end method

.method private static checkOptions(Lc8/ouf;)V
    .locals 4
    .param p0, "options"    # Lc8/ouf;

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-boolean v0, p0, Lc8/ouf;->enableAshmem:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/nuf;->isAshmemSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string/jumbo v0, "Pexode"

    const-string/jumbo v1, "cannot use ashmem in the runtime, disabled ashmem already!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iput-boolean v3, p0, Lc8/ouf;->enableAshmem:Z

    .line 203
    :cond_0
    iget-object v0, p0, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {}, Lc8/nuf;->isInBitmapSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    const-string/jumbo v0, "Pexode"

    const-string/jumbo v1, "cannot reuse bitmap in the runtime, disabled inBitmap already!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    .line 207
    :cond_1
    return-void
.end method

.method public static decode(Ljava/io/File;Lc8/ouf;)Lc8/puf;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Lc8/ouf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, p1}, Lc8/nuf;->decode(Ljava/io/InputStream;Lc8/ouf;)Lc8/puf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 251
    if-eqz v1, :cond_0

    .line 253
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    move-object v0, v1

    .line 257
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return-object v2

    .line 251
    :catch_0
    move-exception v2

    :goto_2
    if-eqz v0, :cond_1

    .line 253
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 257
    :cond_1
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 251
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v0, :cond_2

    .line 253
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 254
    :cond_2
    :goto_5
    throw v2

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_5

    .line 251
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static decode(Ljava/io/FileDescriptor;Lc8/ouf;)Lc8/puf;
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Lc8/ouf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lc8/Muf;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/high16 v2, 0x100000

    invoke-direct {v0, v1, v2}, Lc8/Muf;-><init>(Ljava/io/FileInputStream;I)V

    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lc8/nuf;->doDecode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/io/InputStream;Lc8/ouf;)Lc8/puf;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Lc8/ouf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    const/high16 v2, 0x100000

    .line 289
    instance-of v1, p0, Lc8/Ouf;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 290
    check-cast v0, Lc8/Ouf;

    .line 296
    .end local p0    # "is":Ljava/io/InputStream;
    .local v0, "ris":Lc8/Ouf;
    :goto_0
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lc8/nuf;->doDecode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;

    move-result-object v1

    return-object v1

    .line 291
    .end local v0    # "ris":Lc8/Ouf;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_0
    instance-of v1, p0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    .line 292
    new-instance v0, Lc8/Muf;

    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-direct {v0, p0, v2}, Lc8/Muf;-><init>(Ljava/io/FileInputStream;I)V

    .restart local v0    # "ris":Lc8/Ouf;
    goto :goto_0

    .line 294
    .end local v0    # "ris":Lc8/Ouf;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v0, Lc8/Nuf;

    invoke-direct {v0, p0, v2}, Lc8/Nuf;-><init>(Ljava/io/InputStream;I)V

    .restart local v0    # "ris":Lc8/Ouf;
    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;Lc8/ouf;)Lc8/puf;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "options"    # Lc8/ouf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1, p1}, Lc8/nuf;->decode(Ljava/io/InputStream;Lc8/ouf;)Lc8/puf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 266
    if-eqz v1, :cond_0

    .line 268
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    move-object v0, v1

    .line 272
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return-object v2

    .line 266
    :catch_0
    move-exception v2

    :goto_2
    if-eqz v0, :cond_1

    .line 268
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 272
    :cond_1
    :goto_3
    const/4 v2, 0x0

    goto :goto_1

    .line 266
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v0, :cond_2

    .line 268
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 269
    :cond_2
    :goto_5
    throw v2

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_5

    .line 266
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static decode([BIILc8/ouf;)Lc8/puf;
    .locals 2
    .param p0, "data"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "options"    # Lc8/ouf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Lc8/Luf;

    invoke-direct {v0, p0, p1, p2}, Lc8/Luf;-><init>([BII)V

    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lc8/nuf;->doDecode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;

    move-result-object v0

    return-object v0
.end method

.method private static doDecode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;
    .locals 13
    .param p0, "ris"    # Lc8/Ouf;
    .param p1, "options"    # Lc8/ouf;
    .param p2, "listener"    # Lc8/vuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 301
    invoke-static {p1}, Lc8/nuf;->checkOptions(Lc8/ouf;)V

    .line 303
    iget-object v6, p1, Lc8/ouf;->outMimeType:Lc8/Yuf;

    if-nez v6, :cond_0

    .line 304
    const/16 v6, 0x40

    invoke-static {p0, p1, v6}, Lc8/nuf;->resolveDecoderWithHeader(Lc8/Ouf;Lc8/ouf;I)Lc8/Auf;

    move-result-object v0

    .line 309
    .local v0, "decoder":Lc8/Auf;
    :goto_0
    iget-object v3, p1, Lc8/ouf;->outMimeType:Lc8/Yuf;

    .line 310
    .local v3, "mimeType":Lc8/Yuf;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lc8/Yuf;->hasAlpha()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    iput-boolean v6, p1, Lc8/ouf;->outAlpha:Z

    .line 311
    iget-boolean v1, p1, Lc8/ouf;->enableAshmem:Z

    .line 312
    .local v1, "initialAshmem":Z
    iget-object v2, p1, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    .line 314
    .local v2, "initialInBitmap":Landroid/graphics/Bitmap;
    iget-boolean v6, p1, Lc8/ouf;->incrementalDecode:Z

    if-eqz v6, :cond_2

    invoke-interface {v0, v3}, Lc8/Auf;->canDecodeIncrementally(Lc8/Yuf;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 315
    new-instance v6, Lcom/taobao/pexode/exception/IncrementalDecodeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "incremental decoding not supported for type["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/taobao/pexode/exception/IncrementalDecodeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 306
    .end local v0    # "decoder":Lc8/Auf;
    .end local v1    # "initialAshmem":Z
    .end local v2    # "initialInBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "mimeType":Lc8/Yuf;
    :cond_0
    iget-object v6, p1, Lc8/ouf;->outMimeType:Lc8/Yuf;

    invoke-static {v6}, Lc8/nuf;->resolveDecoderWithMimeType(Lc8/Yuf;)Lc8/Auf;

    move-result-object v0

    .restart local v0    # "decoder":Lc8/Auf;
    goto :goto_0

    .restart local v3    # "mimeType":Lc8/Yuf;
    :cond_1
    move v6, v8

    .line 310
    goto :goto_1

    .line 318
    .restart local v1    # "initialAshmem":Z
    .restart local v2    # "initialInBitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-interface {v0, p0, p1, p2}, Lc8/Auf;->decode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;

    move-result-object v4

    .line 319
    .local v4, "result":Lc8/puf;
    const-string/jumbo v6, "Pexode"

    const-string/jumbo v9, "decoder=%s, type=%d, justBounds=%b, sizeAvailable=%b, ashmem=%b, inBitmap=%b, increment=%b, result=%s"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v8

    .line 320
    invoke-virtual {p0}, Lc8/Ouf;->getInputType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v11, 0x2

    iget-boolean v12, p1, Lc8/ouf;->justDecodeBounds:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {p1}, Lc8/ouf;->isSizeAvailable()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    iget-boolean v12, p1, Lc8/ouf;->enableAshmem:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_4

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v10, v11

    const/4 v7, 0x6

    iget-boolean v8, p1, Lc8/ouf;->incrementalDecode:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v10, v7

    const/4 v7, 0x7

    aput-object v4, v10, v7

    .line 319
    invoke-static {v6, v9, v10}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-static {v4, p1}, Lc8/juf;->resultEnd(Lc8/puf;Lc8/ouf;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v6

    iget-object v6, v6, Lc8/nuf;->systemDecoder:Lc8/Auf;

    if-ne v0, v6, :cond_5

    :cond_3
    move-object v5, v4

    .line 340
    .end local v4    # "result":Lc8/puf;
    .local v5, "result":Lc8/puf;
    :goto_3
    return-object v5

    .end local v5    # "result":Lc8/puf;
    .restart local v4    # "result":Lc8/puf;
    :cond_4
    move v7, v8

    .line 320
    goto :goto_2

    .line 326
    :cond_5
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v6

    iget-object v0, v6, Lc8/nuf;->systemDecoder:Lc8/Auf;

    .line 329
    if-eqz v3, :cond_9

    invoke-interface {v0, v3}, Lc8/Auf;->isSupported(Lc8/Yuf;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-boolean v6, p1, Lc8/ouf;->incrementalDecode:Z

    if-eqz v6, :cond_6

    invoke-interface {v0, v3}, Lc8/Auf;->canDecodeIncrementally(Lc8/Yuf;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 330
    :cond_6
    iget-boolean v6, p1, Lc8/ouf;->allowDegrade2System:Z

    if-eqz v6, :cond_8

    .line 331
    invoke-virtual {p0}, Lc8/Ouf;->rewind()V

    .line 333
    iput-boolean v1, p1, Lc8/ouf;->enableAshmem:Z

    .line 334
    iput-object v2, p1, Lc8/ouf;->inBitmap:Landroid/graphics/Bitmap;

    .line 335
    invoke-interface {v0, p0, p1, p2}, Lc8/Auf;->decode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;

    move-result-object v4

    .line 337
    iget-boolean v6, p1, Lc8/ouf;->cancelled:Z

    if-nez v6, :cond_7

    .line 338
    invoke-static {v4, p1}, Lc8/juf;->resultOK(Lc8/puf;Lc8/ouf;)Z

    move-result v6

    invoke-interface {p2, v6}, Lc8/vuf;->onDegraded2System(Z)V

    :cond_7
    move-object v5, v4

    .line 340
    .end local v4    # "result":Lc8/puf;
    .restart local v5    # "result":Lc8/puf;
    goto :goto_3

    .line 342
    .end local v5    # "result":Lc8/puf;
    .restart local v4    # "result":Lc8/puf;
    :cond_8
    new-instance v6, Lcom/taobao/pexode/exception/DegradeNotAllowedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unfortunately, system supported type["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] but not allow degrading to system"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/taobao/pexode/exception/DegradeNotAllowedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 345
    :cond_9
    iget-boolean v6, p1, Lc8/ouf;->incrementalDecode:Z

    if-eqz v6, :cond_a

    .line 346
    new-instance v6, Lcom/taobao/pexode/exception/IncrementalDecodeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "incremental decoding not supported for type["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] when degraded to system"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/taobao/pexode/exception/IncrementalDecodeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 349
    :cond_a
    new-instance v6, Lcom/taobao/pexode/exception/NotSupportedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] not supported when degraded to system"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/taobao/pexode/exception/NotSupportedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static enableCancellability(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lc8/ouf;->sEnabledCancellability:Z

    .line 134
    return-void
.end method

.method public static forceDegrade2NoAshmem(Z)V
    .locals 5
    .param p0, "forced"    # Z

    .prologue
    .line 114
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v0

    iput-boolean p0, v0, Lc8/juf;->forcedDegrade2NoAshmem:Z

    .line 115
    const-string/jumbo v0, "Pexode"

    const-string/jumbo v1, "force degrading to no ashmem, result=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public static forceDegrade2NoInBitmap(Z)V
    .locals 5
    .param p0, "forced"    # Z

    .prologue
    .line 119
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v0

    iput-boolean p0, v0, Lc8/juf;->forcedDegrade2NoInBitmap:Z

    .line 120
    const-string/jumbo v0, "Pexode"

    const-string/jumbo v1, "force degrading to no inBitmap, result=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public static forceDegrade2System(Z)V
    .locals 6
    .param p0, "forced"    # Z

    .prologue
    .line 98
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v1

    monitor-enter v1

    .line 99
    :try_start_0
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-boolean v0, v0, Lc8/nuf;->forcedDegrade2System:Z

    if-ne p0, v0, :cond_0

    .line 100
    monitor-exit v1

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string/jumbo v0, "Pexode"

    const-string/jumbo v2, "force degrading to system decoder, result=%b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v2

    iget-object v2, v2, Lc8/nuf;->systemDecoder:Lc8/Auf;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    if-eqz p0, :cond_1

    .line 105
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v3

    iget-object v3, v3, Lc8/nuf;->systemDecoder:Lc8/Auf;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 109
    :goto_1
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iput-boolean p0, v0, Lc8/nuf;->forcedDegrade2System:Z

    .line 110
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    :cond_1
    :try_start_1
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v2

    iget-object v2, v2, Lc8/nuf;->systemDecoder:Lc8/Auf;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static getAllSupportDecoders(Lc8/Yuf;)Ljava/util/List;
    .locals 4
    .param p0, "type"    # Lc8/Yuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Yuf;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/Auf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "decoders":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/pexode/decoder/Decoder;>;"
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v2

    iget-object v2, v2, Lc8/nuf;->installedDecoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Auf;

    .line 143
    .local v0, "decoder":Lc8/Auf;
    invoke-interface {v0, p0}, Lc8/Auf;->isSupported(Lc8/Yuf;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "decoder":Lc8/Auf;
    :cond_1
    return-object v1
.end method

.method static getForcedDegradationListener()Lc8/luf;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->mForcedDegradationListener:Lc8/luf;

    return-object v0
.end method

.method public static installDecoder(Lc8/Auf;)V
    .locals 3
    .param p0, "decoder"    # Lc8/Auf;

    .prologue
    .line 76
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v1

    monitor-enter v1

    .line 77
    :try_start_0
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-boolean v0, v0, Lc8/nuf;->forcedDegrade2System:Z

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    :goto_0
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->preparedContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->preparedContext:Landroid/content/Context;

    invoke-interface {p0, v0}, Lc8/Auf;->prepare(Landroid/content/Context;)V

    .line 85
    :cond_0
    monitor-exit v1

    return-void

    .line 80
    :cond_1
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isAshmemSupported()Z
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lc8/xuf;->isSoInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isForcedDegrade2System()Z
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-boolean v0, v0, Lc8/nuf;->forcedDegrade2System:Z

    return v0
.end method

.method public static isInBitmapSupported()Z
    .locals 2

    .prologue
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static preferInputType(Lc8/Ouf;Lc8/Yuf;Z)I
    .locals 5
    .param p0, "ris"    # Lc8/Ouf;
    .param p1, "mimeType"    # Lc8/Yuf;
    .param p2, "ashmem"    # Z

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 211
    invoke-virtual {p0}, Lc8/Ouf;->getInputType()I

    move-result v1

    .line 213
    .local v1, "type":I
    if-ne v1, v3, :cond_1

    .line 227
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return v1

    .line 217
    .restart local v1    # "type":I
    :cond_1
    invoke-static {p1}, Lc8/nuf;->resolveDecoderWithMimeType(Lc8/Yuf;)Lc8/Auf;

    move-result-object v0

    .line 218
    .local v0, "decoder":Lc8/Auf;
    invoke-interface {v0, v1, p1, p2}, Lc8/Auf;->acceptInputType(ILc8/Yuf;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    invoke-interface {v0, v2, p1, p2}, Lc8/Auf;->acceptInputType(ILc8/Yuf;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 224
    goto :goto_0

    :cond_2
    move v1, v3

    .line 227
    goto :goto_0
.end method

.method public static prepare(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v2

    monitor-enter v2

    .line 66
    :try_start_0
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v1

    iput-object p0, v1, Lc8/nuf;->preparedContext:Landroid/content/Context;

    .line 67
    invoke-static {p0}, Lc8/zuf;->init(Landroid/content/Context;)V

    .line 68
    invoke-static {p0}, Lc8/xuf;->prepare(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v1

    iget-object v1, v1, Lc8/nuf;->installedDecoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Auf;

    .line 70
    .local v0, "decoder":Lc8/Auf;
    invoke-interface {v0, p0}, Lc8/Auf;->prepare(Landroid/content/Context;)V

    goto :goto_0

    .line 72
    .end local v0    # "decoder":Lc8/Auf;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static resolveDecoderWithHeader(Lc8/Ouf;Lc8/ouf;I)Lc8/Auf;
    .locals 4
    .param p0, "ris"    # Lc8/Ouf;
    .param p1, "options"    # Lc8/ouf;
    .param p2, "maxHeaderSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v2

    invoke-virtual {v2, p2}, Lc8/juf;->offerBytes(I)[B

    move-result-object v2

    iput-object v2, p1, Lc8/ouf;->tempHeaderBuffer:[B

    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, "read":I
    :try_start_0
    iget-object v2, p1, Lc8/ouf;->tempHeaderBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, p2}, Lc8/Ouf;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :goto_0
    invoke-virtual {p0}, Lc8/Ouf;->rewind()V

    .line 159
    if-lez v1, :cond_1

    .line 160
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v2

    iget-object v2, v2, Lc8/nuf;->installedDecoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Auf;

    .line 161
    .local v0, "decoder":Lc8/Auf;
    iget-object v3, p1, Lc8/ouf;->tempHeaderBuffer:[B

    invoke-interface {v0, v3}, Lc8/Auf;->detectMimeType([B)Lc8/Yuf;

    move-result-object v3

    iput-object v3, p1, Lc8/ouf;->outMimeType:Lc8/Yuf;

    if-eqz v3, :cond_0

    .line 168
    .end local v0    # "decoder":Lc8/Auf;
    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v2

    iget-object v0, v2, Lc8/nuf;->systemDecoder:Lc8/Auf;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static resolveDecoderWithMimeType(Lc8/Yuf;)Lc8/Auf;
    .locals 3
    .param p0, "type"    # Lc8/Yuf;

    .prologue
    .line 172
    if-eqz p0, :cond_1

    .line 173
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v1

    iget-object v1, v1, Lc8/nuf;->installedDecoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Auf;

    .line 174
    .local v0, "decoder":Lc8/Auf;
    invoke-interface {v0, p0}, Lc8/Auf;->isSupported(Lc8/Yuf;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    .end local v0    # "decoder":Lc8/Auf;
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v1

    iget-object v0, v1, Lc8/nuf;->systemDecoder:Lc8/Auf;

    goto :goto_0
.end method

.method public static setBytesPool(Lc8/JNf;)V
    .locals 1
    .param p0, "pool"    # Lc8/JNf;

    .prologue
    .line 93
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/juf;->setBytesPool(Lc8/JNf;)V

    .line 94
    return-void
.end method

.method public static setForcedDegradationListener(Lc8/luf;)V
    .locals 1
    .param p0, "listener"    # Lc8/luf;

    .prologue
    .line 128
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iput-object p0, v0, Lc8/nuf;->mForcedDegradationListener:Lc8/luf;

    .line 129
    return-void
.end method

.method public static uninstallDecoder(Lc8/Auf;)V
    .locals 1
    .param p0, "decoder"    # Lc8/Auf;

    .prologue
    .line 89
    invoke-static {}, Lc8/muf;->access$100()Lc8/nuf;

    move-result-object v0

    iget-object v0, v0, Lc8/nuf;->installedDecoders:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method
