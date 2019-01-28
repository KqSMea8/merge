.class public Lc8/nFb;
.super Lc8/rFb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/rFb;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lc8/eFb;)V
    .locals 1

    invoke-virtual {p2}, Lc8/eFb;->getWebview()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {p1, v0}, Lc8/aHf;->h5UT(Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {p2}, Lc8/eFb;->success()V

    return-void
.end method

.method public final b(Ljava/lang/String;Lc8/eFb;)V
    .locals 5

    invoke-direct {p0, p1}, Lc8/nFb;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lc8/fFb;

    invoke-direct {v0}, Lc8/fFb;-><init>()V

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    :cond_0
    :goto_1
    invoke-virtual {p2}, Lc8/eFb;->success()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ut/mini/internal/UTTeamWork;->turnOnRealTimeDebug(Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;Lc8/eFb;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTTeamWork;->turnOffRealTimeDebug()V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p2}, Lc8/eFb;->success()V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lc8/fFb;

    invoke-direct {v0}, Lc8/fFb;-><init>()V

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;Lc8/eFb;)V
    .locals 5

    invoke-direct {p0, p1}, Lc8/nFb;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lc8/fFb;

    invoke-direct {v0}, Lc8/fFb;-><init>()V

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    :cond_0
    :goto_1
    invoke-virtual {p2}, Lc8/eFb;->success()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ut/mini/internal/UTTeamWork;->turnOnRealTimeDebug(Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final e(Ljava/lang/String;Lc8/eFb;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTTeamWork;->turnOffRealTimeDebug()V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p2}, Lc8/eFb;->success()V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lc8/fFb;

    invoke-direct {v0}, Lc8/fFb;-><init>()V

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lc8/eFb;->error(Lc8/fFb;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Lc8/eFb;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cGb;->isThirdVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lc8/fFb;

    invoke-direct {v1}, Lc8/fFb;-><init>()V

    const-string/jumbo v2, "6"

    invoke-virtual {v1, v2}, Lc8/fFb;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lc8/eFb;->error(Lc8/fFb;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "toUT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2, p3}, Lc8/nFb;->a(Ljava/lang/String;Lc8/eFb;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "turnOnUTRealtimeDebug"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p2, p3}, Lc8/nFb;->b(Ljava/lang/String;Lc8/eFb;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "turnOffUTRealtimeDebug"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2, p3}, Lc8/nFb;->c(Ljava/lang/String;Lc8/eFb;)V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "turnOnRealtimeDebug"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p2, p3}, Lc8/nFb;->d(Ljava/lang/String;Lc8/eFb;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "turnOffRealtimeDebug"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2, p3}, Lc8/nFb;->e(Ljava/lang/String;Lc8/eFb;)V

    move v0, v1

    goto :goto_0
.end method
