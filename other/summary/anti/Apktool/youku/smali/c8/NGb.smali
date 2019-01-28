.class public Lc8/NGb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/hFb;


# static fields
.field private static final e:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Ljava/util/HashMap;

.field public c:Lcom/alibaba/baichuan/android/trade/b/a;

.field public d:Lc8/sFb;

.field private f:Landroid/webkit/WebViewClient;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Landroid/webkit/WebChromeClient;

.field private m:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lc8/NGb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NGb;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " AliApp(BC/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/vFb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NGb;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " tae_sdk_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/vFb;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NGb;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/b/a;Landroid/webkit/WebView;Ljava/util/Map;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/NGb;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/NGb;->d:Lc8/sFb;

    iput-object p3, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    iput-object p5, p0, Lc8/NGb;->f:Landroid/webkit/WebViewClient;

    iput-object p6, p0, Lc8/NGb;->l:Landroid/webkit/WebChromeClient;

    check-cast p4, Ljava/util/HashMap;

    iput-object p4, p0, Lc8/NGb;->b:Ljava/util/HashMap;

    iput-object p2, p0, Lc8/NGb;->c:Lcom/alibaba/baichuan/android/trade/b/a;

    iput-object p1, p0, Lc8/NGb;->m:Landroid/content/Context;

    iput-boolean p7, p0, Lc8/NGb;->k:Z

    invoke-direct {p0}, Lc8/NGb;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/b/a;Landroid/webkit/WebView;Ljava/util/Map;Z)V
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lc8/NGb;-><init>(Landroid/content/Context;Lcom/alibaba/baichuan/android/trade/b/a;Landroid/webkit/WebView;Ljava/util/Map;Landroid/webkit/WebViewClient;Landroid/webkit/WebChromeClient;Z)V

    return-void
.end method

.method private a(Landroid/webkit/WebView;Z)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "cache"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/NGb;->j:Ljava/lang/String;

    iget-object v1, p0, Lc8/NGb;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/YHb;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    :goto_2
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    if-eqz p2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/NGb;->i:Ljava/lang/String;

    iget-object v2, p0, Lc8/NGb;->i:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/NGb;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v2

    invoke-virtual {v2, v6}, Lc8/cHb;->getLoginDegarade(Z)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lc8/NGb;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    sget-object v2, Lc8/NGb;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " AliBaichuan(%s/%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/cHb;->getWebTTID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {}, Lc8/cHb;->getInstance()Lc8/cHb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/cHb;->getIsvVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc8/NGb;->a(Landroid/webkit/WebView;Z)V

    iget-object v0, p0, Lc8/NGb;->f:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    new-instance v1, Lc8/PGb;

    invoke-direct {v1, p0}, Lc8/PGb;-><init>(Lc8/NGb;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_0
    iget-object v0, p0, Lc8/NGb;->l:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    new-instance v1, Lc8/MGb;

    iget-boolean v2, p0, Lc8/NGb;->k:Z

    invoke-direct {v1, p0, v2}, Lc8/MGb;-><init>(Lc8/hFb;Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :goto_1
    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    sget-object v1, Lc8/vFb;->context:Landroid/content/Context;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "com_taobao_nb_sdk_webview_click"

    invoke-static {v1, v2, v3}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    new-instance v1, Lc8/OGb;

    invoke-direct {v1, p0}, Lc8/OGb;-><init>(Lc8/NGb;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lc8/aFb;->getInstance()Lc8/aFb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/aFb;->init()V

    invoke-static {}, Lc8/kFb;->a()V

    new-instance v0, Lc8/sFb;

    iget-object v1, p0, Lc8/NGb;->m:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lc8/sFb;-><init>(Landroid/content/Context;Lc8/NGb;)V

    iput-object v0, p0, Lc8/NGb;->d:Lc8/sFb;

    return-void

    :cond_0
    new-instance v0, Lc8/LGb;

    iget-object v1, p0, Lc8/NGb;->f:Landroid/webkit/WebViewClient;

    invoke-direct {v0, v1, p0}, Lc8/LGb;-><init>(Landroid/webkit/WebViewClient;Lc8/NGb;)V

    iget-object v1, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lc8/KGb;

    iget-object v1, p0, Lc8/NGb;->l:Landroid/webkit/WebChromeClient;

    invoke-direct {v0, v1, p0}, Lc8/KGb;-><init>(Landroid/webkit/WebChromeClient;Lc8/NGb;)V

    iget-object v1, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lc8/NGb;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "ui_contextParams"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public c()Z
    .locals 3

    const-string/jumbo v0, "true"

    iget-object v1, p0, Lc8/NGb;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "show_by_h5"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lc8/NGb;->d:Lc8/sFb;

    invoke-virtual {v0}, Lc8/sFb;->onDestroy()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lc8/NGb;->m:Landroid/content/Context;

    return-object v0
.end method

.method public getJsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc8/NGb;->d:Lc8/sFb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/NGb;->d:Lc8/sFb;

    invoke-virtual {v0, p1}, Lc8/sFb;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/NGb;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
