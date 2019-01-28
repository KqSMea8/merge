.class public final enum Lrx/internal/util/InternalObservableUtils;
.super Ljava/lang/Enum;
.source "InternalObservableUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Exq;,
        Lc8/Hxq;,
        Lc8/Fxq;,
        Lc8/Rxq;,
        Lc8/Pxq;,
        Lc8/Oxq;,
        Lc8/Qxq;,
        Lc8/Jxq;,
        Lc8/Sxq;,
        Lc8/Uxq;,
        Lc8/Txq;,
        Lc8/Nxq;,
        Lc8/Ixq;,
        Lc8/Gxq;,
        Lc8/Vxq;,
        Lc8/Kxq;,
        Lc8/Mxq;,
        Lc8/Lxq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lrx/internal/util/InternalObservableUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lrx/internal/util/InternalObservableUtils;

.field public static final COUNTER:Lc8/Lxq;

.field public static final ERROR_EXTRACTOR:Lc8/Jxq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public static final ERROR_NOT_IMPLEMENTED:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_EMPTY:Lc8/Tlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Tlq",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_COUNTER:Lc8/Mxq;

.field public static final OBJECT_EQUALS:Lc8/Kxq;

.field public static final RETURNS_VOID:Lc8/Txq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public static final TO_ARRAY:Lc8/Vxq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [Lrx/internal/util/InternalObservableUtils;

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    .line 38
    new-instance v0, Lc8/Mxq;

    invoke-direct {v0}, Lc8/Mxq;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->LONG_COUNTER:Lc8/Mxq;

    .line 43
    new-instance v0, Lc8/Kxq;

    invoke-direct {v0}, Lc8/Kxq;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->OBJECT_EQUALS:Lc8/Kxq;

    .line 47
    new-instance v0, Lc8/Vxq;

    invoke-direct {v0}, Lc8/Vxq;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->TO_ARRAY:Lc8/Vxq;

    .line 49
    new-instance v0, Lc8/Txq;

    invoke-direct {v0}, Lc8/Txq;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->RETURNS_VOID:Lc8/Txq;

    .line 54
    new-instance v0, Lc8/Lxq;

    invoke-direct {v0}, Lc8/Lxq;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->COUNTER:Lc8/Lxq;

    .line 56
    new-instance v0, Lc8/Jxq;

    invoke-direct {v0}, Lc8/Jxq;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_EXTRACTOR:Lc8/Jxq;

    .line 61
    new-instance v0, Lc8/Hxq;

    invoke-direct {v0}, Lc8/Hxq;-><init>()V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->ERROR_NOT_IMPLEMENTED:Lc8/inq;

    .line 63
    new-instance v0, Lc8/Zqq;

    invoke-static {}, Lc8/Ayq;->alwaysTrue()Lc8/Inq;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/Zqq;-><init>(Lc8/Inq;Z)V

    sput-object v0, Lrx/internal/util/InternalObservableUtils;->IS_EMPTY:Lc8/Tlq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 383
    return-void
.end method

.method public static createCollectorCaller(Lc8/jnq;)Lc8/Jnq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/jnq",
            "<TR;-TT;>;)",
            "Lc8/Jnq",
            "<TR;TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "collector":Lc8/jnq;, "Lrx/functions/Action2<TR;-TT;>;"
    new-instance v0, Lc8/Fxq;

    invoke-direct {v0, p0}, Lc8/Fxq;-><init>(Lc8/jnq;)V

    return-object v0
.end method

.method public static final createRepeatDematerializer(Lc8/Inq;)Lc8/Inq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;)",
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

    .prologue
    .line 146
    .local p0, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lc8/Nxq;

    invoke-direct {v0, p0}, Lc8/Nxq;-><init>(Lc8/Inq;)V

    return-object v0
.end method

.method public static createReplaySelectorAndObserveOn(Lc8/Inq;Lc8/amq;)Lc8/Inq;
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Inq",
            "<",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Vlq",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lc8/Uxq;

    invoke-direct {v0, p0, p1}, Lc8/Uxq;-><init>(Lc8/Inq;Lc8/amq;)V

    return-object v0
.end method

.method public static createReplaySupplier(Lc8/Vlq;)Lc8/Hnq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Hnq",
            "<",
            "Lc8/Vzq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Qxq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/Qxq;-><init>(Lc8/Vlq;Lc8/Exq;)V

    return-object v0
.end method

.method public static createReplaySupplier(Lc8/Vlq;I)Lc8/Hnq;
    .locals 2
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;I)",
            "Lc8/Hnq",
            "<",
            "Lc8/Vzq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Oxq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lc8/Oxq;-><init>(Lc8/Vlq;ILc8/Exq;)V

    return-object v0
.end method

.method public static createReplaySupplier(Lc8/Vlq;IJLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Hnq;
    .locals 10
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Hnq",
            "<",
            "Lc8/Vzq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v1, Lc8/Rxq;

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lc8/Rxq;-><init>(Lc8/Vlq;IJLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Exq;)V

    return-object v1
.end method

.method public static createReplaySupplier(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Hnq;
    .locals 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Hnq",
            "<",
            "Lc8/Vzq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/Pxq;

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lc8/Pxq;-><init>(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;Lc8/Exq;)V

    return-object v0
.end method

.method public static final createRetryDematerializer(Lc8/Inq;)Lc8/Inq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lc8/Vlq",
            "<*>;>;)",
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

    .prologue
    .line 211
    .local p0, "notificationHandler":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lc8/Sxq;

    invoke-direct {v0, p0}, Lc8/Sxq;-><init>(Lc8/Inq;)V

    return-object v0
.end method

.method public static equalsWith(Ljava/lang/Object;)Lc8/Inq;
    .locals 1
    .param p0, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lc8/Gxq;

    invoke-direct {v0, p0}, Lc8/Gxq;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isInstanceOf(Ljava/lang/Class;)Lc8/Inq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lc8/Inq",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lc8/Ixq;

    invoke-direct {v0, p0}, Lc8/Ixq;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lrx/internal/util/InternalObservableUtils;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lrx/internal/util/InternalObservableUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method

.method public static values()[Lrx/internal/util/InternalObservableUtils;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lrx/internal/util/InternalObservableUtils;->$VALUES:[Lrx/internal/util/InternalObservableUtils;

    invoke-virtual {v0}, [Lrx/internal/util/InternalObservableUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/util/InternalObservableUtils;

    return-object v0
.end method
