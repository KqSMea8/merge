.class public final Lc8/zhq;
.super Ljava/lang/Object;
.source "RxSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yhq;
    }
.end annotation


# instance fields
.field private final errorHandler:Lc8/Hgq;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final requestInterceptor:Lc8/fhq;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lc8/Hgq;Lc8/fhq;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "errorHandler"    # Lc8/Hgq;
    .param p3, "requestInterceptor"    # Lc8/fhq;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lc8/zhq;->executor:Ljava/util/concurrent/Executor;

    .line 27
    iput-object p2, p0, Lc8/zhq;->errorHandler:Lc8/Hgq;

    .line 28
    iput-object p3, p0, Lc8/zhq;->requestInterceptor:Lc8/fhq;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lc8/zhq;)Lc8/fhq;
    .locals 1
    .param p0, "x0"    # Lc8/zhq;

    .prologue
    .line 14
    iget-object v0, p0, Lc8/zhq;->requestInterceptor:Lc8/fhq;

    return-object v0
.end method

.method static synthetic access$100(Lc8/zhq;Lc8/Omq;Lc8/yhq;Lc8/ihq;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lc8/zhq;
    .param p1, "x1"    # Lc8/Omq;
    .param p2, "x2"    # Lc8/yhq;
    .param p3, "x3"    # Lc8/ihq;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lc8/zhq;->getRunnable(Lc8/Omq;Lc8/yhq;Lc8/ihq;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/zhq;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lc8/zhq;

    .prologue
    .line 14
    iget-object v0, p0, Lc8/zhq;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$300(Lc8/zhq;)Lc8/Hgq;
    .locals 1
    .param p0, "x0"    # Lc8/zhq;

    .prologue
    .line 14
    iget-object v0, p0, Lc8/zhq;->errorHandler:Lc8/Hgq;

    return-object v0
.end method

.method private getRunnable(Lc8/Omq;Lc8/yhq;Lc8/ihq;)Ljava/lang/Runnable;
    .locals 1
    .param p2, "invoker"    # Lc8/yhq;
    .param p3, "interceptorTape"    # Lc8/ihq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/yhq;",
            "Lc8/ihq;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-Ljava/lang/Object;>;"
    new-instance v0, Lc8/xhq;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/xhq;-><init>(Lc8/zhq;Lc8/Omq;Lc8/yhq;Lc8/ihq;)V

    return-object v0
.end method


# virtual methods
.method createRequestObservable(Lc8/yhq;)Lc8/Vlq;
    .locals 1
    .param p1, "invoker"    # Lc8/yhq;

    .prologue
    .line 32
    new-instance v0, Lc8/whq;

    invoke-direct {v0, p0, p1}, Lc8/whq;-><init>(Lc8/zhq;Lc8/yhq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
