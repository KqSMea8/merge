.class public Lc8/vOp;
.super Ljava/lang/Object;
.source "Mtop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/AOp;->init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/AOp;


# direct methods
.method constructor <init>(Lc8/AOp;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$000(Lc8/AOp;)[B

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 224
    .local v2, "startTime":J
    :try_start_2
    iget-object v1, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$100(Lc8/AOp;)V

    .line 225
    iget-object v1, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$300(Lc8/AOp;)Lc8/pOp;

    move-result-object v1

    iget-object v5, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v5}, Lc8/AOp;->access$200(Lc8/AOp;)Lc8/kOp;

    move-result-object v5

    invoke-interface {v1, v5}, Lc8/pOp;->executeCoreTask(Lc8/kOp;)V

    .line 227
    new-instance v1, Lc8/uOp;

    invoke-direct {v1, p0}, Lc8/uOp;-><init>(Lc8/vOp;)V

    invoke-static {v1}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :try_start_3
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v6}, Lc8/AOp;->access$400(Lc8/AOp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [init]do executeCoreTask cost[ms]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lc8/vOp;->this$0:Lc8/AOp;

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lc8/AOp;->access$502(Lc8/AOp;Z)Z

    .line 241
    iget-object v1, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$000(Lc8/AOp;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 243
    monitor-exit v4

    .line 247
    .end local v2    # "startTime":J
    :goto_0
    return-void

    .line 239
    .restart local v2    # "startTime":J
    :catchall_0
    move-exception v1

    const-string/jumbo v5, "mtopsdk.Mtop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v7}, Lc8/AOp;->access$400(Lc8/AOp;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " [init]do executeCoreTask cost[ms]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lc8/vOp;->this$0:Lc8/AOp;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lc8/AOp;->access$502(Lc8/AOp;Z)Z

    .line 241
    iget-object v5, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v5}, Lc8/AOp;->access$000(Lc8/AOp;)[B

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    throw v1

    .line 243
    .end local v2    # "startTime":J
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lc8/vOp;->this$0:Lc8/AOp;

    invoke-static {v5}, Lc8/AOp;->access$400(Lc8/AOp;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [init] executeCoreTask error."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
