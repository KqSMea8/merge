.class public final Lc8/uHb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

.field final synthetic b:Lc8/wHb;


# direct methods
.method constructor <init>(Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;Lc8/wHb;)V
    .locals 0

    iput-object p1, p0, Lc8/uHb;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    iput-object p2, p0, Lc8/uHb;->b:Lc8/wHb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc8/uHb;->a:Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    iget-object v1, p0, Lc8/uHb;->b:Lc8/wHb;

    iget v1, v1, Lc8/wHb;->errorCode:I

    iget-object v2, p0, Lc8/uHb;->b:Lc8/wHb;

    iget-object v2, v2, Lc8/wHb;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;->onFailure(ILjava/lang/String;)V

    sget-object v0, Lc8/RGb;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;

    iget-object v2, p0, Lc8/uHb;->b:Lc8/wHb;

    iget v2, v2, Lc8/wHb;->errorCode:I

    iget-object v3, p0, Lc8/uHb;->b:Lc8/wHb;

    iget-object v3, v3, Lc8/wHb;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/baichuan/android/trade/callback/AlibcTradeInitCallback;->onFailure(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lc8/RGb;->pendingInitCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
