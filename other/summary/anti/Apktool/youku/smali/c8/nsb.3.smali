.class public Lc8/nsb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/osb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/osb;

.field final synthetic val$targetView:Landroid/view/View;

.field final synthetic val$x1:D

.field final synthetic val$y1:D


# direct methods
.method constructor <init>(Lc8/osb;Landroid/view/View;DD)V
    .locals 1
    .param p1, "this$0"    # Lc8/osb;

    .prologue
    .line 204
    iput-object p1, p0, Lc8/nsb;->this$0:Lc8/osb;

    iput-object p2, p0, Lc8/nsb;->val$targetView:Landroid/view/View;

    iput-wide p3, p0, Lc8/nsb;->val$x1:D

    iput-wide p5, p0, Lc8/nsb;->val$y1:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lc8/nsb;->val$targetView:Landroid/view/View;

    iget-wide v2, p0, Lc8/nsb;->val$x1:D

    invoke-static {v2, v3}, Lc8/vsb;->access$1800(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 208
    iget-object v0, p0, Lc8/nsb;->val$targetView:Landroid/view/View;

    iget-wide v2, p0, Lc8/nsb;->val$y1:D

    invoke-static {v2, v3}, Lc8/vsb;->access$1800(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 209
    return-void
.end method
