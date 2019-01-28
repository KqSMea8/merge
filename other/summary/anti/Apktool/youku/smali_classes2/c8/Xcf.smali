.class public Lc8/Xcf;
.super Ljava/lang/Object;
.source "Flow.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Flow"


# instance fields
.field protected mAbortIfError:Z

.field protected mCancel:Z

.field protected mTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Tcf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Xcf;->mTaskList:Ljava/util/ArrayList;

    .line 20
    iput-boolean v1, p0, Lc8/Xcf;->mCancel:Z

    .line 22
    iput-boolean v1, p0, Lc8/Xcf;->mAbortIfError:Z

    return-void
.end method


# virtual methods
.method public addTask(Lc8/Tcf;)Lc8/Xcf;
    .locals 1
    .param p1, "task"    # Lc8/Tcf;

    .prologue
    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lc8/Xcf;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Xcf;->mCancel:Z

    .line 70
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lc8/Wcf;

    invoke-direct {v0, p0}, Lc8/Wcf;-><init>(Lc8/Xcf;)V

    .line 62
    .local v0, "flowTask":Ljava/lang/Runnable;
    invoke-static {}, Lc8/Vcf;->getDefaultAsyncTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
