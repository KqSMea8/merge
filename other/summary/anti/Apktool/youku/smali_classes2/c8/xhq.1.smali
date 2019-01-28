.class public Lc8/xhq;
.super Ljava/lang/Object;
.source "RxSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zhq;->getRunnable(Lc8/Omq;Lc8/yhq;Lc8/ihq;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zhq;

.field final synthetic val$interceptorTape:Lc8/ihq;

.field final synthetic val$invoker:Lc8/yhq;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/zhq;Lc8/Omq;Lc8/yhq;Lc8/ihq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zhq;

    .prologue
    .line 49
    iput-object p1, p0, Lc8/xhq;->this$0:Lc8/zhq;

    iput-object p2, p0, Lc8/xhq;->val$subscriber:Lc8/Omq;

    iput-object p3, p0, Lc8/xhq;->val$invoker:Lc8/yhq;

    iput-object p4, p0, Lc8/xhq;->val$interceptorTape:Lc8/ihq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    iget-object v2, p0, Lc8/xhq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v2, p0, Lc8/xhq;->val$invoker:Lc8/yhq;

    iget-object v3, p0, Lc8/xhq;->val$interceptorTape:Lc8/ihq;

    invoke-interface {v2, v3}, Lc8/yhq;->invoke(Lc8/fhq;)Lc8/khq;

    move-result-object v1

    .line 56
    .local v1, "wrapper":Lc8/khq;
    iget-object v2, p0, Lc8/xhq;->val$subscriber:Lc8/Omq;

    iget-object v3, v1, Lc8/khq;->responseBody:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lc8/xhq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->onCompleted()V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v1    # "wrapper":Lc8/khq;
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lretrofit/RetrofitError;
    iget-object v2, p0, Lc8/xhq;->val$subscriber:Lc8/Omq;

    iget-object v3, p0, Lc8/xhq;->this$0:Lc8/zhq;

    invoke-static {v3}, Lc8/zhq;->access$300(Lc8/zhq;)Lc8/Hgq;

    move-result-object v3

    invoke-interface {v3, v0}, Lc8/Hgq;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
