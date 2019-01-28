.class public Lcom/youku/phone/detail/cms/dto/ItemDTO;
.super Lcom/youku/phone/detail/cms/dto/BaseDTO;
.source "ItemDTO.java"


# instance fields
.field private action:Lcom/youku/phone/detail/cms/dto/ActionDTO;

.field private actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ActorsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private allowComment:Z

.field private allowDownload:Z

.field private allowLike:Z

.field private allowShare:Z

.field private area:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arg1:Ljava/lang/String;

.field private changeNum:I

.field protected className:Ljava/lang/String;

.field private commentTimes:Ljava/lang/String;

.field private directors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayPlayIcon:Z

.field private doubanRate:Ljava/lang/String;

.field private expandLine:I

.field private fansCount:Ljava/lang/String;

.field public filterType:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private gifImg:Ljava/lang/String;

.field private hasSubscribed:Z

.field private hot:I

.field private id:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private isAliStar:Z

.field public isChecked:Z

.field private isMedia:Z

.field private isSelfChannel:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private mark:Lcom/youku/phone/detail/cms/dto/MarkDTO;

.field private operationLimit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ownerUid:Ljava/lang/String;

.field private payInfo:Lcom/youku/phone/detail/cms/dto/PayInfoDTO;

.field private performers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pos:I

.field private postsCount:Ljava/lang/String;

.field private property:Lcom/youku/phone/detail/cms/dto/items/ItemBaseDTO;

.field private publicType:Ljava/lang/String;

.field private releaseTime:Ljava/lang/String;

.field private releaseUser:Ljava/lang/String;

.field private reportExtend:Lcom/youku/phone/detail/cms/dto/ReportExtendDTO;

.field private scm:Ljava/lang/String;

.field private setId:Ljava/lang/String;

.field private shareState:Ljava/lang/String;

.field private showId:Ljava/lang/String;

.field private spm:Ljava/lang/String;

.field private stage:Ljava/lang/String;

.field private starArrivalId:I

.field private starName:Ljava/lang/String;

.field private subCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private subtitle:Ljava/lang/String;

.field private subtitleLabel:Ljava/lang/String;

.field private subtitleType:Ljava/lang/String;

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/SubtitlesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private summary:Ljava/lang/String;

.field private summaryType:Ljava/lang/String;

.field private tabId:Ljava/lang/String;

.field private tabType:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textType:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleLabel:Ljava/lang/String;

.field private topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalUp:Ljava/lang/String;

.field private totalVv:Ljava/lang/String;

.field private trackInfo:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uploader:Ljava/lang/String;

.field private uploaderId:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field private verified:Z

.field private verifiedIcon:Ljava/lang/String;

.field private videoSize:J

.field private videoSize1080:J

.field private videoSizeHD:J

.field private videoSizeHD2:J

.field private videoSizeMin:J

.field private youkuRate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/youku/phone/detail/cms/dto/BaseDTO;-><init>()V

    .line 19
    const-string/jumbo v0, "com.youku.haibao.client.dto.ItemDTO"

    iput-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/youku/phone/detail/cms/dto/ActionDTO;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->action:Lcom/youku/phone/detail/cms/dto/ActionDTO;

    return-object v0
.end method

.method public getActors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ActorsDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->actors:Ljava/util/List;

    return-object v0
.end method

.method public getArea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->area:Ljava/util/List;

    return-object v0
.end method

.method public getArg1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->arg1:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeNum()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->changeNum:I

    return v0
.end method

.method public getCommentTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->commentTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->directors:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayPlayIcon()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->displayPlayIcon:Z

    return v0
.end method

.method public getDoubanRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->doubanRate:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandLine()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->expandLine:I

    return v0
.end method

.method public getFansCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->fansCount:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getGifImg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->img:Ljava/lang/String;

    .line 591
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->gifImg:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHasSubscribed()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->hasSubscribed:Z

    return v0
.end method

.method public getHot()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->hot:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAliStar()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->isAliStar:Z

    return v0
.end method

.method public getIsSelfChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->isSelfChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMark()Lcom/youku/phone/detail/cms/dto/MarkDTO;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->mark:Lcom/youku/phone/detail/cms/dto/MarkDTO;

    return-object v0
