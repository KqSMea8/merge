.class public Lc8/ycb;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Acb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v4/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Acb;


# direct methods
.method constructor <init>(Lc8/Acb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Acb;

    .prologue
    .line 27
    iput-object p1, p0, Lc8/ycb;->this$0:Lc8/Acb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v4/util/Pair;Landroid/support/v4/util/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "o1":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    .local p2, "o2":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Ljava/lang/Float;>;"
    iget-object v2, p1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 30
    .local v0, "r1":F
    iget-object v2, p2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 31
    .local v1, "r2":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 32
    const/4 v2, 0x1

    .line 36
    :goto_0
    return v2

    .line 33
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 34
    const/4 v2, -0x1

    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Landroid/support/v4/util/Pair;

    check-cast p2, Landroid/support/v4/util/Pair;

    invoke-virtual {p0, p1, p2}, Lc8/ycb;->compare(Landroid/support/v4/util/Pair;Landroid/support/v4/util/Pair;)I

    move-result v0

    return v0
.end method
