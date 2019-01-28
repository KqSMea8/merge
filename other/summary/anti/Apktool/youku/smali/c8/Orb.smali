.class public final Lc8/Orb;
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
    name = "BackgroundInvoker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Mrb;)V
    .locals 0
    .param p1, "x0"    # Lc8/Mrb;

    .prologue
    .line 484
    invoke-direct {p0}, Lc8/Orb;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lc8/tbg;Landroid/view/View;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
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
    .line 489
    .local p4, "config":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    instance-of v1, p3, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 499
    .end local p3    # "cmd":Ljava/lang/Object;
    :goto_0
    return-void

    .line 492
    .restart local p3    # "cmd":Ljava/lang/Object;
    :cond_0
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "cmd":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 493
    .local v0, "d10":I
    new-instance v1, Lc8/Nrb;

    invoke-direct {v1, p0, p2, v0}, Lc8/Nrb;-><init>(Lc8/Orb;Landroid/view/View;I)V

    invoke-static {p2, v1}, Lc8/vsb;->access$1900(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
