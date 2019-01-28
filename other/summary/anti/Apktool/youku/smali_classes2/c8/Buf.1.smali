.class public abstract Lc8/Buf;
.super Ljava/lang/Object;
.source "FilledBitmapDecoder.java"

# interfaces
.implements Lc8/Auf;


# static fields
.field protected static sBitmapBufferField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getPixelAddressFromBitmap(Landroid/graphics/Bitmap;)J
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 50
    new-array v0, v4, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v5

    .line 52
    .local v0, "address":[J
    :try_start_0
    invoke-static {p0, v0}, Lc8/xuf;->nativePinBitmapWithAddr(Landroid/graphics/Bitmap;[J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    aget-wide v2, v0, v5

    return-wide v2

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "ex":Ljava/lang/Throwable;
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v3, "get Bitmap pixels address error=%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static invalidBitmap(Landroid/graphics/Bitmap;Lc8/ouf;Ljava/lang/String;)Z
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "options"    # Lc8/ouf;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 68
    if-nez p0, :cond_0

    .line 69
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v3, "%s bitmap is null"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    iget v3, p1, Lc8/ouf;->outWidth:I

    iget v4, p1, Lc8/ouf;->outHeight:I

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 73
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v3, "%s bitmap space not large enough"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 76
    goto :goto_0
.end method

.method protected static newBitmap(Lc8/ouf;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "options"    # Lc8/ouf;
    .param p1, "ashmem"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-static {}, Lc8/uuf;->instance()Lc8/uuf;

    move-result-object v0

    iget v1, p0, Lc8/ouf;->outWidth:I

    iget v2, p0, Lc8/ouf;->outHeight:I

    sget-object v3, Lc8/ouf;->CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lc8/uuf;->newBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lc8/ouf;->outWidth:I

    iget v1, p0, Lc8/ouf;->outHeight:I

    sget-object v2, Lc8/ouf;->CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract decodeAshmem(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract decodeInBitmap(Lc8/Ouf;Lc8/ouf;Lc8/vuf;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract decodeNormal(Lc8/Ouf;Lc8/ouf;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/pexode/exception/PexodeException;
        }
    .end annotation
.end method

.method protected declared-synchronized ensureBitmapBufferField()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 26
    monitor-enter p0

    :try_start_0
    sget-object v3, Lc8/Buf;->sBitmapBufferField:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 28
    :try_start_1
    const-class v3, Landroid/graphics/Bitmap;

    const-string/jumbo v4, "mBuffer"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 29
    sput-object v3, Lc8/Buf;->sBitmapBufferField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move v1, v2

    .line 35
    :goto_0
    monitor-exit p0

    return v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v3, "ensure Bitmap buffer field error=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected getPixelBufferFromBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0}, Lc8/Buf;->ensureBitmapBufferField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lc8/Buf;->sBitmapBufferField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Pexode"

    const-string/jumbo v2, "get Bitmap buffer field error=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
