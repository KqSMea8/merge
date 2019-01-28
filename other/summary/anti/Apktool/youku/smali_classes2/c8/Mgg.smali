.class public Lc8/Mgg;
.super Ljava/lang/Object;
.source "BatchOperationHelper.java"

# interfaces
.implements Lc8/Ngg;


# instance fields
.field private isCollecting:Z

.field private mExecutor:Lc8/Kgg;

.field private sRegisterTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Kgg;)V
    .locals 1
    .param p1, "executor"    # Lc8/Kgg;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Mgg;->sRegisterTasks:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Mgg;->isCollecting:Z

    .line 38
    iput-object p1, p0, Lc8/Mgg;->mExecutor:Lc8/Kgg;

    .line 39
    invoke-interface {p1, p0}, Lc8/Kgg;->setInterceptor(Lc8/Ngg;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Mgg;->isCollecting:Z

    .line 41
    return-void
.end method

.method static synthetic access$000(Lc8/Mgg;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/Mgg;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/Mgg;->sRegisterTasks:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Mgg;->isCollecting:Z

    .line 57
    iget-object v0, p0, Lc8/Mgg;->mExecutor:Lc8/Kgg;

    new-instance v1, Lc8/Lgg;

    invoke-direct {v1, p0}, Lc8/Lgg;-><init>(Lc8/Mgg;)V

    invoke-interface {v0, v1}, Lc8/Kgg;->post(Ljava/lang/Runnable;)V

    .line 68
    iget-object v0, p0, Lc8/Mgg;->mExecutor:Lc8/Kgg;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc8/Kgg;->setInterceptor(Lc8/Ngg;)V

    .line 69
    return-void
.end method

.method public take(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 45
    iget-boolean v0, p0, Lc8/Mgg;->isCollecting:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lc8/Mgg;->sRegisterTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
