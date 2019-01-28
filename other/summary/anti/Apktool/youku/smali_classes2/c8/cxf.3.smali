.class public Lc8/cxf;
.super Lc8/bxf;
.source "EncodedImage.java"


# static fields
.field public static final EXACT_SIZE_LEVEL:I = 0x1

.field public static final LARGE_SIZE_LEVEL:I = 0x4

.field public static final SMALL_SIZE_LEVEL:I = 0x2


# instance fields
.field public final extension:Ljava/lang/String;

.field public final fromDisk:Z

.field public final fromScale:Z

.field public isSecondary:Z

.field private mForcedNoCache:Z

.field private mMimeType:Lc8/Yuf;

.field public final path:Ljava/lang/String;

.field public final sizeLevel:I

.field public targetHeight:I

.field public targetWidth:I


# direct methods
.method public constructor <init>(Lc8/bxf;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 7
    .param p1, "encodedData"    # Lc8/bxf;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "sizeLevel"    # I
    .param p4, "fromDisk"    # Z
    .param p5, "extension"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lc8/cxf;-><init>(Lc8/bxf;Ljava/lang/String;IZLjava/lang/String;Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lc8/bxf;Ljava/lang/String;IZLjava/lang/String;Z)V
    .locals 2
    .param p1, "encodedData"    # Lc8/bxf;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "sizeLevel"    # I
    .param p4, "fromDisk"    # Z
    .param p5, "extension"    # Ljava/lang/String;
    .param p6, "fromScale"    # Z

    .prologue
    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_0

    .end local p1    # "encodedData":Lc8/bxf;
    :goto_0
    invoke-direct {p0, p1}, Lc8/bxf;-><init>(Lc8/bxf;)V

    .line 35
    iput-object p2, p0, Lc8/cxf;->path:Ljava/lang/String;

    .line 36
    iput p3, p0, Lc8/cxf;->sizeLevel:I

    .line 37
    iput-boolean p4, p0, Lc8/cxf;->fromDisk:Z

    .line 38
    iput-object p5, p0, Lc8/cxf;->extension:Ljava/lang/String;

    .line 39
    iput-boolean p6, p0, Lc8/cxf;->fromScale:Z

    .line 40
    return-void

    .line 34
    .restart local p1    # "encodedData":Lc8/bxf;
    :cond_0
    new-instance p1, Lc8/bxf;

    .end local p1    # "encodedData":Lc8/bxf;
    const/4 v0, 0x0

    invoke-direct {p1, v1, v0, v1, v1}, Lc8/bxf;-><init>(Z[BII)V

    goto :goto_0
.end method

.method public static getMimeTypeByExtension(Ljava/lang/String;)Lc8/Yuf;
    .locals 4
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    move-object v1, p0

    .local v1, "shortExt":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_0
    sget-object v2, Lc8/Wuf;->ALL_EXTENSION_TYPES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Yuf;

    .line 72
    .local v0, "mimeType":Lc8/Yuf;
    invoke-virtual {v0, v1}, Lc8/Yuf;->isMyExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    .end local v0    # "mimeType":Lc8/Yuf;
    .end local v1    # "shortExt":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cloneExcept(Lc8/bxf;I)Lc8/cxf;
    .locals 1
    .param p1, "encodedData"    # Lc8/bxf;
    .param p2, "sLevel"    # I

    .prologue
    .line 43
    iget-boolean v0, p0, Lc8/cxf;->fromScale:Z

    invoke-virtual {p0, p1, p2, v0}, Lc8/cxf;->cloneExcept(Lc8/bxf;IZ)Lc8/cxf;

    move-result-object v0

    return-object v0
.end method

.method public cloneExcept(Lc8/bxf;IZ)Lc8/cxf;
    .locals 7
    .param p1, "encodedData"    # Lc8/bxf;
    .param p2, "sLevel"    # I
    .param p3, "fScale"    # Z

    .prologue
    .line 47
    new-instance v0, Lc8/cxf;

    iget-object v2, p0, Lc8/cxf;->path:Ljava/lang/String;

    iget-boolean v4, p0, Lc8/cxf;->fromDisk:Z

    iget-object v5, p0, Lc8/cxf;->extension:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lc8/cxf;-><init>(Lc8/bxf;Ljava/lang/String;IZLjava/lang/String;Z)V

    .line 48
    .local v0, "cloned":Lc8/cxf;
    iget v1, p0, Lc8/cxf;->targetWidth:I

    iput v1, v0, Lc8/cxf;->targetWidth:I

    .line 49
    iget v1, p0, Lc8/cxf;->targetHeight:I

    iput v1, v0, Lc8/cxf;->targetHeight:I

    .line 50
    iget-boolean v1, p0, Lc8/cxf;->isSecondary:Z

    iput-boolean v1, v0, Lc8/cxf;->isSecondary:Z

    .line 51
    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lc8/cxf;->release(Z)V

    .line 95
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forceNoCache(Z)Lc8/cxf;
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lc8/cxf;->mForcedNoCache:Z

    .line 62
    return-object p0
.end method

.method public getMimeType()Lc8/Yuf;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc8/cxf;->mMimeType:Lc8/Yuf;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/cxf;->extension:Ljava/lang/String;

    invoke-static {v0}, Lc8/cxf;->getMimeTypeByExtension(Ljava/lang/String;)Lc8/Yuf;

    move-result-object v0

    iput-object v0, p0, Lc8/cxf;->mMimeType:Lc8/Yuf;

    .line 84
    :cond_0
    iget-object v0, p0, Lc8/cxf;->mMimeType:Lc8/Yuf;

    return-object v0
.end method

.method public notNeedCache()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    iget-boolean v1, p0, Lc8/cxf;->mForcedNoCache:Z

    if-nez v1, :cond_1

    iget v1, p0, Lc8/cxf;->type:I

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lc8/cxf;->fromDisk:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/cxf;->fromScale:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lc8/cxf;->completed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/cxf;->bytes:[B

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMimeType(Lc8/Yuf;)V
    .locals 0
    .param p1, "mimeType"    # Lc8/Yuf;

    .prologue
    .line 88
    iput-object p1, p0, Lc8/cxf;->mMimeType:Lc8/Yuf;

    .line 89
    return-void
.end method
