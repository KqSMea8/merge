.class public Lc8/xff;
.super Lc8/yff;


# static fields
.field public static final ACTION_NAME:Ljava/lang/String; = "ali.open.auth"

.field private static final MODEL_NAME:Ljava/lang/String; = "auth"


# instance fields
.field private mRedirectUri:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    sget-object v0, Lcom/taobao/applink/a/a;->a:Lcom/taobao/applink/a/a;

    invoke-direct {p0, v0}, Lc8/yff;-><init>(Lcom/taobao/applink/a/a;)V

    return-void
.end method

.method public constructor <init>(Lc8/Tef;)V
    .locals 3

    sget-object v0, Lcom/taobao/applink/a/a;->a:Lcom/taobao/applink/a/a;

    invoke-direct {p0, v0}, Lc8/yff;-><init>(Lcom/taobao/applink/a/a;)V

    iput-object p1, p0, Lc8/xff;->mListener:Lc8/Tef;

    iget-object v0, p0, Lc8/xff;->mParams:Ljava/util/HashMap;

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "ali.open.auth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc8/xff;->mParams:Ljava/util/HashMap;

    const-string/jumbo v1, "module"

    const-string/jumbo v2, "auth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public checkParams(Lorg/json/JSONObject;)Z
    .locals 3

    iget-object v0, p0, Lc8/xff;->mParams:Ljava/util/HashMap;

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "ali.open.auth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc8/xff;->mParams:Ljava/util/HashMap;

    const-string/jumbo v1, "module"

    const-string/jumbo v2, "auth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public getH5URL()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    invoke-static {}, Lc8/Oef;->getInstance()Lc8/Oef;

    move-result-object v0

    iget-object v0, v0, Lc8/Oef;->sOpenParam:Lc8/Nef;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "http://oauth.m.taobao.com/authorize?response_type=code&client_id=%s&redirect_uri=%s&view=wap"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lc8/Oef;->getInstance()Lc8/Oef;

    move-result-object v0

    iget-object v0, v0, Lc8/Oef;->sOpenParam:Lc8/Nef;

    iget-object v0, v0, Lc8/Nef;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget-object v0, p0, Lc8/xff;->mRedirectUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lc8/Oef;->getInstance()Lc8/Oef;

    move-result-object v0

    iget-object v0, v0, Lc8/Oef;->sOpenParam:Lc8/Nef;

    iget-object v0, v0, Lc8/Nef;->mAppkey:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc8/xff;->mRedirectUri:Ljava/lang/String;

    goto :goto_2
.end method

.method public getJumpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    invoke-super {p0, p1}, Lc8/yff;->getJumpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setParams(Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "redirect_uri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/xff;->mRedirectUri:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRedirectUri(Ljava/lang/String;)Lc8/yff;
    .locals 0

    iput-object p1, p0, Lc8/xff;->mRedirectUri:Ljava/lang/String;

    return-object p0
.end method
