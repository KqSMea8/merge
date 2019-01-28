.class public Lcom/youku/upsplayer/module/VideoInfo;
.super Ljava/lang/Object;
.source "VideoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/upsplayer/module/VideoInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ad:Ljava/lang/String;

.field private album:Lcom/youku/upsplayer/module/Album;

.field private app_buy_info:Lcom/youku/upsplayer/module/AppBuyInfo;

.field private cloud:Lcom/youku/upsplayer/module/Cloud;

.field private controller:Lcom/youku/upsplayer/module/Controller;

.field private dvd:Lcom/youku/upsplayer/module/Dvd;

.field private error:Lcom/youku/upsplayer/module/PlayError;

.field private fee:Lcom/youku/upsplayer/module/Fee;

.field private network:Lcom/youku/upsplayer/module/Network;

.field private pay:Lcom/youku/upsplayer/module/Pay;

.field private playlog:Lcom/youku/upsplayer/module/Playlog;

.field private preview:Lcom/youku/upsplayer/module/Preview;

.field private scene_content:Lcom/youku/upsplayer/module/SceneContent;

.field private show:Lcom/youku/upsplayer/module/Show;

.field private stream:[Lcom/youku/upsplayer/module/Stream;

.field private ticket:Lcom/youku/upsplayer/module/Ticket;

.field private token:Lcom/youku/upsplayer/module/Token;

.field private trial:Lcom/youku/upsplayer/module/Trial;

.field private uploader:Lcom/youku/upsplayer/module/Uploader;

.field private ups:Lcom/youku/upsplayer/module/Ups;

.field private user:Lcom/youku/upsplayer/module/User;

.field private video:Lcom/youku/upsplayer/module/Video;

.field private videolike:Lcom/youku/upsplayer/module/VideoLike;

.field private videos:Lcom/youku/upsplayer/module/Videos;

.field private vip:Lcom/youku/upsplayer/module/Vip;

.field private vip_pay_info:Lcom/youku/upsplayer/module/VipPayInfo;

.field private zpd_pay_info:Lcom/youku/upsplayer/module/ZPdPayInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lc8/BYn;

    invoke-direct {v0}, Lc8/BYn;-><init>()V

    sput-object v0, Lcom/youku/upsplayer/module/VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getAd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbum()Lcom/youku/upsplayer/module/Album;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->album:Lcom/youku/upsplayer/module/Album;

    return-object v0
.end method

.method public getApp_buy_info()Lcom/youku/upsplayer/module/AppBuyInfo;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->app_buy_info:Lcom/youku/upsplayer/module/AppBuyInfo;

    return-object v0
.end method

.method public getCloud()Lcom/youku/upsplayer/module/Cloud;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->cloud:Lcom/youku/upsplayer/module/Cloud;

    return-object v0
.end method

.method public getController()Lcom/youku/upsplayer/module/Controller;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->controller:Lcom/youku/upsplayer/module/Controller;

    return-object v0
.end method

.method public getDvd()Lcom/youku/upsplayer/module/Dvd;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->dvd:Lcom/youku/upsplayer/module/Dvd;

    return-object v0
.end method

.method public getError()Lcom/youku/upsplayer/module/PlayError;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->error:Lcom/youku/upsplayer/module/PlayError;

    return-object v0
.end method

.method public getFee()Lcom/youku/upsplayer/module/Fee;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->fee:Lcom/youku/upsplayer/module/Fee;

    return-object v0
.end method

.method public getNetwork()Lcom/youku/upsplayer/module/Network;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->network:Lcom/youku/upsplayer/module/Network;

    return-object v0
.end method

.method public getPay()Lcom/youku/upsplayer/module/Pay;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->pay:Lcom/youku/upsplayer/module/Pay;

    return-object v0
.end method

.method public getPlaylog()Lcom/youku/upsplayer/module/Playlog;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->playlog:Lcom/youku/upsplayer/module/Playlog;

    return-object v0
.end method

.method public getPreview()Lcom/youku/upsplayer/module/Preview;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->preview:Lcom/youku/upsplayer/module/Preview;

    return-object v0
.end method

.method public getSceneContent()Lcom/youku/upsplayer/module/SceneContent;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->scene_content:Lcom/youku/upsplayer/module/SceneContent;

    return-object v0
.end method

.method public getShow()Lcom/youku/upsplayer/module/Show;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->show:Lcom/youku/upsplayer/module/Show;

    return-object v0
.end method

.method public getStream()[Lcom/youku/upsplayer/module/Stream;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->stream:[Lcom/youku/upsplayer/module/Stream;

    return-object v0
.end method

.method public getTicket()Lcom/youku/upsplayer/module/Ticket;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->ticket:Lcom/youku/upsplayer/module/Ticket;

    return-object v0
.end method

.method public getToken()Lcom/youku/upsplayer/module/Token;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->token:Lcom/youku/upsplayer/module/Token;

    return-object v0
.end method

.method public getTrial()Lcom/youku/upsplayer/module/Trial;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->trial:Lcom/youku/upsplayer/module/Trial;

    return-object v0
.end method

.method public getUploader()Lcom/youku/upsplayer/module/Uploader;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->uploader:Lcom/youku/upsplayer/module/Uploader;

    return-object v0
.end method

.method public getUps()Lcom/youku/upsplayer/module/Ups;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->ups:Lcom/youku/upsplayer/module/Ups;

    return-object v0
.end method

.method public getUser()Lcom/youku/upsplayer/module/User;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->user:Lcom/youku/upsplayer/module/User;

    return-object v0
.end method

.method public getVideo()Lcom/youku/upsplayer/module/Video;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->video:Lcom/youku/upsplayer/module/Video;

    return-object v0
.end method

.method public getVideolike()Lcom/youku/upsplayer/module/VideoLike;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->videolike:Lcom/youku/upsplayer/module/VideoLike;

    return-object v0
.end method

.method public getVideos()Lcom/youku/upsplayer/module/Videos;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->videos:Lcom/youku/upsplayer/module/Videos;

    return-object v0
.end method

.method public getVip()Lcom/youku/upsplayer/module/Vip;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->vip:Lcom/youku/upsplayer/module/Vip;

    return-object v0
.end method

.method public getVip_pay_info()Lcom/youku/upsplayer/module/VipPayInfo;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->vip_pay_info:Lcom/youku/upsplayer/module/VipPayInfo;

    return-object v0
.end method

.method public getZpd_pay_info()Lcom/youku/upsplayer/module/ZPdPayInfo;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/youku/upsplayer/module/VideoInfo;->zpd_pay_info:Lcom/youku/upsplayer/module/ZPdPayInfo;

    return-object v0
.end method

.method public setAd(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->ad:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setAlbum(Lcom/youku/upsplayer/module/Album;)V
    .locals 0
    .param p1, "album"    # Lcom/youku/upsplayer/module/Album;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->album:Lcom/youku/upsplayer/module/Album;

    .line 215
    return-void
.end method

.method public setApp_buy_info(Lcom/youku/upsplayer/module/AppBuyInfo;)V
    .locals 0
    .param p1, "app_buy_info"    # Lcom/youku/upsplayer/module/AppBuyInfo;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->app_buy_info:Lcom/youku/upsplayer/module/AppBuyInfo;

    .line 305
    return-void
.end method

.method public setCloud(Lcom/youku/upsplayer/module/Cloud;)V
    .locals 0
    .param p1, "cloud"    # Lcom/youku/upsplayer/module/Cloud;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->cloud:Lcom/youku/upsplayer/module/Cloud;

    .line 191
    return-void
.end method

.method public setController(Lcom/youku/upsplayer/module/Controller;)V
    .locals 0
    .param p1, "controller"    # Lcom/youku/upsplayer/module/Controller;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->controller:Lcom/youku/upsplayer/module/Controller;

    .line 231
    return-void
.end method

.method public setDvd(Lcom/youku/upsplayer/module/Dvd;)V
    .locals 0
    .param p1, "dvd"    # Lcom/youku/upsplayer/module/Dvd;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->dvd:Lcom/youku/upsplayer/module/Dvd;

    .line 143
    return-void
.end method

.method public setError(Lcom/youku/upsplayer/module/PlayError;)V
    .locals 0
    .param p1, "error"    # Lcom/youku/upsplayer/module/PlayError;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->error:Lcom/youku/upsplayer/module/PlayError;

    .line 273
    return-void
.end method

.method public setFee(Lcom/youku/upsplayer/module/Fee;)V
    .locals 0
    .param p1, "fee"    # Lcom/youku/upsplayer/module/Fee;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->fee:Lcom/youku/upsplayer/module/Fee;

    .line 135
    return-void
.end method

.method public setNetwork(Lcom/youku/upsplayer/module/Network;)V
    .locals 0
    .param p1, "network"    # Lcom/youku/upsplayer/module/Network;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->network:Lcom/youku/upsplayer/module/Network;

    .line 239
    return-void
.end method

.method public setPay(Lcom/youku/upsplayer/module/Pay;)V
    .locals 0
    .param p1, "pay"    # Lcom/youku/upsplayer/module/Pay;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->pay:Lcom/youku/upsplayer/module/Pay;

    .line 255
    return-void
.end method

.method public setPlaylog(Lcom/youku/upsplayer/module/Playlog;)V
    .locals 0
    .param p1, "playlog"    # Lcom/youku/upsplayer/module/Playlog;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->playlog:Lcom/youku/upsplayer/module/Playlog;

    .line 247
    return-void
.end method

.method public setPreview(Lcom/youku/upsplayer/module/Preview;)V
    .locals 0
    .param p1, "preview"    # Lcom/youku/upsplayer/module/Preview;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->preview:Lcom/youku/upsplayer/module/Preview;

    .line 207
    return-void
.end method

.method public setSceneContent(Lcom/youku/upsplayer/module/SceneContent;)V
    .locals 0
    .param p1, "scene_content"    # Lcom/youku/upsplayer/module/SceneContent;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->scene_content:Lcom/youku/upsplayer/module/SceneContent;

    .line 313
    return-void
.end method

.method public setShow(Lcom/youku/upsplayer/module/Show;)V
    .locals 0
    .param p1, "show"    # Lcom/youku/upsplayer/module/Show;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->show:Lcom/youku/upsplayer/module/Show;

    .line 127
    return-void
.end method

.method public setStream([Lcom/youku/upsplayer/module/Stream;)V
    .locals 0
    .param p1, "stream"    # [Lcom/youku/upsplayer/module/Stream;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->stream:[Lcom/youku/upsplayer/module/Stream;

    .line 119
    return-void
.end method

.method public setTicket(Lcom/youku/upsplayer/module/Ticket;)V
    .locals 0
    .param p1, "ticket"    # Lcom/youku/upsplayer/module/Ticket;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->ticket:Lcom/youku/upsplayer/module/Ticket;

    .line 183
    return-void
.end method

.method public setToken(Lcom/youku/upsplayer/module/Token;)V
    .locals 0
    .param p1, "token"    # Lcom/youku/upsplayer/module/Token;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->token:Lcom/youku/upsplayer/module/Token;

    .line 223
    return-void
.end method

.method public setTrial(Lcom/youku/upsplayer/module/Trial;)V
    .locals 0
    .param p1, "trial"    # Lcom/youku/upsplayer/module/Trial;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->trial:Lcom/youku/upsplayer/module/Trial;

    .line 159
    return-void
.end method

.method public setUploader(Lcom/youku/upsplayer/module/Uploader;)V
    .locals 0
    .param p1, "uploader"    # Lcom/youku/upsplayer/module/Uploader;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->uploader:Lcom/youku/upsplayer/module/Uploader;

    .line 199
    return-void
.end method

.method public setUps(Lcom/youku/upsplayer/module/Ups;)V
    .locals 0
    .param p1, "ups"    # Lcom/youku/upsplayer/module/Ups;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->ups:Lcom/youku/upsplayer/module/Ups;

    .line 103
    return-void
.end method

.method public setUser(Lcom/youku/upsplayer/module/User;)V
    .locals 0
    .param p1, "user"    # Lcom/youku/upsplayer/module/User;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->user:Lcom/youku/upsplayer/module/User;

    .line 167
    return-void
.end method

.method public setVideo(Lcom/youku/upsplayer/module/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/youku/upsplayer/module/Video;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->video:Lcom/youku/upsplayer/module/Video;

    .line 111
    return-void
.end method

.method public setVideolike(Lcom/youku/upsplayer/module/VideoLike;)V
    .locals 0
    .param p1, "videolike"    # Lcom/youku/upsplayer/module/VideoLike;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->videolike:Lcom/youku/upsplayer/module/VideoLike;

    .line 263
    return-void
.end method

.method public setVideos(Lcom/youku/upsplayer/module/Videos;)V
    .locals 0
    .param p1, "videos"    # Lcom/youku/upsplayer/module/Videos;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->videos:Lcom/youku/upsplayer/module/Videos;

    .line 151
    return-void
.end method

.method public setVip(Lcom/youku/upsplayer/module/Vip;)V
    .locals 0
    .param p1, "vip"    # Lcom/youku/upsplayer/module/Vip;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->vip:Lcom/youku/upsplayer/module/Vip;

    .line 175
    return-void
.end method

.method public setVip_pay_info(Lcom/youku/upsplayer/module/VipPayInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/youku/upsplayer/module/VipPayInfo;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->vip_pay_info:Lcom/youku/upsplayer/module/VipPayInfo;

    .line 289
    return-void
.end method

.method public setZpd_pay_info(Lcom/youku/upsplayer/module/ZPdPayInfo;)V
    .locals 0
    .param p1, "zpd_pay_info"    # Lcom/youku/upsplayer/module/ZPdPayInfo;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/youku/upsplayer/module/VideoInfo;->zpd_pay_info:Lcom/youku/upsplayer/module/ZPdPayInfo;

    .line 281
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 83
    return-void
.end method
