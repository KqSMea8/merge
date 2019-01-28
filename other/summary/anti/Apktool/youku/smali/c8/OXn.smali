.class public Lc8/OXn;
.super Ljava/lang/Object;
.source "ParseResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PXn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpsResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/NXn;
    }
.end annotation


# instance fields
.field public data:Lc8/NXn;
    .annotation runtime Lc8/JIb;
        name = "data"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lc8/NXn;

    invoke-direct {v0}, Lc8/NXn;-><init>()V

    iput-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    return-void
.end method


# virtual methods
.method public apply(Lcom/youku/upsplayer/module/VideoInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/youku/upsplayer/module/VideoInfo;

    .prologue
    .line 133
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->error:Lcom/youku/upsplayer/module/PlayError;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setError(Lcom/youku/upsplayer/module/PlayError;)V

    .line 134
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->ups:Lcom/youku/upsplayer/module/Ups;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setUps(Lcom/youku/upsplayer/module/Ups;)V

    .line 135
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->video:Lcom/youku/upsplayer/module/Video;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setVideo(Lcom/youku/upsplayer/module/Video;)V

    .line 136
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->stream:[Lcom/youku/upsplayer/module/Stream;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setStream([Lcom/youku/upsplayer/module/Stream;)V

    .line 137
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->show:Lcom/youku/upsplayer/module/Show;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setShow(Lcom/youku/upsplayer/module/Show;)V

    .line 138
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->fee:Lcom/youku/upsplayer/module/Fee;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setFee(Lcom/youku/upsplayer/module/Fee;)V

    .line 139
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->dvd:Lcom/youku/upsplayer/module/Dvd;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setDvd(Lcom/youku/upsplayer/module/Dvd;)V

    .line 140
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->videos:Lcom/youku/upsplayer/module/Videos;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setVideos(Lcom/youku/upsplayer/module/Videos;)V

    .line 141
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->trial:Lcom/youku/upsplayer/module/Trial;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setTrial(Lcom/youku/upsplayer/module/Trial;)V

    .line 142
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->user:Lcom/youku/upsplayer/module/User;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setUser(Lcom/youku/upsplayer/module/User;)V

    .line 143
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->vip:Lcom/youku/upsplayer/module/Vip;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setVip(Lcom/youku/upsplayer/module/Vip;)V

    .line 144
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->ticket:Lcom/youku/upsplayer/module/Ticket;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setTicket(Lcom/youku/upsplayer/module/Ticket;)V

    .line 145
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->uploader:Lcom/youku/upsplayer/module/Uploader;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setUploader(Lcom/youku/upsplayer/module/Uploader;)V

    .line 146
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->preview:Lcom/youku/upsplayer/module/Preview;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setPreview(Lcom/youku/upsplayer/module/Preview;)V

    .line 147
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->album:Lcom/youku/upsplayer/module/Album;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setAlbum(Lcom/youku/upsplayer/module/Album;)V

    .line 148
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->token:Lcom/youku/upsplayer/module/Token;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setToken(Lcom/youku/upsplayer/module/Token;)V

    .line 149
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->controller:Lcom/youku/upsplayer/module/Controller;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setController(Lcom/youku/upsplayer/module/Controller;)V

    .line 150
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->network:Lcom/youku/upsplayer/module/Network;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setNetwork(Lcom/youku/upsplayer/module/Network;)V

    .line 151
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->playlog:Lcom/youku/upsplayer/module/Playlog;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setPlaylog(Lcom/youku/upsplayer/module/Playlog;)V

    .line 152
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->pay:Lcom/youku/upsplayer/module/Pay;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setPay(Lcom/youku/upsplayer/module/Pay;)V

    .line 153
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->videolike:Lcom/youku/upsplayer/module/VideoLike;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setVideolike(Lcom/youku/upsplayer/module/VideoLike;)V

    .line 154
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->vip_pay_info:Lcom/youku/upsplayer/module/VipPayInfo;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setVip_pay_info(Lcom/youku/upsplayer/module/VipPayInfo;)V

    .line 155
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->zpd_pay_info:Lcom/youku/upsplayer/module/ZPdPayInfo;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setZpd_pay_info(Lcom/youku/upsplayer/module/ZPdPayInfo;)V

    .line 156
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->app_buy_info:Lcom/youku/upsplayer/module/AppBuyInfo;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setApp_buy_info(Lcom/youku/upsplayer/module/AppBuyInfo;)V

    .line 157
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->scene_content:Lcom/youku/upsplayer/module/SceneContent;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setSceneContent(Lcom/youku/upsplayer/module/SceneContent;)V

    .line 158
    iget-object v0, p0, Lc8/OXn;->data:Lc8/NXn;

    iget-object v0, v0, Lc8/NXn;->ad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/youku/upsplayer/module/VideoInfo;->setAd(Ljava/lang/String;)V

    .line 159
    return-void
.end method
