.class public Lc8/vqd;
.super Lc8/JZo;
.source "PullToRefreshHeaderGridView.java"

# interfaces
.implements Lc8/Iqd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalGridView"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xqd;


# direct methods
.method public constructor <init>(Lc8/xqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    iput-object p1, p0, Lc8/vqd;->this$0:Lc8/xqd;

    .line 71
    invoke-direct {p0, p2, p3}, Lc8/JZo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lc8/JZo;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lc8/vqd;->this$0:Lc8/xqd;

    invoke-virtual {v0, p1}, Lc8/xqd;->setEmptyView(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lc8/JZo;->setEmptyView(Landroid/view/View;)V

    .line 87
    return-void
.end method
