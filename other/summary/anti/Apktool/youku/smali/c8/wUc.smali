.class public Lc8/wUc;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Lc8/xUc;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yUc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewServerWorker"
.end annotation


# instance fields
.field private mClient:Ljava/net/Socket;

.field private final mLock:[Ljava/lang/Object;

.field private mNeedFocusedWindowUpdate:Z

.field private mNeedWindowListUpdate:Z

.field final synthetic this$0:Lc8/yUc;


# direct methods
.method public constructor <init>(Lc8/yUc;Ljava/net/Socket;)V
    .locals 2
    .param p2, "client"    # Ljava/net/Socket;

    .prologue
    const/4 v1, 0x0

    .line 565
    iput-object p1, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lc8/wUc;->mLock:[Ljava/lang/Object;

    .line 566
    iput-object p2, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    .line 567
    iput-boolean v1, p0, Lc8/wUc;->mNeedWindowListUpdate:Z

    .line 568
    iput-boolean v1, p0, Lc8/wUc;->mNeedFocusedWindowUpdate:Z

    .line 569
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private findWindow(I)Landroid/view/View;
    .locals 4
    .param p1, "hashCode"    # I

    .prologue
    .line 685
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 687
    iget-object v2, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v2}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 689
    :try_start_0
    iget-object v2, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v2}, Lc8/yUc;->access$400(Lc8/yUc;)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 691
    .local v1, "window":Landroid/view/View;
    iget-object v2, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v2}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 708
    .end local v1    # "window":Landroid/view/View;
    :goto_0
    return-object v1

    .line 691
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v3}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2

    .line 697
    :cond_0
    iget-object v2, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v2}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 699
    :try_start_1
    iget-object v2, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v2}, Lc8/yUc;->access$500(Lc8/yUc;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 700
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 701
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 705
    iget-object v3, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v3}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v2

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v2}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 708
    const/4 v1, 0x0

    goto :goto_0

    .line 705
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v3}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method private getFocusedWindow(Ljava/net/Socket;)Z
    .locals 8
    .param p1, "client"    # Ljava/net/Socket;

    .prologue
    .line 748
    const/4 v5, 0x1

    .line 751
    .local v5, "result":Z
    const/4 v3, 0x0

    .line 753
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 754
    .local v0, "clientStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 758
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v4, "out":Ljava/io/BufferedWriter;
    :try_start_1
    iget-object v6, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v6}, Lc8/yUc;->access$600(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 760
    :try_start_2
    iget-object v6, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v6}, Lc8/yUc;->access$400(Lc8/yUc;)Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 762
    .local v2, "focusedWindow":Landroid/view/View;
    :try_start_3
    iget-object v6, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v6}, Lc8/yUc;->access$600(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 765
    if-eqz v2, :cond_0

    .line 766
    iget-object v6, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v6}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 768
    :try_start_4
    iget-object v6, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v6}, Lc8/yUc;->access$500(Lc8/yUc;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v7}, Lc8/yUc;->access$400(Lc8/yUc;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 770
    .local v1, "focusName":Ljava/lang/String;
    :try_start_5
    iget-object v6, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v6}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 773
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 774
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 775
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 777
    .end local v1    # "focusName":Ljava/lang/String;
    :cond_0
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/BufferedWriter;->write(I)V

    .line 778
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 782
    if-eqz v4, :cond_3

    .line 784
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    .line 791
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v2    # "focusedWindow":Landroid/view/View;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :goto_0
    return v5

    .line 762
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v6

    :try_start_7
    iget-object v7, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v7}, Lc8/yUc;->access$600(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 780
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_1
    const/4 v5, 0x0

    .line 782
    if-eqz v3, :cond_1

    .line 784
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 786
    :catch_1
    move-exception v6

    const/4 v5, 0x0

    .line 787
    goto :goto_0

    .line 770
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v2    # "focusedWindow":Landroid/view/View;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v6

    :try_start_9
    iget-object v7, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v7}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 782
    .end local v2    # "focusedWindow":Landroid/view/View;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v3, :cond_2

    .line 784
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 787
    :cond_2
    :goto_3
    throw v6

    .line 786
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v2    # "focusedWindow":Landroid/view/View;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v6

    const/4 v5, 0x0

    move-object v3, v4

    .line 787
    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v2    # "focusedWindow":Landroid/view/View;
    :catch_3
    move-exception v7

    goto :goto_3

    .line 782
    :catchall_3
    move-exception v6

    goto :goto_2

    .line 780
    :catch_4
    move-exception v6

    goto :goto_1

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v2    # "focusedWindow":Landroid/view/View;
    .restart local v4    # "out":Ljava/io/BufferedWriter;
    :cond_3
    move-object v3, v4

    .end local v4    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    goto :goto_0
