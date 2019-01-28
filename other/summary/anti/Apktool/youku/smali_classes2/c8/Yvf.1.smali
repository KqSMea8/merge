.class public Lc8/Yvf;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "PassableBitmapDrawable.java"


# instance fields
.field private mBitmapPadding:Landroid/graphics/Rect;

.field private mDiskCacheCatalog:I

.field private mDiskCacheKey:Ljava/lang/String;

.field private mDiskPriority:I

.field private mFromDisk:Z

.field private mFromMemory:Z

.field private mFromSecondary:Z

.field private mIsNinePatch:Z

.field private mMemoryCacheKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "padding"    # Landroid/graphics/Rect;
    .param p4, "memoryCacheKey"    # Ljava/lang/String;
    .param p5, "diskCacheKey"    # Ljava/lang/String;
    .param p6, "diskCacheCatalog"    # I
    .param p7, "diskPriority"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 32
    iput-object p3, p0, Lc8/Yvf;->mBitmapPadding:Landroid/graphics/Rect;

    .line 33
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/Yvf;->mIsNinePatch:Z

    .line 34
    invoke-direct {p0, p4, p5, p6, p7}, Lc8/Yvf;->init(Ljava/lang/String;Ljava/lang/String;II)V

    .line 35
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "memoryCacheKey"    # Ljava/lang/String;
    .param p2, "diskCacheKey"    # Ljava/lang/String;
    .param p3, "diskCacheCatalog"    # I
    .param p4, "diskPriority"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Yvf;->init(Ljava/lang/String;Ljava/lang/String;II)V

    .line 40
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "memoryCacheKey"    # Ljava/lang/String;
    .param p2, "diskCacheKey"    # Ljava/lang/String;
    .param p3, "diskCacheCatalog"    # I
    .param p4, "diskPriority"    # I

    .prologue
    .line 43
    iput-object p1, p0, Lc8/Yvf;->mMemoryCacheKey:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lc8/Yvf;->mDiskCacheKey:Ljava/lang/String;

    .line 45
    iput p3, p0, Lc8/Yvf;->mDiskCacheCatalog:I

    .line 46
    iput p4, p0, Lc8/Yvf;->mDiskPriority:I

    .line 47
    return-void
.end method


# virtual methods
.method public convert2NinePatchDrawable()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-boolean v1, p0, Lc8/Yvf;->mIsNinePatch:Z

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p0}, Lc8/Yvf;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    iget-object v1, p0, Lc8/Yvf;->mBitmapPadding:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Yvf;->mBitmapPadding:Landroid/graphics/Rect;

    :goto_0
    invoke-direct {v2, v0, v4, v1, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    move-object v1, v2

    .line 54
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 52
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move-object v1, v3

    .line 54
    goto :goto_1
.end method

.method public fromDisk(Z)V
    .locals 0
    .param p1, "fromDisk"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lc8/Yvf;->mFromDisk:Z

    .line 96
    return-void
.end method

.method public fromMemory(Z)V
    .locals 0
    .param p1, "fromMemory"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lc8/Yvf;->mFromMemory:Z

    .line 92
    return-void
.end method

.method public fromSecondary(Z)V
    .locals 0
    .param p1, "fromSecondary"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lc8/Yvf;->mFromSecondary:Z

    .line 88
    return-void
.end method

.method public getDiskCacheCatalog()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lc8/Yvf;->mDiskCacheCatalog:I

    return v0
.end method

.method public getDiskCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/Yvf;->mDiskCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskPriority()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lc8/Yvf;->mDiskPriority:I

    return v0
.end method

.method public getMemoryCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Yvf;->mMemoryCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public isFromDisk()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lc8/Yvf;->mFromDisk:Z

    return v0
.end method

.method public isFromMemory()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lc8/Yvf;->mFromMemory:Z

    return v0
.end method

.method public isFromSecondary()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lc8/Yvf;->mFromSecondary:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", key@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Yvf;->mMemoryCacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
