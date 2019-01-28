.class public Lc8/td;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HierarchyChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/yd;


# direct methods
.method constructor <init>(Lc8/yd;)V
    .locals 0

    .prologue
    .line 2959
    iput-object p1, p0, Lc8/td;->this$0:Lc8/yd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2960
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2964
    iget-object v0, p0, Lc8/td;->this$0:Lc8/yd;

    iget-object v0, v0, Lc8/yd;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 2965
    iget-object v0, p0, Lc8/td;->this$0:Lc8/yd;

    iget-object v0, v0, Lc8/yd;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 2967
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 2971
    iget-object v0, p0, Lc8/td;->this$0:Lc8/yd;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lc8/yd;->onChildViewsChanged(I)V

    .line 2973
    iget-object v0, p0, Lc8/td;->this$0:Lc8/yd;

    iget-object v0, v0, Lc8/yd;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_0

    .line 2974
    iget-object v0, p0, Lc8/td;->this$0:Lc8/yd;

    iget-object v0, v0, Lc8/yd;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2976
    :cond_0
    return-void
.end method
