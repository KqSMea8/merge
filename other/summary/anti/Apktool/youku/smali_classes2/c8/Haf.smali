.class public Lc8/Haf;
.super Lc8/Maf;
.source "DTextViewPropertySetter.java"


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0x1000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lc8/Maf;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultProperty(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-super {p0, p1}, Lc8/Maf;->applyDefaultProperty(Landroid/view/View;)V

    move-object v0, p1

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, "textView":Landroid/widget/TextView;
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    return-void
.end method

.method public applyDinamicProperty(Landroid/view/View;Ljava/util/Map;)V
    .locals 12
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
    .line 55
    .local p2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2}, Lc8/Maf;->applyDinamicProperty(Landroid/view/View;Ljava/util/Map;)V

    .line 57
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 156
    :goto_0
    return-void

    :cond_0
    move-object v8, p1

    .line 60
    check-cast v8, Landroid/widget/TextView;

    .line 61
    .local v8, "textView":Landroid/widget/TextView;
    const-string/jumbo v9, "dText"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 62
    const-string/jumbo v9, "dText"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_1
    const-string/jumbo v9, "dTextSize"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "dTextSize"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v6

    .line 67
    .local v6, "textSize":I
    const/4 v9, 0x0

    int-to-float v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    .end local v6    # "textSize":I
    :cond_2
    const-string/jumbo v9, "dTextStyle"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 71
    const-string/jumbo v9, "dTextStyle"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 73
    .local v7, "textStyle":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 89
    .end local v7    # "textStyle":Ljava/lang/Integer;
    :cond_3
    :goto_1
    const-string/jumbo v9, "dTextColor"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 90
    const-string/jumbo v9, "dTextColor"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "colorStr":Ljava/lang/String;
    const/high16 v9, -0x1000000

    invoke-static {v2, v9}, Lc8/Daf;->parseColor(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "color":I
    const/high16 v9, -0x1000000

    if-eq v1, v9, :cond_4

    .line 93
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .end local v1    # "color":I
    .end local v2    # "colorStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "dLineBreakMode"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 98
    const-string/jumbo v9, "dLineBreakMode"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 100
    .local v3, "lineBreakMode":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    .line 116
    .end local v3    # "lineBreakMode":Ljava/lang/Integer;
    :cond_5
    :goto_2
    const-string/jumbo v9, "dTextAlignment"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 117
    const-string/jumbo v9, "dTextAlignment"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 119
    .local v0, "alignment":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    packed-switch v9, :pswitch_data_2

    .line 132
    .end local v0    # "alignment":Ljava/lang/Integer;
    :cond_6
    :goto_3
    const-string/jumbo v9, "dMaxLines"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 133
    const-string/jumbo v9, "dMaxLines"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 134
    .local v4, "maxLines":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-gez v9, :cond_9

    .line 135
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 141
    .end local v4    # "maxLines":Ljava/lang/Integer;
    :cond_7
    :goto_4
    const-string/jumbo v9, "dMaxWidth"

    invoke-interface {p2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "dMaxWidth"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v5

    .line 143
    .local v5, "maxWidth":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_8

    .line 144
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 148
    .end local v5    # "maxWidth":I
    :cond_8
    const-string/jumbo v9, "dText"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v9, "dTextSize"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v9, "dTextStyle"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v9, "dTextColor"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v9, "dLineBreakMode"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v9, "dTextAlignment"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v9, "dMaxLines"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v9, "dMaxWidth"

    invoke-interface {p2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 75
    .restart local v7    # "textStyle":Ljava/lang/Integer;
    :pswitch_0
    const/4 v9, 0x0

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 78
    :pswitch_1
    const/4 v9, 0x1

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 81
    :pswitch_2
    const/4 v9, 0x2

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 84
    :pswitch_3
    const/4 v9, 0x3

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 102
    .end local v7    # "textStyle":Ljava/lang/Integer;
    .restart local v3    # "lineBreakMode":Ljava/lang/Integer;
    :pswitch_4
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 105
    :pswitch_5
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 108
    :pswitch_6
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 111
    :pswitch_7
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    .line 121
    .end local v3    # "lineBreakMode":Ljava/lang/Integer;
    .restart local v0    # "alignment":Ljava/lang/Integer;
    :pswitch_8
    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 124
    :pswitch_9
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 127
    :pswitch_a
    const/16 v9, 0x15

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 137
    .end local v0    # "alignment":Ljava/lang/Integer;
    .restart local v4    # "maxLines":Ljava/lang/Integer;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_4

    .line 73
    .line 100
    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
