.class public Lc8/ddq;
.super Ljava/lang/Thread;
.source "WebSocketServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/edq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebSocketWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private iqueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lc8/zcq;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/edq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 673
    const-class v0, Lc8/edq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/ddq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lc8/edq;)V
    .locals 4
    .param p1, "this$0"    # Lc8/edq;

    .prologue
    .line 677
    iput-object p1, p0, Lc8/ddq;->this$0:Lc8/edq;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 678
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lc8/ddq;->iqueue:Ljava/util/concurrent/BlockingQueue;

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WebSocketWorker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/ddq;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/ddq;->setName(Ljava/lang/String;)V

    .line 680
    new-instance v0, Lc8/cdq;

    invoke-direct {v0, p0, p1}, Lc8/cdq;-><init>(Lc8/ddq;Lc8/edq;)V

    invoke-virtual {p0, v0}, Lc8/ddq;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 686
    return-void
.end method


# virtual methods
.method public put(Lc8/zcq;)V
    .locals 1
    .param p1, "ws"    # Lc8/zcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lc8/ddq;->iqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 690
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 694
    const/4 v3, 0x0

    .line 698
    .local v3, "ws":Lc8/zcq;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lc8/ddq;->iqueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lc8/zcq;

    move-object v3, v0

    .line 699
    iget-object v4, v3, Lc8/zcq;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 700
    .local v1, "buf":Ljava/nio/ByteBuffer;
    sget-boolean v4, Lc8/ddq;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez v1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 714
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v4

    .line 715
    :goto_1
    return-void

    .line 702
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Lc8/zcq;->decode(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 708
    :try_start_2
    iget-object v4, p0, Lc8/ddq;->this$0:Lc8/edq;

    invoke-static {v4, v1}, Lc8/edq;->access$000(Lc8/edq;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 712
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v2

    .line 713
    .local v2, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lc8/ddq;->this$0:Lc8/edq;

    invoke-static {v4, v3, v2}, Lc8/edq;->access$100(Lc8/edq;Lc8/wcq;Ljava/lang/Exception;)V

    goto :goto_1

    .line 703
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "buf":Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v2

    .line 704
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while reading from remote connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 708
    :try_start_4
    iget-object v4, p0, Lc8/ddq;->this$0:Lc8/edq;

    invoke-static {v4, v1}, Lc8/edq;->access$000(Lc8/edq;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lc8/ddq;->this$0:Lc8/edq;

    invoke-static {v5, v1}, Lc8/edq;->access$000(Lc8/edq;Ljava/nio/ByteBuffer;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
.end method
