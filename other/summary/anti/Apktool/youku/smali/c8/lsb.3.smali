.class public Lc8/lsb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/msb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/msb;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/msb;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lc8/msb;

    .prologue
    .line 326
    iput-object p1, p0, Lc8/lsb;->this$0:Lc8/msb;

    iput-object p2, p0, Lc8/lsb;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lc8/lsb;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lc8/lsb;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 329
    iget-object v3, p0, Lc8/lsb;->val$config:Ljava/util/Map;

    const-string/jumbo v4, "transformOrigin"

    .line 330
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/lsb;->val$targetView:Landroid/view/View;

    .line 329
    invoke-static {v3, v4}, Lc8/vsb;->access$2100(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v2

    .line 332
    .local v2, "pivot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    if-eqz v2, :cond_0

    .line 333
    iget-object v4, p0, Lc8/lsb;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotX(F)V

    .line 334
    iget-object v4, p0, Lc8/lsb;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotY(F)V

    .line 337
    :cond_0
    iget-object v3, p0, Lc8/lsb;->val$cmd:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 338
    .local v0, "d4":D
    iget-object v3, p0, Lc8/lsb;->val$targetView:Landroid/view/View;

    double-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 339
    return-void
.end method
