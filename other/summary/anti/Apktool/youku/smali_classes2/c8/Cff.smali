.class public Lc8/Cff;
.super Lc8/Aff;


# static fields
.field private static final MODEL_NAME:Ljava/lang/String; = "h5"


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/Aff;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lc8/Aff;-><init>()V

    iget-object v0, p0, Lc8/Cff;->mParams:Ljava/util/HashMap;

    const-string/jumbo v1, "module"

    const-string/jumbo v2, "h5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc8/Cff;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkParams(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "h5Url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-static {v1}, Lc8/Jff;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc8/Cff;->mParams:Ljava/util/HashMap;

    const-string/jumbo v2, "module"

    const-string/jumbo v3, "h5"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lc8/Cff;->mUrl:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getH5URL()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    iget-object v0, p0, Lc8/Cff;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lc8/Jff;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->d:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc8/Cff;->mUrl:Ljava/lang/String;

    invoke-super {p0, v0}, Lc8/Aff;->getH5URL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJumpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    iget-object v0, p0, Lc8/Cff;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lc8/Jff;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->d:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc8/Cff;->mParams:Ljava/util/HashMap;

    const-string/jumbo v1, "h5Url"

    iget-object v2, p0, Lc8/Cff;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lc8/Aff;->getJumpUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
