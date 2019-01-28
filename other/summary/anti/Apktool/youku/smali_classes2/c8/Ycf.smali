.class public abstract Lc8/Ycf;
.super Landroid/os/AsyncTask;
.source "SafeAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field private final mActivity:Lc8/KZe;


# direct methods
.method public constructor <init>(Lc8/KZe;)V
    .locals 0
    .param p1, "activity"    # Lc8/KZe;

    .prologue
    .line 15
    .local p0, "this":Lc8/Ycf;, "Lcom/taobao/android/task/SafeAsyncTask<TParams;TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/Ycf;->mActivity:Lc8/KZe;

    .line 17
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    invoke-static {}, Lc8/Vcf;->getDefaultAsyncTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    return-void
.end method

.method public static final init()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method


# virtual methods
.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lc8/Ycf;, "Lcom/taobao/android/task/SafeAsyncTask<TParams;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Lc8/Ycf;->mActivity:Lc8/KZe;

    invoke-virtual {v0}, Lc8/KZe;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Ycf;->mActivity:Lc8/KZe;

    invoke-interface {v0}, Lc8/LZe;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, Lc8/Ycf;->onResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method
