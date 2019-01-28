.class public Lc8/Wcf;
.super Ljava/lang/Object;
.source "Flow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xcf;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xcf;


# direct methods
.method constructor <init>(Lc8/Xcf;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lc8/Wcf;->this$0:Lc8/Xcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lc8/Wcf;->this$0:Lc8/Xcf;

    iget-object v4, v4, Lc8/Xcf;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 47
    iget-object v4, p0, Lc8/Wcf;->this$0:Lc8/Xcf;

    iget-boolean v4, v4, Lc8/Xcf;->mCancel:Z

    if-eqz v4, :cond_1

    .line 59
    :cond_0
    return-void

    .line 50
    :cond_1
    iget-object v4, p0, Lc8/Wcf;->this$0:Lc8/Xcf;

    iget-object v4, v4, Lc8/Xcf;->mTaskList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Tcf;

    .line 53
    .local v3, "task":Lc8/Tcf;
    :try_start_0
    invoke-virtual {v3}, Lc8/Tcf;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/Wcf;->this$0:Lc8/Xcf;

    iget-boolean v4, v4, Lc8/Xcf;->mAbortIfError:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 56
    :cond_2
    const-string/jumbo v4, "Flow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lc8/Tcf;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
