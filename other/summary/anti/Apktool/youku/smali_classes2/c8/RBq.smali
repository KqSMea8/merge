.class public final Lc8/RBq;
.super Ljava/lang/Object;
.source "BooleanSubscription.java"

# interfaces
.implements Lc8/Pmq;


# static fields
.field static final EMPTY_ACTION:Lc8/hnq;


# instance fields
.field final actionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/hnq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lc8/QBq;

    invoke-direct {v0}, Lc8/QBq;-><init>()V

    sput-object v0, Lc8/RBq;->EMPTY_ACTION:Lc8/hnq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc8/RBq;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    return-void
.end method

.method private constructor <init>(Lc8/hnq;)V
    .locals 1
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/RBq;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    return-void
.end method

.method public static create()Lc8/RBq;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lc8/RBq;

    invoke-direct {v0}, Lc8/RBq;-><init>()V

    return-object v0
.end method

.method public static create(Lc8/hnq;)Lc8/RBq;
    .locals 1
    .param p0, "onUnsubscribe"    # Lc8/hnq;

    .prologue
    .line 57
    new-instance v0, Lc8/RBq;

    invoke-direct {v0, p0}, Lc8/RBq;-><init>(Lc8/hnq;)V

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lc8/RBq;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lc8/RBq;->EMPTY_ACTION:Lc8/hnq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lc8/RBq;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hnq;

    .line 68
    .local v0, "action":Lc8/hnq;
    sget-object v1, Lc8/RBq;->EMPTY_ACTION:Lc8/hnq;

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lc8/RBq;->actionRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lc8/RBq;->EMPTY_ACTION:Lc8/hnq;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "action":Lc8/hnq;
    check-cast v0, Lc8/hnq;

    .line 70
    .restart local v0    # "action":Lc8/hnq;
    if-eqz v0, :cond_0

    sget-object v1, Lc8/RBq;->EMPTY_ACTION:Lc8/hnq;

    if-eq v0, v1, :cond_0

    .line 71
    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 74
    :cond_0
    return-void
.end method
