.class public Lc8/pvk;
.super Ljava/lang/Object;
.source "ChinaUnicomManager.java"

# interfaces
.implements Lc8/wvk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/rvk;->showMessageDialog(Landroid/content/Context;ILc8/Qgn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rvk;

.field final synthetic val$mOnclick:Lc8/Qgn;


# direct methods
.method constructor <init>(Lc8/rvk;Lc8/Qgn;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lc8/pvk;->this$0:Lc8/rvk;

    iput-object p2, p0, Lc8/pvk;->val$mOnclick:Lc8/Qgn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelClickEvent()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc8/pvk;->val$mOnclick:Lc8/Qgn;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lc8/pvk;->val$mOnclick:Lc8/Qgn;

    invoke-interface {v0}, Lc8/Qgn;->cancelClickEvent()V

    .line 114
    :cond_0
    return-void
.end method

.method public doClickEvent()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lc8/pvk;->val$mOnclick:Lc8/Qgn;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lc8/pvk;->val$mOnclick:Lc8/Qgn;

    invoke-interface {v0}, Lc8/Qgn;->doClickEvent()V

    .line 107
    :cond_0
    return-void
.end method