.end method

.method public getOperationLimit()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->operationLimit:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->ownerUid:Ljava/lang/String;

    return-object v0
.end method

.method public getPayInfo()Lcom/youku/phone/detail/cms/dto/PayInfoDTO;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->payInfo:Lcom/youku/phone/detail/cms/dto/PayInfoDTO;

    return-object v0
.end method

.method public getPerformers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->performers:Ljava/util/List;

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->pos:I

    return v0
.end method

.method public getPostsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->postsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Lcom/youku/phone/detail/cms/dto/items/ItemBaseDTO;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->property:Lcom/youku/phone/detail/cms/dto/items/ItemBaseDTO;

    return-object v0
.end method

.method public getPublicType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->publicType:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->releaseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->releaseUser:Ljava/lang/String;

    return-object v0
.end method

.method public getReportExtend()Lcom/youku/phone/detail/cms/dto/ReportExtendDTO;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->reportExtend:Lcom/youku/phone/detail/cms/dto/ReportExtendDTO;

    return-object v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->scm:Ljava/lang/String;

    return-object v0
.end method

.method public getSetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->setId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->shareState:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->spm:Ljava/lang/String;

    return-object v0
.end method

.method public getStage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->stage:Ljava/lang/String;

    return-object v0
.end method

.method public getStarArrivalId()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->starArrivalId:I

    return v0
.end method

.method public getStarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->starName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subCategories:Ljava/util/List;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subtitleLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subtitleType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/SubtitlesDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getSummaryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->summaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getTabType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->tabType:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->textType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->titleLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getTopics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->topics:Ljava/util/List;

    return-object v0
.end method

.method public getTotalUp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->totalUp:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalVv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->totalVv:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->trackInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUploader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->uploader:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->uploaderId:Ljava/lang/String;

    return-object v0
.end method

.method public getVerified()Z
    .locals 1

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->verified:Z

    return v0
.end method

.method public getVerifiedIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->verifiedIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSize()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSize:J

    return-wide v0
.end method

.method public getVideoSize1080()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSize1080:J

    return-wide v0
.end method

.method public getVideoSizeHD()J
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSizeHD:J

    return-wide v0
.end method

.method public getVideoSizeHD2()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSizeHD2:J

    return-wide v0
.end method

.method public getVideoSizeMin()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSizeMin:J

    return-wide v0
.end method

.method public getYoukuRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->youkuRate:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowComment()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->allowComment:Z

    return v0
.end method

.method public isAllowDownload()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->allowDownload:Z

    return v0
.end method

.method public isAllowLike()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->allowLike:Z

    return v0
.end method

.method public isAllowShare()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->allowShare:Z

    return v0
.end method

.method public isMedia()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->isMedia:Z

    return v0
.end method

.method public setAction(Lcom/youku/phone/detail/cms/dto/ActionDTO;)V
    .locals 0
    .param p1, "action"    # Lcom/youku/phone/detail/cms/dto/ActionDTO;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->action:Lcom/youku/phone/detail/cms/dto/ActionDTO;

    .line 644
    return-void
.end method

.method public setActors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/ActorsDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "actors":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/ActorsDTO;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->actors:Ljava/util/List;

    .line 436
    return-void
.end method

.method public setAllowComment(Z)V
    .locals 0
    .param p1, "allowComment"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->allowComment:Z

    .line 281
    return-void
.end method

.method public setAllowDownload(Z)V
    .locals 0
    .param p1, "allowDownload"    # Z

    .prologue
    .line 288
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->allowDownload:Z

    .line 289
    return-void
.end method

.method public setAllowLike(Z)V
    .locals 0
    .param p1, "allowLike"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->allowLike:Z

    .line 297
    return-void
.end method

.method public setAllowShare(Z)V
    .locals 0
    .param p1, "allowShare"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->allowShare:Z

    .line 305
    return-void
.end method

