.class public Lcom/youku/vo/CommonVideoInfo;
.super Ljava/lang/Object;
.source "CommonVideoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:I = 0x13

.field public static final LIVE_SDK_TYPE_CENTER:I = 0x3

.field public static final LIVE_SDK_TYPE_COMMERCIAL:I = 0x2

.field public static final LIVE_SDK_TYPE_UGC:I = 0x1

.field public static final PAY_NO:I = 0x0

.field public static final PAY_YES:I = 0x1

.field public static final TYPE_APP_MARKET:I = 0x7

.field public static final TYPE_DOWNLOAD_APK:I = 0x8

.field public static final TYPE_GAMECENTER_DETAIL:I = 0x9

.field public static final TYPE_GAMECENTER_GIFT_BAG:I = 0xe

.field public static final TYPE_LAIFENG_LIVEROOM:I = 0x18

.field public static final TYPE_LAIFENG_SHOWPLACE:I = 0x17

.field public static final TYPE_LIVE:I = 0xa

.field public static final TYPE_PLAYLIST:I = 0x3

.field public static final TYPE_SHOW:I = 0x2

.field public static final TYPE_SUBJECT:I = 0x12

.field public static final TYPE_TOPIC_DETAIL:I = 0x15

.field public static final TYPE_URL:I = 0x4

.field public static final TYPE_USER:I = 0x11

.field public static final TYPE_VIDEO:I = 0x1

.field public static final TYPE_VIDEOLIST:I = 0x5

.field public static final URL_OPEN_WAY_ALI:I = 0x4

.field public static final URL_OPEN_WAY_IN:I = 0x1

.field public static final URL_OPEN_WAY_INTERACT:I = 0x3

.field public static final URL_OPEN_WAY_OUT:I = 0x2

.field private static final serialVersionUID:J = -0x1d63b3066405fc1aL


# instance fields
.field private cid:Ljava/lang/String;

.field private game_page_id:Ljava/lang/String;

.field private isJumpBrowser:Z

.field private isPay:Z

.field private live_sdk_type:I

.field private mGameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

.field private playlistid:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;

.field private url_imge:Ljava/lang/String;

.field private url_live:Ljava/lang/String;

.field private video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->video_id:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/youku/vo/CommonVideoInfo;->isPay:Z

    .line 45
    iput v1, p0, Lcom/youku/vo/CommonVideoInfo;->type:I

    .line 47
    iput-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->title:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->playlistid:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->url:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->url_imge:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->url_live:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->cid:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->mGameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    .line 60
    iput-boolean v1, p0, Lcom/youku/vo/CommonVideoInfo;->isJumpBrowser:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getGameCenterVideoInfo()Lcom/youku/vo/GameCenterVideoInfo;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->mGameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    return-object v0
.end method

.method public getGame_page_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->game_page_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLive_sdk_type()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/youku/vo/CommonVideoInfo;->live_sdk_type:I

    return v0
.end method

.method public getPlaylistid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->playlistid:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/youku/vo/CommonVideoInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl_imge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->url_imge:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl_live()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->url_live:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/youku/vo/CommonVideoInfo;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public isJumpBrowser()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/youku/vo/CommonVideoInfo;->isJumpBrowser:Z

    return v0
.end method

.method public isLive()Z
    .locals 2

    .prologue
    .line 80
    const/16 v0, 0xa

    iget v1, p0, Lcom/youku/vo/CommonVideoInfo;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPay()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/youku/vo/CommonVideoInfo;->isPay:Z

    return v0
.end method

.method public isPlayList()Z
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x3

    iget v1, p0, Lcom/youku/vo/CommonVideoInfo;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShow()Z
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x2

    iget v1, p0, Lcom/youku/vo/CommonVideoInfo;->type:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/youku/vo/CommonVideoInfo;->cid:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setGameCenterVideoInfo(Lcom/youku/vo/GameCenterVideoInfo;)V
    .locals 0
    .param p1, "mGameCenterVideoInfo"    # Lcom/youku/vo/GameCenterVideoInfo;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/youku/vo/CommonVideoInfo;->mGameCenterVideoInfo:Lcom/youku/vo/GameCenterVideoInfo;

    .line 173
    return-void
.end method

.method public setGame_page_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "game_page_id"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/youku/vo/CommonVideoInfo;->game_page_id:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setJumpBrowser(Z)V
    .locals 0
    .param p1, "isJumpBrowser"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/youku/vo/CommonVideoInfo;->isJumpBrowser:Z

    .line 141
    return-void
.end method

.method public setLive_sdk_type(I)V
    .locals 0
    .param p1, "live_sdk_type"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/youku/vo/CommonVideoInfo;->live_sdk_type:I

    .line 181
    return-void
.end method

.method public setPay(Z)V
    .locals 0
    .param p1, "isPay"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/youku/vo/CommonVideoInfo;->isPay:Z

    .line 73
    return-void
.end method

.method public setPlaylistid(Ljava/lang/String;)V
    .locals 0
    .param p1, "playlistid"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/youku/vo/CommonVideoInfo;->playlistid:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/youku/vo/CommonVideoInfo;->title:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/youku/vo/CommonVideoInfo;->type:I

    .line 93
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/youku/vo/CommonVideoInfo;->url:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setUrl_imge(Ljava/lang/String;)V
    .locals 0
    .param p1, "url_imge"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/youku/vo/CommonVideoInfo;->url_imge:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setUrl_live(Ljava/lang/String;)V
    .locals 0
    .param p1, "url_live"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/youku/vo/CommonVideoInfo;->url_live:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setVideo_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "video_id"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/youku/vo/CommonVideoInfo;->video_id:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CommonVideoInfo [video_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/CommonVideoInfo;->video_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/vo/CommonVideoInfo;->isPay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/youku/vo/CommonVideoInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/CommonVideoInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playlistid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/CommonVideoInfo;->playlistid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/CommonVideoInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/CommonVideoInfo;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isJumpBrowser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/youku/vo/CommonVideoInfo;->isJumpBrowser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
