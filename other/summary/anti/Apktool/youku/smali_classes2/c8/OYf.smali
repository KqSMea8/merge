.class public Lc8/OYf;
.super Lc8/HYf;
.source "WXScrollerDomObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultStyle()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 33
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 34
    .local v1, "isVertical":Z
    iget-object v4, p0, Lc8/OYf;->parent:Lc8/HYf;

    if-eqz v4, :cond_0

    .line 35
    iget-object v4, p0, Lc8/OYf;->parent:Lc8/HYf;

    invoke-virtual {v4}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "scrollDirection"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, "direction":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v4, "horizontal"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    const/4 v1, 0x0

    .line 41
    .end local v0    # "direction":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_2

    const-string/jumbo v3, "height"

    .line 42
    .local v3, "prop":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lc8/OYf;->getStyles()Lc8/PYf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lc8/OYf;->getStyles()Lc8/PYf;

    move-result-object v4

    const-string/jumbo v5, "flex"

    invoke-virtual {v4, v5}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 44
    const-string/jumbo v4, "flex"

    const-string/jumbo v5, "1"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    return-object v2

    .line 41
    .end local v3    # "prop":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "width"

    goto :goto_0
.end method
