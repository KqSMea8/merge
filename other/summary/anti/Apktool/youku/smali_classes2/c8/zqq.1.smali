.class public final Lc8/zqq;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yqq;,
        Lc8/wqq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final REDO_INFINITE:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;",
            "Lc8/Vlq",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final controlHandlerFunction:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;+",
            "Lc8/Vlq",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lc8/amq;

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final stopOnComplete:Z

.field final stopOnError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lc8/nqq;

    invoke-direct {v0}, Lc8/nqq;-><init>()V

    sput-object v0, Lc8/zqq;->REDO_INFINITE:Lc8/Inq;

    return-void
.end method

.method private constructor <init>(Lc8/Vlq;Lc8/Inq;ZZLc8/amq;)V
    .locals 0
    .param p3, "stopOnComplete"    # Z
    .param p4, "stopOnError"    # Z
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;+",
            "Lc8/Vlq",
            "<*>;>;ZZ",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lc8/zqq;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p2, "f":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lc8/zqq;->source:Lc8/Vlq;

    .line 180
    iput-object p2, p0, Lc8/zqq;->controlHandlerFunction:Lc8/Inq;

    .line 181
    iput-boolean p3, p0, Lc8/zqq;->stopOnComplete:Z

    .line 182
    iput-boolean p4, p0, Lc8/zqq;->stopOnError:Z

    .line 183
    iput-object p5, p0, Lc8/zqq;->scheduler:Lc8/amq;

    .line 184
    return-void
.end method

