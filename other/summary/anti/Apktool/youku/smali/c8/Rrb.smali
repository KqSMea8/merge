.class public final Lc8/Rrb;
.super Ljava/lang/Object;
.source "ExpressionInvokerService.java"

# interfaces
.implements Lc8/Lsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentOffsetInvoker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Mrb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Mrb;

    .prologue
    .line 91
    invoke-direct {p0}, Lc8/Rrb;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10
    .param p1, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cmd"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p4, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p1}, Lc8/vsb;->access$1700(Lc8/tbg;)Landroid/view/View;

    move-result-object v3

    .line 97
    .local v3, "scrollView":Landroid/view/View;
    if-nez v3, :cond_1

    .line 124
    .end local p3    # "cmd":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local p3    # "cmd":Ljava/lang/Object;
    :cond_1
    instance-of v1, p3, Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 101
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "cmd":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 102
    .local v8, "val":D
    new-instance v1, Lc8/Prb;

    invoke-direct {v1, p0, v3, v8, v9}, Lc8/Prb;-><init>(Lc8/Rrb;Landroid/view/View;D)V

    invoke-static {v3, v1}, Lc8/vsb;->access$1900(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 109
    .end local v8    # "val":D
    .restart local p3    # "cmd":Ljava/lang/Object;
    :cond_2
    instance-of v1, p3, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 110
    check-cast v0, Ljava/util/ArrayList;

    .line 111
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 113
    .local v4, "x":D
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 114
    .local v6, "y":D
    new-instance v1, Lc8/Qrb;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lc8/Qrb;-><init>(Lc8/Rrb;Landroid/view/View;DD)V

    invoke-static {v3, v1}, Lc8/vsb;->access$1900(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
