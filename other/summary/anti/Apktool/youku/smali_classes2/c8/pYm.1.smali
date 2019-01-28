.class public Lc8/pYm;
.super Ljava/lang/Object;
.source "ConfigService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rYm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rYm;


# direct methods
.method constructor <init>(Lc8/rYm;)V
    .locals 0
    .param p1, "this$0"    # Lc8/rYm;

    .prologue
    .line 162
    iput-object p1, p0, Lc8/pYm;->this$0:Lc8/rYm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lc8/pYm;->this$0:Lc8/rYm;

    invoke-static {v0}, Lc8/rYm;->access$300(Lc8/rYm;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lc8/WYm;->isApplicationShowing(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pYm;->this$0:Lc8/rYm;

    invoke-static {v0}, Lc8/rYm;->access$300(Lc8/rYm;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lc8/WYm;->isRunningForeground(Landroid/app/Application;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 166
    :cond_0
    iget-object v0, p0, Lc8/pYm;->this$0:Lc8/rYm;

    invoke-static {v0}, Lc8/rYm;->access$400(Lc8/rYm;)Lc8/qYm;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/pYm;->this$0:Lc8/rYm;

    invoke-static {v0}, Lc8/rYm;->access$400(Lc8/rYm;)Lc8/qYm;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qYm;->getStartActivityCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lc8/pYm;->this$0:Lc8/rYm;

    invoke-static {v0}, Lc8/rYm;->access$400(Lc8/rYm;)Lc8/qYm;

    move-result-object v0

    invoke-virtual {v0}, Lc8/qYm;->resetStartActivityCount()V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    invoke-static {}, Lc8/AYm;->getInstance()Lc8/AYm;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/AYm;->updateConfig(Lcom/alibaba/poplayer/PopLayer;)V

    .line 175
    iget-object v0, p0, Lc8/pYm;->this$0:Lc8/rYm;

    invoke-static {v0}, Lc8/rYm;->access$500(Lc8/rYm;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
