.class public Lc8/lm;
.super Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Api24ViewCompatImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 1810
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setPointerIcon(Landroid/view/View;Lc8/jm;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pointerIconCompat"    # Lc8/jm;

    .prologue
    .line 1813
    if-eqz p2, :cond_0

    .line 1814
    invoke-virtual {p2}, Lc8/jm;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    .line 1813
    :goto_0
    invoke-static {p1, v0}, Lc8/qm;->setPointerIcon(Landroid/view/View;Ljava/lang/Object;)V

    .line 1815
    return-void

    .line 1814
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
