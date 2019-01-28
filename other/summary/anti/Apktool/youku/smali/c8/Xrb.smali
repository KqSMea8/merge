.class public final Lc8/Xrb;
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
    name = "HeightInvoker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Mrb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Mrb;

    .prologue
    .line 464
    invoke-direct {p0}, Lc8/Xrb;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6
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
    .line 469
    .local p4, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v3, p3, Ljava/lang/Double;

    if-nez v3, :cond_0

    .line 481
    .end local p3    # "cmd":Ljava/lang/Object;
    :goto_0
    return-void

    .line 472
    .restart local p3    # "cmd":Ljava/lang/Object;
    :cond_0
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "cmd":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 473
    .local v0, "d9":D
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 474
    .local v2, "params2":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v0, v1}, Lc8/vsb;->access$1800(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 475
    new-instance v3, Lc8/Wrb;

    invoke-direct {v3, p0, p2, v2}, Lc8/Wrb;-><init>(Lc8/Xrb;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p2, v3}, Lc8/vsb;->access$1900(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
