.class public final Lc8/z;
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
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/E;-><init>(Ljava/lang/String;Lc8/t;)V

    return-void
.end method


# virtual methods
.method getValue(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method setValue(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationX(F)V

    .line 159
    return-void
.end method