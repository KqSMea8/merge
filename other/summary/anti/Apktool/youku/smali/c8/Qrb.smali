.class public Lc8/Qrb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rrb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Rrb;

.field final synthetic val$scrollView:Landroid/view/View;

.field final synthetic val$x:D

.field final synthetic val$y:D


# direct methods
.method constructor <init>(Lc8/Rrb;Landroid/view/View;DD)V
    .locals 1
    .param p1, "this$0"    # Lc8/Rrb;

    .prologue
    .line 114
    iput-object p1, p0, Lc8/Qrb;->this$0:Lc8/Rrb;

    iput-object p2, p0, Lc8/Qrb;->val$scrollView:Landroid/view/View;

    iput-wide p3, p0, Lc8/Qrb;->val$x:D

    iput-wide p5, p0, Lc8/Qrb;->val$y:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lc8/Qrb;->val$scrollView:Landroid/view/View;

    iget-wide v2, p0, Lc8/Qrb;->val$x:D

    invoke-static {v2, v3}, Lc8/vsb;->access$1800(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 118
    iget-object v0, p0, Lc8/Qrb;->val$scrollView:Landroid/view/View;

    iget-wide v2, p0, Lc8/Qrb;->val$y:D

    invoke-static {v2, v3}, Lc8/vsb;->access$1800(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollY(I)V

    .line 119
    return-void
.end method