.end method

.method private listWindows(Ljava/net/Socket;)Z
    .locals 7
    .param p1, "client"    # Ljava/net/Socket;

    .prologue
    .line 712
    const/4 v4, 0x1

    .line 713
    .local v4, "result":Z
    const/4 v2, 0x0

    .line 716
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_0
    iget-object v5, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v5}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 718
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 719
    .local v0, "clientStream":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    iget-object v5, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v5}, Lc8/yUc;->access$500(Lc8/yUc;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 722
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 723
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 724
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 725
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 731
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    move-object v2, v3

    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :goto_1
    const/4 v4, 0x0

    .line 733
    iget-object v5, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v5}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 735
    if-eqz v2, :cond_0

    .line 737
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 744
    :cond_0
    :goto_2
    return v4

    .line 728
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_1
    :try_start_3
    const-string/jumbo v5, "DONE.\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 733
    iget-object v5, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v5}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 735
    if-eqz v3, :cond_3

    .line 737
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 740
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 739
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v5

    const/4 v4, 0x0

    move-object v2, v3

    .line 740
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 739
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    const/4 v4, 0x0

    .line 740
    goto :goto_2

    .line 733
    :catchall_0
    move-exception v5

    :goto_3
    iget-object v6, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v6}, Lc8/yUc;->access$300(Lc8/yUc;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 735
    if-eqz v2, :cond_2

    .line 737
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 740
    :cond_2
    :goto_4
    throw v5

    :catch_3
    move-exception v6

    goto :goto_4

    .line 733
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 731
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v5

    goto :goto_1

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_3
    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method private windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "client"    # Ljava/net/Socket;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/lang/String;

    .prologue
    .line 630
    const/4 v8, 0x1

    .line 631
    .local v8, "success":Z
    const/4 v6, 0x0

    .line 635
    .local v6, "out":Ljava/io/BufferedWriter;
    const/16 v10, 0x20

    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 636
    .local v5, "index":I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_0

    .line 637
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 639
    :cond_0
    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, "code":Ljava/lang/String;
    const/16 v10, 0x10

    invoke-static {v2, v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    long-to-int v4, v10

    .line 643
    .local v4, "hashCode":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 644
    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 649
    :goto_0
    invoke-direct {p0, v4}, Lc8/wUc;->findWindow(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 650
    .local v9, "window":Landroid/view/View;
    if-nez v9, :cond_3

    .line 651
    const/4 v10, 0x0

    .line 672
    if-eqz v6, :cond_1

    .line 674
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 681
    .end local v2    # "code":Ljava/lang/String;
    .end local v4    # "hashCode":I
    .end local v5    # "index":I
    .end local v9    # "window":Landroid/view/View;
    :cond_1
    :goto_1
    return v10

    .line 646
    .restart local v2    # "code":Ljava/lang/String;
    .restart local v4    # "hashCode":I
    .restart local v5    # "index":I
    :cond_2
    :try_start_2
    const-string/jumbo p3, ""

    goto :goto_0

    .line 655
    .restart local v9    # "window":Landroid/view/View;
    :cond_3
    const-class v10, Landroid/view/ViewDebug;

    const-string/jumbo v11, "dispatchCommand"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/view/View;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-class v14, Ljava/io/OutputStream;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 657
    .local v3, "dispatch":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 658
    const/4 v10, 0x0

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v12, 0x1

    aput-object p2, v11, v12

    const/4 v12, 0x2

    aput-object p3, v11, v12

    const/4 v12, 0x3

    new-instance v13, Lc8/vUc;

    .line 659
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Lc8/vUc;-><init>(Ljava/io/OutputStream;)V

    aput-object v13, v11, v12

    .line 658
    invoke-static {v3, v10, v11}, Lc8/wUc;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v10

    if-nez v10, :cond_4

    .line 662
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .local v7, "out":Ljava/io/BufferedWriter;
    :try_start_3
    const-string/jumbo v10, "DONE\n"

    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v7

    .line 672
    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    :cond_4
    if-eqz v6, :cond_5

    .line 674
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "dispatch":Ljava/lang/reflect/Method;
    .end local v4    # "hashCode":I
    .end local v5    # "index":I
    .end local v9    # "window":Landroid/view/View;
    :cond_5
    :goto_2
    move v10, v8

    .line 681
    goto :goto_1

    .line 676
    .restart local v2    # "code":Ljava/lang/String;
    .restart local v3    # "dispatch":Ljava/lang/reflect/Method;
    .restart local v4    # "hashCode":I
    .restart local v5    # "index":I
    .restart local v9    # "window":Landroid/view/View;
    :catch_0
    move-exception v10

    const/4 v8, 0x0

    .line 677
    goto :goto_2

    .line 668
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "dispatch":Ljava/lang/reflect/Method;
    .end local v4    # "hashCode":I
    .end local v5    # "index":I
    .end local v9    # "window":Landroid/view/View;
    :catch_1
    move-exception v10

    :goto_3
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Could not send command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " with parameters "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 670
    const/4 v8, 0x0

    .line 672
    if-eqz v6, :cond_5

    .line 674
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 676
    :catch_2
    move-exception v10

    const/4 v8, 0x0

    .line 677
    goto :goto_2

    .line 672
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v6, :cond_6

    .line 674
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 677
    :cond_6
    :goto_5
    throw v10

    .restart local v2    # "code":Ljava/lang/String;
    .restart local v4    # "hashCode":I
    .restart local v5    # "index":I
    .restart local v9    # "window":Landroid/view/View;
    :catch_3
    move-exception v11

    goto/16 :goto_1

    .end local v2    # "code":Ljava/lang/String;
    .end local v4    # "hashCode":I
    .end local v5    # "index":I
    .end local v9    # "window":Landroid/view/View;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 672
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "code":Ljava/lang/String;
    .restart local v3    # "dispatch":Ljava/lang/reflect/Method;
    .restart local v4    # "hashCode":I
    .restart local v5    # "index":I
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v9    # "window":Landroid/view/View;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 668
    .end local v6    # "out":Ljava/io/BufferedWriter;
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    :catch_5
    move-exception v10

    move-object v6, v7

    .end local v7    # "out":Ljava/io/BufferedWriter;
    .restart local v6    # "out":Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method private windowManagerAutolistLoop()Z
    .locals 6

    .prologue
    .line 809
    iget-object v4, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v4, p0}, Lc8/yUc;->access$700(Lc8/yUc;Lc8/xUc;)V

    .line 810
    const/4 v2, 0x0

    .line 812
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 813
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    .line 814
    const/4 v1, 0x0

    .line 815
    .local v1, "needWindowListUpdate":Z
    const/4 v0, 0x0

    .line 816
    .local v0, "needFocusedWindowUpdate":Z
    iget-object v5, p0, Lc8/wUc;->mLock:[Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 817
    :goto_1
    :try_start_2
    iget-boolean v4, p0, Lc8/wUc;->mNeedWindowListUpdate:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lc8/wUc;->mNeedFocusedWindowUpdate:Z

    if-nez v4, :cond_2

    .line 818
    iget-object v4, p0, Lc8/wUc;->mLock:[Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 828
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 841
    .end local v0    # "needFocusedWindowUpdate":Z
    .end local v1    # "needWindowListUpdate":Z
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v2, :cond_1

    .line 843
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 848
    :cond_1
    :goto_3
    iget-object v4, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v4, p0}, Lc8/yUc;->access$800(Lc8/yUc;Lc8/xUc;)V

    .line 850
    :goto_4
    const/4 v4, 0x1

    return v4

    .line 820
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "needFocusedWindowUpdate":Z
    .restart local v1    # "needWindowListUpdate":Z
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_2
    :try_start_5
    iget-boolean v4, p0, Lc8/wUc;->mNeedWindowListUpdate:Z

    if-eqz v4, :cond_3

    .line 821
    const/4 v4, 0x0

    iput-boolean v4, p0, Lc8/wUc;->mNeedWindowListUpdate:Z

    .line 822
    const/4 v1, 0x1

    .line 824
    :cond_3
    iget-boolean v4, p0, Lc8/wUc;->mNeedFocusedWindowUpdate:Z

    if-eqz v4, :cond_4

    .line 825
    const/4 v4, 0x0

    iput-boolean v4, p0, Lc8/wUc;->mNeedFocusedWindowUpdate:Z

    .line 826
    const/4 v0, 0x1

    .line 828
    :cond_4
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 829
    if-eqz v1, :cond_5

    .line 830
    :try_start_6
    const-string/jumbo v4, "LIST UPDATE\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 831
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 833
    :cond_5
    if-eqz v0, :cond_0

    .line 834
    const-string/jumbo v4, "FOCUS UPDATE\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 841
    .end local v0    # "needFocusedWindowUpdate":Z
    .end local v1    # "needWindowListUpdate":Z
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :goto_5
    if-eqz v2, :cond_6

    .line 843
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 848
    :cond_6
    :goto_6
    iget-object v5, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v5, p0}, Lc8/yUc;->access$800(Lc8/yUc;Lc8/xUc;)V

    throw v4

    .line 841
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :cond_7
    if-eqz v3, :cond_8

    .line 843
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 848
    :cond_8
    :goto_7
    iget-object v4, p0, Lc8/wUc;->this$0:Lc8/yUc;

    invoke-static {v4, p0}, Lc8/yUc;->access$800(Lc8/yUc;Lc8/xUc;)V

    move-object v2, v3

    .line 849
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_4

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v4

    goto :goto_7

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_6

    .line 841
    :catchall_2
    move-exception v4

    goto :goto_5

    :catch_4
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public focusChanged()V
    .locals 2

    .prologue
    .line 802
    iget-object v1, p0, Lc8/wUc;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 803
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/wUc;->mNeedFocusedWindowUpdate:Z

    .line 804
    iget-object v0, p0, Lc8/wUc;->mLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 805
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 572
    const/4 v2, 0x0

    .line 574
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v9, 0x400

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, "request":Ljava/lang/String;
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 582
    .local v4, "index":I
    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    .line 583
    move-object v0, v6

    .line 584
    .local v0, "command":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 591
    .local v5, "parameters":Ljava/lang/String;
    :goto_0
    const-string/jumbo v8, "PROTOCOL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 592
    iget-object v8, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    const-string/jumbo v9, "4"

    invoke-static {v8, v9}, Lc8/yUc;->access$200(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .line 605
    .local v7, "result":Z
    :goto_1
    if-nez v7, :cond_0

    .line 606
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "An error occurred with the command: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 611
    :cond_0
    if-eqz v3, :cond_1

    .line 613
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 619
    :cond_1
    :goto_2
    iget-object v8, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_c

    .line 621
    :try_start_3
    iget-object v8, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v3

    .line 627
    .end local v0    # "command":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_2
    :goto_3
    return-void

    .line 586
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "index":I
    .restart local v6    # "request":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 587
    .restart local v0    # "command":Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "parameters":Ljava/lang/String;
    goto :goto_0

    .line 593
    :cond_4
    const-string/jumbo v8, "SERVER"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 594
    iget-object v8, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    const-string/jumbo v9, "4"

    invoke-static {v8, v9}, Lc8/yUc;->access$200(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 595
    .end local v7    # "result":Z
    :cond_5
    const-string/jumbo v8, "LIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 596
    iget-object v8, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lc8/wUc;->listWindows(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 597
    .end local v7    # "result":Z
    :cond_6
    const-string/jumbo v8, "GET_FOCUS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 598
    iget-object v8, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8}, Lc8/wUc;->getFocusedWindow(Ljava/net/Socket;)Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 599
    .end local v7    # "result":Z
    :cond_7
    const-string/jumbo v8, "AUTOLIST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 600
    invoke-direct {p0}, Lc8/wUc;->windowManagerAutolistLoop()Z

    move-result v7

    .restart local v7    # "result":Z
    goto :goto_1

    .line 602
    .end local v7    # "result":Z
    :cond_8
    iget-object v8, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    invoke-direct {p0, v8, v0, v5}, Lc8/wUc;->windowCommand(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    .restart local v7    # "result":Z
    goto/16 :goto_1

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 622
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 623
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 624
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 611
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "index":I
    .end local v5    # "parameters":Ljava/lang/String;
    .end local v6    # "request":Ljava/lang/String;
    .end local v7    # "result":Z
    :catch_2
    move-exception v8

    :goto_4
    if-eqz v2, :cond_9

    .line 613
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 619
    :cond_9
    :goto_5
    iget-object v8, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    if-eqz v8, :cond_2

    .line 621
    :try_start_6
    iget-object v8, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 622
    :catch_3
    move-exception v1

    .line 623
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 615
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 616
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 611
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v2, :cond_a

    .line 613
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 619
    :cond_a
    :goto_7
    iget-object v9, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    if-eqz v9, :cond_b

    .line 621
    :try_start_8
    iget-object v9, p0, Lc8/wUc;->mClient:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 624
    :cond_b
    :goto_8
    throw v8

    .line 615
    :catch_5
    move-exception v1

    .line 616
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 622
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 623
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 611
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "index":I
    .restart local v5    # "parameters":Ljava/lang/String;
    .restart local v6    # "request":Ljava/lang/String;
    .restart local v7    # "result":Z
    :cond_c
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public windowsChanged()V
    .locals 2

    .prologue
    .line 795
    iget-object v1, p0, Lc8/wUc;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 796
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/wUc;->mNeedWindowListUpdate:Z

    .line 797
    iget-object v0, p0, Lc8/wUc;->mLock:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 798
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
