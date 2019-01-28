.class public Lc8/Cn;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nn;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nn;

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$top:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/Nn;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nn;

    .prologue
    .line 598
    iput-object p1, p0, Lc8/Cn;->this$0:Lc8/Nn;

    iput-object p2, p0, Lc8/Cn;->val$top:Landroid/view/View;

    iput-object p3, p0, Lc8/Cn;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "v"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 605
    iget-object v0, p0, Lc8/Cn;->val$top:Landroid/view/View;

    iget-object v1, p0, Lc8/Cn;->val$bottom:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lc8/Nn;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 606
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 600
    return-void
.end method
