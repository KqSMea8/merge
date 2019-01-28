.class public Lc8/jsb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ksb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ksb;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/ksb;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ksb;

    .prologue
    .line 300
    iput-object p1, p0, Lc8/jsb;->this$0:Lc8/ksb;

    iput-object p2, p0, Lc8/jsb;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lc8/jsb;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lc8/jsb;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 303
    iget-object v3, p0, Lc8/jsb;->val$config:Ljava/util/Map;

    const-string/jumbo v4, "transformOrigin"

    .line 304
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/jsb;->val$targetView:Landroid/view/View;

    .line 303
    invoke-static {v3, v4}, Lc8/vsb;->access$2100(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v2

    .line 306
    .local v2, "pivot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    if-eqz v2, :cond_0

    .line 307
    iget-object v4, p0, Lc8/jsb;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotX(F)V

    .line 308
    iget-object v4, p0, Lc8/jsb;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setPivotY(F)V

    .line 311
    :cond_0
    iget-object v3, p0, Lc8/jsb;->val$cmd:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 312
    .local v0, "d3":D
    iget-object v3, p0, Lc8/jsb;->val$targetView:Landroid/view/View;

    double-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 313
    return-void
.end method
