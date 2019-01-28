.class public final Lc8/Dlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->amb([Lc8/Plq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$sources:[Lc8/Plq;


# direct methods
.method constructor <init>([Lc8/Plq;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lc8/Dlq;->val$sources:[Lc8/Plq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 10
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 125
    new-instance v7, Lc8/SBq;

    invoke-direct {v7}, Lc8/SBq;-><init>()V

    .line 126
    .local v7, "set":Lc8/SBq;
    invoke-interface {p1, v7}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 128
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 130
    .local v6, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v3, Lc8/ulq;

    invoke-direct {v3, p0, v6, v7, p1}, Lc8/ulq;-><init>(Lc8/Dlq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/SBq;Lc8/Nlq;)V

    .line 156
    .local v3, "inner":Lc8/Nlq;
    iget-object v0, p0, Lc8/Dlq;->val$sources:[Lc8/Plq;

    .local v0, "arr$":[Lc8/Plq;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 157
    .local v1, "c":Lc8/Plq;
    invoke-virtual {v7}, Lc8/SBq;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    .end local v1    # "c":Lc8/Plq;
    :cond_0
    :goto_1
    return-void

    .line 160
    .restart local v1    # "c":Lc8/Plq;
    :cond_1
    if-nez v1, :cond_3

    .line 161
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "One of the sources is null"

    invoke-direct {v5, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 162
    .local v5, "npe":Ljava/lang/NullPointerException;
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 163
    invoke-virtual {v7}, Lc8/SBq;->unsubscribe()V

    .line 164
    invoke-interface {p1, v5}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 166
    :cond_2
    invoke-static {v5}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 170
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :cond_3
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lc8/SBq;->isUnsubscribed()Z

    move-result v8

    if-nez v8, :cond_0

    .line 175
    invoke-virtual {v1, v3}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Dlq;->call(Lc8/Nlq;)V

    return-void
.end method
