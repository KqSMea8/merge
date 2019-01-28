.class public Lc8/udb;
.super Ljava/lang/Object;
.source "FontAssetManager.java"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private defaultFontFileExtension:Ljava/lang/String;

.field private delegate:Lc8/acb;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/Hdb",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPair:Lc8/Hdb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hdb",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lc8/acb;)V
    .locals 1
    .param p1, "callback"    # Landroid/graphics/drawable/Drawable$Callback;
    .param p2, "delegate"    # Lc8/acb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lc8/Hdb;

    invoke-direct {v0}, Lc8/Hdb;-><init>()V

    iput-object v0, p0, Lc8/udb;->tempPair:Lc8/Hdb;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/udb;->fontMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/udb;->fontFamilies:Ljava/util/Map;

    .line 26
    const-string/jumbo v0, ".ttf"

    iput-object v0, p0, Lc8/udb;->defaultFontFileExtension:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lc8/udb;->delegate:Lc8/acb;

    .line 30
    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/udb;->assetManager:Landroid/content/res/AssetManager;

    .line 37
    .end local p1    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :goto_0
    return-void

    .line 36
    .restart local p1    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    :cond_0
    check-cast p1, Landroid/view/View;

    .end local p1    # "callback":Landroid/graphics/drawable/Drawable$Callback;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lc8/udb;->assetManager:Landroid/content/res/AssetManager;

    goto :goto_0
.end method

.method private getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v3, p0, Lc8/udb;->fontFamilies:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 68
    .local v0, "defaultTypeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 90
    .end local v0    # "defaultTypeface":Landroid/graphics/Typeface;
    :goto_0
    return-object v0

    .line 72
    .restart local v0    # "defaultTypeface":Landroid/graphics/Typeface;
    :cond_0
    const/4 v2, 0x0

    .line 73
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget-object v3, p0, Lc8/udb;->delegate:Lc8/acb;

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p0, Lc8/udb;->delegate:Lc8/acb;

    invoke-virtual {v3, p1}, Lc8/acb;->fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 77
    :cond_1
    iget-object v3, p0, Lc8/udb;->delegate:Lc8/acb;

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 78
    iget-object v3, p0, Lc8/udb;->delegate:Lc8/acb;

    invoke-virtual {v3, p1}, Lc8/acb;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 80
    iget-object v3, p0, Lc8/udb;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 84
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_3

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fonts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/udb;->defaultFontFileExtension:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v3, p0, Lc8/udb;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 89
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lc8/udb;->fontFamilies:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 90
    goto :goto_0
.end method

.method private typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "styleInt":I
    const-string/jumbo v3, "Italic"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 96
    .local v1, "containsItalic":Z
    const-string/jumbo v3, "Bold"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 97
    .local v0, "containsBold":Z
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 98
    const/4 v2, 0x3

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 109
    .end local p1    # "typeface":Landroid/graphics/Typeface;
    :goto_1
    return-object p1

    .line 99
    .restart local p1    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    if-eqz v1, :cond_2

    .line 100
    const/4 v2, 0x2

    goto :goto_0

    .line 101
    :cond_2
    if-eqz v0, :cond_0

    .line 102
    const/4 v2, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v3, p0, Lc8/udb;->tempPair:Lc8/Hdb;

    invoke-virtual {v3, p1, p2}, Lc8/Hdb;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    iget-object v3, p0, Lc8/udb;->fontMap:Ljava/util/Map;

    iget-object v4, p0, Lc8/udb;->tempPair:Lc8/Hdb;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 57
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 63
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    .local v1, "typeface":Landroid/graphics/Typeface;
    :goto_0
    return-object v1

    .line 60
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    .restart local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    invoke-direct {p0, p1}, Lc8/udb;->getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 61
    .local v2, "typefaceWithDefaultStyle":Landroid/graphics/Typeface;
    invoke-direct {p0, v2, p2}, Lc8/udb;->typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 62
    iget-object v3, p0, Lc8/udb;->fontMap:Ljava/util/Map;

    iget-object v4, p0, Lc8/udb;->tempPair:Lc8/Hdb;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 63
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    .restart local v1    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0
.end method

.method public setDelegate(Lc8/acb;)V
    .locals 0
    .param p1, "assetDelegate"    # Lc8/acb;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    iput-object p1, p0, Lc8/udb;->delegate:Lc8/acb;

    .line 41
    return-void
.end method
