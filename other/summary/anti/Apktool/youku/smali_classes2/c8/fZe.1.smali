.class public Lc8/fZe;
.super Ljava/lang/Object;
.source "ConcurrenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gZe;->scheduleNewTask(Lc8/lZe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gZe;

.field final synthetic val$dbTask:Lc8/lZe;

.field final synthetic val$finalResult:Lc8/UYe;


# direct methods
.method constructor <init>(Lc8/gZe;Lc8/lZe;Lc8/UYe;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lc8/fZe;->this$0:Lc8/gZe;

    iput-object p2, p0, Lc8/fZe;->val$dbTask:Lc8/lZe;

    iput-object p3, p0, Lc8/fZe;->val$finalResult:Lc8/UYe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lc8/fZe;->val$dbTask:Lc8/lZe;

    iget-object v0, v0, Lc8/lZe;->execCallback:Lc8/sZe;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lc8/fZe;->val$dbTask:Lc8/lZe;

    iget-object v0, v0, Lc8/lZe;->execCallback:Lc8/sZe;

    iget-object v1, p0, Lc8/fZe;->val$finalResult:Lc8/UYe;

    invoke-interface {v0, v1}, Lc8/sZe;->onExecDone(Lc8/UYe;)V

    .line 160
    :cond_0
    return-void
.end method
