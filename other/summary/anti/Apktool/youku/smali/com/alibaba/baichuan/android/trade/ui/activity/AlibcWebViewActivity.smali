.class public Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;
.super Lc8/LHb;


# static fields
.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc8/LHb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->b:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->c:Lcom/alibaba/baichuan/android/trade/b/a;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v1, Lc8/PHb;

    invoke-direct {v1, p0, p1}, Lc8/PHb;-><init>(Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V

    invoke-virtual {v0, v1}, Lc8/gIb;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lc8/LHb;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lc8/LHb;->onDestroy()V

    invoke-static {}, Lc8/vFb;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->f:Ljava/lang/String;

    const-string/jumbo v1, "remove cookies"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lc8/LHb;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "caller"

    invoke-virtual {p0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "caller"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
