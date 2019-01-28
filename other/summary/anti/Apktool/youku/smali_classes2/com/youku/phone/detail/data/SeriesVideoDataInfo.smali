.class public Lcom/youku/phone/detail/data/SeriesVideoDataInfo;
.super Ljava/lang/Object;
.source "SeriesVideoDataInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x70f80af350bb673L


# instance fields
.field public arg1:Ljava/lang/String;

.field public asyncLoad:Z

.field public backgroundImg:Ljava/lang/String;

.field public collectionName:Ljava/lang/String;

.field public componentId:I

.field public currentPage:I

.field public downloadFlag_isHasNextPage:Z

.field public downloadFlag_pageNum:I

.field public downloadFlag_total:I

.field public downloadStatus:Z

.field public embedded:Z

.field public extra:Ljava/lang/String;

.field public isExternal:Z

.field public isSubscribed:Z

.field public line:I

.field public module_id:Ljava/lang/String;

.field public final newFlagPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Fkk;",
            ">;"
        }
    .end annotation
.end field

.field public order:Ljava/lang/String;

.field public final permissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Ekk;",
            ">;"
        }
    .end annotation
.end field

.field public scm:Ljava/lang/String;

.field public final seriesVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/SeriesVideo;",
            ">;"
        }
    .end annotation
.end field

.field public show_id:Ljava/lang/String;

.field public show_update:Z

.field public showcats:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public spm:Ljava/lang/String;

.field public stripe_bottom:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public total:I

.field public trackInfo:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->total:I

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->showcats:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->show_update:Z

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->order:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->collectionName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->isSubscribed:Z

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->seriesVideos:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->permissions:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->newFlagPermissions:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->total:I

    .line 83
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->showcats:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->order:Ljava/lang/String;

    .line 85
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->show_update:Z

    .line 86
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->collectionName:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->seriesVideos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->isSubscribed:Z

    .line 90
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->asyncLoad:Z

    .line 91
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->backgroundImg:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->componentId:I

    .line 93
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->embedded:Z

    .line 94
    iput v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->line:I

    .line 95
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->source:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->tag:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->title:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->stripe_bottom:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->arg1:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->extra:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->scm:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->spm:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->text:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->trackInfo:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->type:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->show_id:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->module_id:Ljava/lang/String;

    .line 108
    iput v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->currentPage:I

    .line 109
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->isExternal:Z

    .line 110
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->downloadStatus:Z

    .line 111
    return-void
.end method

.method public getSeriesVideos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/phone/detail/data/SeriesVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->seriesVideos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isReversed()Z
    .locals 2

    .prologue
    .line 114
    const-string/jumbo v0, "2"

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setData(Lcom/youku/phone/detail/data/SeriesVideoDataInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/youku/phone/detail/data/SeriesVideoDataInfo;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->clear()V

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v0, p1, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->total:I

    iput v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->total:I

    .line 123
    iget-object v0, p1, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->showcats:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->showcats:Ljava/lang/String;

    .line 124
    iget-boolean v0, p1, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->show_update:Z

    iput-boolean v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->show_update:Z

    .line 125
    iget-object v0, p1, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->order:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->order:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->collectionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->collectionName:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->seriesVideos:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->seriesVideos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget v0, p1, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->currentPage:I

    iput v0, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->currentPage:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SeriesVideoDataInfo{total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", showcats=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->showcats:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", show_update="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->show_update:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", order=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", collectionName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->collectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", asyncLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->asyncLoad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundImg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->backgroundImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", componentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->componentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", embedded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->embedded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isSubscribed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->isSubscribed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seriesVideos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->seriesVideos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/detail/data/SeriesVideoDataInfo;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
