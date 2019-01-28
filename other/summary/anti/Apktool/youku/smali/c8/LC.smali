.class public Lc8/LC;
.super Ljava/lang/Object;
.source "WVServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/MC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerRequestTask"
.end annotation


# instance fields
.field private context:Ljava/lang/Object;

.field private params:Ljava/lang/String;

.field final synthetic this$0:Lc8/MC;


# direct methods
.method public constructor <init>(Lc8/MC;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p2, "context"    # Ljava/lang/Object;
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lc8/LC;->this$0:Lc8/MC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lc8/LC;->context:Ljava/lang/Object;

    .line 142
    iput-object p3, p0, Lc8/LC;->params:Ljava/lang/String;

    .line 143
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 147
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    iget-object v7, p0, Lc8/LC;->params:Ljava/lang/String;

    invoke-static {v6, v7}, Lc8/MC;->access$000(Lc8/MC;Ljava/lang/String;)Lc8/qC;

    move-result-object v1

    .line 148
    .local v1, "paramObj":Lc8/qC;
    if-nez v1, :cond_0

    .line 149
    new-instance v3, Lc8/KC;

    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    iget-object v7, p0, Lc8/LC;->context:Ljava/lang/Object;

    invoke-direct {v3, v6, v7}, Lc8/KC;-><init>(Lc8/MC;Ljava/lang/Object;)V

    .line 150
    .local v3, "result":Lc8/KC;
    const-string/jumbo v6, "ret"

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v8, "HY_PARAM_ERR"

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lc8/KC;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 151
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    invoke-static {v6, v3}, Lc8/MC;->access$100(Lc8/MC;Lc8/KC;)V

    .line 180
    .end local v3    # "result":Lc8/KC;
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    invoke-static {v6}, Lc8/MC;->access$200(Lc8/MC;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "isRunning":Z
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    invoke-static {v6}, Lc8/MC;->access$300(Lc8/MC;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 158
    :try_start_0
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    invoke-static {v6}, Lc8/MC;->access$400(Lc8/MC;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v4

    .line 159
    .local v4, "size":I
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    invoke-static {v6}, Lc8/MC;->access$400(Lc8/MC;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/tH;

    .line 160
    .local v5, "thisLock":Lc8/tH;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    const-string/jumbo v6, "WVServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "queue size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " lock: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    invoke-static {v6}, Lc8/MC;->access$400(Lc8/MC;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v6

    new-instance v8, Lc8/tH;

    invoke-direct {v8}, Lc8/tH;-><init>()V

    invoke-virtual {v6, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-lez v4, :cond_2

    .line 164
    const/4 v0, 0x1

    .line 165
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    .line 167
    invoke-virtual {v5}, Lc8/tH;->lwait()V

    .line 169
    .end local v0    # "isRunning":Z
    .end local v4    # "size":I
    .end local v5    # "thisLock":Lc8/tH;
    :cond_3
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    iget-object v7, p0, Lc8/LC;->params:Ljava/lang/String;

    invoke-static {v6, v7}, Lc8/MC;->access$502(Lc8/MC;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    iget-object v7, p0, Lc8/LC;->context:Ljava/lang/Object;

    invoke-static {v6, v7}, Lc8/MC;->access$602(Lc8/MC;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    invoke-static {v6, v1}, Lc8/MC;->access$700(Lc8/MC;Lc8/qC;)Lc8/YB;

    move-result-object v2

    .line 172
    .local v2, "request":Lc8/YB;
    if-nez v2, :cond_4

    .line 173
    const-string/jumbo v6, "WVServer"

    const-string/jumbo v7, "HttpRequest is null, and do nothing"

    invoke-static {v6, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .end local v2    # "request":Lc8/YB;
    .restart local v0    # "isRunning":Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 176
    .end local v0    # "isRunning":Z
    .restart local v2    # "request":Lc8/YB;
    :cond_4
    new-instance v6, Lc8/XB;

    invoke-direct {v6}, Lc8/XB;-><init>()V

    invoke-virtual {v6, v2}, Lc8/XB;->syncConnect(Lc8/YB;)Lc8/ZB;

    move-result-object v3

    .line 178
    .local v3, "result":Lc8/ZB;
    iget-object v6, p0, Lc8/LC;->this$0:Lc8/MC;

    iget-object v7, p0, Lc8/LC;->context:Ljava/lang/Object;

    invoke-static {v6, v7, v3}, Lc8/MC;->access$800(Lc8/MC;Ljava/lang/Object;Lc8/ZB;)V

    goto/16 :goto_0
.end method
