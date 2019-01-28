.class public Lc8/Acb;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zcb;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final floatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/zcb;",
            ">;"
        }
    .end annotation
.end field

.field private layerRenderTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Ifb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Acb;->enabled:Z

    .line 24
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    iput-object v0, p0, Lc8/Acb;->frameListeners:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Acb;->layerRenderTimes:Ljava/util/Map;

    .line 26
    new-instance v0, Lc8/ycb;

    invoke-direct {v0, p0}, Lc8/ycb;-><init>(Lc8/Acb;)V

    iput-object v0, p0, Lc8/Acb;->floatComparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public recordRenderTime(Ljava/lang/String;F)V
    .locals 4
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "millis"    # F

    .prologue
    .line 45
    iget-boolean v2, p0, Lc8/Acb;->enabled:Z

    if-nez v2, :cond_1

    .line 60
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object v2, p0, Lc8/Acb;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Ifb;

    .line 49
    .local v1, "meanCalculator":Lc8/Ifb;
    if-nez v1, :cond_2

    .line 50
    new-instance v1, Lc8/Ifb;

    .end local v1    # "meanCalculator":Lc8/Ifb;
    invoke-direct {v1}, Lc8/Ifb;-><init>()V

    .line 51
    .restart local v1    # "meanCalculator":Lc8/Ifb;
    iget-object v2, p0, Lc8/Acb;->layerRenderTimes:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2
    invoke-virtual {v1, p2}, Lc8/Ifb;->add(F)V

    .line 55
    const-string/jumbo v2, "root"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lc8/Acb;->frameListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zcb;

    .line 57
    .local v0, "listener":Lc8/zcb;
    invoke-interface {v0, p2}, Lc8/zcb;->onFrameRendered(F)V

    goto :goto_0
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lc8/Acb;->enabled:Z

    .line 42
    return-void
.end method
