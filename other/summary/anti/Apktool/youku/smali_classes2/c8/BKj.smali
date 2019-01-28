.class public Lc8/BKj;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/DKj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/DKj;

.field final synthetic val$callback:Landroid/os/Handler;

.field final synthetic val$myWhat:I

.field final synthetic val$strOrderInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/DKj;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lc8/DKj;

    .prologue
    .line 105
    iput-object p1, p0, Lc8/BKj;->this$0:Lc8/DKj;

    iput-object p2, p0, Lc8/BKj;->val$strOrderInfo:Ljava/lang/String;

    iput p3, p0, Lc8/BKj;->val$myWhat:I

    iput-object p4, p0, Lc8/BKj;->val$callback:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 109
    .local v2, "strRet":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.run.start:mAlixPay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/BKj;->this$0:Lc8/DKj;

    iget-object v5, v5, Lc8/DKj;->mAlixPay:Lc8/KKc;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$000(Lc8/DKj;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    const-string/jumbo v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.finally:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v5}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$200(Lc8/DKj;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .local v1, "msg":Landroid/os/Message;
    iget v3, p0, Lc8/BKj;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lc8/BKj;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    :try_start_1
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    iget-object v4, v3, Lc8/DKj;->lock:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :try_start_2
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    iget-object v3, v3, Lc8/DKj;->mAlixPay:Lc8/KKc;

    if-nez v3, :cond_2

    .line 121
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    iget-object v3, v3, Lc8/DKj;->lock:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 122
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    const-string/jumbo v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.run.after_wait():mAlixPay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/BKj;->this$0:Lc8/DKj;

    iget-object v5, v5, Lc8/DKj;->mAlixPay:Lc8/KKc;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$000(Lc8/DKj;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const-string/jumbo v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.finally:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v5}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$200(Lc8/DKj;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v1    # "msg":Landroid/os/Message;
    iget v3, p0, Lc8/BKj;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lc8/BKj;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 122
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const-string/jumbo v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 141
    const-string/jumbo v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.finally:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v5}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$200(Lc8/DKj;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v1    # "msg":Landroid/os/Message;
    iget v3, p0, Lc8/BKj;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lc8/BKj;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    :try_start_7
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    iget-object v3, v3, Lc8/DKj;->mAlixPay:Lc8/KKc;

    iget-object v4, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v4}, Lc8/DKj;->access$100(Lc8/DKj;)Lc8/NKc;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/KKc;->registerCallback(Lc8/NKc;)V

    .line 133
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    iget-object v3, v3, Lc8/DKj;->mAlixPay:Lc8/KKc;

    iget-object v4, p0, Lc8/BKj;->val$strOrderInfo:Ljava/lang/String;

    invoke-interface {v3, v4}, Lc8/KKc;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string/jumbo v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.run.end:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v5}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",strRet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 141
    const-string/jumbo v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread.finally:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v5}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v3}, Lc8/DKj;->access$200(Lc8/DKj;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v1    # "msg":Landroid/os/Message;
    iget v3, p0, Lc8/BKj;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lc8/BKj;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 141
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v3

    const-string/jumbo v4, "MobileSecurePayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Thread.finally:isCancel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v6}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v4, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v4}, Lc8/DKj;->access$000(Lc8/DKj;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 145
    iget-object v4, p0, Lc8/BKj;->this$0:Lc8/DKj;

    invoke-static {v4}, Lc8/DKj;->access$200(Lc8/DKj;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v1    # "msg":Landroid/os/Message;
    iget v4, p0, Lc8/BKj;->val$myWhat:I

    iput v4, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v4, p0, Lc8/BKj;->val$callback:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    throw v3
.end method
