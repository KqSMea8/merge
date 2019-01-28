.class public Lc8/RPp;
.super Ljava/lang/Object;
.source "DefaultCallImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/SPp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncCallTask"
.end annotation


# instance fields
.field callback:Lc8/yPp;

.field request:Lc8/FPp;

.field final synthetic this$0:Lc8/SPp;


# direct methods
.method public constructor <init>(Lc8/SPp;Lc8/FPp;Lc8/yPp;)V
    .locals 0
    .param p2, "request"    # Lc8/FPp;
    .param p3, "callback"    # Lc8/yPp;

    .prologue
    .line 279
    iput-object p1, p0, Lc8/RPp;->this$0:Lc8/SPp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lc8/RPp;->request:Lc8/FPp;

    .line 281
    iput-object p3, p0, Lc8/RPp;->callback:Lc8/yPp;

    .line 282
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 288
    :try_start_0
    iget-object v2, p0, Lc8/RPp;->this$0:Lc8/SPp;

    iget-boolean v2, v2, Lc8/SPp;->canceled:Z

    if-eqz v2, :cond_0

    .line 289
    const-string/jumbo v2, "mtopsdk.DefaultCallImpl"

    const-string/jumbo v3, "call task is canceled."

    invoke-static {v2, v3}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lc8/RPp;->callback:Lc8/yPp;

    iget-object v3, p0, Lc8/RPp;->this$0:Lc8/SPp;

    invoke-interface {v2, v3}, Lc8/yPp;->onCancel(Lc8/xPp;)V

    .line 313
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v2, p0, Lc8/RPp;->this$0:Lc8/SPp;

    invoke-virtual {v2}, Lc8/SPp;->execute()Lc8/KPp;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 306
    .local v1, "response":Lc8/KPp;
    if-nez v1, :cond_1

    .line 307
    iget-object v2, p0, Lc8/RPp;->callback:Lc8/yPp;

    iget-object v3, p0, Lc8/RPp;->this$0:Lc8/SPp;

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lc8/yPp;->onFailure(Lc8/xPp;Ljava/lang/Exception;)V

    goto :goto_0

    .line 295
    .end local v1    # "response":Lc8/KPp;
    :catch_0
    move-exception v2

    iget-object v2, p0, Lc8/RPp;->callback:Lc8/yPp;

    iget-object v3, p0, Lc8/RPp;->this$0:Lc8/SPp;

    invoke-interface {v2, v3}, Lc8/yPp;->onCancel(Lc8/xPp;)V

    goto :goto_0

    .line 298
    :catch_1
    move-exception v2

    iget-object v2, p0, Lc8/RPp;->callback:Lc8/yPp;

    iget-object v3, p0, Lc8/RPp;->this$0:Lc8/SPp;

    invoke-interface {v2, v3}, Lc8/yPp;->onCancel(Lc8/xPp;)V

    goto :goto_0

    .line 300
    :catch_2
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lc8/RPp;->callback:Lc8/yPp;

    iget-object v3, p0, Lc8/RPp;->this$0:Lc8/SPp;

    invoke-interface {v2, v3, v0}, Lc8/yPp;->onFailure(Lc8/xPp;Ljava/lang/Exception;)V

    .line 302
    const-string/jumbo v2, "mtopsdk.DefaultCallImpl"

    const-string/jumbo v3, "do call.execute failed."

    invoke-static {v2, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "response":Lc8/KPp;
    :cond_1
    iget-object v2, p0, Lc8/RPp;->callback:Lc8/yPp;

    iget-object v3, p0, Lc8/RPp;->this$0:Lc8/SPp;

    invoke-interface {v2, v3, v1}, Lc8/yPp;->onResponse(Lc8/xPp;Lc8/KPp;)V

    goto :goto_0
.end method
