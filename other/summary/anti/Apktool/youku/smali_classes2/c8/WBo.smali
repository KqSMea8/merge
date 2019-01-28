.class public Lc8/WBo;
.super Ljava/lang/Object;
.source "JumpInfo.java"


# static fields
.field public static final TYPE_BUSINESS_LIVE:Ljava/lang/String; = "business_live"

.field public static final TYPE_FILTER:Ljava/lang/String; = "filter"

.field public static final TYPE_MEMBER_INFO:Ljava/lang/String; = "member_info"

.field public static final TYPE_PEOPLE_FACE:Ljava/lang/String; = "parameter_data"

.field public static final TYPE_PLAY_LIST:Ljava/lang/String; = "playlist"

.field public static final TYPE_SHOW:Ljava/lang/String; = "show"

.field public static final TYPE_UPCOMING_VIDEOS:Ljava/lang/String; = "upcoming_videos"

.field public static final TYPE_URL:Ljava/lang/String; = "url"

.field public static final TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final TYPE_WEEK_RECOMMEND_DETAIL:Ljava/lang/String; = "week_recommend_detail"

.field public static final TYPE_WEEK_RECOMMEND_LIST:Ljava/lang/String; = "week_recommend_list"


# instance fields
.field private filter_cid:I

.field private filter_info:Ljava/lang/String;

.field private first_episode_video_id:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jump_type:Ljava/lang/String;

.field private live_id:Ljava/lang/String;

.field private parameter_data:Ljava/lang/String;

.field private playlist_id:Ljava/lang/String;

.field private show_id:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private video_id:Ljava/lang/String;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 220
    if-ne p1, p0, :cond_1

    .line 221
    const/4 v1, 0x1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 224
    :cond_1
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 228
    check-cast v0, Lc8/WBo;

    .line 230
    .local v0, "other":Lc8/WBo;
    invoke-virtual {v0}, Lc8/WBo;->getVideoId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lc8/WBo;->video_id:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 232
    :try_start_0
    iget-object v2, v0, Lc8/WBo;->url:Ljava/lang/String;

    iget-object v3, p0, Lc8/WBo;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 238
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lc8/WBo;->getVideoId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/WBo;->video_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v2

    goto :goto_0

    .line 234
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public first_episode_video_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc8/WBo;->first_episode_video_id:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter_cid()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lc8/WBo;->filter_cid:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lc8/WBo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getJump_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lc8/WBo;->jump_type:Ljava/lang/String;

    return-object v0
.end method

.method public getLive_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lc8/WBo;->live_id:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter_data()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lc8/WBo;->parameter_data:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeAndId()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 171
    new-array v1, v5, [Ljava/lang/String;

    .line 172
    .local v1, "string":[Ljava/lang/String;
    iget-object v6, p0, Lc8/WBo;->jump_type:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 195
    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    .line 196
    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    .line 199
    :goto_1
    return-object v1

    .line 172
    :sswitch_0
    const-string/jumbo v5, "video"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "show"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v7, "playlist"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v5

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "url"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    .line 174
    :pswitch_0
    const-string/jumbo v2, "1"

    aput-object v2, v1, v3

    .line 175
    iget-object v2, p0, Lc8/WBo;->video_id:Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_1

    .line 178
    :pswitch_1
    const-string/jumbo v2, "2"

    aput-object v2, v1, v3

    .line 179
    iget-object v2, p0, Lc8/WBo;->show_id:Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_1

    .line 182
    :pswitch_2
    const-string/jumbo v2, "3"

    aput-object v2, v1, v3

    .line 183
    iget-object v2, p0, Lc8/WBo;->playlist_id:Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_1

    .line 186
    :pswitch_3
    const-string/jumbo v2, "4"

    aput-object v2, v1, v3

    .line 188
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lc8/WBo;->url:Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 191
    iget-object v2, p0, Lc8/WBo;->url:Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_1

    .line 172
    :sswitch_data_0
    .sparse-switch
        0x1c56f -> :sswitch_3
        0x35dafd -> :sswitch_1
        0x6b0147b -> :sswitch_0
        0x700681d2 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lc8/WBo;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lc8/WBo;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lc8/WBo;->where:Ljava/lang/String;

    return-object v0
.end method

.method public ids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lc8/WBo;->ids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public jump_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lc8/WBo;->jump_type:Ljava/lang/String;

    return-object v0
.end method

.method public setFilter_cid(I)V
    .locals 0
    .param p1, "filter_cid"    # I

    .prologue
    .line 133
    iput p1, p0, Lc8/WBo;->filter_cid:I

    .line 134
    return-void
.end method

.method public setFilter_info(Ljava/lang/String;)V
    .locals 0
    .param p1, "filter_info"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lc8/WBo;->filter_info:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lc8/WBo;->value:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setFirst_episode_video_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "first_episode_video_id"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lc8/WBo;->first_episode_video_id:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lc8/WBo;->id:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/WBo;->ids:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public setJump_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "jump_type"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lc8/WBo;->jump_type:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setLive_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "live_id"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lc8/WBo;->live_id:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lc8/WBo;->value:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setParameter_data(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameter_data"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/WBo;->parameter_data:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPlaylist_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "playlist_id"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lc8/WBo;->playlist_id:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lc8/WBo;->value:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setShow_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "show_id"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lc8/WBo;->show_id:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lc8/WBo;->value:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lc8/WBo;->url:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lc8/WBo;->value:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setVideo_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "video_id"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lc8/WBo;->video_id:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lc8/WBo;->value:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lc8/WBo;->where:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "JumpInfo{jump_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/WBo;->jump_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", video_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/WBo;->video_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", show_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/WBo;->show_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/WBo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", filter_cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/WBo;->filter_cid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playlist_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/WBo;->playlist_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", first_episode_video_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/WBo;->first_episode_video_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/WBo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", filter_info=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/WBo;->filter_info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
