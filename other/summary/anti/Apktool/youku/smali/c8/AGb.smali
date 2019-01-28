.class public Lc8/AGb;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/rGb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc8/sGb;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lc8/sGb;->b()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lc8/sGb;->d:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lc8/sGb;->e:Lc8/NGb;

    invoke-virtual {v0}, Lc8/NGb;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    new-instance v1, Lcom/alibaba/baichuan/android/trade/model/TradeResult;

    invoke-direct {v1}, Lcom/alibaba/baichuan/android/trade/model/TradeResult;-><init>()V

    sget-object v2, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPECART:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    iput-object v2, v1, Lcom/alibaba/baichuan/android/trade/model/TradeResult;->resultType:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    invoke-virtual {v0, v1}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->a(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lc8/sGb;->e:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->c:Lcom/alibaba/baichuan/android/trade/b/a;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    if-eqz v0, :cond_2

    sget-object v0, Lc8/vFb;->executorService:Lc8/gIb;

    new-instance v2, Lc8/BGb;

    invoke-direct {v2, p0, p1, v1}, Lc8/BGb;-><init>(Lc8/AGb;Lc8/sGb;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2}, Lc8/gIb;->b(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
