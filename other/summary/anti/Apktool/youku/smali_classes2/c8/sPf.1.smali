.class public Lc8/sPf;
.super Ljava/lang/Object;
.source "TScrollView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tPf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tPf;


# direct methods
.method constructor <init>(Lc8/tPf;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lc8/sPf;->this$0:Lc8/tPf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v3, p0, Lc8/sPf;->this$0:Lc8/tPf;

    invoke-static {v3}, Lc8/tPf;->access$000(Lc8/tPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 51
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 52
    iget-object v3, p0, Lc8/sPf;->this$0:Lc8/tPf;

    invoke-static {v3}, Lc8/tPf;->access$000(Lc8/tPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 53
    .local v1, "l":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "l":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v3, p0, Lc8/sPf;->this$0:Lc8/tPf;

    invoke-static {v3}, Lc8/tPf;->access$000(Lc8/tPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 60
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 61
    iget-object v3, p0, Lc8/sPf;->this$0:Lc8/tPf;

    invoke-static {v3}, Lc8/tPf;->access$000(Lc8/tPf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 62
    .local v1, "l":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "l":Landroid/view/ViewGroup$OnHierarchyChangeListener;
    :cond_0
    return-void
.end method
