.class public Lc8/cwf;
.super Lc8/Svf;
.source "StaticCachedImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bwf;
    }
.end annotation


# static fields
.field private static final bitmapGlobalMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map",
            "<",
            "Lc8/cwf;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final bitmap:Landroid/graphics/Bitmap;

.field final bitmapPadding:Landroid/graphics/Rect;

.field private mRecycleListener:Lc8/bwf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lc8/cwf;->bitmapGlobalMaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "padding"    # Landroid/graphics/Rect;
    .param p3, "memoryCacheKey"    # Ljava/lang/String;
    .param p4, "diskCacheKey"    # Ljava/lang/String;
    .param p5, "diskCacheCatalog"    # I
    .param p6, "diskPriority"    # I

    .prologue
    .line 25
    invoke-direct {p0, p3, p4, p5, p6}, Lc8/Svf;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 26
    iput-object p1, p0, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    .line 27
    iput-object p2, p0, Lc8/cwf;->bitmapPadding:Landroid/graphics/Rect;

    .line 28
    invoke-direct {p0}, Lc8/cwf;->addBitmapGlobalReference()V

    .line 29
    const-string/jumbo v0, "ImageRecycle"

    const-string/jumbo v1, "new image=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method private addBitmapGlobalReference()V
    .locals 4

    .prologue
    .line 33
    sget-object v2, Lc8/cwf;->bitmapGlobalMaps:Ljava/util/Map;

    monitor-enter v2

    .line 35
    :try_start_0
    sget-object v1, Lc8/cwf;->bitmapGlobalMaps:Ljava/util/Map;

    iget-object v3, p0, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, "bmpRefRoots":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/phenix/cache/memory/StaticCachedImage;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    .end local v0    # "bmpRefRoots":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/phenix/cache/memory/StaticCachedImage;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 37
    .restart local v0    # "bmpRefRoots":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/phenix/cache/memory/StaticCachedImage;Ljava/lang/Boolean;>;"
    sget-object v1, Lc8/cwf;->bitmapGlobalMaps:Ljava/util/Map;

    iget-object v3, p0, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v2

    return-void

    .end local v0    # "bmpRefRoots":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/phenix/cache/memory/StaticCachedImage;Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lc8/owf;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected newBitmapDrawable(Ljava/lang/String;Ljava/lang/String;IIZLandroid/content/res/Resources;)Lc8/Yvf;
    .locals 8
    .param p1, "memoryCacheKey"    # Ljava/lang/String;
    .param p2, "diskCacheKey"    # Ljava/lang/String;
    .param p3, "diskCacheCatalog"    # I
    .param p4, "diskPriority"    # I
    .param p5, "releasable"    # Z
    .param p6, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 45
    if-eqz p5, :cond_0

    .line 46
    new-instance v0, Lc8/Zvf;

    iget-object v2, p0, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lc8/cwf;->bitmapPadding:Landroid/graphics/Rect;

    move-object v1, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lc8/Zvf;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/Yvf;

    iget-object v2, p0, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lc8/cwf;->bitmapPadding:Landroid/graphics/Rect;

    move-object v1, p6

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lc8/Yvf;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method protected onCanBeRecycled()V
    .locals 9

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "clear":Z
    sget-object v4, Lc8/cwf;->bitmapGlobalMaps:Ljava/util/Map;

    monitor-enter v4

    .line 67
    :try_start_0
    sget-object v3, Lc8/cwf;->bitmapGlobalMaps:Ljava/util/Map;

    iget-object v5, p0, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 69
    .local v0, "bmpRefRoots":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/phenix/cache/memory/StaticCachedImage;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_2

    .line 70
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    .line 72
    .local v2, "size":I
    if-nez v2, :cond_1

    .line 73
    const/4 v1, 0x1

    .line 74
    sget-object v3, Lc8/cwf;->bitmapGlobalMaps:Ljava/util/Map;

    iget-object v5, p0, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v3, "ImageRecycle"

    const-string/jumbo v5, "bitmap in the image can be recycled now, image=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v3, v5, v6}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .end local v2    # "size":I
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    if-eqz v1, :cond_0

    iget-object v3, p0, Lc8/cwf;->mRecycleListener:Lc8/bwf;

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lc8/cwf;->mRecycleListener:Lc8/bwf;

    invoke-interface {v3, p0}, Lc8/bwf;->recycle(Lc8/cwf;)V

    .line 87
    :cond_0
    return-void

    .line 77
    .restart local v2    # "size":I
    :cond_1
    :try_start_1
    const-string/jumbo v3, "ImageRecycle"

    const-string/jumbo v5, "cannot recycled the image(bitmap referenced by %d image still), image=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-static {v3, v5, v6}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    .end local v0    # "bmpRefRoots":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/phenix/cache/memory/StaticCachedImage;Ljava/lang/Boolean;>;"
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 80
    .restart local v0    # "bmpRefRoots":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/phenix/cache/memory/StaticCachedImage;Ljava/lang/Boolean;>;"
    :cond_2
    :try_start_2
    const-string/jumbo v3, "ImageRecycle"

    const-string/jumbo v5, "cannot recycled the image(bitmap has been recycled ever), image=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v3, v5, v6}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onChange2NotRecycled()V
    .locals 4

    .prologue
    .line 58
    const-string/jumbo v0, "ImageRecycle"

    const-string/jumbo v1, "image change to not recycled, image=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-direct {p0}, Lc8/cwf;->addBitmapGlobalReference()V

    .line 60
    return-void
.end method

.method public setStaticImageRecycleListener(Lc8/bwf;)Lc8/cwf;
    .locals 0
    .param p1, "recycleListener"    # Lc8/bwf;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/cwf;->mRecycleListener:Lc8/bwf;

    .line 96
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StaticCachedImage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bmp@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", key@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/cwf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
