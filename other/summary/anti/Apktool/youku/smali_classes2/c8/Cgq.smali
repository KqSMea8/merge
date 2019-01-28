.class public abstract Lc8/Cgq;
.super Ljava/lang/Object;
.source "CallbackRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final callback:Lc8/zgq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/zgq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final errorHandler:Lc8/Hgq;


# direct methods
.method constructor <init>(Lc8/zgq;Ljava/util/concurrent/Executor;Lc8/Hgq;)V
    .locals 0
    .param p2, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "errorHandler"    # Lc8/Hgq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/zgq",
            "<TT;>;",
            "Ljava/util/concurrent/Executor;",
            "Lc8/Hgq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lc8/Cgq;, "Lretrofit/CallbackRunnable<TT;>;"
    .local p1, "callback":Lc8/zgq;, "Lretrofit/Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lc8/Cgq;->callback:Lc8/zgq;

    .line 35
    iput-object p2, p0, Lc8/Cgq;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 36
    iput-object p3, p0, Lc8/Cgq;->errorHandler:Lc8/Hgq;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lc8/Cgq;)Lc8/zgq;
    .locals 1
    .param p0, "x0"    # Lc8/Cgq;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/Cgq;->callback:Lc8/zgq;

    return-object v0
.end method


# virtual methods
.method public abstract obtainResponse()Lc8/khq;
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 42
    .local p0, "this":Lc8/Cgq;, "Lretrofit/CallbackRunnable<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lc8/Cgq;->obtainResponse()Lc8/khq;

    move-result-object v3

    .line 43
    .local v3, "wrapper":Lc8/khq;
    iget-object v4, p0, Lc8/Cgq;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lc8/Agq;

    invoke-direct {v5, p0, v3}, Lc8/Agq;-><init>(Lc8/Cgq;Lc8/khq;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v3    # "wrapper":Lc8/khq;
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Lretrofit/RetrofitError;
    iget-object v4, p0, Lc8/Cgq;->errorHandler:Lc8/Hgq;

    invoke-interface {v4, v1}, Lc8/Hgq;->handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;

    move-result-object v0

    .line 50
    .local v0, "cause":Ljava/lang/Throwable;
    if-ne v0, v1, :cond_0

    move-object v2, v1

    .line 51
    .local v2, "handled":Lretrofit/RetrofitError;
    :goto_1
    iget-object v4, p0, Lc8/Cgq;->callbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lc8/Bgq;

    invoke-direct {v5, p0, v2}, Lc8/Bgq;-><init>(Lc8/Cgq;Lretrofit/RetrofitError;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 50
    .end local v2    # "handled":Lretrofit/RetrofitError;
    :cond_0
    invoke-virtual {v1}, Lretrofit/RetrofitError;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v2

    goto :goto_1
.end method
