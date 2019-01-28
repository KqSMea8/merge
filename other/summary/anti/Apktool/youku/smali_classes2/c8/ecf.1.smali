.class public abstract Lc8/ecf;
.super Landroid/os/AsyncTask;
.source "UiAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/dcf;
    }
.end annotation

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


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mUiPostExecutable:Lc8/dcf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/dcf",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc8/dcf;)V
    .locals 2
    .param p1, "source_activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lc8/dcf",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lc8/ecf;, "Lcom/taobao/android/routine/UiAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "ui_post_executable":Lc8/dcf;, "Lcom/taobao/android/routine/UiAsyncTask$UiPostExecutable<TResult;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "UiAsyncTask must be explicitly derived to avoid activity leak."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    instance-of v0, p1, Lc8/gbf;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 50
    check-cast v0, Lc8/gbf;

    new-instance v1, Lc8/ccf;

    invoke-direct {v1, p0, p1}, Lc8/ccf;-><init>(Lc8/ecf;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lc8/gbf;->registerIndividualActivityLifecycleCallback(Lc8/fbf;)V

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/ecf;->mActivity:Ljava/lang/ref/WeakReference;

    .line 65
    iput-object p2, p0, Lc8/ecf;->mUiPostExecutable:Lc8/dcf;

    .line 66
    return-void
.end method

.method private static isActivityDestroyed(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    .line 42
    .end local p0    # "activity":Landroid/app/Activity;
    :goto_0
    return v0

    .line 41
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    instance-of v0, p0, Lc8/LZe;

    if-eqz v0, :cond_1

    check-cast p0, Lc8/LZe;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-interface {p0}, Lc8/LZe;->isDestroyed()Z

    move-result v0

    goto :goto_0

    .line 42
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lc8/ecf;, "Lcom/taobao/android/routine/UiAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lc8/ecf;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 31
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-static {v0}, Lc8/ecf;->isActivityDestroyed(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    iget-object v1, p0, Lc8/ecf;->mUiPostExecutable:Lc8/dcf;

    invoke-interface {v1, p1}, Lc8/dcf;->onUiPostExecute(Ljava/lang/Object;)V

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/ecf;->mUiPostExecutable:Lc8/dcf;

    goto :goto_0
.end method
