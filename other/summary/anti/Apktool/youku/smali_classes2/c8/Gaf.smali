.class public Lc8/Gaf;
.super Lc8/Maf;
.source "DLinearLayoutPropertySetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lc8/Maf;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultProperty(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lc8/Maf;->applyDefaultProperty(Landroid/view/View;)V

    move-object v0, p1

    .line 24
    check-cast v0, Landroid/widget/LinearLayout;

    .line 25
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    return-void
.end method

.method public applyDinamicProperty(Landroid/view/View;Ljava/util/Map;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lc8/Maf;->applyDinamicProperty(Landroid/view/View;Ljava/util/Map;)V

    .line 31
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 48
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 34
    check-cast v0, Landroid/widget/LinearLayout;

    .line 35
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const-string/jumbo v2, "dOrientation"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const-string/jumbo v2, "dOrientation"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 37
    .local v1, "orientation":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 47
    .end local v1    # "orientation":Ljava/lang/Integer;
    :cond_1
    :goto_1
    const-string/jumbo v2, "dOrientation"

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    .restart local v1    # "orientation":Ljava/lang/Integer;
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 42
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
