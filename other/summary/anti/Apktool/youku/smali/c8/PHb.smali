.class public Lc8/PHb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/model/TradeResult;

.field final synthetic b:Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    iput-object p1, p0, Lc8/PHb;->b:Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    iput-object p2, p0, Lc8/PHb;->a:Lcom/alibaba/baichuan/android/trade/model/TradeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc8/PHb;->b:Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->b:Lc8/NGb;

    iget-object v0, v0, Lc8/NGb;->c:Lcom/alibaba/baichuan/android/trade/b/a;

    iget-object v0, v0, Lcom/alibaba/baichuan/android/trade/b/a;->e:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;

    iget-object v1, p0, Lc8/PHb;->a:Lcom/alibaba/baichuan/android/trade/model/TradeResult;

    invoke-interface {v0, v1}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;->onTradeSuccess(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V

    iget-object v0, p0, Lc8/PHb;->b:Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/baichuan/android/trade/ui/activity/AlibcWebViewActivity;->finish()V

    return-void
.end method
