.class public Lc8/llh;
.super Ljava/lang/Object;
.source "YoukuInitDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/klh;,
        Lc8/jlh;
    }
.end annotation


# static fields
.field private static instance:Lc8/llh;


# instance fields
.field private request:Lc8/TIj;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/llh;->request:Lc8/TIj;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lc8/llh;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lc8/llh;->cmsPushProtectConfig(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method static synthetic access$1000(Lc8/llh;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;

    .prologue
    .line 71
    invoke-direct {p0}, Lc8/llh;->wakeUpProcess()V

    return-void
.end method

.method static synthetic access$200(Lc8/llh;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lc8/llh;->cmsAppProtocolConfig(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method static synthetic access$300(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lc8/llh;->cmsUpdateInfoConfig(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Lc8/llh;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lc8/llh;->cmsSkinConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lc8/llh;->cmsH265Config(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lc8/llh;->cmsHardwareAccConfig(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$700(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lc8/llh;->cmsUPlusConfig(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$800(Lc8/llh;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lc8/llh;->cmsOtherConfig(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method static synthetic access$900(Lc8/llh;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lc8/llh;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lc8/llh;->cmsReminderInfo(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public static appInitial()V
    .locals 7

    .prologue
    .line 221
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v5, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "time"

    const-string/jumbo v1, "active_time"

    invoke-static {v1}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "youkuappinitial"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {}, Lc8/llh;->getDid()Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "did":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const-string/jumbo v0, "did"

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    const-string/jumbo v0, ""

    const/16 v1, 0x4e1f

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    return-void
.end method

.method private checkProtocol()V
    .locals 2

    .prologue
    .line 680
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v0, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->scan_app:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 681
    invoke-static {}, Lc8/min;->checkProtocol()V

    .line 683
    :cond_0
    return-void
.end method

.method private cmsAppProtocolConfig(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 4
    .param p1, "config"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 193
    if-nez p1, :cond_1

    .line 194
    const-string/jumbo v2, "YoukuInitDataManager"

    const-string/jumbo v3, "AppProtocolConfig is null!"

    invoke-static {v2, v3}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lc8/lin;

    invoke-static {v2, v3}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/statics/CheckProtocolUtils$ProtocolItem;>;"
    if-eqz v0, :cond_0

    .line 200
    invoke-static {v0}, Lc8/min;->postProtocols(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 202
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/statics/CheckProtocolUtils$ProtocolItem;>;"
    :catch_0
    move-exception v1

    .line 203
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "YoukuInitDataManager"

    invoke-static {v2, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method private cmsH265Config(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "config"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    const-string/jumbo v0, "YoukuInitDataManager"

    const-string/jumbo v1, "H265 is null!"

    invoke-static {v0, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 273
    :cond_0
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    const-string/jumbo v1, "open"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/youku/vo/Initial;->player_h265:I

    .line 274
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sd"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "hd"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "hd2"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "hd3"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/youku/vo/Initial;->HEVC_whitelist:Ljava/lang/String;

    .line 278
    const-string/jumbo v0, "h265Switch"

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->HEVC_whitelist:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v0, "player_h265"

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v1, v1, Lcom/youku/vo/Initial;->player_h265:I

    invoke-static {v0, v1}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "player_h265:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v1, v1, Lcom/youku/vo/Initial;->player_h265:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HEVC_whitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->HEVC_whitelist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private cmsHardwareAccConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "config"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    const/4 v0, 0x1

    .line 290
    if-nez p1, :cond_0

    .line 291
    const-string/jumbo v0, "YoukuInitDataManager"

    const-string/jumbo v1, "HardwareAcc is null!"

    invoke-static {v0, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 294
    :cond_0
    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    const-string/jumbo v2, "open"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/youku/vo/Initial;->hard_decoding:I

    .line 296
    const-string/jumbo v1, "hard_decoding"

    sget-object v2, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v2, v2, Lcom/youku/vo/Initial;->hard_decoding:I

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hard_decoding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v1, v1, Lcom/youku/vo/Initial;->hard_decoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 296
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private cmsOtherConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 14
    .param p1, "config"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 321
    if-nez p1, :cond_1

    .line 322
    const-string/jumbo v5, "YoukuInitDataManager"

    const-string/jumbo v6, "other config is null!"

    invoke-static {v5, v6}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_2

    .line 326
    const-string/jumbo v5, "YoukuInitDataManager"

    const-string/jumbo v6, "other config is empty!"

    invoke-static {v5, v6}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 331
    .local v3, "s":Ljava/lang/String;
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    :goto_2
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 333
    :pswitch_0
    sget-object v7, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    const-string/jumbo v5, "h5Configs"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-class v8, Lcom/youku/vo/Initial$H5Config;

    invoke-static {v5, v8}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v7, Lcom/youku/vo/Initial;->h5_configs:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 335
    :try_start_1
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->h5_configs:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->h5_configs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Initial$H5Config;

    .line 338
    .local v2, "mConfig":Lcom/youku/vo/Initial$H5Config;
    if-eqz v2, :cond_4

    .line 339
    iget-object v7, v2, Lcom/youku/vo/Initial$H5Config;->content:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 343
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "mConfig":Lcom/youku/vo/Initial$H5Config;
    :catch_0
    move-exception v4

    .line 344
    .local v4, "throwable":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v5, "YoukuInitDataManager"

    invoke-static {v5, v4}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "h5_configs:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v7, v7, Lcom/youku/vo/Initial;->h5_configs:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 359
    :catch_1
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "YoukuInitDataManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 331
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_0
    :try_start_3
    const-string/jumbo v7, "h5Configs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v7, "serverTime"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v7, "oversea"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x2

    goto/16 :goto_2

    .line 341
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    :try_start_4
    invoke-static {v1}, Lc8/HTh;->addSpmUrlRules(Ljava/util/Collection;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 349
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    :try_start_5
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    const-string/jumbo v7, "serverTime"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/youku/vo/Initial;->server_time:J

    .line 350
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-wide v8, v5, Lcom/youku/vo/Initial;->server_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    .line 351
    sput-wide v8, Lc8/lSh;->TIMESTAMP:J

    invoke-static {v8, v9}, Lc8/lSh;->setTIMESTAMP(J)V

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "server_time:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-wide v8, v7, Lcom/youku/vo/Initial;->server_time:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 355
    :pswitch_2
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    const-string/jumbo v7, "oversea"

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/youku/vo/Initial;->is_abroad:I

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "is_abroad:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v7, v7, Lcom/youku/vo/Initial;->is_abroad:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 331
    :sswitch_data_0
    .sparse-switch
        -0x6cd56350 -> :sswitch_1
        -0x410ba105 -> :sswitch_2
        0x5954dfe4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cmsPushProtectConfig(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2
    .param p1, "config"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string/jumbo v0, "YoukuInitDataManager"

    const-string/jumbo v1, "PushProtectConfig is null!"

    invoke-static {v0, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Ehn;->cmsWakeUpJsonText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cmsReminderInfo(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 12
    .param p1, "config"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 372
    if-nez p1, :cond_1

    .line 373
    const-string/jumbo v5, "YoukuInitDataManager"

    const-string/jumbo v6, "reminder info is null!"

    invoke-static {v5, v6}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-class v10, Lcom/youku/data/PlayTipDTO;

    invoke-static {v5, v10}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 377
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/youku/data/PlayTipDTO;>;"
    if-eqz v4, :cond_0

    .line 378
    new-instance v0, Lc8/uDh;

    invoke-direct {v0}, Lc8/uDh;-><init>()V

    .line 379
    .local v0, "configInfo":Lc8/uDh;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_c

    .line 381
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->field:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->field:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_2
    move v5, v8

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 379
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 382
    :sswitch_0
    const-string/jumbo v10, "adv_message"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_2

    :sswitch_1
    const-string/jumbo v10, "backgroundWaitSeconds"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :sswitch_2
    const-string/jumbo v10, "periodSeconds"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v9

    goto :goto_2

    :sswitch_3
    const-string/jumbo v10, "fetchServerConfigPeriodSeconds"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v10, "whiteList"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v10, "blackList"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v10, "uc_headline"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_7
    const-string/jumbo v10, "detail_cooperation"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_8
    const-string/jumbo v10, "middle_page_cooperation"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_9
    const-string/jumbo v10, "alipay_adv_message"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v10, "at_youku"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v10, "topic_weibo"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v10, "login_frequency_for_download"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v10, "p2p_download"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v10, "p2p_switch"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v10, "p2p_vod"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string/jumbo v10, "cms_playpage_switch"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x10

    goto/16 :goto_2

    :sswitch_11
    const-string/jumbo v10, "intropush"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string/jumbo v10, "adv_switch"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x12

    goto/16 :goto_2

    :sswitch_13
    const-string/jumbo v10, "isHotStartEnabled"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x13

    goto/16 :goto_2

    :sswitch_14
    const-string/jumbo v10, "scan_app"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x14

    goto/16 :goto_2

    :sswitch_15
    const-string/jumbo v10, "barrage"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x15

    goto/16 :goto_2

    :sswitch_16
    const-string/jumbo v10, "flow_package_switch"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x16

    goto/16 :goto_2

    :sswitch_17
    const-string/jumbo v10, "sm_statistics_switch"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x17

    goto/16 :goto_2

    .line 385
    :pswitch_0
    const-string/jumbo v10, "adv_message"

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v10, v5}, Lc8/VLj;->savePreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 546
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "YoukuInitDataManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 388
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lc8/uDh;->setBackgroundWaitSeconds(I)V

    goto/16 :goto_3

    .line 391
    :pswitch_2
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lc8/uDh;->setPeriodSeconds(I)V

    goto/16 :goto_3

    .line 394
    :pswitch_3
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lc8/uDh;->setFetchServerConfigPeriodSeconds(I)V

    goto/16 :goto_3

    .line 397
    :pswitch_4
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lc8/uDh;->setWhiteList(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 400
    :pswitch_5
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lc8/uDh;->setBlackList(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 403
    :pswitch_6
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v5, :cond_3

    .line 404
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    new-instance v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-direct {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;-><init>()V

    iput-object v10, v5, Lcom/youku/vo/Initial;->uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    .line 405
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->url:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->direct_url:Ljava/lang/String;

    .line 406
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->urlType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lc8/llh;->translate(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->url_open_way:I

    .line 407
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    .line 408
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->jumpType:Ljava/lang/String;

    const-string/jumbo v11, "JUMP_TO_URL"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_4
    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->jump_type:I

    .line 409
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    const/4 v10, 0x1

    iput v10, v5, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->state:I

    .line 410
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->title:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->title:Ljava/lang/String;

    .line 411
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uc_headline:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v10, Lcom/youku/vo/Initial;->uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-virtual {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    move v5, v7

    .line 408
    goto :goto_4

    .line 415
    :pswitch_7
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v5, :cond_3

    .line 416
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    new-instance v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-direct {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;-><init>()V

    iput-object v10, v5, Lcom/youku/vo/Initial;->detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    .line 417
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->url:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->direct_url:Ljava/lang/String;

    .line 418
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->urlType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lc8/llh;->translate(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->url_open_way:I

    .line 419
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    .line 420
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->jumpType:Ljava/lang/String;

    const-string/jumbo v11, "JUMP_TO_URL"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_5
    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->jump_type:I

    .line 421
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    const/4 v10, 0x1

    iput v10, v5, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->state:I

    .line 422
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->title:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->title:Ljava/lang/String;

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "detail_cooperation:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v10, Lcom/youku/vo/Initial;->detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-virtual {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    :cond_5
    move v5, v7

    .line 420
    goto :goto_5

    .line 427
    :pswitch_8
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v5, :cond_3

    .line 428
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    new-instance v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-direct {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;-><init>()V

    iput-object v10, v5, Lcom/youku/vo/Initial;->middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    .line 429
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->url:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->direct_url:Ljava/lang/String;

    .line 430
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->urlType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lc8/llh;->translate(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->url_open_way:I

    .line 431
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    .line 432
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->jumpType:Ljava/lang/String;

    const-string/jumbo v11, "JUMP_TO_URL"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_6
    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->jump_type:I

    .line 433
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    const/4 v10, 0x1

    iput v10, v5, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->state:I

    .line 434
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->title:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->title:Ljava/lang/String;

    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "middle_page_cooperation:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v10, Lcom/youku/vo/Initial;->middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-virtual {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    :cond_6
    move v5, v7

    .line 432
    goto :goto_6

    .line 439
    :pswitch_9
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v5, :cond_3

    .line 440
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    new-instance v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-direct {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;-><init>()V

    iput-object v10, v5, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    .line 441
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->url:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->direct_url:Ljava/lang/String;

    .line 442
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->urlType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lc8/llh;->translate(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->url_open_way:I

    .line 443
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    .line 444
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->jumpType:Ljava/lang/String;

    const-string/jumbo v11, "JUMP_TO_URL"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_7
    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->jump_type:I

    .line 445
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    const/4 v10, 0x1

    iput v10, v5, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->state:I

    .line 446
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->title:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->title:Ljava/lang/String;

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "alipay_adv_message:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v10, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    :cond_7
    move v5, v7

    .line 444
    goto :goto_7

    .line 451
    :pswitch_a
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v5, :cond_3

    .line 452
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    new-instance v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-direct {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;-><init>()V

    iput-object v10, v5, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    .line 453
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->url:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->direct_url:Ljava/lang/String;

    .line 454
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->urlType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lc8/llh;->translate(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->url_open_way:I

    .line 455
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    .line 456
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->jumpType:Ljava/lang/String;

    const-string/jumbo v11, "JUMP_TO_URL"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_8
    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->jump_type:I

    .line 457
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    const/4 v10, 0x1

    iput v10, v5, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->state:I

    .line 458
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->title:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->title:Ljava/lang/String;

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "at_youku:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v10, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-virtual {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    :cond_8
    move v5, v7

    .line 456
    goto :goto_8

    .line 463
    :pswitch_b
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v5, :cond_3

    .line 464
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    new-instance v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-direct {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;-><init>()V

    iput-object v10, v5, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    .line 465
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->url:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->direct_url:Ljava/lang/String;

    .line 466
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->urlType:Ljava/lang/String;

    invoke-direct {p0, v5}, Lc8/llh;->translate(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->url_open_way:I

    .line 467
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    .line 468
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->jumpType:Ljava/lang/String;

    const-string/jumbo v11, "JUMP_TO_URL"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_9
    iput v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->jump_type:I

    .line 469
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v5, v5, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    const/4 v10, 0x1

    iput v10, v5, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->state:I

    .line 470
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v5, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->title:Ljava/lang/String;

    iput-object v5, v10, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->title:Ljava/lang/String;

    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "topic_weibo:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v10, v10, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    invoke-virtual {v10}, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    :cond_9
    move v5, v7

    .line 468
    goto :goto_9

    .line 475
    :pswitch_c
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->login_frequency_for_download:I

    .line 476
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v5, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v5, v5, Lcom/youku/vo/Initial$AllSwitchs;->login_frequency_for_download:I

    if-lez v5, :cond_3

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "login_frequency_for_download:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v10, v10, Lcom/youku/vo/Initial$AllSwitchs;->login_frequency_for_download:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    sget-object v5, Lc8/VLj;->context:Landroid/content/Context;

    const-string/jumbo v10, "maxCount"

    sget-object v11, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v11, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v11, v11, Lcom/youku/vo/Initial$AllSwitchs;->login_frequency_for_download:I

    invoke-static {v5, v10, v11}, Lc8/oen;->savePreference(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 482
    :pswitch_d
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->p2p_download:I

    goto/16 :goto_3

    .line 485
    :pswitch_e
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->p2p_switch:I

    goto/16 :goto_3

    .line 488
    :pswitch_f
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->p2p_vod:I

    goto/16 :goto_3

    .line 492
    :pswitch_10
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->cms_playpage_switch:I

    .line 493
    invoke-static {}, Lc8/Efh;->isCMSPlaypageSwitch()I

    move-result v5

    if-ne v5, v8, :cond_b

    .line 495
    const-string/jumbo v5, "cms_playpage_switch_error"

    invoke-static {v5}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;)I

    move-result v5

    if-lt v5, v9, :cond_a

    .line 497
    const-string/jumbo v5, "cms_playpage_switch_new"

    const/4 v10, 0x0

    invoke-static {v5, v10}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    .line 498
    const-string/jumbo v5, "cms_playpage_switch_error"

    const/4 v10, 0x0

    invoke-static {v5, v10}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 499
    :cond_a
    const-string/jumbo v5, "cms_playpage_switch_error"

    invoke-static {v5}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    const-string/jumbo v5, "cms_playpage_switch_error"

    invoke-static {v5}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v9, :cond_3

    .line 500
    const-string/jumbo v5, "cms_playpage_switch_error"

    const-string/jumbo v10, "cms_playpage_switch_error"

    invoke-static {v10}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v5, v10}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 504
    :cond_b
    const-string/jumbo v5, "cms_playpage_switch_new"

    invoke-static {}, Lc8/Efh;->isCMSPlaypageSwitch()I

    move-result v10

    invoke-static {v5, v10}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 508
    :pswitch_11
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->intropush:I

    .line 509
    const-string/jumbo v5, "notify_detect_switch"

    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v10, v10, Lcom/youku/vo/Initial$AllSwitchs;->intropush:I

    invoke-static {v5, v10}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 512
    :pswitch_12
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->adv_switch:I

    .line 513
    invoke-static {}, Lc8/Efh;->adv_switch()I

    move-result v5

    sput v5, Lc8/ukk;->advSwitch:I

    .line 515
    const-string/jumbo v5, "adv_switch"

    invoke-static {}, Lc8/Efh;->adv_switch()I

    move-result v10

    invoke-static {v5, v10}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 518
    :pswitch_13
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->isHotStartEnabled:I

    .line 519
    invoke-static {}, Lc8/Efh;->isHotStartEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lc8/uDh;->setIsHotStartEnabled(Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 522
    :pswitch_14
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->scan_app:I

    .line 523
    invoke-direct {p0}, Lc8/llh;->checkProtocol()V

    goto/16 :goto_3

    .line 526
    :pswitch_15
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->barrage:I

    .line 528
    const-string/jumbo v5, "barrage"

    sget-object v10, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v10, v10, Lcom/youku/vo/Initial$AllSwitchs;->barrage:I

    invoke-static {v5, v10}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 531
    :pswitch_16
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->flow_package_switch:I

    goto/16 :goto_3

    .line 534
    :pswitch_17
    sget-object v5, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v10, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/data/PlayTipDTO;

    iget-object v5, v5, Lcom/youku/data/PlayTipDTO;->reminderContent:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v10, Lcom/youku/vo/Initial$AllSwitchs;->sm_statistics_switch:I

    .line 535
    invoke-static {}, Lc8/Efh;->sm_statistics_switch()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 537
    :try_start_2
    sget-object v5, Lc8/VLj;->context:Landroid/content/Context;

    sget-object v10, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    sget-object v11, Lc8/VLj;->User_Agent:Ljava/lang/String;

    invoke-static {v5, v10, v11}, Lc8/iX;->go(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 538
    :catch_1
    move-exception v1

    .line 539
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 540
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 541
    .local v2, "error":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 552
    .end local v2    # "error":Ljava/lang/Error;
    :cond_c
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lc8/klh;

    invoke-direct {v6, v7}, Lc8/klh;-><init>(Z)V

    const-wide/16 v8, 0x4e20

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 554
    sget-object v5, Lc8/VLj;->context:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Lc8/llh;->setStartMinimumConfig(Landroid/content/Context;Lc8/uDh;)V

    .line 557
    invoke-direct {p0}, Lc8/llh;->otherInitOperations()V

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isHotstart = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lc8/uDh;->getIsHotStartEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bgseconds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 559
    invoke-virtual {v0}, Lc8/uDh;->getBackgroundWaitSeconds()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " periods = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 560
    invoke-virtual {v0}, Lc8/uDh;->getPeriodSeconds()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " fetchs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 561
    invoke-virtual {v0}, Lc8/uDh;->getFetchServerConfigPeriodSeconds()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " whitelist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 562
    invoke-virtual {v0}, Lc8/uDh;->getWhiteList()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " blackList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lc8/uDh;->getBlackList()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 382
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f9c8406 -> :sswitch_f
        -0x73b58bc6 -> :sswitch_10
        -0x67585e82 -> :sswitch_2
        -0x62a24b99 -> :sswitch_4
        -0x52fb4547 -> :sswitch_d
        -0x4b917e5b -> :sswitch_e
        -0x3d7762c4 -> :sswitch_1
        -0x383f24d5 -> :sswitch_17
        -0x373a63c0 -> :sswitch_12
        -0x350f16a1 -> :sswitch_14
        -0x206555cb -> :sswitch_8
        -0x20347873 -> :sswitch_7
        -0x13db7a20 -> :sswitch_15
        -0xba24385 -> :sswitch_0
        -0x8111d29 -> :sswitch_c
        -0x5594228 -> :sswitch_b
        -0x2616d43 -> :sswitch_a
        0x11e6707e -> :sswitch_16
        0x288cfb7f -> :sswitch_3
        0x33feff86 -> :sswitch_11
        0x47db3065 -> :sswitch_6
        0x4f659d3d -> :sswitch_5
        0x54495ae2 -> :sswitch_13
        0x78046606 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method private cmsSkinConfig(Ljava/lang/String;)V
    .locals 4
    .param p1, "skin"    # Ljava/lang/String;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 256
    :cond_0
    :try_start_0
    const-class v2, Lcom/youku/phone/skin/data/CMSSkinData;

    invoke-static {p1, v2}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/skin/data/CMSSkinData;

    .line 257
    .local v0, "data":Lcom/youku/phone/skin/data/CMSSkinData;
    invoke-static {}, Lc8/Nzk;->getInstance()Lc8/Nzk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/Nzk;->setData(Lcom/youku/phone/skin/data/CMSSkinData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v0    # "data":Lcom/youku/phone/skin/data/CMSSkinData;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "YoukuInitDataManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cmsUPlusConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "config"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    const-string/jumbo v0, "YoukuInitDataManager"

    const-string/jumbo v1, "UPlus config is null!"

    invoke-static {v0, v1}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    const-string/jumbo v1, "open"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/youku/vo/Initial;->player_qxd:I

    .line 311
    const-string/jumbo v0, "player_qxd"

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v1, v1, Lcom/youku/vo/Initial;->player_qxd:I

    invoke-static {v0, v1}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "player_qxd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v1, v1, Lcom/youku/vo/Initial;->player_qxd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private cmsUpdateInfoConfig(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "config"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    const-string/jumbo v1, "YoukuInitDataManager"

    const-string/jumbo v2, "UpdateInfoConfig is null!"

    invoke-static {v1, v2}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 186
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "GET_UPDATE_INFO_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "update_info"

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getDid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 233
    const-string/jumbo v0, ""

    .line 234
    .local v0, "deviceID":Ljava/lang/String;
    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 235
    sget-object v2, Lc8/KWc;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc8/KWc;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_dna"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 235
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 238
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 239
    const-string/jumbo v2, "device_id"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-object v0
.end method

.method public static final declared-synchronized getInstance()Lc8/llh;
    .locals 2

    .prologue
    .line 82
    const-class v1, Lc8/llh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/llh;->instance:Lc8/llh;

    if-nez v0, :cond_0

    new-instance v0, Lc8/llh;

    invoke-direct {v0}, Lc8/llh;-><init>()V

    sput-object v0, Lc8/llh;->instance:Lc8/llh;

    .line 83
    :cond_0
    sget-object v0, Lc8/llh;->instance:Lc8/llh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private modifyLocalAccount()V
    .locals 2

    .prologue
    .line 686
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v0, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->android_account_modify:I

    packed-switch v0, :pswitch_data_0

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 689
    :pswitch_0
    sget-object v0, Lc8/VLj;->context:Landroid/content/Context;

    invoke-static {v0}, Lc8/sdn;->removeSyncAccount(Landroid/content/Context;)V

    goto :goto_0

    .line 692
    :pswitch_1
    sget-object v0, Lc8/VLj;->context:Landroid/content/Context;

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    sget-object v1, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->android_account_wakeup_interval:I

    invoke-static {v0, v1}, Lc8/sdn;->addSyncAccount(Landroid/content/Context;I)V

    goto :goto_0

    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private otherInitOperations()V
    .locals 4

    .prologue
    .line 639
    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v1, v1, Lcom/youku/vo/Initial;->localpush:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 640
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->setLongTimeBackAlarm(Landroid/content/Context;)V

    .line 645
    :goto_0
    invoke-direct {p0}, Lc8/llh;->modifyLocalAccount()V

    .line 647
    invoke-direct {p0}, Lc8/llh;->wakeUpProcess()V

    .line 648
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.youku.action.GET_INIT_DATA_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 649
    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "cookie":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Youku.getPreference ==> cookie :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/Syo;->wz(Ljava/lang/String;)V

    .line 651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/thn;->isLogin()Z

    move-result v1

    sput-boolean v1, Lc8/VLj;->isLogined:Z

    .line 653
    :cond_0
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/thn;->isLogin()Z

    move-result v1

    invoke-static {v1}, Lc8/VLj;->setLogined(Z)V

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==YoukuInitDataManager==onSuccess==VipPayAPI.isVip()==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 655
    invoke-static {}, Lc8/uAo;->isVip()Z

    move-result v1

    sput-boolean v1, Lc8/Dfh;->isVipUserTemp:Z

    .line 656
    return-void

    .line 642
    .end local v0    # "cookie":Ljava/lang/String;
    :cond_1
    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->cancelAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setStartMinimumConfig(Landroid/content/Context;Lc8/uDh;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configInfo"    # Lc8/uDh;

    .prologue
    .line 608
    const-string/jumbo v2, "MinimumConfigName"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 609
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 610
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "isHotStartEnabled"

    invoke-virtual {p2}, Lc8/uDh;->getIsHotStartEnabled()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 611
    const-string/jumbo v2, "backgroundWaitSeconds"

    invoke-virtual {p2}, Lc8/uDh;->getBackgroundWaitSeconds()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 612
    const-string/jumbo v2, "periodSeconds"

    invoke-virtual {p2}, Lc8/uDh;->getPeriodSeconds()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 613
    const-string/jumbo v2, "whiteList"

    invoke-virtual {p2}, Lc8/uDh;->getWhiteList()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 614
    const-string/jumbo v2, "blackList"

    invoke-virtual {p2}, Lc8/uDh;->getBlackList()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 615
    const-string/jumbo v2, "fetchServerConfigPeriodSeconds"

    invoke-virtual {p2}, Lc8/uDh;->getFetchServerConfigPeriodSeconds()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 616
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 617
    return-void
.end method

.method private translate(Ljava/lang/String;)I
    .locals 6
    .param p1, "urlType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 620
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    move v0, v3

    .line 630
    :goto_1
    :pswitch_0
    return v0

    .line 620
    :sswitch_0
    const-string/jumbo v5, "INNER_WEBVIEW"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "OUTER_WEBVIEW"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "INTERACTIVE_SDK"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v1

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "ALI_SDK"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 624
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 626
    goto :goto_1

    .line 628
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_1

    .line 620
    nop

    :sswitch_data_0
    .sparse-switch
        -0xba98227 -> :sswitch_3
        0xf17a11d -> :sswitch_2
        0xf392ed0 -> :sswitch_0
        0x59830bf5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private wakeUpProcess()V
    .locals 0

    .prologue
    .line 676
    invoke-static {}, Lc8/Ehn;->cmsWakeUpNetwork()V

    .line 677
    return-void
.end method


# virtual methods
.method public doCMSPlayPageSwitch()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 663
    const-string/jumbo v0, "cms_playpage_switch_error"

    invoke-static {v0}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 665
    const-string/jumbo v0, "cms_playpage_switch_new"

    invoke-static {v0, v1}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    .line 666
    const-string/jumbo v0, "cms_playpage_switch_error"

    invoke-static {v0, v1}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    const-string/jumbo v0, "cms_playpage_switch_error"

    invoke-static {v0}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string/jumbo v0, "cms_playpage_switch_error"

    invoke-static {v0}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 668
    const-string/jumbo v0, "cms_playpage_switch_error"

    const-string/jumbo v1, "cms_playpage_switch_error"

    invoke-static {v1}, Lc8/VLj;->getPreferenceInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public doRequestData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 87
    new-instance v0, Lc8/jlh;

    invoke-direct {v0, p0, v4}, Lc8/jlh;-><init>(Lc8/llh;Lc8/ilh;)V

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "push_protect_info"

    aput-object v2, v1, v5

    const/4 v2, 0x1

    const-string/jumbo v3, "installed_app_protocol"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "init_update_info"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "skin"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "player_h265"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "player_hardware_acceleration"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "player_uplus"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "init_other_info"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "init_reminder_info"

    aput-object v3, v1, v2

    invoke-static {v4, v5, v4, v0, v1}, Lc8/gSh;->doMtopYoukuHaibaoAppconfigLoadRequests(Ljava/lang/String;ILjava/lang/String;Lc8/QNp;[Ljava/lang/String;)Lc8/ENp;

    .line 97
    return-void
.end method
