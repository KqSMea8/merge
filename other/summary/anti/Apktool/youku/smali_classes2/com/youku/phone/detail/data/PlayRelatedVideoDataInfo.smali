.class public Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;
.super Ljava/lang/Object;
.source "PlayRelatedVideoDataInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4ec286e11ea093b8L


# instance fields
.field private isShowMore:Z

.field public isShowVerticalImage:Z

.field private mComponentId:Ljava/lang/String;

.field private mIsAsyncLoad:Z

.field private module:I

.field private ord:Ljava/lang/String;

.field private pg:I

.field private playRelatedCards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Ckk;",
            ">;"
        }
    .end annotation
.end field

.field private playRelatedVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/PlayRelatedVideo;",
            ">;"
        }
    .end annotation
.end field

.field private req_id:Ljava/lang/String;

.field private sam:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->module:I

    .line 20
    iput v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->pg:I

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->req_id:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ord:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ver:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->isShowMore:Z

    .line 30
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->sam:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->playRelatedCards:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->playRelatedVideos:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->module:I

    .line 53
    iput v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->pg:I

    .line 54
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->req_id:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ord:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ver:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->playRelatedVideos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 58
    return-void
.end method

.method public getAsyncLoad()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->mIsAsyncLoad:Z

    return v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->mComponentId:Ljava/lang/String;

    return-object v0
.end method

.method public getModule()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->module:I

    return v0
.end method

.method public getOrd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ord:Ljava/lang/String;

    return-object v0
.end method

.method public getPg()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->pg:I

    return v0
.end method

.method public getPlayRelatedCards()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Ckk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->playRelatedCards:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPlayRelatedVideos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/PlayRelatedVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->playRelatedVideos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReq_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->req_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->sam:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public isShowMore()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->isShowMore:Z

    return v0
.end method

.method public setAsyncLoad(Z)V
    .locals 0
    .param p1, "isAsyncLoad"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->mIsAsyncLoad:Z

    .line 65
    return-void
.end method

.method public setComponentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "componentId"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->mComponentId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setModule(I)V
    .locals 0
    .param p1, "module"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->module:I

    .line 79
    return-void
.end method

.method public setOrd(Ljava/lang/String;)V
    .locals 0
    .param p1, "ord"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ord:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setPg(I)V
    .locals 0
    .param p1, "pg"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->pg:I

    .line 87
    return-void
.end method

.method public setPlayRelatedVideos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/PlayRelatedVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "playRelatedVideos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/phone/detail/data/PlayRelatedVideo;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->playRelatedVideos:Ljava/util/ArrayList;

    .line 126
    return-void
.end method

.method public setReq_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "req_id"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->req_id:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setSam(Ljava/lang/String;)V
    .locals 0
    .param p1, "sam"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->sam:Ljava/lang/String;

    return-void
.end method

.method public setShowMore(Z)V
    .locals 0
    .param p1, "isShowMore"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->isShowMore:Z

    .line 134
    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ver:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayRelatedVideoDataInfo [module="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->module:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->pg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", req_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->req_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playRelatedVideos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/PlayRelatedVideoDataInfo;->playRelatedVideos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
