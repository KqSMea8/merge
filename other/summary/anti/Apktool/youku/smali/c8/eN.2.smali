.class public Lc8/eN;
.super Lc8/OM;
.source "ParcelableInputStreamImpl.java"


# static fields
.field private static final EOS:Lanet/channel/bytes/ByteArray;

.field private static final TAG:Ljava/lang/String; = "anet.ParcelableInputStreamImpl"


# instance fields
.field private blockIndex:I

.field private blockOffset:I

.field private byteList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lanet/channel/bytes/ByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private contentLength:I

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final newDataArrive:Ljava/util/concurrent/locks/Condition;

.field private receivedLength:I

.field private rto:I

.field private seqNo:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Lanet/channel/bytes/ByteArray;->create(I)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    sput-object v0, Lc8/eN;->EOS:Lanet/channel/bytes/ByteArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lc8/OM;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/eN;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    .line 28
    iput v1, p0, Lc8/eN;->receivedLength:I

    .line 30
    const/16 v0, 0x2710

    iput v0, p0, Lc8/eN;->rto:I

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/eN;->url:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/eN;->seqNo:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 35
    iget-object v0, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lc8/eN;->newDataArrive:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private recycleCurrentItem()V
    .locals 4

    .prologue
    .line 62
    iget-object v1, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 64
    :try_start_0
    iget-object v1, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    iget v2, p0, Lc8/eN;->blockIndex:I

    sget-object v3, Lc8/eN;->EOS:Lanet/channel/bytes/ByteArray;

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 65
    .local v0, "byteArray":Lanet/channel/bytes/ByteArray;
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v1, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    return-void

    .line 67
    .end local v0    # "byteArray":Lanet/channel/bytes/ByteArray;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v2, p0, Lc8/eN;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Stream is closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "count":I
    iget-object v2, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 79
    :try_start_0
    iget v2, p0, Lc8/eN;->blockIndex:I

    iget-object v3, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v2, v3, :cond_1

    .line 80
    const/4 v2, 0x0

    .line 88
    iget-object v3, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 90
    :goto_0
    return v2

    .line 82
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    iget v3, p0, Lc8/eN;->blockIndex:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 83
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/bytes/ByteArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/bytes/ByteArray;

    invoke-virtual {v2}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 86
    :cond_2
    iget v2, p0, Lc8/eN;->blockOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v0, v2

    .line 88
    iget-object v2, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v0

    .line 90
    goto :goto_0

    .line 88
    .end local v1    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lanet/channel/bytes/ByteArray;>;"
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v2, p0, Lc8/eN;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    iget-object v2, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 98
    :try_start_0
    iget-object v2, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 99
    .local v0, "byteArray":Lanet/channel/bytes/ByteArray;
    sget-object v2, Lc8/eN;->EOS:Lanet/channel/bytes/ByteArray;

    if-eq v0, v2, :cond_0

    .line 100
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "byteArray":Lanet/channel/bytes/ByteArray;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 103
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 104
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    .line 105
    const/4 v2, -0x1

    iput v2, p0, Lc8/eN;->blockIndex:I

    .line 106
    const/4 v2, -0x1

    iput v2, p0, Lc8/eN;->blockOffset:I

    .line 107
    const/4 v2, 0x0

    iput v2, p0, Lc8/eN;->contentLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iget-object v2, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public init(Lc8/HN;I)V
    .locals 1
    .param p1, "config"    # Lc8/HN;
    .param p2, "contentLength"    # I

    .prologue
    .line 256
    iput p2, p0, Lc8/eN;->contentLength:I

    .line 257
    invoke-virtual {p1}, Lc8/HN;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eN;->seqNo:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Lc8/HN;->getUrlString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/eN;->url:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Lc8/HN;->getReadTimeout()I

    move-result v0

    iput v0, p0, Lc8/eN;->rto:I

    .line 260
    return-void
.end method

