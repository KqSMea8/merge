.class public Lc8/pgg;
.super Ljava/lang/Object;
.source "WXDomUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentHeight(Lc8/qYf;)F
    .locals 10
    .param p0, "domObject"    # Lc8/qYf;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 62
    invoke-interface {p0}, Lc8/qYf;->getLayoutHeight()F

    move-result v4

    .line 64
    .local v4, "rawHeight":F
    invoke-interface {p0}, Lc8/qYf;->getPadding()Lc8/IZf;

    move-result-object v3

    .line 65
    .local v3, "padding":Lc8/IZf;
    invoke-interface {p0}, Lc8/qYf;->getBorder()Lc8/IZf;

    move-result-object v0

    .line 67
    .local v0, "border":Lc8/IZf;
    invoke-virtual {v3, v8}, Lc8/IZf;->get(I)F

    move-result v6

    .local v6, "topPadding":F
    invoke-static {v6}, Lc8/yZf;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_0

    .line 68
    sub-float/2addr v4, v6

    .line 70
    :cond_0
    invoke-virtual {v3, v9}, Lc8/IZf;->get(I)F

    move-result v2

    .local v2, "bottomPadding":F
    invoke-static {v2}, Lc8/yZf;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_1

    .line 71
    sub-float/2addr v4, v2

    .line 74
    :cond_1
    invoke-virtual {v0, v8}, Lc8/IZf;->get(I)F

    move-result v5

    .local v5, "topBorder":F
    invoke-static {v5}, Lc8/yZf;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_2

    .line 75
    sub-float/2addr v4, v5

    .line 77
    :cond_2
    invoke-virtual {v0, v9}, Lc8/IZf;->get(I)F

    move-result v1

    .local v1, "bottomBorder":F
    invoke-static {v1}, Lc8/yZf;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_3

    .line 78
    sub-float/2addr v4, v1

    .line 80
    :cond_3
    return v4
.end method

.method public static getContentWidth(Lc8/qYf;)F
    .locals 10
    .param p0, "domObject"    # Lc8/qYf;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 35
    invoke-interface {p0}, Lc8/qYf;->getLayoutWidth()F

    move-result v4

    .line 37
    .local v4, "rawWidth":F
    invoke-interface {p0}, Lc8/qYf;->getPadding()Lc8/IZf;

    move-result-object v3

    .line 38
    .local v3, "padding":Lc8/IZf;
    invoke-interface {p0}, Lc8/qYf;->getBorder()Lc8/IZf;

    move-result-object v0

    .line 40
    .local v0, "border":Lc8/IZf;
    invoke-virtual {v3, v8}, Lc8/IZf;->get(I)F

    move-result v2

    .local v2, "leftPadding":F
    invoke-static {v2}, Lc8/yZf;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_0

    .line 41
    sub-float/2addr v4, v2

    .line 43
    :cond_0
    invoke-virtual {v3, v9}, Lc8/IZf;->get(I)F

    move-result v6

    .local v6, "rightPadding":F
    invoke-static {v6}, Lc8/yZf;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_1

    .line 44
    sub-float/2addr v4, v6

    .line 47
    :cond_1
    invoke-virtual {v0, v8}, Lc8/IZf;->get(I)F

    move-result v1

    .local v1, "leftBorder":F
    invoke-static {v1}, Lc8/yZf;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_2

    .line 48
    sub-float/2addr v4, v1

    .line 50
    :cond_2
    invoke-virtual {v0, v9}, Lc8/IZf;->get(I)F

    move-result v5

    .local v5, "rightBorder":F
    invoke-static {v5}, Lc8/yZf;->isUndefined(F)Z

    move-result v7

    if-nez v7, :cond_3

    .line 51
    sub-float/2addr v4, v5

    .line 53
    :cond_3
    return v4
.end method
