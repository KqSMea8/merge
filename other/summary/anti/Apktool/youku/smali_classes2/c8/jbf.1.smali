.class public Lc8/jbf;
.super Ljava/lang/Object;
.source "PanguApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kbf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickCrossRunnable"
.end annotation


# instance fields
.field private callback:Lc8/hbf;

.field private method:Ljava/lang/String;

.field final synthetic this$0:Lc8/kbf;


# direct methods
.method public constructor <init>(Lc8/kbf;Lc8/hbf;Ljava/lang/String;)V
    .locals 0
    .param p2, "callback"    # Lc8/hbf;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lc8/jbf;->this$0:Lc8/kbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lc8/jbf;->callback:Lc8/hbf;

    .line 90
    iput-object p3, p0, Lc8/jbf;->method:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v2, p0, Lc8/jbf;->this$0:Lc8/kbf;

    iget-object v2, v2, Lc8/kbf;->mWeakActivity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lc8/jbf;->this$0:Lc8/kbf;

    iget-object v2, v2, Lc8/kbf;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 96
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lc8/jbf;->callback:Lc8/hbf;

    if-eqz v2, :cond_0

    .line 97
    invoke-static {}, Lc8/Def;->isDebug()Z

    move-result v1

    .line 98
    .local v1, "debug":Z
    if-eqz v1, :cond_1

    .line 99
    iget-object v2, p0, Lc8/jbf;->callback:Lc8/hbf;

    iget-object v3, p0, Lc8/jbf;->method:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lc8/kbf;->timeingCallbackMethod(Lc8/hbf;Landroid/app/Activity;Ljava/lang/String;)V

    .line 108
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "debug":Z
    :cond_0
    :goto_0
    iput-object v4, p0, Lc8/jbf;->callback:Lc8/hbf;

    .line 109
    iput-object v4, p0, Lc8/jbf;->method:Ljava/lang/String;

    .line 110
    return-void

    .line 101
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "debug":Z
    :cond_1
    const-string/jumbo v2, "onCreated"

    iget-object v3, p0, Lc8/jbf;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lc8/jbf;->callback:Lc8/hbf;

    invoke-interface {v2, v0}, Lc8/hbf;->onCreated(Landroid/app/Activity;)V

    goto :goto_0

    .line 103
    :cond_2
    const-string/jumbo v2, "onStarted"

    iget-object v3, p0, Lc8/jbf;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lc8/jbf;->callback:Lc8/hbf;

    invoke-interface {v2, v0}, Lc8/hbf;->onStarted(Landroid/app/Activity;)V

    goto :goto_0
.end method
