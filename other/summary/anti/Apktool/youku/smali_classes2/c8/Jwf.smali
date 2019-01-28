.class public Lc8/Jwf;
.super Ljava/lang/Object;
.source "NdkCore.java"


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "EffectsCore"

.field private static sIsSoInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 14
    :try_start_0
    const-string/jumbo v1, "EffectsCore"

    invoke-static {v1}, Lc8/ZA;->loadLibrary(Ljava/lang/String;)V

    .line 15
    const/4 v1, 0x1

    sput-boolean v1, Lc8/Jwf;->sIsSoInstalled:Z

    .line 16
    const-string/jumbo v1, "Effects4Phenix"

    const-string/jumbo v2, "system load lib%s.so success"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "EffectsCore"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .local v0, "ex":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 17
    .end local v0    # "ex":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0    # "ex":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "Effects4Phenix"

    const-string/jumbo v2, "system load lib%s.so error=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "EffectsCore"

    aput-object v4, v3, v7

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "inBitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "radius"    # I

    .prologue
    const/4 v1, 0x0

    .line 23
    sget-boolean v2, Lc8/Jwf;->sIsSoInstalled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_2

    :cond_0
    move-object p0, v1

    .line 33
    .end local p0    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object p0

    .line 27
    .restart local p0    # "inBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p0, v2, v3, p1}, Lc8/Jwf;->nativeBlurBitmap(Landroid/graphics/Bitmap;III)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move-object p0, v1

    .line 33
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v2, "Effects4Phenix"

    const-string/jumbo v3, "native blur bitmap error=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static native nativeBlurBitmap(Landroid/graphics/Bitmap;III)I
.end method
