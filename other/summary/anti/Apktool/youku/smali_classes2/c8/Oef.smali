.class public Lc8/Oef;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TBAppLinkSDK"

.field private static volatile mTBAppLinkSDKInstances:Lc8/Oef;


# instance fields
.field public mJumpFailedMode:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

.field public mTBAppLinkSecret:Lc8/Dff;

.field public sOpenParam:Lc8/Nef;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;->DOWNLOAD_TAOBAO:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    iput-object v0, p0, Lc8/Oef;->mJumpFailedMode:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    return-void
.end method

.method public static getInstance()Lc8/Oef;
    .locals 2

    sget-object v0, Lc8/Oef;->mTBAppLinkSDKInstances:Lc8/Oef;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Oef;->mTBAppLinkSDKInstances:Lc8/Oef;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lc8/Oef;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Oef;->mTBAppLinkSDKInstances:Lc8/Oef;

    if-nez v0, :cond_1

    new-instance v0, Lc8/Oef;

    invoke-direct {v0}, Lc8/Oef;-><init>()V

    sput-object v0, Lc8/Oef;->mTBAppLinkSDKInstances:Lc8/Oef;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lc8/Oef;->mTBAppLinkSDKInstances:Lc8/Oef;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initUserTrack()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lc8/Oef;->sOpenParam:Lc8/Nef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Oef;->sOpenParam:Lc8/Nef;

    iget-object v0, v0, Lc8/Nef;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Lc8/Jff;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lc8/uff;

    invoke-static {}, Lc8/Eff;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lc8/uff;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lc8/qff;->a(Lc8/uff;)V

    invoke-static {}, Lc8/bff;->a()Lc8/bff;

    move-result-object v0

    invoke-virtual {v0, v3}, Lc8/bff;->a(Lc8/aff;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lc8/uff;

    invoke-static {}, Lc8/Eff;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/Oef;->sOpenParam:Lc8/Nef;

    iget-object v2, v2, Lc8/Nef;->mAppkey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lc8/uff;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lc8/qff;->a(Lc8/uff;)V

    invoke-static {}, Lc8/bff;->a()Lc8/bff;

    move-result-object v0

    invoke-virtual {v0, v3}, Lc8/bff;->a(Lc8/aff;)V

    goto :goto_0
.end method


# virtual methods
.method public doAuth(Landroid/content/Context;Lc8/xff;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lc8/xff;->mListener:Lc8/Tef;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lc8/fff;->a(Landroid/content/Context;Lc8/yff;Lc8/iff;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lc8/Nef;)Lc8/Oef;
    .locals 1

    iput-object p2, p0, Lc8/Oef;->sOpenParam:Lc8/Nef;

    invoke-static {}, Lc8/Eff;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lc8/Eff;->setApplication(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lc8/Oef;->initUserTrack()V

    sget-object v0, Lc8/Oef;->mTBAppLinkSDKInstances:Lc8/Oef;

    return-object v0
.end method

.method public jumpDetail(Landroid/content/Context;Lc8/zff;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lc8/fff;->a(Landroid/content/Context;Lc8/yff;Lc8/iff;)Z

    move-result v0

    return v0
.end method

.method public jumpShop(Landroid/content/Context;Lc8/Bff;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lc8/fff;->a(Landroid/content/Context;Lc8/yff;Lc8/iff;)Z

    move-result v0

    return v0
.end method

.method public jumpTBURI(Landroid/content/Context;Lc8/Cff;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lc8/fff;->a(Landroid/content/Context;Lc8/yff;Lc8/iff;)Z

    move-result v0

    return v0
.end method

.method public setJumpFailedMode(Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;)Lc8/Oef;
    .locals 1

    iput-object p1, p0, Lc8/Oef;->mJumpFailedMode:Lcom/taobao/applink/TBAppLinkSDK$JumpFailedMode;

    sget-object v0, Lc8/Oef;->mTBAppLinkSDKInstances:Lc8/Oef;

    return-object v0
.end method

.method public setTaoAppLinkSecret(Lc8/Dff;)Lc8/Oef;
    .locals 1

    iput-object p1, p0, Lc8/Oef;->mTBAppLinkSecret:Lc8/Dff;

    sget-object v0, Lc8/Oef;->mTBAppLinkSDKInstances:Lc8/Oef;

    return-object v0
.end method

.method public setupJsBridge(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)Lc8/Oef;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/applink/exception/TBAppLinkException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/taobao/applink/exception/TBAppLinkException;

    sget-object v1, Lcom/taobao/applink/exception/a;->a:Lcom/taobao/applink/exception/a;

    invoke-direct {v0, v1}, Lcom/taobao/applink/exception/TBAppLinkException;-><init>(Lcom/taobao/applink/exception/a;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Landroid/webkit/WebViewClient;

    invoke-direct {p2}, Landroid/webkit/WebViewClient;-><init>()V

    :cond_1
    new-instance v0, Lc8/wff;

    invoke-direct {v0, p2}, Lc8/wff;-><init>(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lc8/lff;

    invoke-direct {v1}, Lc8/lff;-><init>()V

    invoke-virtual {v0, v1}, Lc8/wff;->a(Lc8/hff;)V

    invoke-static {p1, v0}, Lc8/Fff;->a(Landroid/webkit/WebView;Lc8/wff;)V

    sget-object v0, Lc8/Oef;->mTBAppLinkSDKInstances:Lc8/Oef;

    return-object v0
.end method
