.class public Lc8/rrb;
.super Ljava/lang/Object;
.source "StackBlur.java"

# interfaces
.implements Lc8/qrb;


# static fields
.field private static final DEFAULT_MAX_BLUR_RADIUS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "StackBlur"


# instance fields
.field private canModifyBitmap:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .param p1, "canModifyBitmap"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/rrb;->canModifyBitmap:Z

    .line 23
    iput-boolean p1, p0, Lc8/rrb;->canModifyBitmap:Z

    .line 24
    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "blurRadius"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 30
    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .local v4, "start":J
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 37
    .local v0, "blurredBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-boolean v6, p0, Lc8/rrb;->canModifyBitmap:Z

    invoke-static {p1, p2, v6}, Lc8/Ayb;->stackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    const-wide/16 v2, 0x0

    .line 42
    .local v2, "end":J
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 45
    :cond_1
    const-string/jumbo v6, "StackBlur"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "blur time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-object v0

    .line 38
    .end local v2    # "end":J
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "StackBlur"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canModifyBitmap()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lc8/rrb;->canModifyBitmap:Z

    return v0
.end method

.method public getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 57
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method
