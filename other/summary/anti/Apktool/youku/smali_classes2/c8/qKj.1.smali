.class public Lc8/qKj;
.super Ljava/lang/Object;
.source "FileDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tKj;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tKj;

.field final synthetic val$output:Lc8/sKj;


# direct methods
.method constructor <init>(Lc8/tKj;Lc8/sKj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tKj;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    iput-object p2, p0, Lc8/qKj;->val$output:Lc8/sKj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 99
    const-string/jumbo v1, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FileDownloader...start:showProgress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v5}, Lc8/tKj;->access$000(Lc8/tKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    new-instance v4, Lc8/vKj;

    iget-object v5, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v5}, Lc8/tKj;->access$200(Lc8/tKj;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v6}, Lc8/tKj;->access$300(Lc8/tKj;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-direct {v4, v5, v6, v7}, Lc8/vKj;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/tKj;)V

    invoke-static {v1, v4}, Lc8/tKj;->access$102(Lc8/tKj;Lc8/vKj;)Lc8/vKj;

    .line 102
    const-wide/16 v2, -0x1

    .line 103
    .local v2, "fileLen":J
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$000(Lc8/tKj;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$400(Lc8/tKj;)J

    move-result-wide v2

    .line 105
    cmp-long v1, v2, v10

    if-gtz v1, :cond_1

    .line 106
    iget-object v1, p0, Lc8/qKj;->val$output:Lc8/sKj;

    invoke-virtual {v1, v8}, Lc8/sKj;->sendEmptyMessage(I)Z

    .line 136
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$500(Lc8/tKj;)V

    .line 112
    :cond_1
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$000(Lc8/tKj;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$600(Lc8/tKj;)V

    .line 114
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v1

    invoke-virtual {v1}, Lc8/vKj;->getFileEnd()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$500(Lc8/tKj;)V

    .line 116
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lc8/vKj;->setFileStart(J)V

    .line 117
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lc8/vKj;->setFileEnd(J)V

    .line 120
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    iget-object v4, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v4}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 122
    :goto_1
    iget-object v1, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v1}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v1

    invoke-virtual {v1}, Lc8/vKj;->isStop()Z

    move-result v1

    if-nez v1, :cond_3

    .line 123
    const-string/jumbo v1, "PayManager"

    const-string/jumbo v4, "FileDownloader...while (!fetch.isStop())Thread.sleep(1500);"

    invoke-static {v1, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-wide/16 v4, 0x5dc

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v1, p0, Lc8/qKj;->val$output:Lc8/sKj;

    iget-object v4, p0, Lc8/qKj;->this$0:Lc8/tKj;

    invoke-static {v4}, Lc8/tKj;->access$100(Lc8/tKj;)Lc8/vKj;

    move-result-object v4

    invoke-virtual {v4}, Lc8/vKj;->isFinished()Z

    move-result v4

    invoke-static {v1, v4}, Lc8/sKj;->access$702(Lc8/sKj;Z)Z

    .line 133
    const-string/jumbo v1, "PayManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new Thread(fetch).end......output.isFinished:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/qKj;->val$output:Lc8/sKj;

    invoke-static {v5}, Lc8/sKj;->access$700(Lc8/sKj;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/RKj;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lc8/qKj;->val$output:Lc8/sKj;

    invoke-virtual {v1, v8}, Lc8/sKj;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
