.class public Lc8/fsb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gsb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gsb;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/gsb;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lc8/gsb;

    .prologue
    .line 419
    iput-object p1, p0, Lc8/fsb;->this$0:Lc8/gsb;

    iput-object p2, p0, Lc8/fsb;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lc8/fsb;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lc8/fsb;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 422
    iget-object v4, p0, Lc8/fsb;->val$config:Ljava/util/Map;

    const-string/jumbo v5, "perspective"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lc8/Dgg;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 423
    .local v2, "perspective":I
    iget-object v4, p0, Lc8/fsb;->val$targetView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lc8/vsb;->access$2000(Landroid/content/Context;I)I

    move-result v2

    .line 425
    iget-object v4, p0, Lc8/fsb;->val$config:Ljava/util/Map;

    const-string/jumbo v5, "transformOrigin"

    .line 426
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc8/fsb;->val$targetView:Landroid/view/View;

    .line 425
    invoke-static {v4, v5}, Lc8/vsb;->access$2100(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v3

    .line 428
    .local v3, "pivot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    if-eqz v2, :cond_0

    .line 429
    iget-object v4, p0, Lc8/fsb;->val$targetView:Landroid/view/View;

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setCameraDistance(F)V

    .line 431
    :cond_0
    if-eqz v3, :cond_1

    .line 432
    iget-object v5, p0, Lc8/fsb;->val$targetView:Landroid/view/View;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotX(F)V

    .line 433
    iget-object v5, p0, Lc8/fsb;->val$targetView:Landroid/view/View;

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotY(F)V

    .line 436
    :cond_1
    iget-object v4, p0, Lc8/fsb;->val$cmd:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 437
    .local v0, "d7":D
    iget-object v4, p0, Lc8/fsb;->val$targetView:Landroid/view/View;

    double-to-float v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setRotationY(F)V

    .line 438
    return-void
.end method
