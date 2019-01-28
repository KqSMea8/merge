.class public Lc8/AYe;
.super Ljava/lang/Object;
.source "ActivityGroupDelegate.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EYe;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/EYe;


# direct methods
.method constructor <init>(Lc8/EYe;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v0}, Lc8/EYe;->access$000(Lc8/EYe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 95
    iget-object v0, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v0}, Lc8/EYe;->access$100(Lc8/EYe;)Lc8/GYe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/GYe;->removeAllActivities()V

    .line 97
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v0}, Lc8/EYe;->access$000(Lc8/EYe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 71
    iget-object v0, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v0}, Lc8/EYe;->access$100(Lc8/EYe;)Lc8/GYe;

    move-result-object v0

    iget-object v1, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v1}, Lc8/EYe;->access$000(Lc8/EYe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lc8/GYe;->dispatchPause(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    iget-object v0, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v0}, Lc8/EYe;->access$000(Lc8/EYe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 64
    iget-object v0, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v0}, Lc8/EYe;->access$100(Lc8/EYe;)Lc8/GYe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/GYe;->dispatchResume()V

    .line 66
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 84
    iget-object v1, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v1}, Lc8/EYe;->access$000(Lc8/EYe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 85
    iget-object v1, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v1}, Lc8/EYe;->access$100(Lc8/EYe;)Lc8/GYe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/GYe;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "state":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v1, "android:states"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    .end local v0    # "state":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    iget-object v0, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v0}, Lc8/EYe;->access$000(Lc8/EYe;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 78
    iget-object v0, p0, Lc8/AYe;->this$0:Lc8/EYe;

    invoke-static {v0}, Lc8/EYe;->access$100(Lc8/EYe;)Lc8/GYe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/GYe;->dispatchStop()V

    .line 80
    :cond_0
    return-void
.end method
