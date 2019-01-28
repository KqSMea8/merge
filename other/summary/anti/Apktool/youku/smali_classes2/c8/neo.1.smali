.class public Lc8/neo;
.super Lc8/mu;
.source "WrapContentGridLayoutManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lc8/mu;-><init>(Landroid/content/Context;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/mu;-><init>(Landroid/content/Context;IIZ)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/mu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    return-void
.end method


# virtual methods
.method public onLayoutChildren(Lc8/Fv;Lc8/Nv;)V
    .locals 1
    .param p1, "recycler"    # Lc8/Fv;
    .param p2, "state"    # Lc8/Nv;

    .prologue
    .line 33
    :try_start_0
    invoke-super {p0, p1, p2}, Lc8/mu;->onLayoutChildren(Lc8/Fv;Lc8/Nv;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method