.method public length()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    iget v0, p0, Lc8/eN;->contentLength:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lc8/eN;->readBytes([BII)I

    move-result v0

    return v0
.end method

.method public readByte()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v2, p0, Lc8/eN;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Stream is closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_0
    iget-object v2, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 123
    :goto_0
    :try_start_0
    iget v2, p0, Lc8/eN;->blockIndex:I

    iget-object v3, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 124
    iget-object v2, p0, Lc8/eN;->newDataArrive:Ljava/util/concurrent/locks/Condition;

    iget v3, p0, Lc8/eN;->rto:I

    int-to-long v4, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 125
    invoke-virtual {p0}, Lc8/eN;->close()V

    .line 126
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "await timeout."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {p0}, Lc8/eN;->close()V

    .line 147
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "await interrupt"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 129
    :cond_1
    :try_start_2
    iget-object v2, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    iget v3, p0, Lc8/eN;->blockIndex:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 130
    .local v0, "byteArray":Lanet/channel/bytes/ByteArray;
    sget-object v2, Lc8/eN;->EOS:Lanet/channel/bytes/ByteArray;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v2, :cond_2

    .line 131
    const/4 v1, -0x1

    .line 149
    .local v1, "ret":I
    :goto_1
    iget-object v2, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    return v1

    .line 135
    .end local v1    # "ret":I
    :cond_2
    :try_start_3
    iget v2, p0, Lc8/eN;->blockOffset:I

    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 136
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v2

    iget v3, p0, Lc8/eN;->blockOffset:I

    aget-byte v1, v2, v3

    .line 137
    .restart local v1    # "ret":I
    iget v2, p0, Lc8/eN;->blockOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/eN;->blockOffset:I

    goto :goto_1

    .line 140
    .end local v1    # "ret":I
    :cond_3
    invoke-direct {p0}, Lc8/eN;->recycleCurrentItem()V

    .line 141
    iget v2, p0, Lc8/eN;->blockIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/eN;->blockIndex:I

    .line 142
    const/4 v2, 0x0

    iput v2, p0, Lc8/eN;->blockOffset:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public readBytes([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v6, p0, Lc8/eN;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 157
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Stream is closed"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 160
    :cond_0
    if-nez p1, :cond_1

    .line 161
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 164
    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v6, p2, p3

    array-length v7, p1

    if-le v6, v7, :cond_3

    .line 165
    :cond_2
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v6

    .line 168
    :cond_3
    move v3, p2

    .line 169
    .local v3, "desOffset":I
    add-int v1, p2, p3

    .line 171
    .local v1, "desEnd":I
    iget-object v6, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 173
    :goto_0
    if-ge v3, v1, :cond_6

    .line 174
    :try_start_0
    iget v6, p0, Lc8/eN;->blockIndex:I

    iget-object v7, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 175
    iget-object v6, p0, Lc8/eN;->newDataArrive:Ljava/util/concurrent/locks/Condition;

    iget v7, p0, Lc8/eN;->rto:I

    int-to-long v8, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v7}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 176
    invoke-virtual {p0}, Lc8/eN;->close()V

    .line 177
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "await timeout."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :catch_0
    move-exception v6

    :try_start_1
    invoke-virtual {p0}, Lc8/eN;->close()V

    .line 203
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "await interrupt"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 181
    :cond_4
    :try_start_2
    iget-object v6, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    iget v7, p0, Lc8/eN;->blockIndex:I

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 182
    .local v0, "byteArray":Lanet/channel/bytes/ByteArray;
    sget-object v6, Lc8/eN;->EOS:Lanet/channel/bytes/ByteArray;

    if-eq v0, v6, :cond_6

    .line 186
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v6

    iget v7, p0, Lc8/eN;->blockOffset:I

    sub-int v5, v6, v7

    .line 187
    .local v5, "srcLength":I
    sub-int v2, v1, v3

    .line 189
    .local v2, "desLength":I
    if-ge v5, v2, :cond_5

    .line 190
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v6

    iget v7, p0, Lc8/eN;->blockOffset:I

    invoke-static {v6, v7, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    add-int/2addr v3, v5

    .line 192
    invoke-direct {p0}, Lc8/eN;->recycleCurrentItem()V

    .line 193
    iget v6, p0, Lc8/eN;->blockIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lc8/eN;->blockIndex:I

    .line 194
    const/4 v6, 0x0

    iput v6, p0, Lc8/eN;->blockOffset:I

    goto :goto_0

    .line 196
    :cond_5
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v6

    iget v7, p0, Lc8/eN;->blockOffset:I

    invoke-static {v6, v7, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget v6, p0, Lc8/eN;->blockOffset:I

    add-int/2addr v6, v2

    iput v6, p0, Lc8/eN;->blockOffset:I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    add-int/2addr v3, v2

    .line 200
    goto :goto_0

    .line 205
    .end local v0    # "byteArray":Lanet/channel/bytes/ByteArray;
    .end local v2    # "desLength":I
    .end local v5    # "srcLength":I
    :cond_6
    iget-object v6, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 208
    sub-int v4, v3, p2

    .line 209
    .local v4, "readCount":I
    if-lez v4, :cond_7

    .end local v4    # "readCount":I
    :goto_1
    return v4

    .restart local v4    # "readCount":I
    :cond_7
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public skip(I)J
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 220
    .local v2, "skip":I
    iget-object v3, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 222
    :goto_0
    if-ge v2, p1, :cond_0

    .line 223
    :try_start_0
    iget v3, p0, Lc8/eN;->blockIndex:I

    iget-object v4, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 227
    iget-object v3, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    iget v4, p0, Lc8/eN;->blockIndex:I

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/bytes/ByteArray;

    .line 228
    .local v0, "byteArray":Lanet/channel/bytes/ByteArray;
    sget-object v3, Lc8/eN;->EOS:Lanet/channel/bytes/ByteArray;

    if-eq v0, v3, :cond_0

    .line 232
    invoke-virtual {v0}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v1

    .line 233
    .local v1, "length":I
    iget v3, p0, Lc8/eN;->blockOffset:I

    sub-int v3, v1, v3

    sub-int v4, p1, v2

    if-ge v3, v4, :cond_1

    .line 234
    iget v3, p0, Lc8/eN;->blockOffset:I

    sub-int v3, v1, v3

    add-int/2addr v2, v3

    .line 235
    invoke-direct {p0}, Lc8/eN;->recycleCurrentItem()V

    .line 236
    iget v3, p0, Lc8/eN;->blockIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lc8/eN;->blockIndex:I

    .line 237
    const/4 v3, 0x0

    iput v3, p0, Lc8/eN;->blockOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v0    # "byteArray":Lanet/channel/bytes/ByteArray;
    .end local v1    # "length":I
    :cond_0
    iget-object v3, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 247
    int-to-long v4, v2

    return-wide v4

    .line 240
    .restart local v0    # "byteArray":Lanet/channel/bytes/ByteArray;
    .restart local v1    # "length":I
    :cond_1
    move v2, p1

    .line 241
    :try_start_1
    iget v3, p0, Lc8/eN;->blockOffset:I

    sub-int v4, p1, v2

    add-int/2addr v3, v4

    iput v3, p0, Lc8/eN;->blockOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    .end local v0    # "byteArray":Lanet/channel/bytes/ByteArray;
    .end local v1    # "length":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public write(Lanet/channel/bytes/ByteArray;)V
    .locals 2
    .param p1, "b"    # Lanet/channel/bytes/ByteArray;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/eN;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 43
    :try_start_0
    iget-object v0, p0, Lc8/eN;->byteList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    iget v0, p0, Lc8/eN;->receivedLength:I

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lc8/eN;->receivedLength:I

    .line 45
    iget-object v0, p0, Lc8/eN;->newDataArrive:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object v0, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/eN;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public writeEnd()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    sget-object v0, Lc8/eN;->EOS:Lanet/channel/bytes/ByteArray;

    invoke-virtual {p0, v0}, Lc8/eN;->write(Lanet/channel/bytes/ByteArray;)V

    .line 53
    invoke-static {v6}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "anet.ParcelableInputStreamImpl"

    const-string/jumbo v1, "set EOS flag to stream"

    iget-object v2, p0, Lc8/eN;->seqNo:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_0
    iget v0, p0, Lc8/eN;->contentLength:I

    if-eqz v0, :cond_1

    iget v0, p0, Lc8/eN;->contentLength:I

    iget v1, p0, Lc8/eN;->receivedLength:I

    if-eq v0, v1, :cond_1

    .line 57
    const-string/jumbo v0, "anet.ParcelableInputStreamImpl"

    const-string/jumbo v1, "data length no match!"

    iget-object v2, p0, Lc8/eN;->seqNo:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ContentLength"

    aput-object v4, v3, v5

    iget v4, p0, Lc8/eN;->contentLength:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "Received"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lc8/eN;->receivedLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lc8/eN;->url:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_1
    return-void
.end method
