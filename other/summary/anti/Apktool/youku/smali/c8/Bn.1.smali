.class public Lc8/Bn;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 590
    iput-object p1, p0, Lc8/Bn;->this$0:Lc8/Nn;

    iput-object p2, p0, Lc8/Bn;->val$top:Landroid/view/View;

    iput-object p3, p0, Lc8/Bn;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lc8/Bn;->this$0:Lc8/Nn;

    iget-object v0, v0, Lc8/Nn;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    iget-object v1, p0, Lc8/Bn;->val$top:Landroid/view/View;

    iget-object v2, p0, Lc8/Bn;->val$bottom:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lc8/Nn;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 594
    return-void
.end method