.method public setArea(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "area":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->area:Ljava/util/List;

    .line 313
    return-void
.end method

.method public setArg1(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->arg1:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setChangeNum(I)V
    .locals 0
    .param p1, "changeNum"    # I

    .prologue
    .line 515
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->changeNum:I

    .line 516
    return-void
.end method

.method public setCommentTimes(Ljava/lang/String;)V
    .locals 0
    .param p1, "commentTimes"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->commentTimes:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setDirectors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "directors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->directors:Ljava/util/List;

    .line 329
    return-void
.end method

.method public setDisplayPlayIcon(Z)V
    .locals 0
    .param p1, "displayPlayIcon"    # Z

    .prologue
    .line 635
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->displayPlayIcon:Z

    .line 636
    return-void
.end method

.method public setDoubanRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "doubanRate"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->doubanRate:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public setExpandLine(I)V
    .locals 0
    .param p1, "expandLine"    # I

    .prologue
    .line 523
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->expandLine:I

    .line 524
    return-void
.end method

.method public setFansCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "fansCount"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->fansCount:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->flag:Ljava/lang/String;

    .line 684
    return-void
.end method

.method public setGifImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "gifImg"    # Ljava/lang/String;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->gifImg:Ljava/lang/String;

    .line 596
    return-void
.end method

.method public setHasSubscribed(Z)V
    .locals 0
    .param p1, "verified"    # Z

    .prologue
    .line 707
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->hasSubscribed:Z

    .line 708
    return-void
.end method

.method public setHot(I)V
    .locals 0
    .param p1, "hot"    # I

    .prologue
    .line 483
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->hot:I

    .line 484
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->id:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "img"    # Ljava/lang/String;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->img:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public setIsAliStar(Z)V
    .locals 0
    .param p1, "isAliStar"    # Z

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->isAliStar:Z

    .line 716
    return-void
.end method

.method public setIsSelfChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "isSelfChannel"    # Ljava/lang/String;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->isSelfChannel:Ljava/lang/String;

    .line 740
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->itemId:Ljava/lang/String;

    .line 345
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->label:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public setMark(Lcom/youku/phone/detail/cms/dto/MarkDTO;)V
    .locals 0
    .param p1, "mark"    # Lcom/youku/phone/detail/cms/dto/MarkDTO;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->mark:Lcom/youku/phone/detail/cms/dto/MarkDTO;

    .line 604
    return-void
.end method

.method public setMedia(Z)V
    .locals 0
    .param p1, "media"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->isMedia:Z

    .line 233
    return-void
.end method

.method public setOperationLimit(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "operationLimit":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->operationLimit:Ljava/util/List;

    .line 273
    return-void
.end method

.method public setOwnerUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ownerUid"    # Ljava/lang/String;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->ownerUid:Ljava/lang/String;

    .line 732
    return-void
.end method

.method public setPayInfo(Lcom/youku/phone/detail/cms/dto/PayInfoDTO;)V
    .locals 0
    .param p1, "payInfo"    # Lcom/youku/phone/detail/cms/dto/PayInfoDTO;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->payInfo:Lcom/youku/phone/detail/cms/dto/PayInfoDTO;

    .line 556
    return-void
.end method

.method public setPerformers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "performers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->performers:Ljava/util/List;

    .line 353
    return-void
.end method

.method public setPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 667
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->pos:I

    .line 668
    return-void
.end method

.method public setPostsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "postsCount"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->postsCount:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setProperty(Lcom/youku/phone/detail/cms/dto/items/ItemBaseDTO;)V
    .locals 0
    .param p1, "property"    # Lcom/youku/phone/detail/cms/dto/items/ItemBaseDTO;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->property:Lcom/youku/phone/detail/cms/dto/items/ItemBaseDTO;

    .line 676
    return-void
.end method

.method public setPublicType(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicType"    # Ljava/lang/String;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->publicType:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setReleaseTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseTime"    # Ljava/lang/String;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->releaseTime:Ljava/lang/String;

    .line 660
    return-void
.end method

.method public setReleaseUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "releaseUser"    # Ljava/lang/String;

    .prologue
    .line 563
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->releaseUser:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setReportExtend(Lcom/youku/phone/detail/cms/dto/ReportExtendDTO;)V
    .locals 0
    .param p1, "reportExtend"    # Lcom/youku/phone/detail/cms/dto/ReportExtendDTO;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->reportExtend:Lcom/youku/phone/detail/cms/dto/ReportExtendDTO;

    .line 444
    return-void
.end method

.method public setScm(Ljava/lang/String;)V
    .locals 0
    .param p1, "scm"    # Ljava/lang/String;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->scm:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setSetId(Ljava/lang/String;)V
    .locals 0
    .param p1, "setId"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->setId:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setShareState(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareState"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->shareState:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->showId:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setSpm(Ljava/lang/String;)V
    .locals 0
    .param p1, "spm"    # Ljava/lang/String;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->spm:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public setStage(Ljava/lang/String;)V
    .locals 0
    .param p1, "stage"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->stage:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setStarArrivalId(I)V
    .locals 0
    .param p1, "starArrivalId"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->starArrivalId:I

    .line 452
    return-void
.end method

.method public setStarName(Ljava/lang/String;)V
    .locals 0
    .param p1, "starName"    # Ljava/lang/String;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->starName:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public setSubCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "subCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subCategories:Ljava/util/List;

    .line 257
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subType:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subject:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subtitle:Ljava/lang/String;

    .line 652
    return-void
.end method

.method public setSubtitleLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitleLabel"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subtitleLabel:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setSubtitleType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subtitleType"    # Ljava/lang/String;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subtitleType:Ljava/lang/String;

    .line 584
    return-void
.end method

.method public setSubtitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/detail/cms/dto/SubtitlesDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "subtitles":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/detail/cms/dto/SubtitlesDTO;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->subtitles:Ljava/util/List;

    .line 369
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->summary:Ljava/lang/String;

    .line 548
    return-void
.end method

.method public setSummaryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "summaryType"    # Ljava/lang/String;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->summaryType:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->tabId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setTabType(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabType"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->tabType:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->text:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public setTextType(Ljava/lang/String;)V
    .locals 0
    .param p1, "textType"    # Ljava/lang/String;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->textType:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->title:Ljava/lang/String;

    .line 628
    return-void
.end method

.method public setTitleLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleLabel"    # Ljava/lang/String;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->titleLabel:Ljava/lang/String;

    .line 724
    return-void
.end method

.method public setTopics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->topics:Ljava/util/List;

    .line 265
    return-void
.end method

.method public setTotalUp(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalUp"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->totalUp:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setTotalVv(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalVv"    # Ljava/lang/String;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->totalVv:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public setTrackInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackInfo"    # Ljava/lang/String;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->trackInfo:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->type:Ljava/lang/String;

    .line 612
    return-void
.end method

.method public setUploader(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploader"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->uploader:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setUploaderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "uploaderId"    # Ljava/lang/String;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->uploaderId:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setVerified(Z)V
    .locals 0
    .param p1, "verified"    # Z

    .prologue
    .line 691
    iput-boolean p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->verified:Z

    .line 692
    return-void
.end method

.method public setVerifiedIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "verifiedIcon"    # Ljava/lang/String;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->verifiedIcon:Ljava/lang/String;

    .line 700
    return-void
.end method

.method public setVideoSize(J)V
    .locals 1
    .param p1, "videoSize"    # J

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSize:J

    .line 153
    return-void
.end method

.method public setVideoSize1080(J)V
    .locals 1
    .param p1, "videoSize1080"    # J

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSize1080:J

    .line 137
    return-void
.end method

.method public setVideoSizeHD(J)V
    .locals 1
    .param p1, "videoSizeHD"    # J

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSizeHD:J

    .line 161
    return-void
.end method

.method public setVideoSizeHD2(J)V
    .locals 1
    .param p1, "videoSizeHD2"    # J

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSizeHD2:J

    .line 169
    return-void
.end method

.method public setVideoSizeMin(J)V
    .locals 1
    .param p1, "videoSizeMin"    # J

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->videoSizeMin:J

    .line 145
    return-void
.end method

.method public setYoukuRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "youkuRate"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/youku/phone/detail/cms/dto/ItemDTO;->youkuRate:Ljava/lang/String;

    .line 404
    return-void
.end method
