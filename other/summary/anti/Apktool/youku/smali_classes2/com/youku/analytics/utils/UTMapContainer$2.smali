.class public final Lcom/youku/analytics/utils/UTMapContainer$2;
.super Ljava/util/HashMap;
.source "UTMapContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/XHg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 556
    const-string/jumbo v0, "home.posterVideoClick"

    const-string/jumbo v1, "homeposterVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string/jumbo v0, "home.posterVideoMoreClick"

    const-string/jumbo v1, "homeposterVideoMoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string/jumbo v0, "home.posterVideoMoreFavoriteClick"

    const-string/jumbo v1, "homeposterVideoMoreFavoriteClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string/jumbo v0, "home.posterVideoMoreShareClick"

    const-string/jumbo v1, "homeposterVideoMoreShareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string/jumbo v0, "home.hotVideo"

    const-string/jumbo v1, "homehotVideo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string/jumbo v0, "home_shome.ChannelnavigationClick"

    const-string/jumbo v1, "homeshomeChannelnavigationClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const-string/jumbo v0, "home_shome.broadcast"

    const-string/jumbo v1, "homeshomebroadcast"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string/jumbo v0, "home.historyClick"

    const-string/jumbo v1, "homehistoryClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const-string/jumbo v0, "home.channelVideoClick"

    const-string/jumbo v1, "homechannelVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string/jumbo v0, "home.channelVideosMoreClick"

    const-string/jumbo v1, "homechannelVideosMoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string/jumbo v0, "home.channelVideosMoreFavoriteClick"

    const-string/jumbo v1, "homechannelVideosMoreFavoriteClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string/jumbo v0, "home.channelVideosMoreShareClick"

    const-string/jumbo v1, "homechannelVideosMoreShareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const-string/jumbo v0, "home.channelNameClick"

    const-string/jumbo v1, "homechannelNameClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo v0, "home.channelPosterClick"

    const-string/jumbo v1, "homechannelPosterClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string/jumbo v0, "home.channelPosterMoreClick"

    const-string/jumbo v1, "homechannelPosterMoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string/jumbo v0, "home.channelPosterMoreFavoriteClick"

    const-string/jumbo v1, "homechannelPosterMoreFavoriteClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string/jumbo v0, "home.channelPosterMoreShareClick"

    const-string/jumbo v1, "homechannelPosterMoreShareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string/jumbo v0, "home.channelTrademarkClick"

    const-string/jumbo v1, "homechannelTrademarkClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string/jumbo v0, "home.sonchannelClick"

    const-string/jumbo v1, "homesonchannelClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string/jumbo v0, "home.exareaClick"

    const-string/jumbo v1, "homeexareaClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const-string/jumbo v0, "home.videomoreClick"

    const-string/jumbo v1, "homevideomoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string/jumbo v0, "home.tailClick"

    const-string/jumbo v1, "hometailClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const-string/jumbo v0, "home.bannerClick"

    const-string/jumbo v1, "homebannerClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string/jumbo v0, "home.h5Click"

    const-string/jumbo v1, "homeh5Click"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string/jumbo v0, "home.textlink"

    const-string/jumbo v1, "hometextlink"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string/jumbo v0, "home.videoListClick"

    const-string/jumbo v1, "homevideoListClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string/jumbo v0, "home.videoListMore"

    const-string/jumbo v1, "homevideoListMore"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string/jumbo v0, "home.recthousandNameClick"

    const-string/jumbo v1, "homerecthousandNameClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string/jumbo v0, "home_rec.playclick"

    const-string/jumbo v1, "homerecplayclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string/jumbo v0, "home_rec.screenclick"

    const-string/jumbo v1, "homerecscreenclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string/jumbo v0, "home_rec.nameclick"

    const-string/jumbo v1, "homerecnameclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string/jumbo v0, "home_rec.commentclick"

    const-string/jumbo v1, "homereccommentclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string/jumbo v0, "home_rec.clickThree"

    const-string/jumbo v1, "homerecclickThree"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string/jumbo v0, "home_rec.shareclick"

    const-string/jumbo v1, "homerecshareclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string/jumbo v0, "home_rec.Collectionclick"

    const-string/jumbo v1, "homerecCollectionclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string/jumbo v0, "home_rec.reportclick"

    const-string/jumbo v1, "homerecreportclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string/jumbo v0, "home_rec.pullRefresh"

    const-string/jumbo v1, "homerecpullRefresh"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string/jumbo v0, "home_rec.moreRefresh"

    const-string/jumbo v1, "homerecmoreRefresh"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string/jumbo v0, "home_hot.postervideoclick"

    const-string/jumbo v1, "homehotpostervideoclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string/jumbo v0, "home_hot.interactionicon"

    const-string/jumbo v1, "homehotinteractionicon"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string/jumbo v0, "home_hot.channelvideoclick"

    const-string/jumbo v1, "homehotchannelvideoclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string/jumbo v0, "home_hot.videointeractive"

    const-string/jumbo v1, "homehotvideointeractive"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string/jumbo v0, "home_hot.videoshare"

    const-string/jumbo v1, "homehotvideoshare"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string/jumbo v0, "home_hot.channeltitle"

    const-string/jumbo v1, "homehotchanneltitle"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string/jumbo v0, "home_hot.CMStitleedit"

    const-string/jumbo v1, "homehotCMStitleedit"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string/jumbo v0, "home_hot.themevideoclick"

    const-string/jumbo v1, "homehotthemevideoclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string/jumbo v0, "home_hot.starvideoclick"

    const-string/jumbo v1, "homehotstarvideoclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string/jumbo v0, "home_hot.starportrait"

    const-string/jumbo v1, "homehotstarportrait"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string/jumbo v0, "home_hot.downrefresh"

    const-string/jumbo v1, "homehotdownrefresh"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string/jumbo v0, "channelbanner.bannerclick"

    const-string/jumbo v1, "channelbannerbannerclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v0, "channelbanner.hottopicclick"

    const-string/jumbo v1, "channelbannerhottopicclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string/jumbo v0, "channelbanner.hottopiclocationclick"

    const-string/jumbo v1, "channelbannerhottopiclocationclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string/jumbo v0, "channelSelect.channelClick"

    const-string/jumbo v1, "channelSelectchannelClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string/jumbo v0, "channel.channelName"

    const-string/jumbo v1, "channelchannelName"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string/jumbo v0, "channel.changeChannel"

    const-string/jumbo v1, "channelchangeChannel"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string/jumbo v0, "channel.posterVideoClick"

    const-string/jumbo v1, "channelposterVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string/jumbo v0, "channel.videoClick"

    const-string/jumbo v1, "channelvideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string/jumbo v0, "channel_schannel.CMSbottomedit"

    const-string/jumbo v1, "channelschannelCMSbottomedit"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string/jumbo v0, "channel_schannel.videointeractive"

    const-string/jumbo v1, "channelschannelvideointeractive"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string/jumbo v0, "channel_schannel.videoshare"

    const-string/jumbo v1, "channelschannelvideoshare"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string/jumbo v0, "channel.subChannelTabClick"

    const-string/jumbo v1, "channelsubChannelTabClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string/jumbo v0, "channel.videoSelect"

    const-string/jumbo v1, "channelvideoSelect"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string/jumbo v0, "channel.selectVideoClick"

    const-string/jumbo v1, "channelselectVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string/jumbo v0, "channel.brandClick"

    const-string/jumbo v1, "channelbrandClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string/jumbo v0, "all.videoClick"

    const-string/jumbo v1, "allvideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string/jumbo v0, "top.videoClick"

    const-string/jumbo v1, "topvideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string/jumbo v0, "player.fullscreen"

    const-string/jumbo v1, "playerfullscreen"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string/jumbo v0, "detail.return"

    const-string/jumbo v1, "detailreturn"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string/jumbo v0, "player.videoendpageVideoClick"

    const-string/jumbo v1, "playervideoendpageVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string/jumbo v0, "player.rotate"

    const-string/jumbo v1, "playerrotate"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string/jumbo v0, "player.entClose"

    const-string/jumbo v1, "playerentClose"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string/jumbo v0, "Playerlivebg.loginClick"

    const-string/jumbo v1, "PlayerlivebgloginClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string/jumbo v0, "player.changevideo"

    const-string/jumbo v1, "playerchangevideo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string/jumbo v0, "player.downloadButtonClick"

    const-string/jumbo v1, "playerdownloadButtonClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string/jumbo v0, "player.downloadClick"

    const-string/jumbo v1, "playerdownloadClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string/jumbo v0, "player.nextvideo"

    const-string/jumbo v1, "playernextvideo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string/jumbo v0, "player.DLNAClick"

    const-string/jumbo v1, "playerDLNAClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v0, "player.DLNASucc"

    const-string/jumbo v1, "playerDLNASucc"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string/jumbo v0, "player.adclick"

    const-string/jumbo v1, "playeradclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string/jumbo v0, "player.vrreset"

    const-string/jumbo v1, "playervrreset"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string/jumbo v0, "player.vrswitchclick"

    const-string/jumbo v1, "playervrswitchclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string/jumbo v0, "player.vrguideclose"

    const-string/jumbo v1, "playervrguideclose"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string/jumbo v0, "player.danmuswitch"

    const-string/jumbo v1, "playerdanmuswitch"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    const-string/jumbo v0, "player.danmusetting"

    const-string/jumbo v1, "playerdanmusetting"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string/jumbo v0, "player.screenshot"

    const-string/jumbo v1, "playerscreenshot"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    const-string/jumbo v0, "player.gifclick"

    const-string/jumbo v1, "playergifclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string/jumbo v0, "player.recordclick"

    const-string/jumbo v1, "playerrecordclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string/jumbo v0, "player.shotshare"

    const-string/jumbo v1, "playershotshare"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string/jumbo v0, "player.audioswitchclick"

    const-string/jumbo v1, "playeraudioswitchclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string/jumbo v0, "lockscreen.nextaudioclick"

    const-string/jumbo v1, "lockscreennextaudioclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string/jumbo v0, "player.skippicad"

    const-string/jumbo v1, "playerskippicad"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string/jumbo v0, "downloading.playclick"

    const-string/jumbo v1, "downloadingplayclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string/jumbo v0, "lockscreen.audioplay"

    const-string/jumbo v1, "lockscreenaudioplay"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string/jumbo v0, "player.lock"

    const-string/jumbo v1, "playerlock"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string/jumbo v0, "player.unlock"

    const-string/jumbo v1, "playerunlock"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string/jumbo v0, "player.focus"

    const-string/jumbo v1, "playerfocus"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string/jumbo v0, "player.openuplus"

    const-string/jumbo v1, "playeropenuplus"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string/jumbo v0, "player.closeuplus"

    const-string/jumbo v1, "playercloseuplus"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const-string/jumbo v0, "player.halfscreen"

    const-string/jumbo v1, "playerhalfscreen"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    const-string/jumbo v0, "player.detail"

    const-string/jumbo v1, "playerdetail"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string/jumbo v0, "player.clarityClick"

    const-string/jumbo v1, "playerclarityClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    const-string/jumbo v0, "detail_player.covercomment"

    const-string/jumbo v1, "detailplayercovercomment"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string/jumbo v0, "detail_player.covershare"

    const-string/jumbo v1, "detailplayercovershare"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string/jumbo v0, "detail_player.coversubscribe"

    const-string/jumbo v1, "detailplayercoversubscribe"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    const-string/jumbo v0, "detail_player.coverskip"

    const-string/jumbo v1, "detailplayercoverskip"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    const-string/jumbo v0, "detail_player.coverrecommendclick"

    const-string/jumbo v1, "detailplayercoverrecommendclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string/jumbo v0, "detail_player.toastclose"

    const-string/jumbo v1, "detailplayertoastclose"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string/jumbo v0, "player.guajiaofeimu"

    const-string/jumbo v1, "playerguajiaofeimu"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string/jumbo v0, "player.upClick"

    const-string/jumbo v1, "playerupClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string/jumbo v0, "player.shareClick"

    const-string/jumbo v1, "playershareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    const-string/jumbo v0, "player.favorClick"

    const-string/jumbo v1, "playerfavorClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const-string/jumbo v0, "player.videoendpageUpClick"

    const-string/jumbo v1, "playervideoendpageUpClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string/jumbo v0, "player.videoendpageShareClick"

    const-string/jumbo v1, "playervideoendpageShareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-string/jumbo v0, "player.videoendpageFavorClick"

    const-string/jumbo v1, "playervideoendpageFavorClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string/jumbo v0, "player.videoendpageReplayClick"

    const-string/jumbo v1, "playervideoendpageReplayClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    const-string/jumbo v0, "player.yijiaclick01"

    const-string/jumbo v1, "playeryijiaclick01"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string/jumbo v0, "player.yijiaguideclose"

    const-string/jumbo v1, "playeryijiaguideclose"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string/jumbo v0, "player.yijiaguideok"

    const-string/jumbo v1, "playeryijiaguideok"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string/jumbo v0, "player.yijiamovelocation"

    const-string/jumbo v1, "playeryijiamovelocation"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string/jumbo v0, "player.yijiachangesize"

    const-string/jumbo v1, "playeryijiachangesize"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string/jumbo v0, "player.more"

    const-string/jumbo v1, "playermore"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    const-string/jumbo v0, "player.autoplay"

    const-string/jumbo v1, "playerautoplay"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    const-string/jumbo v0, "player.subtitle"

    const-string/jumbo v1, "playersubtitle"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string/jumbo v0, "player.setting"

    const-string/jumbo v1, "playersetting"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string/jumbo v0, "player.pictureselect"

    const-string/jumbo v1, "playerpictureselect"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string/jumbo v0, "player.skipend"

    const-string/jumbo v1, "playerskipend"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    const-string/jumbo v0, "profileCard.downloadClick"

    const-string/jumbo v1, "profileCarddownloadClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string/jumbo v0, "profileCard.favorClick"

    const-string/jumbo v1, "profileCardfavorClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    const-string/jumbo v0, "profileCard.shareClick"

    const-string/jumbo v1, "profileCardshareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string/jumbo v0, "detail.pchannel"

    const-string/jumbo v1, "detailpchannel"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string/jumbo v0, "detail.rssCard"

    const-string/jumbo v1, "detailrssCard"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string/jumbo v0, "profileCard.profiledetailCard"

    const-string/jumbo v1, "profileCardprofiledetailCard"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string/jumbo v0, "profileCard.topicClick"

    const-string/jumbo v1, "profileCardtopicClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string/jumbo v0, "profileCard.addtoClick"

    const-string/jumbo v1, "profileCardaddtoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string/jumbo v0, "profileCard.goodbutton"

    const-string/jumbo v1, "profileCardgoodbutton"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string/jumbo v0, "profileCard.commentbutton"

    const-string/jumbo v1, "profileCardcommentbutton"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string/jumbo v0, "signCard.signclick"

    const-string/jumbo v1, "signCardsignclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string/jumbo v0, "contentCard.contentclick"

    const-string/jumbo v1, "contentCardcontentclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string/jumbo v0, "detail.bannerCardClick"

    const-string/jumbo v1, "detailbannerCardClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    const-string/jumbo v0, "entCard.entCardClick"

    const-string/jumbo v1, "entCardentCardClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string/jumbo v0, "detail.clipsCard"

    const-string/jumbo v1, "detailclipsCard"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string/jumbo v0, "detail.clipsCardMore"

    const-string/jumbo v1, "detailclipsCardMore"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string/jumbo v0, "detail.recommendCard"

    const-string/jumbo v1, "detailrecommendCard"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string/jumbo v0, "detail.recommendCardMoreClick"

    const-string/jumbo v1, "detailrecommendCardMoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string/jumbo v0, "seriesCard.Changevideo"

    const-string/jumbo v1, "seriesCardChangevideo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string/jumbo v0, "seriesCard.seriesDetailCard"

    const-string/jumbo v1, "seriesCardseriesDetailCard"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string/jumbo v0, "seriesCard.DownloadButtonClick"

    const-string/jumbo v1, "seriesCardDownloadButtonClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string/jumbo v0, "vipCard.vipVideoClick"

    const-string/jumbo v1, "vipCardvipVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    const-string/jumbo v0, "vipCard.buyvipClick"

    const-string/jumbo v1, "vipCardbuyvipClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string/jumbo v0, "detail.gameCardGameClick"

    const-string/jumbo v1, "detailgameCardGameClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string/jumbo v0, "detail.gameCardGameInstall"

    const-string/jumbo v1, "detailgameCardGameInstall"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string/jumbo v0, "profileCard.downloadButton"

    const-string/jumbo v1, "profileCarddownloadButton"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    const-string/jumbo v0, "cacheCard.cacheCardDownload"

    const-string/jumbo v1, "cacheCardcacheCardDownload"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string/jumbo v0, "playlistcard.changeVideo"

    const-string/jumbo v1, "playlistcardchangeVideo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    const-string/jumbo v0, "playlistcard.watchlist"

    const-string/jumbo v1, "playlistcardwatchlist"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string/jumbo v0, "playlistcard.cancelwatchlist"

    const-string/jumbo v1, "playlistcardcancelwatchlist"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string/jumbo v0, "playlistcard.sharelist"

    const-string/jumbo v1, "playlistcardsharelist"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string/jumbo v0, "playlistcard.listaction"

    const-string/jumbo v1, "playlistcardlistaction"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string/jumbo v0, "playlistcard.listowner"

    const-string/jumbo v1, "playlistcardlistowner"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string/jumbo v0, "playlistcard.listdownload"

    const-string/jumbo v1, "playlistcardlistdownload"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string/jumbo v0, "playlistcard.addlist"

    const-string/jumbo v1, "playlistcardaddlist"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string/jumbo v0, "playlistcard.subscribe"

    const-string/jumbo v1, "playlistcardsubscribe"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string/jumbo v0, "vipTab.search"

    const-string/jumbo v1, "vipTabsearch"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string/jumbo v0, "vipTab.tabClick"

    const-string/jumbo v1, "vipTabtabClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string/jumbo v0, "vipTab.fresh"

    const-string/jumbo v1, "vipTabfresh"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    const-string/jumbo v0, "vipTab.posterVideoClick"

    const-string/jumbo v1, "vipTabposterVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    const-string/jumbo v0, "vipTab.channelVideoClick"

    const-string/jumbo v1, "vipTabchannelVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string/jumbo v0, "vipTab.CMSbottomEdit"

    const-string/jumbo v1, "vipTabCMSbottomEdit"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string/jumbo v0, "vipTab.CMStitleEdit"

    const-string/jumbo v1, "vipTabCMStitleEdit"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string/jumbo v0, "vipTab_shome.channelVideoClick"

    const-string/jumbo v1, "vipTabshomechannelVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string/jumbo v0, "vipTab.bannerClick"

    const-string/jumbo v1, "vipTabbannerClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string/jumbo v0, "vipTab.exareaVideoClick"

    const-string/jumbo v1, "vipTabexareaVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string/jumbo v0, "vipTab.myPrevueClick"

    const-string/jumbo v1, "vipTabmyPrevueClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string/jumbo v0, "vipTab.Prevue"

    const-string/jumbo v1, "vipTabPrevue"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string/jumbo v0, "vipTab.unPrevue"

    const-string/jumbo v1, "vipTabunPrevue"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string/jumbo v0, "vipTab.nameClick"

    const-string/jumbo v1, "vipTabnameClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string/jumbo v0, "vipTab.pay"

    const-string/jumbo v1, "vipTabpay"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string/jumbo v0, "vipTab.welfare"

    const-string/jumbo v1, "vipTabwelfare"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string/jumbo v0, "vipTab.spaceOpen"

    const-string/jumbo v1, "vipTabspaceOpen"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string/jumbo v0, "vipTab.textLoginOpen"

    const-string/jumbo v1, "vipTabtextLoginOpen"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string/jumbo v0, "vipTab.welfareOpen"

    const-string/jumbo v1, "vipTabwelfareOpen"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string/jumbo v0, "vipTab.payOpen"

    const-string/jumbo v1, "vipTabpayOpen"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string/jumbo v0, "vipTab.noads"

    const-string/jumbo v1, "vipTabnoads"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string/jumbo v0, "vipTab.films"

    const-string/jumbo v1, "vipTabfilms"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string/jumbo v0, "vipTab.tickets"

    const-string/jumbo v1, "vipTabtickets"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string/jumbo v0, "vipTabe.wifi"

    const-string/jumbo v1, "vipTabewifi"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string/jumbo v0, "vipTab_channel.selectClick"

    const-string/jumbo v1, "vipTabchannelselectClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string/jumbo v0, "vipTab_channel.selectVideoClick"

    const-string/jumbo v1, "vipTabchannelselectVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string/jumbo v0, "vipTab_myPrevue.releasedVideoClick"

    const-string/jumbo v1, "vipTabmyPrevuereleasedVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string/jumbo v0, "vipTab_myPrevue.PrevueVideoClick"

    const-string/jumbo v1, "vipTabmyPrevuePrevueVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string/jumbo v0, "vipTab_select.selectVideoClick"

    const-string/jumbo v1, "vipTabselectselectVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string/jumbo v0, "vipTab_pay.nameClick"

    const-string/jumbo v1, "vipTabpaynameClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    const-string/jumbo v0, "vipTab_pay.vipKindClick"

    const-string/jumbo v1, "vipTabpayvipKindClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string/jumbo v0, "vipTab_pay.Alipay"

    const-string/jumbo v1, "vipTabpayAlipay"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string/jumbo v0, "vipTab_pay.WeChat"

    const-string/jumbo v1, "vipTabpayWeChat"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string/jumbo v0, "vipTab_pay.repay"

    const-string/jumbo v1, "vipTabpayrepay"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string/jumbo v0, "vipTab_pay.activeCard"

    const-string/jumbo v1, "vipTabpayactiveCard"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string/jumbo v0, "vipTab_pay.priviClick"

    const-string/jumbo v1, "vipTabpaypriviClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    const-string/jumbo v0, "subcribe.recsubSkip"

    const-string/jumbo v1, "subcriberecsubSkip"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string/jumbo v0, "subcribe.recsubDone"

    const-string/jumbo v1, "subcriberecsubDone"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string/jumbo v0, "subcribe.recsubSubbuttonClick"

    const-string/jumbo v1, "subcriberecsubSubbuttonClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string/jumbo v0, "subcribe.recsubAvatar"

    const-string/jumbo v1, "subcriberecsubAvatar"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string/jumbo v0, "subcribe.recsubName"

    const-string/jumbo v1, "subcriberecsubName"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    const-string/jumbo v0, "subcribe.recsubVideoclick"

    const-string/jumbo v1, "subcriberecsubVideoclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string/jumbo v0, "subcribe.recsubMore"

    const-string/jumbo v1, "subcriberecsubMore"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const-string/jumbo v0, "subcribe.recarticletab"

    const-string/jumbo v1, "subcriberecarticletab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string/jumbo v0, "subcribe.recarticlehot"

    const-string/jumbo v1, "subcriberecarticlehot"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    const-string/jumbo v0, "subcribe.recarticleent"

    const-string/jumbo v1, "subcriberecarticleent"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    const-string/jumbo v0, "subcribe.recarticlefunny"

    const-string/jumbo v1, "subcriberecarticlefunny"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string/jumbo v0, "subcribe.recarticlegame"

    const-string/jumbo v1, "subcriberecarticlegame"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    const-string/jumbo v0, "subcribe.recarticlemusic"

    const-string/jumbo v1, "subcriberecarticlemusic"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string/jumbo v0, "subcribe.recarticlelife"

    const-string/jumbo v1, "subcriberecarticlelife"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string/jumbo v0, "subcribe.recarticleclick"

    const-string/jumbo v1, "subcriberecarticleclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-string/jumbo v0, "subcribe.recarticlelogin"

    const-string/jumbo v1, "subcriberecarticlelogin"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    const-string/jumbo v0, "subcribe.timelinetab"

    const-string/jumbo v1, "subcribetimelinetab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string/jumbo v0, "subcribe.timelineEliteliveClick"

    const-string/jumbo v1, "subcribetimelineEliteliveClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string/jumbo v0, "subcribe.timelineElitevideoClick"

    const-string/jumbo v1, "subcribetimelineElitevideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string/jumbo v0, "subcribe.timelineEliteshowClick"

    const-string/jumbo v1, "subcribetimelineEliteshowClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string/jumbo v0, "subcribe.timelineElitearticleClick"

    const-string/jumbo v1, "subcribetimelineElitearticleClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string/jumbo v0, "subcribe.timelineEliteMore"

    const-string/jumbo v1, "subcribetimelineEliteMore"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string/jumbo v0, "subcribe.timelineElitehideClick"

    const-string/jumbo v1, "subcribetimelineElitehideClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string/jumbo v0, "subcribe.timelinevideoclick"

    const-string/jumbo v1, "subcribetimelinevideoclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string/jumbo v0, "subcribe.timelinearticleclick"

    const-string/jumbo v1, "subcribetimelinearticleclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string/jumbo v0, "subcribe.timelineshowclick"

    const-string/jumbo v1, "subcribetimelineshowclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string/jumbo v0, "subcribe.timelinesubbuttonclick"

    const-string/jumbo v1, "subcribetimelinesubbuttonclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string/jumbo v0, "subcribe.timelinerecvideoclick"

    const-string/jumbo v1, "subcribetimelinerecvideoclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string/jumbo v0, "subcribe.timelinelogin"

    const-string/jumbo v1, "subcribetimelinelogin"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const-string/jumbo v0, "subcribe.timelineunfollow"

    const-string/jumbo v1, "subcribetimelineunfollow"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string/jumbo v0, "subcribe.timelineavatar"

    const-string/jumbo v1, "subcribetimelineavatar"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string/jumbo v0, "subcribe.timelinename"

    const-string/jumbo v1, "subcribetimelinename"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string/jumbo v0, "subcribe.timelinewelcomeclick"

    const-string/jumbo v1, "subcribetimelinewelcomeclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string/jumbo v0, "subcribe.timelinealltabclick"

    const-string/jumbo v1, "subcribetimelinealltabclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    const-string/jumbo v0, "subcribe.timelineshowtabclick"

    const-string/jumbo v1, "subcribetimelineshowtabclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const-string/jumbo v0, "subcribe.mysubtab"

    const-string/jumbo v1, "subcribemysubtab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string/jumbo v0, "subcribe.searchchannelclick"

    const-string/jumbo v1, "subcribesearchchannelclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string/jumbo v0, "subcribe.mysubSelect"

    const-string/jumbo v1, "subcribemysubSelect"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const-string/jumbo v0, "subcribe.mysubSortbytime"

    const-string/jumbo v1, "subcribemysubSortbytime"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const-string/jumbo v0, "subcribe.mysubSortbyname"

    const-string/jumbo v1, "subcribemysubSortbyname"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string/jumbo v0, "subcribe.mysubSortbyupdate"

    const-string/jumbo v1, "subcribemysubSortbyupdate"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const-string/jumbo v0, "subcribe.mysubAddstar"

    const-string/jumbo v1, "subcribemysubAddstar"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string/jumbo v0, "subcribe.mysubUnstar"

    const-string/jumbo v1, "subcribemysubUnstar"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string/jumbo v0, "subcribe.mysubStarchanel"

    const-string/jumbo v1, "subcribemysubStarchanel"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string/jumbo v0, "subcribe.mysubchannel"

    const-string/jumbo v1, "subcribemysubchannel"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string/jumbo v0, "subcribe.mysublogin"

    const-string/jumbo v1, "subcribemysublogin"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string/jumbo v0, "subcribe.mysubunfollow"

    const-string/jumbo v1, "subcribemysubunfollow"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string/jumbo v0, "subcribe.timelineTopavatarClick"

    const-string/jumbo v1, "subcribetimelineTopavatarClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string/jumbo v0, "subcribe.timelineToparrowClick"

    const-string/jumbo v1, "subcribetimelineToparrowClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string/jumbo v0, "subcribe.searchchannelclick"

    const-string/jumbo v1, "subcribesearchchannelclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string/jumbo v0, "subcribe.showtabchoosebuttonclick"

    const-string/jumbo v1, "subcribeshowtabchoosebuttonclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string/jumbo v0, "subcribe.showtabpbbclick"

    const-string/jumbo v1, "subcribeshowtabpbbclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string/jumbo v0, "subcribe.timelineShowtabVideoclick"

    const-string/jumbo v1, "subcribetimelineShowtabVideoclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string/jumbo v0, "ppb.tabshow"

    const-string/jumbo v1, "ppbtabshow"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string/jumbo v0, "ppb.timelineclick"

    const-string/jumbo v1, "ppbtimelineclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const-string/jumbo v0, "ppb.hotvideo$type"

    const-string/jumbo v1, "ppbhotvideo$type"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string/jumbo v0, "ppb.autovideo$type"

    const-string/jumbo v1, "ppbautovideo$type"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string/jumbo v0, "ppb.hotsubscribe"

    const-string/jumbo v1, "ppbhotsubscribe"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    const-string/jumbo v0, "ppb.tabclick"

    const-string/jumbo v1, "ppbtabclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string/jumbo v0, "ppb.soonvideo$type"

    const-string/jumbo v1, "ppbsoonvideo$type"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string/jumbo v0, "detail_slive.reservationclick"

    const-string/jumbo v1, "detailslivereservationclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string/jumbo v0, "detail_slive.bindclick"

    const-string/jumbo v1, "detailslivebindclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string/jumbo v0, "detail_slive.Tabclick"

    const-string/jumbo v1, "detailsliveTabclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string/jumbo v0, "detail_slive.fullscreen"

    const-string/jumbo v1, "detailslivefullscreen"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string/jumbo v0, "userChannel.showClick"

    const-string/jumbo v1, "userChannelshowClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    const-string/jumbo v0, "userChannel.feedVideoClick"

    const-string/jumbo v1, "userChannelfeedVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string/jumbo v0, "userChannel.feedArticleClick"

    const-string/jumbo v1, "userChannelfeedArticleClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string/jumbo v0, "userChannel.feedSubClick"

    const-string/jumbo v1, "userChannelfeedSubClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string/jumbo v0, "userChannel.sub"

    const-string/jumbo v1, "userChannelsub"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string/jumbo v0, "userChannel.unSub"

    const-string/jumbo v1, "userChannelunSub"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string/jumbo v0, "userChannel.navHomeClick"

    const-string/jumbo v1, "userChannelnavHomeClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string/jumbo v0, "userChannel.navVideosClick"

    const-string/jumbo v1, "userChannelnavVideosClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string/jumbo v0, "userChannel.navAlbumsClick"

    const-string/jumbo v1, "userChannelnavAlbumsClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string/jumbo v0, "userChannel.navArticlesClick"

    const-string/jumbo v1, "userChannelnavArticlesClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    const-string/jumbo v0, "userChannel.menuClick"

    const-string/jumbo v1, "userChannelmenuClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    const-string/jumbo v0, "userChannel.chatClick"

    const-string/jumbo v1, "userChannelchatClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string/jumbo v0, "userChannel.videos"

    const-string/jumbo v1, "userChannelvideos"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string/jumbo v0, "userChannel.albums"

    const-string/jumbo v1, "userChannelalbums"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    const-string/jumbo v0, "userChannel.articles"

    const-string/jumbo v1, "userChannelarticles"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    const-string/jumbo v0, "userChannel.shareClick"

    const-string/jumbo v1, "userChannelshareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string/jumbo v0, "userChannel.selfShow"

    const-string/jumbo v1, "userChannelselfShow"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    const-string/jumbo v0, "userChannel.selfClick"

    const-string/jumbo v1, "userChannelselfClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const-string/jumbo v0, "userChannel.liveBooking"

    const-string/jumbo v1, "userChannelliveBooking"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string/jumbo v0, "userChannel.Clicklive"

    const-string/jumbo v1, "userChannelClicklive"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    const-string/jumbo v0, "search.hintsearch"

    const-string/jumbo v1, "searchhintsearch"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    const-string/jumbo v0, "search.playhsearch"

    const-string/jumbo v1, "searchplayhsearch"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string/jumbo v0, "search.kuboxclickmore"

    const-string/jumbo v1, "searchkuboxclickmore"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    const-string/jumbo v0, "search.hissearch"

    const-string/jumbo v1, "searchhissearch"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    const-string/jumbo v0, "search.clearsearch"

    const-string/jumbo v1, "searchclearsearch"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string/jumbo v0, "search.hisplay"

    const-string/jumbo v1, "searchhisplay"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string/jumbo v0, "search.moreClick"

    const-string/jumbo v1, "searchmoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string/jumbo v0, "search.hotsearch"

    const-string/jumbo v1, "searchhotsearch"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    const-string/jumbo v0, "search.picclick"

    const-string/jumbo v1, "searchpicclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    const-string/jumbo v0, "search.popClick"

    const-string/jumbo v1, "searchpopClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-string/jumbo v0, "search.popplay"

    const-string/jumbo v1, "searchpopplay"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string/jumbo v0, "search.topgo"

    const-string/jumbo v1, "searchtopgo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    const-string/jumbo v0, "search.searchareaClick"

    const-string/jumbo v1, "searchsearchareaClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    const-string/jumbo v0, "search.hisuserClick"

    const-string/jumbo v1, "searchhisuserClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    const-string/jumbo v0, "search.userlistClick"

    const-string/jumbo v1, "searchuserlistClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string/jumbo v0, "search.hotplaylistClick"

    const-string/jumbo v1, "searchhotplaylistClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string/jumbo v0, "search.directVideoClick"

    const-string/jumbo v1, "searchdirectVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string/jumbo v0, "search.directMoreClick"

    const-string/jumbo v1, "searchdirectMoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    const-string/jumbo v0, "search.ugcVideoClick"

    const-string/jumbo v1, "searchugcVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string/jumbo v0, "search.ugcMoreClick"

    const-string/jumbo v1, "searchugcMoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    const-string/jumbo v0, "search.pgcchannelClick"

    const-string/jumbo v1, "searchpgcchannelClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    const-string/jumbo v0, "search.subscrip"

    const-string/jumbo v1, "searchsubscrip"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string/jumbo v0, "search.recomClick"

    const-string/jumbo v1, "searchrecomClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string/jumbo v0, "search.likeVideoClick"

    const-string/jumbo v1, "searchlikeVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const-string/jumbo v0, "search.hotClick"

    const-string/jumbo v1, "searchhotClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    const-string/jumbo v0, "search.filterfreshClick"

    const-string/jumbo v1, "searchfilterfreshClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string/jumbo v0, "search.resultClick"

    const-string/jumbo v1, "searchresultClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    const-string/jumbo v0, "search.gamego"

    const-string/jumbo v1, "searchgamego"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string/jumbo v0, "search.custClick"

    const-string/jumbo v1, "searchcustClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string/jumbo v0, "search.custMoreClick"

    const-string/jumbo v1, "searchcustMoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    const-string/jumbo v0, "searchblank.retryClick"

    const-string/jumbo v1, "searchblankretryClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string/jumbo v0, "searchjump.cardClick"

    const-string/jumbo v1, "searchjumpcardClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string/jumbo v0, "searchdownload.listClick"

    const-string/jumbo v1, "searchdownloadlistClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string/jumbo v0, "searchdownload.vChange"

    const-string/jumbo v1, "searchdownloadvChange"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string/jumbo v0, "searchdownload.download"

    const-string/jumbo v1, "searchdownloaddownload"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string/jumbo v0, "searchsurprise.surpriseClose"

    const-string/jumbo v1, "searchsurprisesurpriseClose"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    const-string/jumbo v0, "searchsurprise.surpriseClick"

    const-string/jumbo v1, "searchsurprisesurpriseClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const-string/jumbo v0, "searchadvice.adviceClick"

    const-string/jumbo v1, "searchadviceadviceClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string/jumbo v0, "searchadvice.adviceClose"

    const-string/jumbo v1, "searchadviceadviceClose"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    const-string/jumbo v0, "searchtop.topClick"

    const-string/jumbo v1, "searchtoptopClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string/jumbo v0, "searchtop.topsearchClick"

    const-string/jumbo v1, "searchtoptopsearchClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string/jumbo v0, "searchtop.topMoreClick"

    const-string/jumbo v1, "searchtoptopMoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string/jumbo v0, "search.userClick"

    const-string/jumbo v1, "searchuserClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    const-string/jumbo v0, "search.userMoreClick"

    const-string/jumbo v1, "searchuserMoreClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const-string/jumbo v0, "search.topClick"

    const-string/jumbo v1, "searchtopClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string/jumbo v0, "search.playlistClick"

    const-string/jumbo v1, "searchplaylistClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string/jumbo v0, "search.playlistlikeClick"

    const-string/jumbo v1, "searchplaylistlikeClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string/jumbo v0, "searchugcdetail.ugcClick"

    const-string/jumbo v1, "searchugcdetailugcClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string/jumbo v0, "searchprodetail.proClick"

    const-string/jumbo v1, "searchprodetailproClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    const-string/jumbo v0, "MyCenter.loginClick"

    const-string/jumbo v1, "MyCenterloginClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    const-string/jumbo v0, "MyCenter.myname"

    const-string/jumbo v1, "MyCentermyname"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string/jumbo v0, "MyCenter.LVClick"

    const-string/jumbo v1, "MyCenterLVClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string/jumbo v0, "MyCenter.vipenter"

    const-string/jumbo v1, "MyCentervipenter"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    const-string/jumbo v0, "MyCenter.continueVIPClick"

    const-string/jumbo v1, "MyCentercontinueVIPClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string/jumbo v0, "MyCenter.messagebuttonclick"

    const-string/jumbo v1, "MyCentermessagebuttonclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    const-string/jumbo v0, "MyCenter.settingbuttonClick"

    const-string/jumbo v1, "MyCentersettingbuttonClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-string/jumbo v0, "MyCenter.myvideo"

    const-string/jumbo v1, "MyCentermyvideo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-string/jumbo v0, "MyCenter.favCardClick"

    const-string/jumbo v1, "MyCenterfavCardClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    const-string/jumbo v0, "MyCenter.list"

    const-string/jumbo v1, "MyCenterlist"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const-string/jumbo v0, "MyCenter.rssCardClick"

    const-string/jumbo v1, "MyCenterrssCardClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string/jumbo v0, "MyCenter.myspace"

    const-string/jumbo v1, "MyCentermyspace"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string/jumbo v0, "MyCenter.uploadCardClick"

    const-string/jumbo v1, "MyCenteruploadCardClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string/jumbo v0, "MyCenter.alltopic"

    const-string/jumbo v1, "MyCenteralltopic"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    const-string/jumbo v0, "MyCenter.topicClick"

    const-string/jumbo v1, "MyCentertopicClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string/jumbo v0, "MyCenter.downloadCardClick"

    const-string/jumbo v1, "MyCenterdownloadCardClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string/jumbo v0, "MyCenter.historyCardVideoClick"

    const-string/jumbo v1, "MyCenterhistoryCardVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    const-string/jumbo v0, "MyCenter.historyClick"

    const-string/jumbo v1, "MyCenterhistoryClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string/jumbo v0, "MyCenter.mytask"

    const-string/jumbo v1, "MyCentermytask"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string/jumbo v0, "MyCenter.mytaskClick"

    const-string/jumbo v1, "MyCentermytaskClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    const-string/jumbo v0, "MyCenter.CMareaClick"

    const-string/jumbo v1, "MyCenterCMareaClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const-string/jumbo v0, "MyCenter.gameCardVideoClick"

    const-string/jumbo v1, "MyCentergameCardVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string/jumbo v0, "MyCenter.gameCardGameClick"

    const-string/jumbo v1, "MyCentergameCardGameClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const-string/jumbo v0, "MyCenter.gameCardGameInstall"

    const-string/jumbo v1, "MyCentergameCardGameInstall"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string/jumbo v0, "channel_zhuanti.voteClick"

    const-string/jumbo v1, "channelzhuantivoteClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string/jumbo v0, "channel_zhuanti.videoClick"

    const-string/jumbo v1, "channelzhuantivideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string/jumbo v0, "channel_zhuanti.bannerClick"

    const-string/jumbo v1, "channelzhuantibannerClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string/jumbo v0, "channel_zhuanti.TextlinkClick"

    const-string/jumbo v1, "channelzhuantiTextlinkClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string/jumbo v0, "channel_zhuanti.shareClick"

    const-string/jumbo v1, "channelzhuantishareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string/jumbo v0, "dldList.dldListVideoClick"

    const-string/jumbo v1, "dldListdldListVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string/jumbo v0, "dldList.cachingClick"

    const-string/jumbo v1, "dldListcachingClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string/jumbo v0, "dldList.localVideoClick"

    const-string/jumbo v1, "dldListlocalVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string/jumbo v0, "MyCenter.messageitemClick"

    const-string/jumbo v1, "MyCentermessageitemClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    const-string/jumbo v0, "MyCenter.messageRemind"

    const-string/jumbo v1, "MyCentermessageRemind"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string/jumbo v0, "MyCenter.messageVideo"

    const-string/jumbo v1, "MyCentermessageVideo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string/jumbo v0, "MyCenter.messagelLive"

    const-string/jumbo v1, "MyCentermessagelLive"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    const-string/jumbo v0, "MyCenter.messagelGame"

    const-string/jumbo v1, "MyCentermessagelGame"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    const-string/jumbo v0, "videolist.cancelwatchlist"

    const-string/jumbo v1, "videolistcancelwatchlist"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    const-string/jumbo v0, "videolist.newPlaylist"

    const-string/jumbo v1, "videolistnewPlaylist"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    const-string/jumbo v0, "videolist.watchlist"

    const-string/jumbo v1, "videolistwatchlist"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string/jumbo v0, "setup.personalClick"

    const-string/jumbo v1, "setuppersonalClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    const-string/jumbo v0, "setup.callCenter"

    const-string/jumbo v1, "setupcallCenter"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string/jumbo v0, "setup.problem"

    const-string/jumbo v1, "setupproblem"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string/jumbo v0, "setup.signout"

    const-string/jumbo v1, "setupsignout"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string/jumbo v0, "setup.webSetup"

    const-string/jumbo v1, "setupwebSetup"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string/jumbo v0, "setup.tvControl"

    const-string/jumbo v1, "setuptvControl"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string/jumbo v0, "setup.closeMultiscreen"

    const-string/jumbo v1, "setupcloseMultiscreen"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string/jumbo v0, "setup.openMultiscreen"

    const-string/jumbo v1, "setupopenMultiscreen"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    const-string/jumbo v0, "setup.accountMg"

    const-string/jumbo v1, "setupaccountMg"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string/jumbo v0, "setup.setupUpdate"

    const-string/jumbo v1, "setupsetupUpdate"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string/jumbo v0, "setup.downloadFinish"

    const-string/jumbo v1, "setupdownloadFinish"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    const-string/jumbo v0, "favList.favVideoClick"

    const-string/jumbo v1, "favListfavVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string/jumbo v0, "favList.favVideoClick"

    const-string/jumbo v1, "favListfavVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string/jumbo v0, "personal.iconClick"

    const-string/jumbo v1, "personaliconClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    const-string/jumbo v0, "personal.photoiconClick"

    const-string/jumbo v1, "personalphotoiconClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string/jumbo v0, "personal.takephotosiconClick"

    const-string/jumbo v1, "personaltakephotosiconClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const-string/jumbo v0, "personal.saveicon"

    const-string/jumbo v1, "personalsaveicon"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    const-string/jumbo v0, "personal.sexClick"

    const-string/jumbo v1, "personalsexClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    const-string/jumbo v0, "personal.birthdateClick"

    const-string/jumbo v1, "personalbirthdateClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string/jumbo v0, "personal.ProfileClick"

    const-string/jumbo v1, "personalProfileClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string/jumbo v0, "personal.saveProfileClick"

    const-string/jumbo v1, "personalsaveProfileClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    const-string/jumbo v0, "personal.update"

    const-string/jumbo v1, "personalupdate"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    const-string/jumbo v0, "commentCard.commentbuttonClick"

    const-string/jumbo v1, "commentCardcommentbuttonClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string/jumbo v0, "commentCard.ReplybuttonClick"

    const-string/jumbo v1, "commentCardReplybuttonClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string/jumbo v0, "commentCard.commentDetailCard"

    const-string/jumbo v1, "commentCardcommentDetailCard"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-string/jumbo v0, "commentCard.moreloadcomment"

    const-string/jumbo v1, "commentCardmoreloadcomment"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string/jumbo v0, "commentCard.morereply"

    const-string/jumbo v1, "commentCardmorereply"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    const-string/jumbo v0, "commentCard.moreloadreply"

    const-string/jumbo v1, "commentCardmoreloadreply"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string/jumbo v0, "commentCard.expression"

    const-string/jumbo v1, "commentCardexpression"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string/jumbo v0, "commentCard.top"

    const-string/jumbo v1, "commentCardtop"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    const-string/jumbo v0, "commentCard.eggsappear"

    const-string/jumbo v1, "commentCardeggsappear"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    const-string/jumbo v0, "comment.delete"

    const-string/jumbo v1, "commentdelete"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const-string/jumbo v0, "comment.report"

    const-string/jumbo v1, "commentreport"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    const-string/jumbo v0, "comment.topic"

    const-string/jumbo v1, "commenttopic"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    const-string/jumbo v0, "comment.share"

    const-string/jumbo v1, "commentshare"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string/jumbo v0, "comment.shareto"

    const-string/jumbo v1, "commentshareto"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string/jumbo v0, "comment.at"

    const-string/jumbo v1, "commentat"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    const-string/jumbo v0, "comment.hot"

    const-string/jumbo v1, "commenthot"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string/jumbo v0, "comment.new"

    const-string/jumbo v1, "commentnew"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    const-string/jumbo v0, "comment.ownerclick"

    const-string/jumbo v1, "commentownerclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string/jumbo v0, "detail_comment.hotEnterClick"

    const-string/jumbo v1, "detailcommenthotEnterClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string/jumbo v0, "navigate.moreclick"

    const-string/jumbo v1, "navigatemoreclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string/jumbo v0, "navigate.shop"

    const-string/jumbo v1, "navigateshop"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string/jumbo v0, "navigate.upload"

    const-string/jumbo v1, "navigateupload"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string/jumbo v0, "navigate.search"

    const-string/jumbo v1, "navigatesearch"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    const-string/jumbo v0, "navigate.vip"

    const-string/jumbo v1, "navigatevip"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string/jumbo v0, "navigate.scan"

    const-string/jumbo v1, "navigatescan"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    const-string/jumbo v0, "home_tnavigate.QRcodeRead"

    const-string/jumbo v1, "hometnavigateQRcodeRead"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    const-string/jumbo v0, "navigate.cache"

    const-string/jumbo v1, "navigatecache"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    const-string/jumbo v0, "navigate.history"

    const-string/jumbo v1, "navigatehistory"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    const-string/jumbo v0, "navigate.game"

    const-string/jumbo v1, "navigategame"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    const-string/jumbo v0, "navigate.clickThree"

    const-string/jumbo v1, "navigateclickThree"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string/jumbo v0, "detail.callupPlay"

    const-string/jumbo v1, "detailcallupPlay"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string/jumbo v0, "callup.callupHome"

    const-string/jumbo v1, "callupcallupHome"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const-string/jumbo v0, "pushBar.pushVideo"

    const-string/jumbo v1, "pushBarpushVideo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string/jumbo v0, "detail.call2Cache"

    const-string/jumbo v1, "detailcall2Cache"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    const-string/jumbo v0, "pushBar.pushApp"

    const-string/jumbo v1, "pushBarpushApp"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const-string/jumbo v0, "htmlup.htmlupLogin"

    const-string/jumbo v1, "htmluphtmlupLogin"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string/jumbo v0, "htmlup.htmlupShare"

    const-string/jumbo v1, "htmluphtmlupShare"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    const-string/jumbo v0, "material_list.share"

    const-string/jumbo v1, "materiallistshare"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    const-string/jumbo v0, "htmlShare.shareClick"

    const-string/jumbo v1, "htmlShareshareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string/jumbo v0, "scan.videoClick"

    const-string/jumbo v1, "scanvideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    const-string/jumbo v0, "scan.urlClick"

    const-string/jumbo v1, "scanurlClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string/jumbo v0, "home.channelSelect"

    const-string/jumbo v1, "homechannelSelect"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string/jumbo v0, "home.recommendTab"

    const-string/jumbo v1, "homerecommendTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string/jumbo v0, "home.vipTab"

    const-string/jumbo v1, "homevipTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    const-string/jumbo v0, "home.space"

    const-string/jumbo v1, "homespace"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    const-string/jumbo v0, "MyCentertab.recommendTab"

    const-string/jumbo v1, "MyCentertabrecommendTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string/jumbo v0, "MyCentertab.channelTab"

    const-string/jumbo v1, "MyCentertabchannelTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    const-string/jumbo v0, "MyCentertab.homeTab"

    const-string/jumbo v1, "MyCentertabhomeTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    const-string/jumbo v0, "MyCentertab.vipTab"

    const-string/jumbo v1, "MyCentertabvipTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    const-string/jumbo v0, "channeltab.recommendTab"

    const-string/jumbo v1, "channeltabrecommendTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    const-string/jumbo v0, "channeltab.spaceTab"

    const-string/jumbo v1, "channeltabspaceTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    const-string/jumbo v0, "channeltab.homeTab"

    const-string/jumbo v1, "channeltabhomeTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string/jumbo v0, "channeltab.vipTab"

    const-string/jumbo v1, "channeltabvipTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    const-string/jumbo v0, "vipTab.homeTab"

    const-string/jumbo v1, "vipTabhomeTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string/jumbo v0, "vipTab.recommendTab"

    const-string/jumbo v1, "vipTabrecommendTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    const-string/jumbo v0, "vipTab.channelTab"

    const-string/jumbo v1, "vipTabchannelTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string/jumbo v0, "vipTab.spaceTab"

    const-string/jumbo v1, "vipTabspaceTab"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string/jumbo v0, "rate.positive"

    const-string/jumbo v1, "ratepositive"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const-string/jumbo v0, "rate.feedback"

    const-string/jumbo v1, "ratefeedback"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    const-string/jumbo v0, "rate.cancel"

    const-string/jumbo v1, "ratecancel"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    const-string/jumbo v0, "push.cancel"

    const-string/jumbo v1, "pushcancel"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string/jumbo v0, "push.setting"

    const-string/jumbo v1, "pushsetting"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    const-string/jumbo v0, "yindaoye.lingquclick"

    const-string/jumbo v1, "yindaoyelingquclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    const-string/jumbo v0, "yindaoye.tiaoguoclick"

    const-string/jumbo v1, "yindaoyetiaoguoclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    const-string/jumbo v0, "score.scoreforme"

    const-string/jumbo v1, "scorescoreforme"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    const-string/jumbo v0, "localPush.localPushClick"

    const-string/jumbo v1, "localPushlocalPushClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    const-string/jumbo v0, "space_MyVideo.uploadClick"

    const-string/jumbo v1, "spaceMyVideouploadClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const-string/jumbo v0, "space_MyVideo.recentVideoTabClick"

    const-string/jumbo v1, "spaceMyVideorecentVideoTabClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string/jumbo v0, "space_MyVideo.publishFailedClick"

    const-string/jumbo v1, "spaceMyVideopublishFailedClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string/jumbo v0, "space_MyVideo.videoFilterTabClick"

    const-string/jumbo v1, "spaceMyVideovideoFilterTabClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string/jumbo v0, "space_MyVideo.uploadImmediatelyClick"

    const-string/jumbo v1, "spaceMyVideouploadImmediatelyClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string/jumbo v0, "space_MyVideo.topicLabelClick"

    const-string/jumbo v1, "spaceMyVideotopicLabelClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string/jumbo v0, "recentVideoList.deleteUploadingClick"

    const-string/jumbo v1, "recentVideoListdeleteUploadingClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    const-string/jumbo v0, "recentVideoList.itemClick"

    const-string/jumbo v1, "recentVideoListitemClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    const-string/jumbo v0, "recentVideoList.editClick"

    const-string/jumbo v1, "recentVideoListeditClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string/jumbo v0, "recentVideoList.shareClick"

    const-string/jumbo v1, "recentVideoListshareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    const-string/jumbo v0, "recentVideoList.moveTo"

    const-string/jumbo v1, "recentVideoListmoveTo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string/jumbo v0, "recentVideoList.deleteUploadedClick"

    const-string/jumbo v1, "recentVideoListdeleteUploadedClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string/jumbo v0, "videoFolderList.createFolderClick"

    const-string/jumbo v1, "videoFolderListcreateFolderClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string/jumbo v0, "videoFolderList.defaultFolderClick"

    const-string/jumbo v1, "videoFolderListdefaultFolderClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    const-string/jumbo v0, "videoFolderList.selfFolderClick"

    const-string/jumbo v1, "videoFolderListselfFolderClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string/jumbo v0, "videoFolderList.topicFolderClick"

    const-string/jumbo v1, "videoFolderListtopicFolderClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const-string/jumbo v0, "videoFolderCreating.createClick"

    const-string/jumbo v1, "videoFolderCreatingcreateClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const-string/jumbo v0, "videoListInFilter.deleteFolderClick"

    const-string/jumbo v1, "videoListInFilterdeleteFolderClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string/jumbo v0, "videoListInFilter.addVideoClick"

    const-string/jumbo v1, "videoListInFilteraddVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    const-string/jumbo v0, "videoListInFilter.itemClick"

    const-string/jumbo v1, "videoListInFilteritemClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    const-string/jumbo v0, "videoListInFilter.shareClick"

    const-string/jumbo v1, "videoListInFiltershareClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string/jumbo v0, "videoListInFilter.moveTo"

    const-string/jumbo v1, "videoListInFiltermoveTo"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    const-string/jumbo v0, "videoListInFilter.deletevideoClick"

    const-string/jumbo v1, "videoListInFilterdeletevideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    const-string/jumbo v0, "videoListInFilter.topicEntranceClick"

    const-string/jumbo v1, "videoListInFiltertopicEntranceClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    const-string/jumbo v0, "videoListInFilter.topicLabelClick"

    const-string/jumbo v1, "videoListInFiltertopicLabelClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    const-string/jumbo v0, "cutVideo.cutHandle"

    const-string/jumbo v1, "cutVideocutHandle"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-string/jumbo v0, "cutVideo.playButton"

    const-string/jumbo v1, "cutVideoplayButton"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string/jumbo v0, "videoInfoEditing.classChooseClick"

    const-string/jumbo v1, "videoInfoEditingclassChooseClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string/jumbo v0, "videoInfoEditing.uploadConfirmClick"

    const-string/jumbo v1, "videoInfoEditinguploadConfirmClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    const-string/jumbo v0, "videoInfoEditing.topicButtonClick"

    const-string/jumbo v1, "videoInfoEditingtopicButtonClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    const-string/jumbo v0, "videoInfoEditing.defaultFolderClick"

    const-string/jumbo v1, "videoInfoEditingdefaultFolderClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    const-string/jumbo v0, "videoInfoEditing.otherFolderClick"

    const-string/jumbo v1, "videoInfoEditingotherFolderClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    const-string/jumbo v0, "videoInfoEditing.cover"

    const-string/jumbo v1, "videoInfoEditingcover"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    const-string/jumbo v0, "videoInfoEditing.uploadConfirmClick"

    const-string/jumbo v1, "videoInfoEditinguploadConfirmClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    const-string/jumbo v0, "videoInfoEditing.fold"

    const-string/jumbo v1, "videoInfoEditingfold"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    const-string/jumbo v0, "videoInfoEditing.unfold"

    const-string/jumbo v1, "videoInfoEditingunfold"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    const-string/jumbo v0, "topicList.topicDetailClick"

    const-string/jumbo v1, "topicListtopicDetailClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    const-string/jumbo v0, "topicList.topicClick"

    const-string/jumbo v1, "topicListtopicClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    const-string/jumbo v0, "uploadhomepage.localclick"

    const-string/jumbo v1, "uploadhomepagelocalclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    const-string/jumbo v0, "uploadhomepage.capturerclick"

    const-string/jumbo v1, "uploadhomepagecapturerclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const-string/jumbo v0, "uploadhomepage.othersclick"

    const-string/jumbo v1, "uploadhomepageothersclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string/jumbo v0, "chooseCover.chooseBox"

    const-string/jumbo v1, "chooseCoverchooseBox"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string/jumbo v0, "topiclist.searchclick"

    const-string/jumbo v1, "topiclistsearchclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    const-string/jumbo v0, "topiclist.createtopicclick"

    const-string/jumbo v1, "topiclistcreatetopicclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    const-string/jumbo v0, "topiclist.classificationclick"

    const-string/jumbo v1, "topiclistclassificationclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    const-string/jumbo v0, "topiclist.bannerclick"

    const-string/jumbo v1, "topiclistbannerclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string/jumbo v0, "topiclist.hottopicclick"

    const-string/jumbo v1, "topiclisthottopicclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    const-string/jumbo v0, "topiclist.searchresultclick"

    const-string/jumbo v1, "topiclistsearchresultclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string/jumbo v0, "classificationtopiclist.bannerclick"

    const-string/jumbo v1, "classificationtopiclistbannerclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    const-string/jumbo v0, "classificationtopiclist.hottopicclick"

    const-string/jumbo v1, "classificationtopiclisthottopicclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    const-string/jumbo v0, "topic.recommendVideoClick"

    const-string/jumbo v1, "topicrecommendVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const-string/jumbo v0, "topic.recommendVideoUsernameClick"

    const-string/jumbo v1, "topicrecommendVideoUsernameClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-string/jumbo v0, "topic.classificationTabVideoClick"

    const-string/jumbo v1, "topicclassificationTabVideoClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    const-string/jumbo v0, "topic.classificationTabVideonameClick"

    const-string/jumbo v1, "topicclassificationTabVideonameClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string/jumbo v0, "topic.VideoUpdownClick"

    const-string/jumbo v1, "topicVideoUpdownClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string/jumbo v0, "topic.VideoCommentClick"

    const-string/jumbo v1, "topicVideoCommentClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    const-string/jumbo v0, "topic.detail"

    const-string/jumbo v1, "topicdetail"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string/jumbo v0, "topic.VideoPlayingtimesClick"

    const-string/jumbo v1, "topicVideoPlayingtimesClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const-string/jumbo v0, "topic.broadcastClick"

    const-string/jumbo v1, "topicbroadcastClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    const-string/jumbo v0, "topic.LeadClick"

    const-string/jumbo v1, "topicLeadClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const-string/jumbo v0, "topic.recommendVideoCommentClick"

    const-string/jumbo v1, "topicrecommendVideoCommentClick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    const-string/jumbo v0, "topic.topicshareclick"

    const-string/jumbo v1, "topictopicshareclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    const-string/jumbo v0, "topic.uploadclick"

    const-string/jumbo v1, "topicuploadclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const-string/jumbo v0, "topic.chatclick"

    const-string/jumbo v1, "topicchatclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    const-string/jumbo v0, "topic.topichostclick"

    const-string/jumbo v1, "topictopichostclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    const-string/jumbo v0, "topic.Applicationtopichostclick"

    const-string/jumbo v1, "topicApplicationtopichostclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    const-string/jumbo v0, "topic.linkclick"

    const-string/jumbo v1, "topiclinkclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const-string/jumbo v0, "topic.bannerclick"

    const-string/jumbo v1, "topicbannerclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    const-string/jumbo v0, "topic.topicGuideclick"

    const-string/jumbo v1, "topictopicGuideclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    const-string/jumbo v0, "topic.Signclick"

    const-string/jumbo v1, "topicSignclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-string/jumbo v0, "topic.voteclick "

    const-string/jumbo v1, "topicvoteclick "

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const-string/jumbo v0, "topic.drawclick"

    const-string/jumbo v1, "topicdrawclick"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    const-string/jumbo v0, "login.register"

    const-string/jumbo v1, "loginregister"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string/jumbo v0, "login.scan"

    const-string/jumbo v1, "loginscan"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string/jumbo v0, "login.findPassword"

    const-string/jumbo v1, "loginfindPassword"

    invoke-virtual {p0, v0, v1}, Lcom/youku/analytics/utils/UTMapContainer$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    return-void
.end method
