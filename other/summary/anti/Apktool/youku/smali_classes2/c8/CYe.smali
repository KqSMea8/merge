.class public Lc8/CYe;
.super Ljava/lang/Object;
.source "ActivityGroupDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EYe;->asyncStartActivity(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/EYe;

.field final synthetic val$current:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lc8/EYe;Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lc8/CYe;->this$0:Lc8/EYe;

    iput-object p2, p0, Lc8/CYe;->val$current:Landroid/app/Activity;

    iput-object p3, p0, Lc8/CYe;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Oy;->peekTopActivity()Landroid/app/Activity;

    .line 243
    iget-object v0, p0, Lc8/CYe;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/CYe;->val$current:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/CYe;->val$current:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :try_start_0
    iget-object v0, p0, Lc8/CYe;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lc8/CYe;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
