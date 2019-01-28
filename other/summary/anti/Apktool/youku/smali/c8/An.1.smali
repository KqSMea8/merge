.class public Lc8/An;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lc8/Ym;


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
    .line 581
    iput-object p1, p0, Lc8/An;->this$0:Lc8/Nn;

    iput-object p2, p0, Lc8/An;->val$top:Landroid/view/View;

    iput-object p3, p0, Lc8/An;->val$bottom:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
    .locals 2
    .param p1, "v"    # Landroid/support/v4/widget/NestedScrollView;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .prologue
    .line 586
    iget-object v0, p0, Lc8/An;->val$top:Landroid/view/View;

    iget-object v1, p0, Lc8/An;->val$bottom:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lc8/Nn;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 587
    return-void
.end method
