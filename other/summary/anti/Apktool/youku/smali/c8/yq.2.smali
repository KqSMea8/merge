.class public Lc8/yq;
.super Lc8/Kt;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Aq;


# direct methods
.method public constructor <init>(Lc8/Aq;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lc8/yq;->this$0:Lc8/Aq;

    .line 311
    invoke-direct {p0, p1}, Lc8/Kt;-><init>(Landroid/view/View;)V

    .line 312
    return-void
.end method


# virtual methods
.method public getPopup()Lc8/mr;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lc8/yq;->this$0:Lc8/Aq;

    iget-object v0, v0, Lc8/Aq;->mPopupCallback:Lc8/zq;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lc8/yq;->this$0:Lc8/Aq;

    iget-object v0, v0, Lc8/Aq;->mPopupCallback:Lc8/zq;

    invoke-virtual {v0}, Lc8/zq;->getPopup()Lc8/mr;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v2, p0, Lc8/yq;->this$0:Lc8/Aq;

    iget-object v2, v2, Lc8/Aq;->mItemInvoker:Lc8/Qq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/yq;->this$0:Lc8/Aq;

    iget-object v2, v2, Lc8/Aq;->mItemInvoker:Lc8/Qq;

    iget-object v3, p0, Lc8/yq;->this$0:Lc8/Aq;

    iget-object v3, v3, Lc8/Aq;->mItemData:Lc8/Vq;

    invoke-interface {v2, v3}, Lc8/Qq;->invokeItem(Lc8/Vq;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {p0}, Lc8/yq;->getPopup()Lc8/mr;

    move-result-object v0

    .line 327
    .local v0, "popup":Lc8/mr;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc8/mr;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 329
    .end local v0    # "popup":Lc8/mr;
    :cond_0
    return v1
.end method
