.class public final Lc8/WBq;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subscriptions/RefCountSubscription$InnerSubscription;,
        Lc8/VBq;
    }
.end annotation


# static fields
.field static final EMPTY_STATE:Lc8/VBq;


# instance fields
.field private final actual:Lc8/Pmq;

.field final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/VBq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    new-instance v0, Lc8/VBq;

    invoke-direct {v0, v1, v1}, Lc8/VBq;-><init>(ZI)V

    sput-object v0, Lc8/WBq;->EMPTY_STATE:Lc8/VBq;

    return-void
.end method

.method public constructor <init>(Lc8/Pmq;)V
    .locals 2
    .param p1, "s"    # Lc8/Pmq;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lc8/WBq;->EMPTY_STATE:Lc8/VBq;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/WBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "s"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lc8/WBq;->actual:Lc8/Pmq;

    .line 68
    return-void
.end method

.method private unsubscribeActualIfApplicable(Lc8/VBq;)V
    .locals 1
    .param p1, "state"    # Lc8/VBq;

    .prologue
    .line 112
    iget-boolean v0, p1, Lc8/VBq;->isUnsubscribed:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lc8/VBq;->children:I

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lc8/WBq;->actual:Lc8/Pmq;

    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public get()Lc8/Pmq;
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lc8/WBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/RefCountSubscription$State;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/VBq;

    .line 81
    .local v2, "oldState":Lc8/VBq;
    iget-boolean v3, v2, Lc8/VBq;->isUnsubscribed:Z

    if-eqz v3, :cond_1

    .line 82
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v3

    .line 88
    :goto_0
    return-object v3

    .line 84
    :cond_1
    invoke-virtual {v2}, Lc8/VBq;->addChild()Lc8/VBq;

    move-result-object v1

    .line 86
    .local v1, "newState":Lc8/VBq;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    new-instance v3, Lrx/subscriptions/RefCountSubscription$InnerSubscription;

    invoke-direct {v3, p0}, Lrx/subscriptions/RefCountSubscription$InnerSubscription;-><init>(Lc8/WBq;)V

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lc8/WBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/VBq;

    iget-boolean v0, v0, Lc8/VBq;->isUnsubscribed:Z

    return v0
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lc8/WBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/RefCountSubscription$State;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/VBq;

    .line 103
    .local v2, "oldState":Lc8/VBq;
    iget-boolean v3, v2, Lc8/VBq;->isUnsubscribed:Z

    if-eqz v3, :cond_1

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {v2}, Lc8/VBq;->unsubscribe()Lc8/VBq;

    move-result-object v1

    .line 107
    .local v1, "newState":Lc8/VBq;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-direct {p0, v1}, Lc8/WBq;->unsubscribeActualIfApplicable(Lc8/VBq;)V

    goto :goto_0
.end method

.method public unsubscribeAChild()V
    .locals 4
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lc8/WBq;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 121
    .local v0, "localState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/subscriptions/RefCountSubscription$State;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/VBq;

    .line 122
    .local v2, "oldState":Lc8/VBq;
    invoke-virtual {v2}, Lc8/VBq;->removeChild()Lc8/VBq;

    move-result-object v1

    .line 123
    .local v1, "newState":Lc8/VBq;
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-direct {p0, v1}, Lc8/WBq;->unsubscribeActualIfApplicable(Lc8/VBq;)V

    .line 125
    return-void
.end method
