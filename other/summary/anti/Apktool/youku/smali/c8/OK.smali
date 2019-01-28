.class public Lc8/OK;
.super Ljava/lang/Object;
.source "LocalDnsStrategyTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/PK;->startLocalDnsLookup(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/PK;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$lockObj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lc8/PK;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lc8/OK;->this$0:Lc8/PK;

    iput-object p2, p0, Lc8/OK;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lc8/OK;->val$lockObj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v3, 0x1bb

    const/16 v1, 0x50

    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 95
    :try_start_0
    iget-object v5, p0, Lc8/OK;->val$host:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 96
    .local v10, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "ip":Ljava/lang/String;
    invoke-static {v0}, Lc8/zL;->isIPV4Address(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 98
    invoke-static {}, Lc8/jL;->getInstance()Lc8/jL;

    move-result-object v5

    iget-object v6, p0, Lc8/OK;->val$host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc8/jL;->getConnProtocol(Ljava/lang/String;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    .line 99
    .local v2, "connProtocol":Lanet/channel/strategy/ConnProtocol;
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 100
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IPConnStrategy;>;"
    if-eqz v2, :cond_4

    .line 101
    iget-object v5, v2, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    const-string/jumbo v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v11, v4

    .line 102
    .local v11, "isSsl":Z
    :cond_1
    if-nez v11, :cond_3

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0xafc8

    invoke-static/range {v0 .. v6}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lc8/OK;->this$0:Lc8/PK;

    iget-object v1, v1, Lc8/PK;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lc8/OK;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v11    # "isSsl":Z
    :goto_1
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const-string/jumbo v1, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v3, "resolve ip by local dns"

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lc8/OK;->val$host:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "ip"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-static {v1, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    .end local v2    # "connProtocol":Lanet/channel/strategy/ConnProtocol;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IPConnStrategy;>;"
    :cond_2
    :goto_2
    iget-object v1, p0, Lc8/OK;->this$0:Lc8/PK;

    iget-object v3, v1, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 122
    :try_start_1
    iget-object v1, p0, Lc8/OK;->this$0:Lc8/PK;

    iget-object v1, v1, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    iget-object v4, p0, Lc8/OK;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 124
    iget-object v3, p0, Lc8/OK;->val$lockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 125
    :try_start_2
    iget-object v1, p0, Lc8/OK;->val$lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 128
    .end local v0    # "ip":Ljava/lang/String;
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    :goto_3
    return-void

    .restart local v0    # "ip":Ljava/lang/String;
    .restart local v2    # "connProtocol":Lanet/channel/strategy/ConnProtocol;
    .restart local v10    # "inetAddress":Ljava/net/InetAddress;
    .restart local v11    # "isSsl":Z
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IPConnStrategy;>;"
    :cond_3
    move v1, v3

    .line 102
    goto :goto_0

    .line 105
    .end local v11    # "isSsl":Z
    :cond_4
    const/16 v4, 0x50

    :try_start_3
    sget-object v5, Lanet/channel/strategy/ConnProtocol;->HTTP:Lanet/channel/strategy/ConnProtocol;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const/16 v4, 0x1bb

    sget-object v5, Lanet/channel/strategy/ConnProtocol;->HTTPS:Lanet/channel/strategy/ConnProtocol;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v9}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lc8/OK;->this$0:Lc8/PK;

    iget-object v1, v1, Lc8/PK;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lc8/OK;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v3, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 117
    .end local v0    # "ip":Ljava/lang/String;
    .end local v2    # "connProtocol":Lanet/channel/strategy/ConnProtocol;
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Lanet/channel/strategy/IPConnStrategy;>;"
    :catch_0
    move-exception v1

    const/4 v1, 0x1

    :try_start_4
    invoke-static {v1}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    const-string/jumbo v1, "awcn.LocalDnsStrategyTable"

    const-string/jumbo v3, "resolve ip by local dns failed"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "host"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lc8/OK;->val$host:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    :cond_5
    iget-object v1, p0, Lc8/OK;->this$0:Lc8/PK;

    iget-object v3, v1, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 122
    :try_start_5
    iget-object v1, p0, Lc8/OK;->this$0:Lc8/PK;

    iget-object v1, v1, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    iget-object v4, p0, Lc8/OK;->val$host:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 124
    iget-object v3, p0, Lc8/OK;->val$lockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 125
    :try_start_6
    iget-object v1, p0, Lc8/OK;->val$lockObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 114
    .restart local v0    # "ip":Ljava/lang/String;
    .restart local v10    # "inetAddress":Ljava/net/InetAddress;
    :cond_6
    :try_start_7
    iget-object v1, p0, Lc8/OK;->this$0:Lc8/PK;

    iget-object v1, v1, Lc8/PK;->localStrategyMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lc8/OK;->val$host:Ljava/lang/String;

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_2

    .line 121
    .end local v0    # "ip":Ljava/lang/String;
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    :catchall_1
    move-exception v1

    iget-object v3, p0, Lc8/OK;->this$0:Lc8/PK;

    iget-object v3, v3, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 122
    :try_start_8
    iget-object v4, p0, Lc8/OK;->this$0:Lc8/PK;

    iget-object v4, v4, Lc8/PK;->lockObjMap:Ljava/util/HashMap;

    iget-object v5, p0, Lc8/OK;->val$host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 124
    iget-object v3, p0, Lc8/OK;->val$lockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 125
    :try_start_9
    iget-object v4, p0, Lc8/OK;->val$lockObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw v1

    .line 123
    .restart local v0    # "ip":Ljava/lang/String;
    .restart local v10    # "inetAddress":Ljava/net/InetAddress;
    :catchall_2
    move-exception v1

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1

    .line 126
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    .line 123
    .end local v0    # "ip":Ljava/lang/String;
    .end local v10    # "inetAddress":Ljava/net/InetAddress;
    :catchall_4
    move-exception v1

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v1

    :catchall_5
    move-exception v1

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v1

    .line 126
    :catchall_6
    move-exception v1

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v1
.end method
