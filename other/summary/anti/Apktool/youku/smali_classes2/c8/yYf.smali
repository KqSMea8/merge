.class public final Lc8/yYf;
.super Ljava/lang/Object;
.source "WXCellDomObject.java"

# interfaces
.implements Lc8/BZf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zYf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public measure(Lc8/CZf;FLc8/HZf;)V
    .locals 10
    .param p1, "node"    # Lc8/CZf;
    .param p2, "width"    # F
    .param p3, "measureOutput"    # Lc8/HZf;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p1}, Lc8/CZf;->getParent()Lc8/CZf;

    move-result-object v1

    .line 37
    .local v1, "parent":Lc8/CZf;
    if-eqz v1, :cond_4

    instance-of v6, v1, Lc8/NYf;

    if-eqz v6, :cond_4

    move-object v2, v1

    .line 38
    check-cast v2, Lc8/NYf;

    .line 39
    .local v2, "parentDom":Lc8/NYf;
    invoke-virtual {v2}, Lc8/NYf;->preCalculateCellWidth()V

    move-object v0, p1

    .line 40
    check-cast v0, Lc8/HYf;

    .line 41
    .local v0, "domObject":Lc8/HYf;
    const-string/jumbo v6, "cell"

    invoke-virtual {v0}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "cell-slot"

    invoke-virtual {v0}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 43
    :cond_0
    check-cast v1, Lc8/NYf;

    .end local v1    # "parent":Lc8/CZf;
    invoke-virtual {v1}, Lc8/NYf;->getColumnWidth()F

    move-result v5

    .line 44
    .local v5, "w":F
    cmpg-float v6, v5, v8

    if-gtz v6, :cond_1

    invoke-virtual {v2}, Lc8/NYf;->getColumnCount()I

    move-result v6

    if-gt v6, v9, :cond_1

    .line 45
    invoke-virtual {v2}, Lc8/NYf;->getAvailableWidth()F

    move-result v5

    .line 46
    cmpg-float v6, v5, v8

    if-gtz v6, :cond_1

    .line 47
    invoke-virtual {v2}, Lc8/NYf;->getLayoutWidth()F

    move-result v5

    .line 48
    cmpg-float v6, v5, v8

    if-gtz v6, :cond_1

    .line 49
    invoke-virtual {v2}, Lc8/NYf;->getViewPortWidth()I

    move-result v6

    int-to-float v5, v6

    .line 53
    :cond_1
    invoke-virtual {p1, v5}, Lc8/CZf;->setLayoutWidth(F)V

    .line 54
    iput v5, p3, Lc8/HZf;->width:F

    .line 94
    .end local v0    # "domObject":Lc8/HYf;
    .end local v2    # "parentDom":Lc8/NYf;
    .end local v5    # "w":F
    :cond_2
    :goto_0
    return-void

    .line 55
    .restart local v0    # "domObject":Lc8/HYf;
    .restart local v1    # "parent":Lc8/CZf;
    .restart local v2    # "parentDom":Lc8/NYf;
    :cond_3
    const-string/jumbo v6, "header"

    invoke-virtual {v0}, Lc8/HYf;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    invoke-virtual {v2}, Lc8/NYf;->getAvailableWidth()F

    move-result v5

    .line 57
    .restart local v5    # "w":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAvailableWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, v5}, Lc8/CZf;->setLayoutWidth(F)V

    .line 59
    iput v5, p3, Lc8/HZf;->width:F

    goto :goto_0

    .line 61
    .end local v0    # "domObject":Lc8/HYf;
    .end local v2    # "parentDom":Lc8/NYf;
    .end local v5    # "w":F
    :cond_4
    instance-of v6, p1, Lc8/zYf;

    if-eqz v6, :cond_2

    move-object v4, p1

    .line 62
    check-cast v4, Lc8/zYf;

    .line 63
    .local v4, "slotDomObject":Lc8/zYf;
    invoke-virtual {v4}, Lc8/zYf;->getRecyclerDomObject()Lc8/NYf;

    move-result-object v3

    .line 64
    .local v3, "recyclerDomObject":Lc8/NYf;
    if-eqz v3, :cond_2

    .line 67
    invoke-virtual {v4}, Lc8/zYf;->isSticky()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 68
    invoke-virtual {v3}, Lc8/NYf;->getAvailableWidth()F

    move-result v5

    .line 69
    .restart local v5    # "w":F
    cmpg-float v6, v5, v8

    if-gtz v6, :cond_5

    .line 70
    invoke-virtual {v3}, Lc8/NYf;->getViewPortWidth()I

    move-result v6

    int-to-float v5, v6

    .line 72
    :cond_5
    invoke-virtual {p1, v5}, Lc8/CZf;->setLayoutWidth(F)V

    .line 73
    iput v5, p3, Lc8/HZf;->width:F

    goto :goto_0

    .line 75
    .end local v5    # "w":F
    :cond_6
    invoke-virtual {v3}, Lc8/NYf;->hasPreCalculateCellWidth()Z

    move-result v6

    if-nez v6, :cond_7

    .line 76
    invoke-virtual {v3}, Lc8/NYf;->preCalculateCellWidth()V

    .line 78
    :cond_7
    invoke-virtual {v3}, Lc8/NYf;->getColumnWidth()F

    move-result v5

    .line 79
    .restart local v5    # "w":F
    cmpg-float v6, v5, v8

    if-gtz v6, :cond_8

    invoke-virtual {v3}, Lc8/NYf;->getColumnCount()I

    move-result v6

    if-gt v6, v9, :cond_8

    .line 80
    invoke-virtual {v3}, Lc8/NYf;->getAvailableWidth()F

    move-result v5

    .line 81
    cmpg-float v6, v5, v8

    if-gtz v6, :cond_8

    .line 82
    invoke-virtual {v3}, Lc8/NYf;->getLayoutWidth()F

    move-result v5

    .line 83
    cmpg-float v6, v5, v8

    if-gtz v6, :cond_8

    .line 84
    invoke-virtual {v3}, Lc8/NYf;->getViewPortWidth()I

    move-result v6

    int-to-float v5, v6

    .line 88
    :cond_8
    invoke-virtual {p1, v5}, Lc8/CZf;->setLayoutWidth(F)V

    .line 89
    iput v5, p3, Lc8/HZf;->width:F

    goto/16 :goto_0
.end method
