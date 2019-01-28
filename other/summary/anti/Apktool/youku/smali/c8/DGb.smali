.class public Lc8/DGb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/rGb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "appkey"

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "userId"

    sget-object v2, Lc8/PFb;->INSTANCE:Lc8/PFb;

    invoke-virtual {v2}, Lc8/PFb;->getSession()Lc8/ahb;

    move-result-object v2

    iget-object v2, v2, Lc8/ahb;->openId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "utdid"

    invoke-static {}, Lc8/vFb;->getUtdid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ttid"

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cHb;->getWebTTID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ybhpss"

    const-string/jumbo v0, "trade"

    const-string/jumbo v3, "ybhpss"

    invoke-static {v0, v3}, Lc8/bIb;->getGroupProperity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    sget-object v2, Lc8/sHb;->E_SHOWLOGIN:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lc8/cGb;->sendCustomHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lc8/DGb;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    invoke-direct {p0}, Lc8/DGb;->a()V

    return-void
.end method


# virtual methods
.method public a(Lc8/sGb;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/cHb;->getLoginDegarade(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lc8/PFb;->INSTANCE:Lc8/PFb;

    iget-object v0, p1, Lc8/sGb;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/alibaba/baichuan/android/trade/c/a/b/e;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/baichuan/android/trade/c/a/b/e;-><init>(Lc8/DGb;Lc8/sGb;)V

    invoke-virtual {v1, v0, v2}, Lc8/PFb;->showLogin(Landroid/app/Activity;Lcom/alibaba/baichuan/android/trade/callback/AlibcLoginCallback;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
