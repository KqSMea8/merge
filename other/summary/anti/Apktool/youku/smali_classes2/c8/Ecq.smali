.class public Lc8/Ecq;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Fcq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebsocketWriteThread"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Fcq;


# direct methods
.method private constructor <init>(Lc8/Fcq;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lc8/Ecq;->this$0:Lc8/Fcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Fcq;Lc8/Dcq;)V
    .locals 0
    .param p1, "x0"    # Lc8/Fcq;
    .param p2, "x1"    # Lc8/Dcq;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lc8/Ecq;-><init>(Lc8/Fcq;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 348
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "WebsocketWriteThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 350
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    iget-object v1, p0, Lc8/Ecq;->this$0:Lc8/Fcq;

    invoke-static {v1}, Lc8/Fcq;->access$100(Lc8/Fcq;)Lc8/zcq;

    move-result-object v1

    iget-object v1, v1, Lc8/zcq;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 352
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lc8/Ecq;->this$0:Lc8/Fcq;

    invoke-static {v1}, Lc8/Fcq;->access$200(Lc8/Fcq;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 353
    iget-object v1, p0, Lc8/Ecq;->this$0:Lc8/Fcq;

    invoke-static {v1}, Lc8/Fcq;->access$200(Lc8/Fcq;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 356
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v1

    iget-object v1, p0, Lc8/Ecq;->this$0:Lc8/Fcq;

    invoke-static {v1}, Lc8/Fcq;->access$100(Lc8/Fcq;)Lc8/zcq;

    move-result-object v1

    invoke-virtual {v1}, Lc8/zcq;->eot()V

    .line 360
    :cond_0
    :goto_1
    return-void

    :catch_1
    move-exception v1

    goto :goto_1
.end method
