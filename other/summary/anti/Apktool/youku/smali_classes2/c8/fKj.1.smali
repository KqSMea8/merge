.class public Lc8/fKj;
.super Ljava/lang/Object;
.source "PayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jKj;->performAlipay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jKj;


# direct methods
.method constructor <init>(Lc8/jKj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jKj;

    .prologue
    .line 316
    iput-object p1, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 318
    const/4 v2, 0x0

    .line 320
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.run.start:isAliPaying:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v5}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v3}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    new-instance v3, Lc8/hOc;

    iget-object v4, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v4}, Lc8/jKj;->access$000(Lc8/jKj;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lc8/hOc;-><init>(Landroid/app/Activity;)V

    iget-object v4, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v4}, Lc8/jKj;->access$500(Lc8/jKj;)Lc8/HKj;

    move-result-object v4

    invoke-virtual {v4}, Lc8/HKj;->getChannel_params()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lc8/hOc;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 324
    :cond_0
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.run.end:isAliPaying:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v5}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.finally:isAliPaying:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v5}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v3, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v3}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 332
    .local v1, "msg":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 333
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iget-object v3, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v3}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v3, v8}, Lc8/jKj;->access$402(Lc8/jKj;Z)Z

    .line 337
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.isAliPaying:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v5}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    const-string/jumbo v3, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.finally:isAliPaying:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v5}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v3, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v3}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 331
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 332
    .restart local v1    # "msg":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 333
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iget-object v3, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v3}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v3, v8}, Lc8/jKj;->access$402(Lc8/jKj;Z)Z

    goto :goto_0

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    const-string/jumbo v4, "PayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Thread.finally:isAliPaying:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v6}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v4, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v4}, Lc8/jKj;->access$400(Lc8/jKj;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 331
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 332
    .restart local v1    # "msg":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 333
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iget-object v4, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v4}, Lc8/jKj;->access$600(Lc8/jKj;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lc8/fKj;->this$0:Lc8/jKj;

    invoke-static {v4, v8}, Lc8/jKj;->access$402(Lc8/jKj;Z)Z

    throw v3
.end method
