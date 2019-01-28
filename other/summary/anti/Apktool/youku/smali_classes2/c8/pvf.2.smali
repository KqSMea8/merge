.class public Lc8/pvf;
.super Ljava/lang/Object;
.source "BitmapSupplier.java"

# interfaces
.implements Lc8/nvf;


# static fields
.field private static final sBitmapSupplier:Lc8/pvf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lc8/pvf;

    invoke-direct {v0}, Lc8/pvf;-><init>()V

    sput-object v0, Lc8/pvf;->sBitmapSupplier:Lc8/pvf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/pvf;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lc8/pvf;->sBitmapSupplier:Lc8/pvf;

    return-object v0
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 23
    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-static {}, Lc8/nuf;->isAshmemSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    invoke-static {}, Lc8/uuf;->instance()Lc8/uuf;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lc8/uuf;->newBitmapWithPin(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 28
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 29
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    :cond_1
    return-object v1

    .line 25
    :cond_2
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ixf;->bitmapPoolBuilder()Lc8/qvf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/qvf;->build()Lc8/lvf;

    move-result-object v0

    .local v0, "pool":Lc8/lvf;
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1, p2, p3}, Lc8/lvf;->getFromPool(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method
