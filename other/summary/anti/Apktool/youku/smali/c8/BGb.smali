.class public Lc8/BGb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/sGb;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Lc8/AGb;


# direct methods
.method constructor <init>(Lc8/AGb;Lc8/sGb;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lc8/BGb;->c:Lc8/AGb;

    iput-object p2, p0, Lc8/BGb;->a:Lc8/sGb;

    iput-object p3, p0, Lc8/BGb;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/alibaba/baichuan/android/trade/model/TradeResult;

    invoke-direct {v0}, Lcom/alibaba/baichuan/android/trade/model/TradeResult;-><init>()V

    sget-object v1, Lcom/alibaba/baichuan/android/trade/model/ResultType;->TYPECART:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    iput-object v1, v0, Lcom/alibaba/baichuan/android/trade/model/TradeResult;->resultType:Lcom/alibaba/baichuan/android/trade/model/ResultType;

    iget-object v1, p0, Lc8/BGb;->a:Lc8/sGb;

    iget-object v1, v1, Lc8/sGb;->e:Lc8/NGb;

    iget-object v1, v1, Lc8/NGb;->c:Lcom/alibaba/baichuan/android/trade/b/a;

    iget-object v1, v1, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    invoke-interface {v1, v0}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onTradeSuccess(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V

    iget-object v0, p0, Lc8/BGb;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/BGb;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/BGb;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
