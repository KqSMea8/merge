.class public Lc8/leo;
.super Lc8/wu;
.source "CustomLinearLayoutManager.java"


# instance fields
.field private canScrollVertically:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/wu;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/leo;->canScrollVertically:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lc8/wu;-><init>(Landroid/content/Context;IZ)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/leo;->canScrollVertically:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/wu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/leo;->canScrollVertically:Z

    .line 35
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lc8/leo;->canScrollVertically:Z

    return v0
.end method

.method public isCanScrollVertically()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lc8/leo;->canScrollVertically:Z

    return v0
.end method

.method public setCanScrollVertically(Z)V
    .locals 0
    .param p1, "canScrollVertically"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lc8/leo;->canScrollVertically:Z

    .line 21
    return-void
.end method
