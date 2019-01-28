.class public Lc8/htf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qtf;->sendCacheFailItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtf;


# direct methods
.method constructor <init>(Lc8/qtf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 81
    iput-object p1, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 84
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 87
    :try_start_0
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$300(Lc8/qtf;)Ljava/util/Set;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$300(Lc8/qtf;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 89
    const-string/jumbo v5, "OrangeConfigImpl"

    const-string/jumbo v7, "sendCacheFailItems"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "addFail mFailNamespaces"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v10}, Lc8/qtf;->access$300(Lc8/qtf;)Ljava/util/Set;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$300(Lc8/qtf;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    .local v3, "namespace":Ljava/lang/String;
    iget-object v7, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v7}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v7

    invoke-interface {v7, v3}, Lc8/xtf;->addFail(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v3    # "namespace":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :catch_0
    move-exception v4

    .line 123
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "OrangeConfigImpl"

    const-string/jumbo v6, "sendCacheFailItems"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 126
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 93
    :cond_1
    :try_start_3
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$300(Lc8/qtf;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 95
    :cond_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    :try_start_4
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$400(Lc8/qtf;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 98
    :try_start_5
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$400(Lc8/qtf;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 99
    const-string/jumbo v5, "OrangeConfigImpl"

    const-string/jumbo v7, "sendCacheFailItems"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "registerListenerV1 mFailListenersV1"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v10}, Lc8/qtf;->access$400(Lc8/qtf;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$400(Lc8/qtf;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/orange/OrangeConfigImpl$NamespaceKey;Lcom/taobao/orange/OrangeConfigListenerV1;>;"
    new-instance v0, Lc8/Atf;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/orange/OrangeConfigListenerV1;

    invoke-direct {v0, v5}, Lc8/Atf;-><init>(Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 102
    .local v0, "aidllistener":Lc8/Atf;
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/ptf;

    iget-object v5, v5, Lc8/ptf;->namespaces:[Ljava/lang/String;

    invoke-interface {v8, v5, v0}, Lc8/xtf;->registerListenerV1([Ljava/lang/String;Lc8/Gtf;)V

    goto :goto_2

    .line 106
    .end local v0    # "aidllistener":Lc8/Atf;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/orange/OrangeConfigImpl$NamespaceKey;Lcom/taobao/orange/OrangeConfigListenerV1;>;"
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 104
    :cond_3
    :try_start_7
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$400(Lc8/qtf;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 106
    :cond_4
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 108
    :try_start_8
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$500(Lc8/qtf;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 109
    :try_start_9
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$500(Lc8/qtf;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 110
    const-string/jumbo v5, "OrangeConfigImpl"

    const-string/jumbo v7, "sendCacheFailItems"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "registerListener mFailListeners"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v10}, Lc8/qtf;->access$500(Lc8/qtf;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$500(Lc8/qtf;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/orange/OrangeConfigImpl$NamespaceKey;Lcom/taobao/orange/OrangeConfigListener;>;"
    new-instance v0, Lc8/ztf;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/rtf;

    invoke-direct {v0, v5}, Lc8/ztf;-><init>(Lc8/rtf;)V

    .line 113
    .local v0, "aidllistener":Lc8/ztf;
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/ptf;

    iget-object v5, v5, Lc8/ptf;->namespaces:[Ljava/lang/String;

    invoke-interface {v8, v5, v0}, Lc8/xtf;->registerListener([Ljava/lang/String;Lc8/Dtf;)V

    goto :goto_3

    .line 117
    .end local v0    # "aidllistener":Lc8/ztf;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/taobao/orange/OrangeConfigImpl$NamespaceKey;Lcom/taobao/orange/OrangeConfigListener;>;"
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v5
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 115
    :cond_5
    :try_start_b
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$500(Lc8/qtf;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 117
    :cond_6
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 118
    :try_start_c
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$600(Lc8/qtf;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v5}, Lc8/qtf;->access$100(Lc8/qtf;)Lc8/xtf;

    move-result-object v5

    iget-object v6, p0, Lc8/htf;->this$0:Lc8/qtf;

    invoke-static {v6}, Lc8/qtf;->access$600(Lc8/qtf;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lc8/xtf;->setUserId(Ljava/lang/String;)V

    .line 120
    iget-object v5, p0, Lc8/htf;->this$0:Lc8/qtf;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lc8/qtf;->access$602(Lc8/qtf;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_1
.end method
