.class public Lc8/PXn;
.super Ljava/lang/Object;
.source "ParseResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OXn;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    const-class v0, Lc8/PXn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/PXn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/youku/upsplayer/module/VideoInfo;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v2, Lcom/youku/upsplayer/module/VideoInfo;

    invoke-direct {v2}, Lcom/youku/upsplayer/module/VideoInfo;-><init>()V

    .line 170
    .local v2, "info":Lcom/youku/upsplayer/module/VideoInfo;
    :try_start_0
    invoke-static {}, Lc8/TYn;->upsRequest()Lc8/RYn;

    move-result-object v6

    .line 171
    .local v6, "stage":Lc8/RYn;
    const-string/jumbo v7, "parseJson"

    invoke-virtual {v6, v7}, Lc8/RYn;->beginSection(Ljava/lang/String;)V

    .line 172
    const-class v7, Lc8/OXn;

    invoke-static {p0, v7}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/OXn;

    .line 173
    .local v5, "result":Lc8/OXn;
    invoke-virtual {v6}, Lc8/RYn;->endSection()V

    .line 174
    invoke-virtual {v5, v2}, Lc8/OXn;->apply(Lcom/youku/upsplayer/module/VideoInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v5    # "result":Lc8/OXn;
    .end local v6    # "stage":Lc8/RYn;
    :goto_0
    return-object v2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    :try_start_1
    invoke-static {}, Lc8/TYn;->upsRequest()Lc8/RYn;

    move-result-object v6

    .line 182
    .restart local v6    # "stage":Lc8/RYn;
    const-string/jumbo v7, "parseJson2"

    invoke-virtual {v6, v7}, Lc8/RYn;->beginSection(Ljava/lang/String;)V

    .line 183
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 185
    .local v3, "obj2":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "data"

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 187
    .local v4, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "error"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/PlayError;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/PlayError;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setError(Lcom/youku/upsplayer/module/PlayError;)V

    .line 188
    const-string/jumbo v7, "ups"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Ups;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Ups;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setUps(Lcom/youku/upsplayer/module/Ups;)V

    .line 189
    const-string/jumbo v7, "video"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Video;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Video;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setVideo(Lcom/youku/upsplayer/module/Video;)V

    .line 190
    const-string/jumbo v7, "stream"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Stream;

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/youku/upsplayer/module/Stream;

    invoke-static {v7, v8, v9}, Lc8/PXn;->parseArray(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/reflect/Type;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/youku/upsplayer/module/Stream;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setStream([Lcom/youku/upsplayer/module/Stream;)V

    .line 191
    const-string/jumbo v7, "show"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Show;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Show;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setShow(Lcom/youku/upsplayer/module/Show;)V

    .line 192
    const-string/jumbo v7, "fee"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Fee;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Fee;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setFee(Lcom/youku/upsplayer/module/Fee;)V

    .line 193
    const-string/jumbo v7, "dvd"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Dvd;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Dvd;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setDvd(Lcom/youku/upsplayer/module/Dvd;)V

    .line 194
    const-string/jumbo v7, "videos"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Videos;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Videos;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setVideos(Lcom/youku/upsplayer/module/Videos;)V

    .line 195
    const-string/jumbo v7, "trial"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Trial;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Trial;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setTrial(Lcom/youku/upsplayer/module/Trial;)V

    .line 196
    const-string/jumbo v7, "user"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/User;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/User;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setUser(Lcom/youku/upsplayer/module/User;)V

    .line 197
    const-string/jumbo v7, "vip"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Vip;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Vip;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setVip(Lcom/youku/upsplayer/module/Vip;)V

    .line 198
    const-string/jumbo v7, "ticket"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Ticket;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Ticket;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setTicket(Lcom/youku/upsplayer/module/Ticket;)V

    .line 199
    const-string/jumbo v7, "uploader"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Uploader;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Uploader;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setUploader(Lcom/youku/upsplayer/module/Uploader;)V

    .line 200
    const-string/jumbo v7, "preview"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Preview;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Preview;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setPreview(Lcom/youku/upsplayer/module/Preview;)V

    .line 201
    const-string/jumbo v7, "album"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Album;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Album;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setAlbum(Lcom/youku/upsplayer/module/Album;)V

    .line 202
    const-string/jumbo v7, "token"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Token;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Token;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setToken(Lcom/youku/upsplayer/module/Token;)V

    .line 203
    const-string/jumbo v7, "controller"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Controller;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Controller;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setController(Lcom/youku/upsplayer/module/Controller;)V

    .line 204
    const-string/jumbo v7, "network"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Network;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Network;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setNetwork(Lcom/youku/upsplayer/module/Network;)V

    .line 205
    const-string/jumbo v7, "playlog"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Playlog;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Playlog;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setPlaylog(Lcom/youku/upsplayer/module/Playlog;)V

    .line 206
    const-string/jumbo v7, "pay"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/Pay;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/Pay;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setPay(Lcom/youku/upsplayer/module/Pay;)V

    .line 207
    const-string/jumbo v7, "videolike"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/VideoLike;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/VideoLike;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setVideolike(Lcom/youku/upsplayer/module/VideoLike;)V

    .line 208
    const-string/jumbo v7, "vip_pay_info"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/VipPayInfo;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/VipPayInfo;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setVip_pay_info(Lcom/youku/upsplayer/module/VipPayInfo;)V

    .line 209
    const-string/jumbo v7, "zpd_pay_info"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/ZPdPayInfo;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/ZPdPayInfo;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setZpd_pay_info(Lcom/youku/upsplayer/module/ZPdPayInfo;)V

    .line 210
    const-string/jumbo v7, "app_buy_info"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/AppBuyInfo;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/AppBuyInfo;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setApp_buy_info(Lcom/youku/upsplayer/module/AppBuyInfo;)V

    .line 211
    const-string/jumbo v7, "scene_content"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    const-class v8, Lcom/youku/upsplayer/module/SceneContent;

    invoke-static {v7, v8}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/upsplayer/module/SceneContent;

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setSceneContent(Lcom/youku/upsplayer/module/SceneContent;)V

    .line 212
    const-string/jumbo v7, "ad"

    invoke-virtual {v4, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/youku/upsplayer/module/VideoInfo;->setAd(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v6}, Lc8/RYn;->endSection()V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 216
    .end local v3    # "obj2":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "stage":Lc8/RYn;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "ex":Lcom/alibaba/fastjson/JSONException;
    sget-object v7, Lc8/PXn;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/QYn;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 221
    .end local v1    # "ex":Lcom/alibaba/fastjson/JSONException;
    :catch_2
    move-exception v1

    .line 223
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v7, Lc8/PXn;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/QYn;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected static parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 6
    .param p0, "json"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 234
    if-nez p0, :cond_0

    .line 242
    :goto_0
    return-object v2

    .line 237
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "jsonStr":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/alibaba/fastjson/parser/Feature;

    const/4 v4, 0x0

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v5, v3, v4

    invoke-static {v1, p1, v3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 240
    .end local v1    # "jsonStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static parseArray(Lcom/alibaba/fastjson/JSONArray;Ljava/lang/reflect/Type;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "json"    # Lcom/alibaba/fastjson/JSONArray;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSONArray;",
            "Ljava/lang/reflect/Type;",
            "[TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "ary":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 248
    :cond_0
    const/4 v2, 0x0

    .line 255
    :goto_0
    return-object v2

    .line 250
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 253
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-static {v2, p1}, Lc8/PXn;->parse(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
