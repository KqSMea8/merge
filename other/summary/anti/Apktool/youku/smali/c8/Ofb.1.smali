.class public Lc8/Ofb;
.super Ljava/lang/Object;
.source "AccountLinkComponent.java"

# interfaces
.implements Lc8/xgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qfb;->handleTrustLoginEvent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qfb;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lc8/Qfb;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qfb;

    .prologue
    .line 92
    iput-object p1, p0, Lc8/Ofb;->this$0:Lc8/Qfb;

    iput-object p2, p0, Lc8/Ofb;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 95
    const-class v0, Lc8/shb;

    invoke-static {v0}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/shb;

    new-instance v1, Lc8/Mfb;

    invoke-direct {v1, p0, p1, p2}, Lc8/Mfb;-><init>(Lc8/Ofb;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public onSuccess(Lc8/ahb;)V
    .locals 2
    .param p1, "session"    # Lc8/ahb;

    .prologue
    .line 116
    iget-object v0, p0, Lc8/Ofb;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ofb;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lc8/Ofb;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 119
    :cond_0
    const-class v0, Lc8/shb;

    invoke-static {v0}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/shb;

    new-instance v1, Lc8/Nfb;

    invoke-direct {v1, p0, p1}, Lc8/Nfb;-><init>(Lc8/Ofb;Lc8/ahb;)V

    invoke-interface {v0, v1}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method
