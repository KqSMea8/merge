.class public Lc8/yhb;
.super Ljava/lang/Object;
.source "ExecutorServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ahb;->postUITask(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ahb;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lc8/Ahb;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ahb;

    .prologue
    .line 77
    iput-object p1, p0, Lc8/yhb;->this$0:Lc8/Ahb;

    iput-object p2, p0, Lc8/yhb;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lc8/yhb;->val$r:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "kernel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
