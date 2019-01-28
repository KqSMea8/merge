.class public Lc8/Maf;
.super Ljava/lang/Object;
.source "DViewPropertySetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setAccessibilityHidden(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hidden"    # Z

    .prologue
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 147
    if-eqz p2, :cond_0

    .line 148
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 156
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 154
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setBackground(Landroid/view/View;Ljava/util/Map;)V
    .locals 8
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
    .local p2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 165
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string/jumbo v5, "dCornerRadius"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "dBorderColor"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "dBorderWidth"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "dBackgroundColor"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    :cond_2
    const-string/jumbo v5, "dBackgroundColor"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, Lc8/Daf;->parseColor(Ljava/lang/String;I)I

    move-result v0

    .line 176
    .local v0, "backGround":I
    const-string/jumbo v5, "dCornerRadius"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "dBorderColor"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "dBorderWidth"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 179
    :cond_3
    move v1, v0

    .line 180
    .local v1, "borderColor":I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "dCornerRadius"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v3

    .line 182
    .local v3, "cornerRadius":I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "dBorderWidth"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6, v7}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v2

    .line 185
    .local v2, "borderWidth":I
    const-string/jumbo v5, "dBorderColor"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 186
    const-string/jumbo v5, "dBorderColor"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v1}, Lc8/Daf;->parseColor(Ljava/lang/String;I)I

    move-result v1

    .line 190
    :cond_4
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 191
    .local v4, "shape":Landroid/graphics/drawable/GradientDrawable;
    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 192
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 193
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 194
    if-lez v2, :cond_5

    .line 195
    invoke-virtual {v4, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 196
    :cond_5
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    .end local v1    # "borderColor":I
    .end local v2    # "borderWidth":I
    .end local v3    # "cornerRadius":I
    .end local v4    # "shape":Landroid/graphics/drawable/GradientDrawable;
    :goto_1
    const-string/jumbo v5, "dBackgroundColor"

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v5, "dCornerRadius"

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v5, "dBorderColor"

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v5, "dBorderWidth"

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 198
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public applyDefaultProperty(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-direct {p0, p1, v2}, Lc8/Maf;->setAccessibilityHidden(Landroid/view/View;Z)V

    .line 84
    return-void
.end method

.method public applyDinamicProperty(Landroid/view/View;Ljava/util/Map;)V
    .locals 7
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
    .local p2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Lc8/Maf;->setBackground(Landroid/view/View;Ljava/util/Map;)V

    .line 96
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 143
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string/jumbo v5, "dAlpha"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    const-string/jumbo v5, "dAlpha"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 101
    .local v1, "alpha":F
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 104
    .end local v1    # "alpha":F
    :cond_1
    const-string/jumbo v5, "dVisibility"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    const-string/jumbo v5, "dVisibility"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    .local v4, "visibility":Ljava/lang/String;
    const-string/jumbo v5, "visible"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 107
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .end local v4    # "visibility":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v5, "dAccessibilityText"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    const-string/jumbo v5, "dAccessibilityText"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "accessibilityText":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 122
    invoke-direct {p0, p1, v6}, Lc8/Maf;->setAccessibilityHidden(Landroid/view/View;Z)V

    .line 128
    .end local v0    # "accessibilityText":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string/jumbo v5, "dAccessibilityTextHidden"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 129
    const-string/jumbo v5, "dAccessibilityTextHidden"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 130
    .local v3, "hidden":Z
    invoke-direct {p0, p1, v3}, Lc8/Maf;->setAccessibilityHidden(Landroid/view/View;Z)V

    .line 133
    .end local v3    # "hidden":Z
    :cond_4
    const-string/jumbo v5, "dFocusable"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 134
    const-string/jumbo v5, "dFocusable"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 135
    .local v2, "focusable":Z
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 138
    .end local v2    # "focusable":Z
    :cond_5
    const-string/jumbo v5, "dAlpha"

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v5, "dVisibility"

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v5, "dAccessibilityText"

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v5, "dFocusable"

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v5, "dGravity"

    invoke-interface {p2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 108
    .restart local v4    # "visibility":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "invisible"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 109
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 110
    :cond_7
    const-string/jumbo v5, "gone"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 111
    const/16 v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 113
    :cond_8
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 124
    .end local v4    # "visibility":Ljava/lang/String;
    .restart local v0    # "accessibilityText":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lc8/Maf;->setAccessibilityHidden(Landroid/view/View;Z)V

    goto/16 :goto_2
.end method

.method public final handleAttributeSet(Landroid/util/AttributeSet;)Lc8/Naf;
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    new-instance v6, Lc8/Naf;

    invoke-direct {v6}, Lc8/Naf;-><init>()V

    .line 42
    .local v6, "property":Lc8/Naf;
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    .line 43
    .local v0, "attrsCount":I
    if-gtz v0, :cond_0

    .line 70
    :goto_0
    return-object v6

    .line 46
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v3, "fixedProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v1, "dinamicProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v2, "eventProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 52
    invoke-interface {p1, v4}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v8, "http://schemas.android.com/apk/res-auto"

    invoke-interface {p1, v8, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 58
    const-string/jumbo v8, "onTap"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "onLongTap"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 59
    :cond_1
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 60
    :cond_3
    const/16 v8, 0x24

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 61
    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 63
    :cond_4
    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 67
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    iput-object v3, v6, Lc8/Naf;->fixedProperty:Ljava/util/Map;

    .line 68
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, v6, Lc8/Naf;->dinamicProperty:Ljava/util/Map;

    .line 69
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, v6, Lc8/Naf;->eventProperty:Ljava/util/Map;

    goto :goto_0
.end method