.method public static redo(Lc8/Vlq;Lc8/Inq;Lc8/amq;)Lc8/Vlq;
    .locals 6
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;+",
            "Lc8/Vlq",
            "<*>;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    const/4 v3, 0x0

    .line 174
    new-instance v0, Lc8/zqq;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/zqq;-><init>(Lc8/Vlq;Lc8/Inq;ZZLc8/amq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->trampoline()Lc8/amq;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/zqq;->repeat(Lc8/Vlq;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lc8/Vlq;J)Lc8/Vlq;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;J)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lc8/hBq;->trampoline()Lc8/amq;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lc8/zqq;->repeat(Lc8/Vlq;JLc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lc8/Vlq;JLc8/amq;)Lc8/Vlq;
    .locals 5
    .param p1, "count"    # J
    .param p3, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;J",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const-wide/16 v2, 0x0

    .line 156
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Lc8/Vlq;->empty()Lc8/Vlq;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 159
    :cond_0
    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    new-instance v0, Lc8/wqq;

    const-wide/16 v2, 0x1

    sub-long v2, p1, v2

    invoke-direct {v0, v2, v3}, Lc8/wqq;-><init>(J)V

    invoke-static {p0, v0, p3}, Lc8/zqq;->repeat(Lc8/Vlq;Lc8/Inq;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    goto :goto_0
.end method

.method public static repeat(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;+",
            "Lc8/Vlq",
            "<*>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lc8/zqq;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lc8/hBq;->trampoline()Lc8/amq;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lc8/zqq;-><init>(Lc8/Vlq;Lc8/Inq;ZZLc8/amq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lc8/Vlq;Lc8/Inq;Lc8/amq;)Lc8/Vlq;
    .locals 6
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;+",
            "Lc8/Vlq",
            "<*>;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lc8/zqq;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/zqq;-><init>(Lc8/Vlq;Lc8/Inq;ZZLc8/amq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static repeat(Lc8/Vlq;Lc8/amq;)Lc8/Vlq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    sget-object v0, Lc8/zqq;->REDO_INFINITE:Lc8/Inq;

    invoke-static {p0, v0, p1}, Lc8/zqq;->repeat(Lc8/Vlq;Lc8/Inq;Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    sget-object v0, Lc8/zqq;->REDO_INFINITE:Lc8/Inq;

    invoke-static {p0, v0}, Lc8/zqq;->retry(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lc8/Vlq;J)Lc8/Vlq;
    .locals 5
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;J)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    const-wide/16 v2, 0x0

    .line 126
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "count >= 0 expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 132
    .end local p0    # "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    :cond_1
    new-instance v0, Lc8/wqq;

    invoke-direct {v0, p1, p2}, Lc8/wqq;-><init>(J)V

    invoke-static {p0, v0}, Lc8/zqq;->retry(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;

    move-result-object p0

    goto :goto_0
.end method

.method public static retry(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;+",
            "Lc8/Vlq",
            "<*>;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lc8/zqq;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lc8/hBq;->trampoline()Lc8/amq;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lc8/zqq;-><init>(Lc8/Vlq;Lc8/Inq;ZZLc8/amq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static retry(Lc8/Vlq;Lc8/Inq;Lc8/amq;)Lc8/Vlq;
    .locals 6
    .param p2, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Lc8/Qlq",
            "<*>;>;+",
            "Lc8/Vlq",
            "<*>;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lc8/zqq;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/zqq;-><init>(Lc8/Vlq;Lc8/Inq;ZZLc8/amq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lc8/zqq;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v16, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 193
    .local v16, "resumeBoundary":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 195
    .local v7, "consumerCapacity":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/zqq;->scheduler:Lc8/amq;

    invoke-virtual {v3}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v14

    .line 196
    .local v14, "worker":Lc8/Zlq;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 198
    new-instance v8, Lc8/YBq;

    invoke-direct {v8}, Lc8/YBq;-><init>()V

    .line 199
    .local v8, "sourceSubscriptions":Lc8/YBq;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 205
    invoke-static {}, Lc8/wBq;->create()Lc8/wBq;

    move-result-object v5

    .line 206
    .local v5, "terminals":Lc8/wBq;, "Lrx/subjects/BehaviorSubject<Lrx/Notification<*>;>;"
    invoke-static {}, Lc8/wAq;->empty()Lc8/Omq;

    move-result-object v24

    .line 209
    .local v24, "dummySubscriber":Lc8/Omq;, "Lrx/Subscriber<Lrx/Notification<*>;>;"
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lc8/wBq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 211
    new-instance v6, Lc8/Jwq;

    invoke-direct {v6}, Lc8/Jwq;-><init>()V

    .line 213
    .local v6, "arbiter":Lc8/Jwq;
    new-instance v2, Lc8/pqq;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lc8/pqq;-><init>(Lc8/zqq;Lc8/Omq;Lc8/wBq;Lc8/Jwq;Ljava/util/concurrent/atomic/AtomicLong;Lc8/YBq;)V

    .line 280
    .local v2, "subscribeToSource":Lc8/hnq;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/zqq;->controlHandlerFunction:Lc8/Inq;

    new-instance v4, Lc8/rqq;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lc8/rqq;-><init>(Lc8/zqq;)V

    invoke-virtual {v5, v4}, Lc8/wBq;->lift(Lc8/Tlq;)Lc8/Vlq;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/Vlq;

    .line 315
    .local v11, "restarts":Lc8/Vlq;, "Lrx/Observable<*>;"
    new-instance v9, Lc8/tqq;

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object v13, v7

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lc8/tqq;-><init>(Lc8/zqq;Lc8/Vlq;Lc8/Omq;Ljava/util/concurrent/atomic/AtomicLong;Lc8/Zlq;Lc8/hnq;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v14, v9}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 353
    new-instance v17, Lc8/uqq;

    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v6

    move-object/from16 v21, v16

    move-object/from16 v22, v14

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v23}, Lc8/uqq;-><init>(Lc8/zqq;Ljava/util/concurrent/atomic/AtomicLong;Lc8/Jwq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/Zlq;Lc8/hnq;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 367
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lc8/zqq;, "Lrx/internal/operators/OnSubscribeRedo<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/zqq;->call(Lc8/Omq;)V

    return-void
.end method
