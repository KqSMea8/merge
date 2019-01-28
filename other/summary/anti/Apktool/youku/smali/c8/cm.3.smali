.class public Lc8/cm;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Lc8/cm;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lc8/bm;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Lc8/bm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lc8/cm;

    invoke-direct {v0}, Lc8/cm;-><init>()V

    .line 162
    sput-object v0, Lc8/cm;->sInstance:Lc8/cm;

    invoke-virtual {v0}, Lc8/cm;->start()V

    .line 163
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 158
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 169
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lc8/cm;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 170
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lc8/cm;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static getInstance()Lc8/cm;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lc8/cm;->sInstance:Lc8/cm;

    return-object v0
.end method


# virtual methods
.method public enqueue(Lc8/bm;)V
    .locals 3
    .param p1, "request"    # Lc8/bm;

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lc8/cm;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to enqueue async inflate request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public obtainRequest()Lc8/bm;
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lc8/cm;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/bm;

    .line 199
    .local v0, "obj":Lc8/bm;
    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lc8/bm;

    .end local v0    # "obj":Lc8/bm;
    invoke-direct {v0}, Lc8/bm;-><init>()V

    .line 202
    .restart local v0    # "obj":Lc8/bm;
    :cond_0
    return-object v0
.end method

.method public releaseRequest(Lc8/bm;)V
    .locals 2
    .param p1, "obj"    # Lc8/bm;

    .prologue
    const/4 v1, 0x0

    .line 206
    iput-object v1, p1, Lc8/bm;->callback:Lc8/dm;

    .line 207
    iput-object v1, p1, Lc8/bm;->inflater:Lc8/em;

    .line 208
    iput-object v1, p1, Lc8/bm;->parent:Landroid/view/ViewGroup;

    .line 209
    const/4 v0, 0x0

    iput v0, p1, Lc8/bm;->resid:I

    .line 210
    iput-object v1, p1, Lc8/bm;->view:Landroid/view/View;

    .line 211
    iget-object v0, p0, Lc8/cm;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 177
    :goto_0
    :try_start_0
    iget-object v1, p0, Lc8/cm;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/bm;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    .local v0, "request":Lc8/bm;
    :try_start_1
    iget-object v1, v0, Lc8/bm;->inflater:Lc8/em;

    iget-object v1, v1, Lc8/em;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v0, Lc8/bm;->resid:I

    iget-object v3, v0, Lc8/bm;->parent:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lc8/bm;->view:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    :goto_1
    iget-object v1, v0, Lc8/bm;->inflater:Lc8/em;

    iget-object v1, v1, Lc8/em;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 181
    .end local v0    # "request":Lc8/bm;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
