.class public abstract Lc8/fi;
.super Lc8/ai;
.source "ActivityCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SharedElementCallback23"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lc8/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lc8/ei;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lc8/ei;",
            ")V"
        }
    .end annotation
.end method
