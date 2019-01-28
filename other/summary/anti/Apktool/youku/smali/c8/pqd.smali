.class public Lc8/pqd;
.super Landroid/widget/ExpandableListView;
.source "PullToRefreshExpandableListView.java"

# interfaces
.implements Lc8/Iqd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalExpandableListView"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rqd;


# direct methods
.method public constructor <init>(Lc8/rqd;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lc8/rqd;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    iput-object p1, p0, Lc8/pqd;->this$0:Lc8/rqd;

    .line 65
    invoke-direct {p0, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/ExpandableListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lc8/pqd;->this$0:Lc8/rqd;

    invoke-virtual {v0, p1}, Lc8/rqd;->setEmptyView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public setEmptyViewInternal(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 80
    return-void
.end method
