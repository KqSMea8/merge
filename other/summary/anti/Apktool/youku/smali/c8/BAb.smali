.class public Lc8/BAb;
.super Landroid/content/BroadcastReceiver;
.source "UTNetWorkStatusChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CAb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/CAb;


# direct methods
.method private constructor <init>(Lc8/CAb;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lc8/BAb;->this$0:Lc8/CAb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/CAb;Lc8/zAb;)V
    .locals 0
    .param p1, "x0"    # Lc8/CAb;
    .param p2, "x1"    # Lc8/zAb;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lc8/BAb;-><init>(Lc8/CAb;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lc8/BAb;->this$0:Lc8/CAb;

    invoke-static {v0}, Lc8/CAb;->access$100(Lc8/CAb;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lc8/BAb;->this$0:Lc8/CAb;

    invoke-static {v0}, Lc8/CAb;->access$100(Lc8/CAb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc8/BAb;->this$0:Lc8/CAb;

    invoke-static {v1}, Lc8/CAb;->access$200(Lc8/CAb;)Lc8/AAb;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lc8/BAb;->this$0:Lc8/CAb;

    invoke-static {v0}, Lc8/CAb;->access$200(Lc8/CAb;)Lc8/AAb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/AAb;->setContext(Landroid/content/Context;)V

    .line 105
    iget-object v0, p0, Lc8/BAb;->this$0:Lc8/CAb;

    invoke-static {v0}, Lc8/CAb;->access$100(Lc8/CAb;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lc8/BAb;->this$0:Lc8/CAb;

    invoke-static {v1}, Lc8/CAb;->access$200(Lc8/CAb;)Lc8/AAb;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
