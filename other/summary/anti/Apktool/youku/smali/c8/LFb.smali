.class public Lc8/LFb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/model/AliPayResult;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

.field final synthetic c:Landroid/webkit/WebView;

.field final synthetic d:Lc8/HFb;


# direct methods
.method constructor <init>(Lc8/HFb;Lcom/alibaba/baichuan/android/trade/model/AliPayResult;Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lc8/LFb;->d:Lc8/HFb;

    iput-object p2, p0, Lc8/LFb;->a:Lcom/alibaba/baichuan/android/trade/model/AliPayResult;

    iput-object p3, p0, Lc8/LFb;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    iput-object p4, p0, Lc8/LFb;->c:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/TradeResult;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/model/TradeResult;-><init>()V

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPEPAY:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/model/TradeResult;->resultType:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    iget-object v1, p0, Lc8/LFb;->a:Lcom/alibaba/baichuan/android/trade/model/AliPayResult;

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/model/TradeResult;->payResult:Lcom/alibaba/baichuan/android/trade/model/AliPayResult;

    iget-object v1, p0, Lc8/LFb;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/LFb;->b:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    invoke-interface {v1, v0}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onTradeSuccess(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V

    :cond_0
    iget-object v0, p0, Lc8/LFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/LFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lc8/LFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/LFb;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
