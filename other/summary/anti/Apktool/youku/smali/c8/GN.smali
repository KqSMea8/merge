.class public Lc8/GN;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Lc8/NN;


# instance fields
.field private bInputStreamListener:Z

.field private config:Lc8/HN;

.field private inputStream:Lc8/eN;

.field private mListenerWrapper:Lc8/SM;

.field private seqNo:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>(Lc8/SM;Lc8/HN;)V
    .locals 3
    .param p1, "listener"    # Lc8/SM;
    .param p2, "config"    # Lc8/HN;

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lc8/GN;->inputStream:Lc8/eN;

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/GN;->bInputStreamListener:Z

    .line 28
    iput-object v2, p0, Lc8/GN;->config:Lc8/HN;

    .line 31
    iput-object p1, p0, Lc8/GN;->mListenerWrapper:Lc8/SM;

    .line 32
    iput-object p2, p0, Lc8/GN;->config:Lc8/HN;

    .line 34
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lc8/SM;->getListenerState()B

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/GN;->bInputStreamListener:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/GN;)Z
    .locals 1
    .param p0, "x0"    # Lc8/GN;

    .prologue
    .line 21
    iget-boolean v0, p0, Lc8/GN;->bInputStreamListener:Z

    return v0
.end method

.method static synthetic access$100(Lc8/GN;)Lc8/eN;
    .locals 1
    .param p0, "x0"    # Lc8/GN;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/GN;->inputStream:Lc8/eN;

    return-object v0
.end method

.method static synthetic access$102(Lc8/GN;Lc8/eN;)Lc8/eN;
    .locals 0
    .param p0, "x0"    # Lc8/GN;
    .param p1, "x1"    # Lc8/eN;

    .prologue
    .line 21
    iput-object p1, p0, Lc8/GN;->inputStream:Lc8/eN;

    return-object p1
.end method

.method static synthetic access$200(Lc8/GN;)Lc8/HN;
    .locals 1
    .param p0, "x0"    # Lc8/GN;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/GN;->config:Lc8/HN;

    return-object v0
.end method

.method static synthetic access$300(Lc8/GN;)J
    .locals 2
    .param p0, "x0"    # Lc8/GN;

    .prologue
    .line 21
    iget-wide v0, p0, Lc8/GN;->startTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lc8/GN;J)J
    .locals 1
    .param p0, "x0"    # Lc8/GN;
    .param p1, "x1"    # J

    .prologue
    .line 21
    iput-wide p1, p0, Lc8/GN;->startTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lc8/GN;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/GN;

    .prologue
    .line 21
    iget-object v0, p0, Lc8/GN;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method private dispatchCallBack(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 140
    iget-object v1, p0, Lc8/GN;->seqNo:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/GN;->seqNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 141
    .local v0, "hashCode":I
    :goto_0
    invoke-static {v0, p1}, Lc8/CN;->submitTask(ILjava/lang/Runnable;)V

    .line 142
    return-void

    .line 140
    .end local v0    # "hashCode":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "total"    # I
    .param p3, "byteArray"    # Lanet/channel/bytes/ByteArray;

    .prologue
    .line 63
    iget-object v1, p0, Lc8/GN;->mListenerWrapper:Lc8/SM;

    if-eqz v1, :cond_0

    .line 64
    iget-object v5, p0, Lc8/GN;->mListenerWrapper:Lc8/SM;

    .line 65
    .local v5, "l":Lc8/SM;
    new-instance v0, Lc8/EN;

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lc8/EN;-><init>(Lc8/GN;Lanet/channel/bytes/ByteArray;IILc8/SM;)V

    .line 98
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lc8/GN;->dispatchCallBack(Ljava/lang/Runnable;)V

    .line 100
    .end local v0    # "callback":Ljava/lang/Runnable;
    .end local v5    # "l":Lc8/SM;
    :cond_0
    return-void
.end method

.method public onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 6
    .param p1, "event"    # Lanetwork/channel/aidl/DefaultFinishEvent;

    .prologue
    .line 103
    const/4 v2, 0x2

    invoke-static {v2}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const-string/jumbo v2, "anet.Repeater"

    const-string/jumbo v3, "[onFinish] "

    iget-object v4, p0, Lc8/GN;->seqNo:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    iget-object v2, p0, Lc8/GN;->mListenerWrapper:Lc8/SM;

    if-eqz v2, :cond_1

    .line 107
    iget-object v1, p0, Lc8/GN;->mListenerWrapper:Lc8/SM;

    .line 108
    .local v1, "l":Lc8/SM;
    new-instance v0, Lc8/FN;

    invoke-direct {v0, p0, p1, v1}, Lc8/FN;-><init>(Lc8/GN;Lanetwork/channel/aidl/DefaultFinishEvent;Lc8/SM;)V

    .line 131
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/GN;->startTime:J

    .line 132
    invoke-direct {p0, v0}, Lc8/GN;->dispatchCallBack(Ljava/lang/Runnable;)V

    .line 136
    .end local v0    # "callback":Ljava/lang/Runnable;
    .end local v1    # "l":Lc8/SM;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/GN;->mListenerWrapper:Lc8/SM;

    .line 137
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 6
    .param p1, "responseCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x2

    invoke-static {v2}, Lc8/KL;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string/jumbo v2, "anet.Repeater"

    const-string/jumbo v3, "[onResponseCode]"

    iget-object v4, p0, Lc8/GN;->seqNo:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_0
    iget-object v2, p0, Lc8/GN;->mListenerWrapper:Lc8/SM;

    if-eqz v2, :cond_1

    .line 47
    iget-object v1, p0, Lc8/GN;->mListenerWrapper:Lc8/SM;

    .line 48
    .local v1, "l":Lc8/SM;
    new-instance v0, Lc8/DN;

    invoke-direct {v0, p0, v1, p1, p2}, Lc8/DN;-><init>(Lc8/GN;Lc8/SM;ILjava/util/Map;)V

    .line 58
    .local v0, "callback":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lc8/GN;->dispatchCallBack(Ljava/lang/Runnable;)V

    .line 60
    .end local v0    # "callback":Ljava/lang/Runnable;
    .end local v1    # "l":Lc8/SM;
    :cond_1
    return-void
.end method

.method public setSeqNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lc8/GN;->seqNo:Ljava/lang/String;

    .line 146
    return-void
.end method
