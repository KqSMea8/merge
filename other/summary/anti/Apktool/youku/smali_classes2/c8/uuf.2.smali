.class public Lc8/uuf;
.super Ljava/lang/Object;
.source "AshmemBitmapFactory.java"

# interfaces
.implements Lc8/yuf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tuf;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static instance()Lc8/uuf;
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lc8/tuf;->access$000()Lc8/uuf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public newBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v5, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    .local v2, "ret":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 26
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-object p3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 27
    invoke-static {v1, v5}, Lc8/Fuf;->setupAshmemOptions(Landroid/graphics/BitmapFactory$Options;Z)V

    .line 29
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v3

    sget v4, Lc8/wuf;->FIXED_JPG_LENGTH:I

    invoke-virtual {v3, v4}, Lc8/juf;->offerBytes(I)[B

    move-result-object v3

    invoke-static {p1, p2, v3}, Lc8/wuf;->generateBytes(II[B)[B

    move-result-object v0

    .line 30
    .local v0, "dataBuf":[B
    if-eqz v0, :cond_0

    .line 31
    const/4 v3, 0x0

    sget v4, Lc8/wuf;->FIXED_JPG_LENGTH:I

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 32
    invoke-static {}, Lc8/juf;->instance()Lc8/juf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/juf;->releaseBytes([B)V

    .line 35
    :cond_0
    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 38
    :cond_1
    return-object v2
.end method

.method public newBitmapWithPin(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lc8/uuf;->newBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "ret":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    invoke-static {v0}, Lc8/xuf;->nativePinBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "thr":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .line 51
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v3, "AshmemBitmapFactory native pin bitmap error=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
