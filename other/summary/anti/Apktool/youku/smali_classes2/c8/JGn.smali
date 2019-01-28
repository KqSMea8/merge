.class public Lc8/JGn;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Lc8/Cin;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/ui/activity/UpdateActivity;->showProgressDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/UpdateActivity;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/UpdateActivity;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/UpdateActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 312
    iput-object p1, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    iput-object p2, p0, Lc8/JGn;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$600(Lcom/youku/ui/activity/UpdateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$600(Lcom/youku/ui/activity/UpdateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$600(Lcom/youku/ui/activity/UpdateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 336
    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-virtual {v0}, Lcom/youku/ui/activity/UpdateActivity;->finish()V

    .line 338
    :cond_0
    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$300(Lcom/youku/ui/activity/UpdateActivity;)V

    .line 339
    return-void
.end method

.method public onOver()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$600(Lcom/youku/ui/activity/UpdateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$600(Lcom/youku/ui/activity/UpdateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$600(Lcom/youku/ui/activity/UpdateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 328
    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-virtual {v0}, Lcom/youku/ui/activity/UpdateActivity;->finish()V

    .line 330
    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$600(Lcom/youku/ui/activity/UpdateActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/JGn;->this$0:Lcom/youku/ui/activity/UpdateActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/UpdateActivity;->access$600(Lcom/youku/ui/activity/UpdateActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lc8/JGn;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 318
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method
