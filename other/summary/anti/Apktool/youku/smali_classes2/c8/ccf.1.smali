.class public Lc8/ccf;
.super Ljava/lang/Object;
.source "UiAsyncTask.java"

# interfaces
.implements Lc8/fbf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ecf;-><init>(Landroid/app/Activity;Lc8/dcf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ecf;

.field final synthetic val$source_activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lc8/ecf;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lc8/ccf;, "Lcom/taobao/android/routine/UiAsyncTask.1;"
    iput-object p1, p0, Lc8/ccf;->this$0:Lc8/ecf;

    iput-object p2, p0, Lc8/ccf;->val$source_activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    .local p0, "this":Lc8/ccf;, "Lcom/taobao/android/routine/UiAsyncTask.1;"
    return-void
.end method

.method public onDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    .local p0, "this":Lc8/ccf;, "Lcom/taobao/android/routine/UiAsyncTask.1;"
    return-void
.end method

.method public onPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    .local p0, "this":Lc8/ccf;, "Lcom/taobao/android/routine/UiAsyncTask.1;"
    return-void
.end method

.method public onResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    .local p0, "this":Lc8/ccf;, "Lcom/taobao/android/routine/UiAsyncTask.1;"
    return-void
.end method

.method public onStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    .local p0, "this":Lc8/ccf;, "Lcom/taobao/android/routine/UiAsyncTask.1;"
    return-void
.end method

.method public onStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    .local p0, "this":Lc8/ccf;, "Lcom/taobao/android/routine/UiAsyncTask.1;"
    iget-object v0, p0, Lc8/ccf;->val$source_activity:Landroid/app/Activity;

    check-cast v0, Lc8/gbf;

    invoke-virtual {v0, p0}, Lc8/gbf;->unregisterIndividualActivityLifecycleCallback(Lc8/fbf;)V

    .line 54
    iget-object v0, p0, Lc8/ccf;->this$0:Lc8/ecf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/ecf;->cancel(Z)Z

    .line 55
    return-void
.end method
