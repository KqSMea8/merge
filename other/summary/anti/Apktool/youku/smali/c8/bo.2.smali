.class public Lc8/bo;
.super Lc8/Wn;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/eo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppCompatWindowCallbackV14"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eo;


# direct methods
.method constructor <init>(Lc8/eo;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lc8/eo;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 266
    iput-object p1, p0, Lc8/bo;->this$0:Lc8/eo;

    .line 267
    invoke-direct {p0, p1, p2}, Lc8/Wn;-><init>(Lc8/Xn;Landroid/view/Window$Callback;)V

    .line 268
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 273
    iget-object v0, p0, Lc8/bo;->this$0:Lc8/eo;

    invoke-virtual {v0}, Lc8/eo;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lc8/bo;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lc8/Wn;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 286
    new-instance v0, Lc8/pq;

    iget-object v2, p0, Lc8/bo;->this$0:Lc8/eo;

    iget-object v2, v2, Lc8/eo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lc8/pq;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 290
    .local v0, "callbackWrapper":Lc8/pq;
    iget-object v2, p0, Lc8/bo;->this$0:Lc8/eo;

    .line 291
    invoke-virtual {v2, v0}, Lc8/eo;->startSupportActionMode(Lc8/kq;)Lc8/lq;

    move-result-object v1

    .line 293
    .local v1, "supportActionMode":Lc8/lq;
    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v0, v1}, Lc8/pq;->getActionModeWrapper(Lc8/lq;)Landroid/view/ActionMode;

    move-result-object v2

    .line 297
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
