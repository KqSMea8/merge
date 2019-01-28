.class public Lc8/hsb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/isb;->invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/isb;

.field final synthetic val$cmd:Ljava/lang/Object;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/isb;Ljava/util/Map;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lc8/isb;

    .prologue
    .line 256
    iput-object p1, p0, Lc8/hsb;->this$0:Lc8/isb;

    iput-object p2, p0, Lc8/hsb;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    iput-object p4, p0, Lc8/hsb;->val$cmd:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 259
    iget-object v3, p0, Lc8/hsb;->val$config:Ljava/util/Map;

    const-string/jumbo v10, "perspective"

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lc8/Dgg;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 260
    .local v1, "perspective":I
    iget-object v3, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lc8/vsb;->access$2000(Landroid/content/Context;I)I

    move-result v1

    .line 262
    iget-object v3, p0, Lc8/hsb;->val$config:Ljava/util/Map;

    const-string/jumbo v10, "transformOrigin"

    .line 263
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v3, v10}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v10, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    .line 262
    invoke-static {v3, v10}, Lc8/vsb;->access$2100(Ljava/lang/String;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v2

    .line 265
    .local v2, "pivot":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    if-eqz v1, :cond_0

    .line 266
    iget-object v3, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    int-to-float v10, v1

    invoke-virtual {v3, v10}, Landroid/view/View;->setCameraDistance(F)V

    .line 268
    :cond_0
    if-eqz v2, :cond_1

    .line 269
    iget-object v10, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v10, v3}, Landroid/view/View;->setPivotX(F)V

    .line 270
    iget-object v10, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v10, v3}, Landroid/view/View;->setPivotY(F)V

    .line 273
    :cond_1
    iget-object v3, p0, Lc8/hsb;->val$cmd:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_3

    .line 274
    iget-object v3, p0, Lc8/hsb;->val$cmd:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 275
    .local v4, "val":D
    iget-object v3, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    double-to-float v10, v4

    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleX(F)V

    .line 276
    iget-object v3, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    double-to-float v10, v4

    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleY(F)V

    .line 287
    .end local v4    # "val":D
    :cond_2
    :goto_0
    return-void

    .line 277
    :cond_3
    iget-object v3, p0, Lc8/hsb;->val$cmd:Ljava/lang/Object;

    instance-of v3, v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 278
    iget-object v0, p0, Lc8/hsb;->val$cmd:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 279
    .local v0, "l2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x2

    if-lt v3, v10, :cond_2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_2

    .line 280
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 281
    .local v6, "x2":D
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 282
    .local v8, "y2":D
    iget-object v3, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    double-to-float v10, v6

    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleX(F)V

    .line 283
    iget-object v3, p0, Lc8/hsb;->val$targetView:Landroid/view/View;

    double-to-float v10, v8

    invoke-virtual {v3, v10}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method
