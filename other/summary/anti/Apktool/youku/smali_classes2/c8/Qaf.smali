.class public Lc8/Qaf;
.super Landroid/widget/FrameLayout;
.source "CompatibleView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "compatibleTag"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lc8/VZe;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0, p2}, Lc8/Qaf;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 22
    :cond_0
    return-void
.end method
