.class public abstract Lc8/iao;
.super Ljava/lang/Object;
.source "APageInfo.java"


# instance fields
.field private isHasNext:Z

.field private isLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/iao;->isHasNext:Z

    return-void
.end method


# virtual methods
.method public abstract assemblePageParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPageSize()I
.end method

.method public abstract getRealSize()I
.end method

.method public abstract getTotalSize()I
.end method

.method public abstract isFirstPage()Z
.end method

.method public isHasNext()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lc8/iao;->isHasNext:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lc8/iao;->isLoaded:Z

    return v0
.end method

.method public abstract resetPage()V
.end method

.method public setHasNext(Z)V
    .locals 0
    .param p1, "hasNext"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lc8/iao;->isHasNext:Z

    .line 83
    return-void
.end method

.method public setLoaded(Z)V
    .locals 0
    .param p1, "loaded"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lc8/iao;->isLoaded:Z

    .line 110
    return-void
.end method

.method public abstract toNextPage()V
.end method

.method public abstract update(Lc8/iao;)V
.end method
