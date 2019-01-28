.class public final Lc8/ZZe;
.super Ljava/lang/Object;
.source "DinamicViewCreator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4
    .param p0, "viewIdentify"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lc8/ZZe;->newInstance(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 24
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 25
    const/4 v2, 0x0

    .line 37
    .end local v2    # "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 27
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    invoke-static {v2}, Lc8/Laf;->getDViewPropertySetter(Landroid/view/View;)Lc8/Maf;

    move-result-object v1

    .line 29
    .local v1, "setter":Lc8/Maf;
    invoke-virtual {v1, v2}, Lc8/Maf;->applyDefaultProperty(Landroid/view/View;)V

    .line 31
    invoke-virtual {v1, p2}, Lc8/Maf;->handleAttributeSet(Landroid/util/AttributeSet;)Lc8/Naf;

    move-result-object v0

    .line 32
    .local v0, "property":Lc8/Naf;
    iput-object p0, v0, Lc8/Naf;->viewIdentify:Ljava/lang/String;

    .line 33
    sget v3, Lc8/WZe;->PROPERTY_KEY:I

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 35
    iget-object v3, v0, Lc8/Naf;->fixedProperty:Ljava/util/Map;

    invoke-static {v2, v3}, Lc8/XZe;->bindDataImpl(Landroid/view/View;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static newInstance(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p0, "viewIdentify"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-static {p0}, Lc8/VZe;->getViewConstructor(Ljava/lang/String;)Lc8/haf;

    move-result-object v0

    .line 52
    .local v0, "assistant":Lc8/haf;
    invoke-interface {v0, p0, p1, p2}, Lc8/haf;->initializeView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
