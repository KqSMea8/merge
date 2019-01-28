.class public abstract Lc8/Ehb;
.super Landroid/os/AsyncTask;
.source "AbsAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "kernel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lc8/Ehb;, "Lcom/ali/auth/third/core/task/AbsAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs abstract asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected abstract doFinally()V
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lc8/Ehb;, "Lcom/ali/auth/third/core/task/AbsAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    :try_start_0
    invoke-virtual {p0, p1}, Lc8/Ehb;->asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lc8/Ehb;->doFinally()V

    .line 27
    :goto_0
    return-object v1

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v1, "kernel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-virtual {p0, v0}, Lc8/Ehb;->doWhenException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    invoke-virtual {p0}, Lc8/Ehb;->doFinally()V

    .line 27
    const/4 v1, 0x0

    goto :goto_0

    .line 25
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lc8/Ehb;->doFinally()V

    throw v1
.end method

.method protected abstract doWhenException(Ljava/lang/Throwable;)V
.end method
