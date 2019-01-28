.class public Lc8/Cuf;
.super Ljava/lang/Object;
.source "GifDecoder.java"

# interfaces
.implements Lc8/Auf;


# static fields
.field private static final LIBRARY_JNI_VERSION:I = 0x2

.field private static sIsSoInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-static {}, Lc8/Cuf;->getLibraryName()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "libName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lc8/Euf;->nativeLoadedVersionTest()I

    move-result v2

    if-ne v2, v9, :cond_0

    move v2, v3

    :goto_0
    sput-boolean v2, Lc8/Cuf;->sIsSoInstalled:Z

    .line 34
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v5, "system load lib%s.so result=%b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    sget-boolean v8, Lc8/Cuf;->sIsSoInstalled:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v5, v6}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 33
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "ex":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v5, "system load lib%s.so error=%s"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v4

    aput-object v0, v6, v3

    invoke-static {v2, v5, v6}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLibraryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lc8/xuf;->isSoInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "armeabi-v7a"

    invoke-static {v0}, Lc8/xuf;->isCpuAbiSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "pexgif-v7a"

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "pexgif"

    goto :goto_0
.end method


# virtual methods
.method public acceptInputType(ILc8/Yuf;Z)Z
    .locals 1
    .param p1, "iType"    # I
    .param p2, "mimeType"    # Lc8/Yuf;
    .param p3, "ashmem"    # Z

    .prologue
    .line 63
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canDecodeIncrementally(Lc8/Yuf;)Z
    .locals 1
    .param p1, "mimeType"    # Lc8/Yuf;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public decode(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Lc8/puf;
    .locals 11
    .param p1, "ris"    # Lc8/Ouf;
    .param p2, "options"    # Lc8/ouf;
    .param p3, "listener"    # Lc8/vuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 81
    iget-boolean v8, p2, Lc8/ouf;->justDecodeBounds:Z

    if-eqz v8, :cond_0

    .line 82
    iput v0, p2, Lc8/ouf;->outHeight:I

    iput v0, p2, Lc8/ouf;->outWidth:I

    .line 125
    :goto_0
    return-object v6

    .line 87
    :cond_0
    invoke-virtual {p1}, Lc8/Ouf;->getInputType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 95
    new-instance v6, Lcom/taobao/pexode/exception/NotSupportedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not support input type("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lc8/Ouf;->getInputType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") when GifImage creating!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/taobao/pexode/exception/NotSupportedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Lc8/Ouf;->getBuffer()[B

    move-result-object v8

    invoke-virtual {p1}, Lc8/Ouf;->getBufferOffset()I

    move-result v9

    invoke-virtual {p1}, Lc8/Ouf;->getBufferLength()I

    move-result v10

    invoke-static {v8, v9, v10}, Lc8/Euf;->create([BII)Lc8/Euf;

    move-result-object v3

    .line 98
    .local v3, "gifImage":Lc8/Euf;
    :goto_1
    iget-boolean v8, p2, Lc8/ouf;->forceStaticIfAnimation:Z

    if-eqz v8, :cond_1

    if-nez v3, :cond_2

    .line 99
    :cond_1
    invoke-static {v3}, Lc8/puf;->wrap(Lc8/ruf;)Lc8/puf;

    move-result-object v6

    goto :goto_0

    .line 92
    .end local v3    # "gifImage":Lc8/Euf;
    :pswitch_1
    invoke-virtual {p1}, Lc8/Ouf;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8}, Lc8/Euf;->create(Ljava/io/FileDescriptor;)Lc8/Euf;

    move-result-object v3

    .line 93
    .restart local v3    # "gifImage":Lc8/Euf;
    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v3, v7}, Lc8/Euf;->getFrame(I)Lc8/Duf;

    move-result-object v2

    .line 104
    .local v2, "frame0":Lc8/Duf;
    if-nez v2, :cond_3

    .line 105
    invoke-virtual {v3}, Lc8/Euf;->dispose()V

    goto :goto_0

    .line 109
    :cond_3
    const/4 v1, 0x0

    .line 110
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Lc8/Duf;->getWidth()I

    move-result v5

    .local v5, "width":I
    invoke-virtual {v2}, Lc8/Duf;->getHeight()I

    move-result v4

    .line 111
    .local v4, "height":I
    iget-boolean v6, p2, Lc8/ouf;->enableAshmem:Z

    if-eqz v6, :cond_8

    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v6

    iget-boolean v6, v6, Lc8/juf;->forcedDegrade2NoAshmem:Z

    if-nez v6, :cond_8

    .line 112
    .local v0, "ashmemFirst":Z
    :goto_2
    if-eqz v0, :cond_4

    .line 113
    invoke-static {}, Lc8/uuf;->instance()Lc8/uuf;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v6, v5, v4, v7}, Lc8/uuf;->newBitmapWithPin(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 116
    :cond_4
    if-eqz v0, :cond_5

    if-nez v1, :cond_6

    iget-boolean v6, p2, Lc8/ouf;->allowDegrade2NoAshmem:Z

    if-eqz v6, :cond_6

    .line 117
    :cond_5
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    :cond_6
    if-eqz v1, :cond_7

    .line 121
    invoke-virtual {v2, v5, v4, v1}, Lc8/Duf;->renderFrame(IILandroid/graphics/Bitmap;)V

    .line 123
    :cond_7
    invoke-virtual {v2}, Lc8/Duf;->dispose()V

    .line 124
    invoke-virtual {v3}, Lc8/Euf;->dispose()V

    .line 125
    invoke-static {v1}, Lc8/puf;->wrap(Landroid/graphics/Bitmap;)Lc8/puf;

    move-result-object v6

    goto/16 :goto_0

    .end local v0    # "ashmemFirst":Z
    :cond_8
    move v0, v7

    .line 111
    goto :goto_2

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public detectMimeType([B)Lc8/Yuf;
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 73
    sget-boolean v0, Lc8/Cuf;->sIsSoInstalled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Wuf;->GIF:Lc8/Yuf;

    invoke-virtual {v0, p1}, Lc8/Yuf;->isMyHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lc8/Wuf;->GIF:Lc8/Yuf;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lc8/Yuf;)Z
    .locals 1
    .param p1, "mimeType"    # Lc8/Yuf;

    .prologue
    .line 58
    sget-boolean v0, Lc8/Cuf;->sIsSoInstalled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lc8/Wuf;->GIF:Lc8/Yuf;

    invoke-virtual {p1, v0}, Lc8/Yuf;->isSame(Lc8/Yuf;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    .line 49
    sget-boolean v1, Lc8/Cuf;->sIsSoInstalled:Z

    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lc8/Cuf;->getLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "libName":Ljava/lang/String;
    invoke-static {v0, v5}, Lc8/zuf;->loadBackup(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lc8/Euf;->nativeLoadedVersionTest()I

    move-result v1

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lc8/Cuf;->sIsSoInstalled:Z

    .line 52
    const-string/jumbo v1, "Pexode"

    const-string/jumbo v4, "retry load lib%s.so result=%b"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v3

    sget-boolean v3, Lc8/Cuf;->sIsSoInstalled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .end local v0    # "libName":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0    # "libName":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 51
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GifDecoder@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
