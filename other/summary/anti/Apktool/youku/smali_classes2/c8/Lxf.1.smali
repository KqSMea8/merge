.class public Lc8/Lxf;
.super Ljava/lang/Object;
.source "ImageUriInfo.java"


# static fields
.field private static final LEVEL_MODEL_SIZES:[I


# instance fields
.field private mBaseCacheCatalog:I

.field private final mCacheKeyInspector:Lc8/Dvf;

.field private mDiskCacheKey:Ljava/lang/String;

.field private mMaxViewHeight:I

.field private mMaxViewWidth:I

.field private mMemoryCacheKey:Ljava/lang/String;

.field private mMemoryCacheKeySuffix:Ljava/lang/String;

.field private mRequestPath:Ljava/lang/String;

.field private final mSchemeInfo:Lc8/Mxf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc8/Lxf;->LEVEL_MODEL_SIZES:[I

    return-void

    :array_0
    .array-data 4
        0xa
        0x1e
        0x3c
        0x64
        0xc8
        0x12c
        0x1f4
        0x320
        0x44c
        0x5dc
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/Dvf;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cacheKeyInspector"    # Lc8/Dvf;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lc8/Lxf;->mCacheKeyInspector:Lc8/Dvf;

    .line 35
    iput-object p1, p0, Lc8/Lxf;->mRequestPath:Ljava/lang/String;

    .line 36
    if-nez p1, :cond_1

    .line 37
    new-instance v0, Lc8/Mxf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc8/Mxf;-><init>(I)V

    iput-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {p1}, Lc8/Mxf;->parse(Ljava/lang/String;)Lc8/Mxf;

    move-result-object v0

    iput-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    .line 40
    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    invoke-virtual {v0}, Lc8/Mxf;->isNetworkUri()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget-boolean v0, v0, Lc8/Mxf;->isCdnSize:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget v0, v0, Lc8/Mxf;->width:I

    iget-object v1, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget v1, v1, Lc8/Mxf;->height:I

    invoke-static {v0, v1}, Lc8/owf;->mergeWH(II)I

    move-result v0

    iput v0, p0, Lc8/Lxf;->mBaseCacheCatalog:I

    goto :goto_0
.end method

.method private findBestLevel(I)I
    .locals 7
    .param p1, "target"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 53
    sget-object v4, Lc8/Lxf;->LEVEL_MODEL_SIZES:[I

    array-length v1, v4

    .line 54
    .local v1, "len":I
    div-int/lit8 v2, v1, 0x2

    .line 56
    .local v2, "pos":I
    const/4 v0, -0x1

    .line 57
    .local v0, "findType":I
    :goto_0
    if-ltz v2, :cond_2

    if-ge v2, v1, :cond_2

    .line 58
    sget-object v4, Lc8/Lxf;->LEVEL_MODEL_SIZES:[I

    aget v3, v4, v2

    .line 59
    .local v3, "value":I
    if-le p1, v3, :cond_4

    .line 61
    if-gez v0, :cond_1

    .line 62
    const/4 v0, 0x1

    .line 66
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    if-ne v0, v6, :cond_0

    .line 79
    .end local v3    # "value":I
    :cond_2
    if-gez v2, :cond_6

    .line 80
    const/4 v2, 0x0

    .line 88
    :cond_3
    :goto_1
    sget-object v4, Lc8/Lxf;->LEVEL_MODEL_SIZES:[I

    aget v4, v4, v2

    return v4

    .line 67
    .restart local v3    # "value":I
    :cond_4
    if-ge p1, v3, :cond_2

    .line 69
    if-gez v0, :cond_5

    .line 70
    const/4 v0, 0x2

    .line 74
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 71
    :cond_5
    if-eq v0, v5, :cond_2

    goto :goto_2

    .line 81
    .end local v3    # "value":I
    :cond_6
    if-lt v2, v1, :cond_7

    .line 82
    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    .line 83
    :cond_7
    if-ne v0, v5, :cond_8

    sget-object v4, Lc8/Lxf;->LEVEL_MODEL_SIZES:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    sget-object v5, Lc8/Lxf;->LEVEL_MODEL_SIZES:[I

    aget v5, v5, v2

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    if-gt p1, v4, :cond_8

    .line 84
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 85
    :cond_8
    if-ne v0, v6, :cond_3

    sget-object v4, Lc8/Lxf;->LEVEL_MODEL_SIZES:[I

    aget v4, v4, v2

    sget-object v5, Lc8/Lxf;->LEVEL_MODEL_SIZES:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    if-le p1, v4, :cond_3

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addMemoryCacheKeySuffix(Ljava/lang/String;)V
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lc8/Lxf;->mMemoryCacheKeySuffix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 96
    iput-object p1, p0, Lc8/Lxf;->mMemoryCacheKeySuffix:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/Lxf;->mMemoryCacheKeySuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Lxf;->mMemoryCacheKeySuffix:Ljava/lang/String;

    goto :goto_0
.end method

.method public containsCdnSize()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget-boolean v0, v0, Lc8/Mxf;->isCdnSize:Z

    return v0
.end method

.method public getCacheKeyInspector()Lc8/Dvf;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lc8/Lxf;->mCacheKeyInspector:Lc8/Dvf;

    return-object v0
.end method

.method public getDiskCacheCatalog()I
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lc8/Lxf;->mCacheKeyInspector:Lc8/Dvf;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lc8/Lxf;->mCacheKeyInspector:Lc8/Dvf;

    iget-object v1, p0, Lc8/Lxf;->mRequestPath:Ljava/lang/String;

    iget v2, p0, Lc8/Lxf;->mBaseCacheCatalog:I

    invoke-virtual {v0, v1, v2}, Lc8/Dvf;->inspectDiskCacheCatalog(Ljava/lang/String;I)I

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lc8/Lxf;->mBaseCacheCatalog:I

    goto :goto_0
.end method

.method public getDiskCacheKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lc8/Lxf;->mDiskCacheKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget-object v1, v1, Lc8/Mxf;->baseName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget-object v1, v1, Lc8/Mxf;->baseName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget-object v1, v1, Lc8/Mxf;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Lxf;->mDiskCacheKey:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lc8/Lxf;->mCacheKeyInspector:Lc8/Dvf;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lc8/Lxf;->mCacheKeyInspector:Lc8/Dvf;

    iget-object v2, p0, Lc8/Lxf;->mRequestPath:Ljava/lang/String;

    iget-object v3, p0, Lc8/Lxf;->mDiskCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/Dvf;->inspectDiskCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Lxf;->mDiskCacheKey:Ljava/lang/String;

    .line 140
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lc8/Lxf;->mDiskCacheKey:Ljava/lang/String;

    return-object v1

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget v0, v0, Lc8/Mxf;->height:I

    return v0
.end method

.method public getImageExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget-object v0, v0, Lc8/Mxf;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryCacheKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    iget-object v1, p0, Lc8/Lxf;->mMemoryCacheKey:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 105
    iget-object v1, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget-object v1, v1, Lc8/Mxf;->baseName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget-object v1, v1, Lc8/Mxf;->baseName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget v1, p0, Lc8/Lxf;->mBaseCacheCatalog:I

    if-nez v1, :cond_4

    iget v1, p0, Lc8/Lxf;->mMaxViewWidth:I

    if-nez v1, :cond_0

    iget v1, p0, Lc8/Lxf;->mMaxViewHeight:I

    if-eqz v1, :cond_4

    .line 111
    :cond_0
    iget v1, p0, Lc8/Lxf;->mMaxViewWidth:I

    invoke-direct {p0, v1}, Lc8/Lxf;->findBestLevel(I)I

    move-result v1

    iget v2, p0, Lc8/Lxf;->mMaxViewHeight:I

    invoke-direct {p0, v2}, Lc8/Lxf;->findBestLevel(I)I

    move-result v2

    invoke-static {v1, v2}, Lc8/owf;->mergeWH(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Lxf;->mMemoryCacheKey:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lc8/Lxf;->mCacheKeyInspector:Lc8/Dvf;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lc8/Lxf;->mCacheKeyInspector:Lc8/Dvf;

    iget-object v2, p0, Lc8/Lxf;->mRequestPath:Ljava/lang/String;

    iget-object v3, p0, Lc8/Lxf;->mMemoryCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lc8/Dvf;->inspectMemoryCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Lxf;->mMemoryCacheKey:Ljava/lang/String;

    .line 119
    :cond_1
    iget-object v1, p0, Lc8/Lxf;->mMemoryCacheKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/Lxf;->mMemoryCacheKeySuffix:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/Lxf;->mMemoryCacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Lxf;->mMemoryCacheKeySuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Lxf;->mMemoryCacheKey:Ljava/lang/String;

    .line 123
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v1, p0, Lc8/Lxf;->mMemoryCacheKey:Ljava/lang/String;

    return-object v1

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 113
    :cond_4
    iget v1, p0, Lc8/Lxf;->mBaseCacheCatalog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lc8/Lxf;->mRequestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget v0, v0, Lc8/Mxf;->quality:I

    return v0
.end method

.method public getSchemeInfo()Lc8/Mxf;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    iget v0, v0, Lc8/Mxf;->width:I

    return v0
.end method

.method public isLocalUri()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    invoke-virtual {v0}, Lc8/Mxf;->isLocalUri()Z

    move-result v0

    return v0
.end method

.method setMaxViewSize(II)V
    .locals 0
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 47
    iput p1, p0, Lc8/Lxf;->mMaxViewWidth:I

    .line 48
    iput p2, p0, Lc8/Lxf;->mMaxViewHeight:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Lxf;->mRequestPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nscheme info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Lxf;->mSchemeInfo:Lc8/Mxf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nbase cache catalog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lc8/Lxf;->getDiskCacheCatalog()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nmemory cache key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lc8/Lxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\ndisk cache key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lc8/Lxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\ndisk cache catalog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lc8/Lxf;->getDiskCacheCatalog()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
