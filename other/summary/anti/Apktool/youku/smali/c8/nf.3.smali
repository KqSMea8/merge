.class public Lc8/nf;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/mf;,
        Lc8/lf;,
        Lc8/kf;
    }
.end annotation


# static fields
.field private static final IMPL:Lc8/kf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .local v0, "version":I
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v1, Lc8/mf;

    invoke-direct {v1}, Lc8/mf;-><init>()V

    sput-object v1, Lc8/nf;->IMPL:Lc8/kf;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Lc8/lf;

    invoke-direct {v1}, Lc8/lf;-><init>()V

    sput-object v1, Lc8/nf;->IMPL:Lc8/kf;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 87
    invoke-static {p0, p1, p2}, Lc8/nf;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 88
    return-void
.end method

.method static offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 75
    sget-object v0, Lc8/nf;->IMPL:Lc8/kf;

    invoke-interface {v0, p0, p1, p2}, Lc8/kf;->offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 76
    return-void
.end method
