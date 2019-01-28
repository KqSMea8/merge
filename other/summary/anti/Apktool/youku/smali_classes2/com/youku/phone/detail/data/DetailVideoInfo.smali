.class public Lcom/youku/phone/detail/data/DetailVideoInfo;
.super Lcom/youku/phone/detail/data/Video;
.source "DetailVideoInfo.java"


# instance fields
.field public abtest:Ljava/lang/String;

.field public abtestMark:Ljava/lang/String;

.field public actors:Ljava/lang/String;

.field public allowTrack:Z

.field public alreadyTRack:Z

.field public animeEdition:[Ljava/lang/String;

.field public area:Ljava/lang/String;

.field public bingeWatchingStatus:I

.field public cats:Ljava/lang/String;

.field public cats_id:I

.field private channel_type_id:Ljava/lang/String;

.field public collapse_subscribe_card:Ljava/lang/Boolean;

.field private commentTimes:I

.field public comment_switch:Z

.field public copyrightStatus:Ljava/lang/String;

.field public copyrightStatusTmall:Ljava/lang/String;

.field public copyrightStatusTudou:Ljava/lang/String;

.field private currentTab:I

.field public desc:Ljava/lang/String;

.field public directors:Ljava/lang/String;

.field private douban_rate:Ljava/lang/String;

.field public duation:I

.field public embedded:Z

.field public episodeCollected:I

.field public episode_total:I

.field private favTimes:I

.field public fetch_id:Ljava/lang/String;

.field public firstepisodeVideotitle:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field public forward_switch:Z

.field public genre:Ljava/lang/String;

.field public global:Ljava/lang/String;

.field public hasAudioLan:Z

.field public hasNewRelatedPartCard:Z

.field public hasRelatedPartCard:Z

.field public hasSeriesCard:Z

.field public hasTRackNotice:Z

.field public hasvideotype:[Ljava/lang/String;

.field public host:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageString:Ljava/lang/String;

.field public imgShow:Ljava/lang/String;

.field public isCollected:Z

.field public isFavorite:Z

.field public isFirstLoadAdData:Z

.field public isFirstLoadCommentData:Z

.field public isFirstLoadGameData:Z

.field public isFirstLoadNewRelatedPartDate:Z

.field public isFirstLoadRelatedPartData:Z

.field public isFirstLoadSeriesData:Z

.field public isFirstLoadSeriesDescData:Z

.field public isFirstLoadSubscribeData:Z

.field public isPraised:Z

.field public isShowAllComment:Z

.field public isShowAllContinueCard:Z

.field public isShowAllH5:Z

.field public isShowAllNewRelatedPart:Z

.field public isShowAllNewRelatedVideo:Z

.field public isShowAllRelatedPart:Z

.field public isShowAllRelatedVideo:Z

.field public isShowAllSCGCard:Z

.field public isShowAllSerise:Z

.field public isShowAllSeriseCache:Z

.field public isShowAllSideslipCard:Z

.field public isShowAllVideoDetail:Z

.field public isShowHalfScreenCard:Z

.field public isShowHalfScreenSecondCard:Z

.field public isShowScgSingleVideoFullCard:Z

.field public isShowSideSlipFullCard:Z

.field public like_disabled:I

.field private limit:I

.field public original:Ljava/lang/String;

.field private playPos:I

.field private playTimes:Ljava/lang/String;

.field public praise_switch:Z

.field public publicType:I

.field public publisher:Ljava/lang/String;

.field private rate:Ljava/lang/String;

.field public rc_title:Ljava/lang/String;

.field public reportUrl:Ljava/lang/String;

.field private searchTimes:I

.field public secondLine:Ljava/lang/String;

.field public series_tip:Ljava/lang/String;

.field public seriesid:I

.field public share_at:Ljava/lang/String;

.field public share_intro:Ljava/lang/String;

.field public share_topic:Ljava/lang/String;

.field public showCompleted:Z

.field public show_subtitle:Ljava/lang/String;

.field private show_videotype:Ljava/lang/String;

.field public showcategory:Ljava/lang/String;

.field public showdate:Ljava/lang/String;

.field public showid:Ljava/lang/String;

.field public showkind:[Ljava/lang/String;

.field public singer:Ljava/lang/String;

.field public singers:Ljava/lang/String;

.field public spmA:Ljava/lang/String;

.field public spmB:Ljava/lang/String;

.field private stripe_bottom:Ljava/lang/String;

.field public subcates:Ljava/lang/String;

.field public tag_type:Ljava/lang/String;

.field public teacher:Ljava/lang/String;

.field public thirdLineSummary:Ljava/lang/String;

.field public topics:Ljava/lang/String;

.field public total_up:I

.field public total_vv_fmt:Ljava/lang/String;

.field public trackAllowStatus:Ljava/lang/String;

.field public trackNotice:Ljava/lang/String;

.field private type:I

.field public ugc_title:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public username:Ljava/lang/String;

.field public videoRightType:I

.field public videoSize:J

.field public videoSize1080P:J

.field public videoSizeHD:J

.field public videoSizeHD2:J

.field public videoType:Ljava/lang/String;

.field public videoTypeIcon:Ljava/lang/String;

.field public voice:Ljava/lang/String;

.field public youkuUserid:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/youku/phone/detail/data/Video;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->showCompleted:Z

    .line 159
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->hasAudioLan:Z

    .line 163
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->stripe_bottom:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->show_videotype:Ljava/lang/String;

    .line 176
    iput v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->publicType:I

    .line 186
    iput v3, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->videoRightType:I

    .line 198
    iput v3, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->like_disabled:I

    .line 223
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->comment_switch:Z

    .line 225
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->forward_switch:Z

    .line 227
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->praise_switch:Z

    .line 254
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isCollected:Z

    .line 258
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isPraised:Z

    .line 262
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllVideoDetail:Z

    .line 266
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllH5:Z

    .line 270
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowHalfScreenCard:Z

    .line 274
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowHalfScreenSecondCard:Z

    .line 279
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllSerise:Z

    .line 283
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllSeriseCache:Z

    .line 287
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllRelatedPart:Z

    .line 291
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllNewRelatedPart:Z

    .line 295
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllComment:Z

    .line 299
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllRelatedVideo:Z

    .line 303
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllNewRelatedVideo:Z

    .line 308
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->hasNewRelatedPartCard:Z

    .line 313
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->hasRelatedPartCard:Z

    .line 317
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllSideslipCard:Z

    .line 322
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllContinueCard:Z

    .line 328
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowAllSCGCard:Z

    .line 332
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowScgSingleVideoFullCard:Z

    .line 337
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isShowSideSlipFullCard:Z

    .line 352
    iput-boolean v1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->hasSeriesCard:Z

    .line 354
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isFirstLoadSeriesData:Z

    .line 356
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isFirstLoadRelatedPartData:Z

    .line 358
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isFirstLoadNewRelatedPartDate:Z

    .line 360
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isFirstLoadSeriesDescData:Z

    .line 362
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isFirstLoadSubscribeData:Z

    .line 364
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isFirstLoadAdData:Z

    .line 366
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isFirstLoadCommentData:Z

    .line 368
    iput-boolean v2, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->isFirstLoadGameData:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 660
    invoke-super {p0}, Lcom/youku/phone/detail/data/Video;->clear()V

    .line 661
    iput-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->id:Ljava/lang/String;

    .line 662
    iput-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->tag_type:Ljava/lang/String;

    .line 663
    iput-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->showid:Ljava/lang/String;

    .line 664
    iput-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->desc:Ljava/lang/String;

    .line 665
    iput-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->topics:Ljava/lang/String;

    .line 666
    return-void
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentTimes()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->commentTimes:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getDouban_rate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->douban_rate:Ljava/lang/String;

    return-object v0
.end method

.method public getFetch_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->fetch_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->playlistId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->videoId:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->id:Ljava/lang/String;

    .line 442
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->id:Ljava/lang/String;

    return-object v0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->fetch_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->id:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->imageString:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->limit:I

    return v0
.end method

.method public getOriginal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->original:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTimes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->playTimes:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->rate:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_videotype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->show_videotype:Ljava/lang/String;

    return-object v0
.end method

.method public getShowid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->showid:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getStripe_bottom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->stripe_bottom:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->type:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVoice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->voice:Ljava/lang/String;

    return-object v0
.end method

.method public setActors(Ljava/lang/String;)V
    .locals 0
    .param p1, "actors"    # Ljava/lang/String;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->actors:Ljava/lang/String;

    .line 558
    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "area"    # Ljava/lang/String;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->area:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setCommentTimes(I)V
    .locals 0
    .param p1, "commentTimes"    # I

    .prologue
    .line 609
    iput p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->commentTimes:I

    .line 610
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->desc:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setDirectors(Ljava/lang/String;)V
    .locals 0
    .param p1, "directors"    # Ljava/lang/String;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->directors:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public setDouban_rate(Ljava/lang/String;)V
    .locals 0
    .param p1, "douban_rate"    # Ljava/lang/String;

    .prologue
    .line 545
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->douban_rate:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public setDuation(I)V
    .locals 0
    .param p1, "duation"    # I

    .prologue
    .line 517
    iput p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->duation:I

    .line 518
    return-void
.end method

.method public setEpisode_total(I)V
    .locals 0
    .param p1, "episode_total"    # I

    .prologue
    .line 639
    iput p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->episode_total:I

    .line 640
    return-void
.end method

.method public setFavTimes(I)V
    .locals 0
    .param p1, "favTimes"    # I

    .prologue
    .line 605
    iput p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->favTimes:I

    .line 606
    return-void
.end method

.method public setFetch_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "fetch_id"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->fetch_id:Ljava/lang/String;

    .line 574
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->format:Ljava/lang/String;

    .line 622
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0
    .param p1, "types"    # Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->genre:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->host:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public setImageString(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageString"    # Ljava/lang/String;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->imageString:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 533
    iput p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->limit:I

    .line 534
    return-void
.end method

.method public setOriginal(Ljava/lang/String;)V
    .locals 0
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->original:Ljava/lang/String;

    .line 488
    return-void
.end method

.method public setPlayTimes(Ljava/lang/String;)V
    .locals 0
    .param p1, "playTimes"    # Ljava/lang/String;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->playTimes:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0
    .param p1, "publisher"    # Ljava/lang/String;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->publisher:Ljava/lang/String;

    .line 480
    return-void
.end method

.method public setRate(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate"    # Ljava/lang/String;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->rate:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public setSearchTimes(I)V
    .locals 0
    .param p1, "searchTimes"    # I

    .prologue
    .line 593
    iput p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->searchTimes:I

    .line 594
    return-void
.end method

.method public setShow_videotype(Ljava/lang/String;)V
    .locals 0
    .param p1, "show_videotype"    # Ljava/lang/String;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->show_videotype:Ljava/lang/String;

    .line 656
    return-void
.end method

.method public setShowid(Ljava/lang/String;)V
    .locals 0
    .param p1, "showid"    # Ljava/lang/String;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->showid:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0
    .param p1, "singer"    # Ljava/lang/String;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->singer:Ljava/lang/String;

    .line 682
    return-void
.end method

.method public setSingers(Ljava/lang/String;)V
    .locals 0
    .param p1, "singers"    # Ljava/lang/String;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->singers:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setStripe_bottom(Ljava/lang/String;)V
    .locals 0
    .param p1, "stripe_bottom"    # Ljava/lang/String;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->stripe_bottom:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public setTag_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag_type"    # Ljava/lang/String;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->tag_type:Ljava/lang/String;

    .line 628
    return-void
.end method

.method public setTeacher(Ljava/lang/String;)V
    .locals 0
    .param p1, "teacher"    # Ljava/lang/String;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->teacher:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->title:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 635
    iput p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->type:I

    .line 636
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->username:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->videoId:Ljava/lang/String;

    .line 674
    return-void
.end method

.method public setVoice(Ljava/lang/String;)V
    .locals 0
    .param p1, "voice"    # Ljava/lang/String;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/youku/phone/detail/data/DetailVideoInfo;->voice:Ljava/lang/String;

    .line 504
    return-void
.end method
