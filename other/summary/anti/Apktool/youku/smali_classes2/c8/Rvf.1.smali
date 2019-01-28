.class public Lc8/Rvf;
.super Lc8/Svf;
.source "AnimatedCachedImage.java"


# instance fields
.field final animated:Lc8/ruf;


# direct methods
.method public constructor <init>(Lc8/ruf;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "animated"    # Lc8/ruf;
    .param p2, "memoryCacheKey"    # Ljava/lang/String;
    .param p3, "diskCacheKey"    # Ljava/lang/String;
    .param p4, "diskCacheCatalog"    # I
    .param p5, "diskPriority"    # I

    .prologue
    .line 16
    invoke-direct {p0, p2, p3, p4, p5}, Lc8/Svf;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 17
    iput-object p1, p0, Lc8/Rvf;->animated:Lc8/ruf;

    .line 18
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lc8/Rvf;->animated:Lc8/ruf;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/Rvf;->animated:Lc8/ruf;

    invoke-interface {v0}, Lc8/ruf;->getSizeInBytes()I

    move-result v0

    goto :goto_0
.end method

.method protected newBitmapDrawable(Ljava/lang/String;Ljava/lang/String;IIZLandroid/content/res/Resources;)Lc8/Yvf;
    .locals 6
    .param p1, "memoryCacheKey"    # Ljava/lang/String;
    .param p2, "diskCacheKey"    # Ljava/lang/String;
    .param p3, "diskCacheCatalog"    # I
    .param p4, "diskPriority"    # I
    .param p5, "releasable"    # Z
    .param p6, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 22
    new-instance v0, Lc8/ivf;

    iget-object v5, p0, Lc8/Rvf;->animated:Lc8/ruf;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lc8/ivf;-><init>(Ljava/lang/String;Ljava/lang/String;IILc8/ruf;)V

    return-object v0
.end method
