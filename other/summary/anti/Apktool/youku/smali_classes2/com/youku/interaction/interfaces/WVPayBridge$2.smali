.class public Lcom/youku/interaction/interfaces/WVPayBridge$2;
.super Ljava/lang/Object;
.source "WVPayBridge.java"

# interfaces
.implements Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dTh;->newAlibcTradeCallback(Ljava/lang/String;)Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dTh;

.field final synthetic val$methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/dTh;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dTh;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 350
    iput-object p1, p0, Lcom/youku/interaction/interfaces/WVPayBridge$2;->this$0:Lc8/dTh;

    iput-object p2, p0, Lcom/youku/interaction/interfaces/WVPayBridge$2;->val$methodName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/youku/interaction/interfaces/WVPayBridge$2;->this$0:Lc8/dTh;

    iget-object v1, p0, Lcom/youku/interaction/interfaces/WVPayBridge$2;->val$methodName:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p2}, Lc8/dTh;->access$000(Lc8/dTh;Ljava/lang/String;ILjava/lang/String;)V

    .line 359
    return-void
.end method

.method public onTradeSuccess(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V
    .locals 4
    .param p1, "tradeResult"    # Lcom/alibaba/baichuan/android/trade/model/TradeResult;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/youku/interaction/interfaces/WVPayBridge$2;->this$0:Lc8/dTh;

    iget-object v1, p0, Lcom/youku/interaction/interfaces/WVPayBridge$2;->val$methodName:Ljava/lang/String;

    const/4 v2, 0x1

    const-string/jumbo v3, "\u6210\u529f"

    invoke-static {v0, v1, v2, v3}, Lc8/dTh;->access$000(Lc8/dTh;Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    return-void
.end method
