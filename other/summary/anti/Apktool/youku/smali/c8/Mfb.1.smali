.class public Lc8/Mfb;
.super Ljava/lang/Object;
.source "AccountLinkComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ofb;->onFailure(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Ofb;

.field final synthetic val$code:I

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Ofb;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Ofb;

    .prologue
    .line 95
    iput-object p1, p0, Lc8/Mfb;->this$1:Lc8/Ofb;

    iput p2, p0, Lc8/Mfb;->val$code:I

    iput-object p3, p0, Lc8/Mfb;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lc8/Mfb;->this$1:Lc8/Ofb;

    iget-object v0, v0, Lc8/Ofb;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Mfb;->this$1:Lc8/Ofb;

    iget-object v0, v0, Lc8/Ofb;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lc8/Mfb;->this$1:Lc8/Ofb;

    iget-object v0, v0, Lc8/Ofb;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 102
    :cond_0
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 103
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    check-cast v0, Lc8/xgb;

    iget v1, p0, Lc8/Mfb;->val$code:I

    iget-object v2, p0, Lc8/Mfb;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 106
    :cond_1
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v0, :cond_2

    .line 107
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    iget v1, p0, Lc8/Mfb;->val$code:I

    iget-object v2, p0, Lc8/Mfb;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 110
    :cond_2
    return-void
.end method
