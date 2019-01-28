.class public Lc8/PGb;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Lc8/iGb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc8/PGb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/PGb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc8/NGb;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/PGb;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/PGb;->c:Z

    new-instance v0, Lc8/iGb;

    invoke-direct {v0}, Lc8/iGb;-><init>()V

    iput-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iput-object p1, v0, Lc8/iGb;->b:Lc8/NGb;

    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p2}, Lc8/mIb;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/vFb;->context:Landroid/content/Context;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "com_taobao_nb_sdk_webview_click"

    invoke-static {v0, v1, v2}, Lc8/iIb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lc8/PGb;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->b:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "u_label"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lc8/hGb;->sendUseabilitySuccess(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->b:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->c:Lcom/alibaba/baichuan/android/trade/b/a;

    const-string/jumbo v1, "urlLoadTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->b:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->c:Lcom/alibaba/baichuan/android/trade/b/a;

    const-string/jumbo v1, "allTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/b/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->b:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->c:Lcom/alibaba/baichuan/android/trade/b/a;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/b/a;->b:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PagePerformancePoint;

    invoke-static {v0}, Lc8/hGb;->sendPerfomancePoint(Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;)V

    iput-boolean v2, p0, Lc8/PGb;->b:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lc8/PGb;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    const-string/jumbo v1, "urlLoadTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;->timeEnd(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    const-string/jumbo v1, "allTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;->timeEnd(Ljava/lang/String;)V

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    invoke-static {v0}, Lc8/hGb;->sendPerfomancePoint(Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/PerformancePoint;)V

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    const/4 v1, 0x0

    iput-object v1, v0, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lc8/PGb;->c:Z

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lc8/PGb;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->b:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "u_label"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/hGb;->sendUseabilityFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lc8/PGb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedError: failurl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/PGb;->b:Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/PGb;->c:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-boolean v0, p0, Lc8/PGb;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    new-instance v1, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    invoke-direct {v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;-><init>()V

    iput-object v1, v0, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->a:Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;

    const-string/jumbo v1, "allTime"

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/adapter/ut/performance/Point4UrlLoad;->timeBegin(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lc8/PGb;->d:Lc8/iGb;

    iget-object v0, v0, Lc8/iGb;->b:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->a:Landroid/webkit/WebView;

    invoke-direct {p0, v0, p2}, Lc8/PGb;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Lc8/JHb;->a()Lc8/JHb;

    move-result-object v0

    iget-object v1, p0, Lc8/PGb;->d:Lc8/iGb;

    invoke-virtual {v0, v1, p1, p2}, Lc8/JHb;->a(Lc8/iGb;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
