.class public final Lc8/p;
.super Lc8/E;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/E;-><init>(Ljava/lang/String;Lc8/t;)V

    return-void
.end method


# virtual methods
.method getValue(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 225
    invoke-static {}, Lc8/F;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setValue(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 218
    invoke-static {}, Lc8/F;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1, p2}, Landroid/view/View;->setZ(F)V

    .line 221
    :cond_0
    return-void
.end method
