.class public Lc8/ku;
.super Lc8/yv;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mSpanIndex:I

.field mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1158
    invoke-direct {p0, p1, p2}, Lc8/yv;-><init>(II)V

    .line 1149
    const/4 v0, -0x1

    iput v0, p0, Lc8/ku;->mSpanIndex:I

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lc8/ku;->mSpanSize:I

    .line 1159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1154
    invoke-direct {p0, p1, p2}, Lc8/yv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1149
    const/4 v0, -0x1

    iput v0, p0, Lc8/ku;->mSpanIndex:I

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lc8/ku;->mSpanSize:I

    .line 1155
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1166
    invoke-direct {p0, p1}, Lc8/yv;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1149
    const/4 v0, -0x1

    iput v0, p0, Lc8/ku;->mSpanIndex:I

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lc8/ku;->mSpanSize:I

    .line 1167
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1162
    invoke-direct {p0, p1}, Lc8/yv;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1149
    const/4 v0, -0x1

    iput v0, p0, Lc8/ku;->mSpanIndex:I

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lc8/ku;->mSpanSize:I

    .line 1163
    return-void
.end method

.method public constructor <init>(Lc8/yv;)V
    .locals 1
    .param p1, "source"    # Lc8/yv;

    .prologue
    .line 1170
    invoke-direct {p0, p1}, Lc8/yv;-><init>(Lc8/yv;)V

    .line 1149
    const/4 v0, -0x1

    iput v0, p0, Lc8/ku;->mSpanIndex:I

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lc8/ku;->mSpanSize:I

    .line 1171
    return-void
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 1

    .prologue
    .line 1188
    iget v0, p0, Lc8/ku;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    .prologue
    .line 1198
    iget v0, p0, Lc8/ku;->mSpanSize:I

    return v0
.end method
