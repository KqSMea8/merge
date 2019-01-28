.class public Lc8/ltf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qtf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtf;

.field final synthetic val$listener:Lcom/taobao/orange/OrangeConfigListenerV1;

.field final synthetic val$namespaces:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/qtf;[Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 232
    iput-object p1, p0, Lc8/ltf;->this$0:Lc8/qtf;

    iput-object p2, p0, Lc8/ltf;->val$namespaces:[Ljava/lang/String;

    iput-object p3, p0, Lc8/ltf;->val$listener:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 235
    iget-object v3, p0, Lc8/ltf;->this$0:Lc8/qtf;

    invoke-static {}, Lc8/qtf;->access$700()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/qtf;->access$800(Lc8/qtf;Landroid/content/Context;)V

    .line 236
    iget-object v3, p0, Lc8/ltf;->this$0:Lc8/qtf;

    invoke-static {v3}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v3

    if-nez v3, :cond_1

    .line 237
    new-instance v1, Lc8/ptf;

    iget-object v3, p0, Lc8/ltf;->this$0:Lc8/qtf;

    invoke-direct {v1, v3}, Lc8/ptf;-><init>(Lc8/qtf;)V

    .line 238
    .local v1, "namespaceKey":Lc8/ptf;
    iget-object v3, p0, Lc8/ltf;->val$namespaces:[Ljava/lang/String;

    iput-object v3, v1, Lc8/ptf;->namespaces:[Ljava/lang/String;

    .line 239
    iget-object v3, p0, Lc8/ltf;->this$0:Lc8/qtf;

    invoke-static {v3}, Lc8/qtf;->access$400(Lc8/qtf;)Ljava/util/Map;

    move-result-object v4

    monitor-enter v4

    .line 240
    :try_start_0
    iget-object v3, p0, Lc8/ltf;->this$0:Lc8/qtf;

    invoke-static {v3}, Lc8/qtf;->access$400(Lc8/qtf;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    const-string/jumbo v3, "OrangeConfigImpl"

    const-string/jumbo v5, "registerListenerV1 addFail"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "namespace"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lc8/ltf;->val$namespaces:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Lc8/buf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v3, p0, Lc8/ltf;->this$0:Lc8/qtf;

    invoke-static {v3}, Lc8/qtf;->access$400(Lc8/qtf;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lc8/ltf;->val$listener:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v3, p0, Lc8/ltf;->this$0:Lc8/qtf;

    invoke-static {v3}, Lc8/qtf;->access$200(Lc8/qtf;)V

    .line 254
    .end local v1    # "namespaceKey":Lc8/ptf;
    :goto_0
    return-void

    .line 244
    .restart local v1    # "namespaceKey":Lc8/ptf;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 248
    .end local v1    # "namespaceKey":Lc8/ptf;
    :cond_1
    :try_start_2
    new-instance v0, Lc8/Atf;

    iget-object v3, p0, Lc8/ltf;->val$listener:Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-direct {v0, v3}, Lc8/Atf;-><init>(Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 249
    .local v0, "aidllistener":Lc8/Atf;
    iget-object v3, p0, Lc8/ltf;->this$0:Lc8/qtf;

    invoke-static {v3}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v3

    iget-object v4, p0, Lc8/ltf;->val$namespaces:[Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lc8/xtf;->registerListenerV1([Ljava/lang/String;Lc8/Gtf;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 250
    .end local v0    # "aidllistener":Lc8/Atf;
    :catch_0
    move-exception v2

    .line 251
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "OrangeConfigImpl"

    const-string/jumbo v4, "registerListenerV1"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
