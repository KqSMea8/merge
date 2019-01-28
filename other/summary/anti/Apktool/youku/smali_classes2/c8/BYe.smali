.class public Lc8/BYe;
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

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$current:Landroid/app/Activity;

.field final synthetic val$currentActivitySize:I

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/EYe;Landroid/app/Activity;ILandroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lc8/BYe;->this$0:Lc8/EYe;

    iput-object p2, p0, Lc8/BYe;->val$current:Landroid/app/Activity;

    iput p3, p0, Lc8/BYe;->val$currentActivitySize:I

    iput-object p4, p0, Lc8/BYe;->val$container:Landroid/view/ViewGroup;

    iput-object p5, p0, Lc8/BYe;->val$key:Ljava/lang/String;

    iput-object p6, p0, Lc8/BYe;->val$intent:Landroid/content/Intent;

    iput-object p7, p0, Lc8/BYe;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lc8/BYe;->val$current:Landroid/app/Activity;

    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Oy;->peekTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lc8/BYe;->val$currentActivitySize:I

    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Oy;->sizeOfActivityStack()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 225
    :cond_0
    iget-object v0, p0, Lc8/BYe;->this$0:Lc8/EYe;

    iget-object v1, p0, Lc8/BYe;->val$container:Landroid/view/ViewGroup;

    iget-object v2, p0, Lc8/BYe;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lc8/BYe;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Lc8/EYe;->access$200(Lc8/EYe;Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lc8/BYe;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/BYe;->val$current:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/BYe;->val$current:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    :try_start_0
    iget-object v0, p0, Lc8/BYe;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lc8/BYe;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
