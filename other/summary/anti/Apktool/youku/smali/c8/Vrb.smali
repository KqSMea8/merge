.class public final Lc8/Vrb;
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
    name = "ContentOffsetYInvoker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Mrb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Mrb;

    .prologue
    .line 149
    invoke-direct {p0}, Lc8/Vrb;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4
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
    .line 154
    .local p4, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v1, p3, Ljava/lang/Double;

    if-nez v1, :cond_1

    .line 168
    .end local p3    # "cmd":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 157
    .restart local p3    # "cmd":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lc8/vsb;->access$1700(Lc8/tbg;)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, "scrollView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 161
    check-cast p3, Ljava/lang/Double;

    .end local p3    # "cmd":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 162
    .local v2, "val":D
    new-instance v1, Lc8/Urb;

    invoke-direct {v1, p0, v0, v2, v3}, Lc8/Urb;-><init>(Lc8/Vrb;Landroid/view/View;D)V

    invoke-static {p2, v1}, Lc8/vsb;->access$1900(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
