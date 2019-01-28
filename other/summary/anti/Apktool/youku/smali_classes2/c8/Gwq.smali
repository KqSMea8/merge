.class public final Lc8/Gwq;
.super Ljava/lang/Object;
.source "SingleOperatorZip.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hwq;->zip([Lc8/Mmq;Lc8/Rnq;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$singles:[Lc8/Mmq;

.field final synthetic val$zipper:Lc8/Rnq;


# direct methods
.method constructor <init>([Lc8/Mmq;Lc8/Rnq;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lc8/Gwq;->val$singles:[Lc8/Mmq;

    iput-object p2, p0, Lc8/Gwq;->val$zipper:Lc8/Rnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "subscriber":Lc8/Nmq;, "Lrx/SingleSubscriber<-TR;>;"
    iget-object v1, p0, Lc8/Gwq;->val$singles:[Lc8/Mmq;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 40
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string/jumbo v5, "Can\'t zip 0 Singles."

    invoke-direct {v1, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 94
    :cond_0
    return-void

    .line 44
    :cond_1
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lc8/Gwq;->val$singles:[Lc8/Mmq;

    array-length v1, v1

    invoke-direct {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 45
    .local v4, "wip":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 46
    .local v6, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lc8/Gwq;->val$singles:[Lc8/Mmq;

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Object;

    .line 48
    .local v2, "values":[Ljava/lang/Object;
    new-instance v7, Lc8/SBq;

    invoke-direct {v7}, Lc8/SBq;-><init>()V

    .line 49
    .local v7, "compositeSubscription":Lc8/SBq;
    invoke-virtual {p1, v7}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 51
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v1, p0, Lc8/Gwq;->val$singles:[Lc8/Mmq;

    array-length v1, v1

    if-ge v8, v1, :cond_0

    .line 52
    invoke-virtual {v7}, Lc8/SBq;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    move v3, v8

    .line 57
    .local v3, "j":I
    new-instance v0, Lc8/Fwq;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lc8/Fwq;-><init>(Lc8/Gwq;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Lc8/Nmq;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 86
    .local v0, "singleSubscriber":Lc8/Nmq;, "Lrx/SingleSubscriber<TT;>;"
    invoke-virtual {v7, v0}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 88
    invoke-virtual {v7}, Lc8/SBq;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p0, Lc8/Gwq;->val$singles:[Lc8/Mmq;

    aget-object v1, v1, v8

    invoke-virtual {v1, v0}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    .line 51
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Gwq;->call(Lc8/Nmq;)V

    return-void
.end method
