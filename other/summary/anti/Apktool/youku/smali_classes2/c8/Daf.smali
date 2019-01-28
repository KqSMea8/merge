.class public Lc8/Daf;
.super Ljava/lang/Object;
.source "DAttrUtils.java"


# static fields
.field public static final HEIGHT:I = 0x1

.field public static final MARGINBOTTOM:I = 0x5

.field public static final MARGINLEFT:I = 0x2

.field public static final MARGINRIGHT:I = 0x4

.field public static final MARGINTOP:I = 0x3

.field public static final WIDTH:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutGravity(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, -0x1

    .line 119
    .local v0, "gravity":I
    const-string/jumbo v2, "dGravity"

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string/jumbo v2, "dGravity"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 121
    .local v1, "layoutGravity":I
    packed-switch v1, :pswitch_data_0

    .line 151
    .end local v1    # "layoutGravity":I
    :cond_0
    :goto_0
    return v0

    .line 123
    .restart local v1    # "layoutGravity":I
    :pswitch_0
    const/16 v0, 0x30

    .line 124
    goto :goto_0

    .line 126
    :pswitch_1
    const/16 v0, 0x10

    .line 127
    goto :goto_0

    .line 129
    :pswitch_2
    const/16 v0, 0x50

    .line 130
    goto :goto_0

    .line 132
    :pswitch_3
    const/16 v0, 0x31

    .line 133
    goto :goto_0

    .line 135
    :pswitch_4
    const/16 v0, 0x11

    .line 136
    goto :goto_0

    .line 138
    :pswitch_5
    const/16 v0, 0x51

    .line 139
    goto :goto_0

    .line 141
    :pswitch_6
    const/16 v0, 0x35

    .line 142
    goto :goto_0

    .line 144
    :pswitch_7
    const/16 v0, 0x15

    .line 145
    goto :goto_0

    .line 147
    :pswitch_8
    const/16 v0, 0x55

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getViewSizeAndMargin(Landroid/content/Context;Ljava/util/Map;)[I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 83
    const-string/jumbo v8, "dWidth"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 84
    .local v7, "widthStr":Ljava/lang/String;
    const-string/jumbo v8, "dHeight"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "heightStr":Ljava/lang/String;
    const-string/jumbo v8, "match_content"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 88
    const/4 v6, -0x2

    .line 96
    .local v6, "width":I
    :goto_0
    const-string/jumbo v8, "match_content"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 97
    const/4 v0, -0x2

    .line 104
    .local v0, "height":I
    :goto_1
    const-string/jumbo v8, "dMarginLeft"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, v9}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v3

    .line 106
    .local v3, "marginLeft":I
    const-string/jumbo v8, "dMarginTop"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, v9}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v5

    .line 108
    .local v5, "marginTop":I
    const-string/jumbo v8, "dMarginRight"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, v9}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v4

    .line 110
    .local v4, "marginRight":I
    const-string/jumbo v8, "dMarginBottom"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {p0, v8, v9}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v2

    .line 113
    .local v2, "marginBottom":I
    const/4 v8, 0x6

    new-array v8, v8, [I

    aput v6, v8, v9

    const/4 v9, 0x1

    aput v0, v8, v9

    const/4 v9, 0x2

    aput v3, v8, v9

    const/4 v9, 0x3

    aput v5, v8, v9

    const/4 v9, 0x4

    aput v4, v8, v9

    const/4 v9, 0x5

    aput v2, v8, v9

    return-object v8

    .line 89
    .end local v0    # "height":I
    .end local v2    # "marginBottom":I
    .end local v3    # "marginLeft":I
    .end local v4    # "marginRight":I
    .end local v5    # "marginTop":I
    .end local v6    # "width":I
    :cond_0
    const-string/jumbo v8, "match_parent"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    const/4 v6, -0x1

    .restart local v6    # "width":I
    goto :goto_0

    .line 92
    .end local v6    # "width":I
    :cond_1
    invoke-static {p0, v7, v9}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v6

    .restart local v6    # "width":I
    goto :goto_0

    .line 98
    :cond_2
    const-string/jumbo v8, "match_parent"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 99
    const/4 v0, -0x1

    .restart local v0    # "height":I
    goto :goto_1

    .line 101
    .end local v0    # "height":I
    :cond_3
    invoke-static {p0, v1, v9}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method public static handleRootViewLayoutParams(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    sget v4, Lc8/WZe;->PROPERTY_KEY:I

    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Naf;

    .line 51
    .local v2, "property":Lc8/Naf;
    if-eqz v2, :cond_1

    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lc8/Naf;->fixedProperty:Ljava/util/Map;

    invoke-static {v4, v5}, Lc8/Daf;->getViewSizeAndMargin(Landroid/content/Context;Ljava/util/Map;)[I

    move-result-object v3

    .line 55
    .local v3, "sizeAndMargin":[I
    const-string/jumbo v4, "generateDefaultLayoutParams"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lc8/zaf;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_2

    .line 58
    aget v4, v3, v8

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    aget v4, v3, v9

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 61
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 62
    .local v1, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    aget v4, v3, v6

    aget v5, v3, v7

    aget v6, v3, v10

    const/4 v7, 0x5

    aget v7, v3, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 67
    .end local v1    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "sizeAndMargin":[I
    :cond_1
    :goto_0
    return-void

    .line 69
    .restart local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "sizeAndMargin":[I
    :cond_2
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    aget v4, v3, v8

    aget v5, v3, v9

    invoke-direct {v1, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 71
    .restart local v1    # "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    aget v4, v3, v6

    aget v5, v3, v7

    aget v6, v3, v10

    const/4 v7, 0x5

    aget v7, v3, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 74
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const-string/jumbo v4, "Dinamic"

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "reflect layout params fail"

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lc8/taf;->d(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseColor(Ljava/lang/String;I)I
    .locals 6
    .param p0, "colorStr"    # Ljava/lang/String;
    .param p1, "defaultColor"    # I

    .prologue
    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    .end local p1    # "defaultColor":I
    :goto_0
    return p1

    .line 160
    .restart local p1    # "defaultColor":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, "color":I
    move p1, v0

    .line 161
    goto :goto_0

    .line 162
    .end local v0    # "color":I
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "Dinamic"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "\u5199\u6cd5\u9519\u8bef\uff0c\u89e3\u6790\u51fa\u9519"

    aput-object v5, v3, v4

    invoke-static {v2, v1, v3}, Lc8/taf;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method
