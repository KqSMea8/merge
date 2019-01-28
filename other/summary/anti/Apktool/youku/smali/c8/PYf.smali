.class public Lc8/PYf;
.super Ljava/lang/Object;
.source "WXStyle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNSET:I = -0x1

.field private static final serialVersionUID:J = 0x87b2de63f392e16L


# instance fields
.field private mPesudoResetStyleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPesudoStyleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStyles:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/PYf;->mPesudoStyleMap:Ljava/util/Map;

    .line 55
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/PYf;->mPesudoResetStyleMap:Ljava/util/Map;

    .line 59
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private getBorderWidth(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 326
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lc8/PYf;->getBorderWidth()F

    move-result v0

    .line 329
    .end local v0    # "temp":F
    :cond_0
    return v0
.end method

.method private getBorderWidth(Ljava/lang/String;I)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "viewport"    # I

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 334
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {p0, p2}, Lc8/PYf;->getBorderWidth(I)F

    move-result v0

    .line 337
    .end local v0    # "temp":F
    :cond_0
    return v0
.end method

.method public static getFontFamily(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 155
    .local v0, "fontFamily":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 157
    const-string/jumbo v2, "fontFamily"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, "temp":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .end local v1    # "temp":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public static getFontSize(Ljava/util/Map;I)I
    .locals 2
    .param p1, "viewPortW"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 144
    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1, p1}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    .line 150
    :goto_0
    return v1

    .line 146
    :cond_0
    const-string/jumbo v1, "fontSize"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 147
    .local v0, "fontSize":I
    if-gtz v0, :cond_1

    .line 148
    const/16 v0, 0x20

    .line 150
    :cond_1
    int-to-float v1, v0

    invoke-static {v1, p1}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method public static getFontStyle(Ljava/util/Map;)I
    .locals 5
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
    .line 127
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 128
    .local v2, "typeface":I
    if-nez p0, :cond_0

    move v3, v2

    .line 139
    .end local v2    # "typeface":I
    .local v3, "typeface":I
    :goto_0
    return v3

    .line 131
    .end local v3    # "typeface":I
    .restart local v2    # "typeface":I
    :cond_0
    const-string/jumbo v4, "fontStyle"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 132
    .local v1, "temp":Ljava/lang/Object;
    if-nez v1, :cond_1

    move v3, v2

    .line 133
    .end local v2    # "typeface":I
    .restart local v3    # "typeface":I
    goto :goto_0

    .line 135
    .end local v3    # "typeface":I
    .restart local v2    # "typeface":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "fontWeight":Ljava/lang/String;
    const-string/jumbo v4, "italic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    const/4 v2, 0x2

    :cond_2
    move v3, v2

    .line 139
    .end local v2    # "typeface":I
    .restart local v3    # "typeface":I
    goto :goto_0
.end method

.method public static getFontWeight(Ljava/util/Map;)I
    .locals 5
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
    .line 107
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 108
    .local v2, "typeface":I
    if-eqz p0, :cond_1

    .line 109
    const-string/jumbo v3, "fontWeight"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "temp":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "fontWeight":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 123
    .end local v0    # "fontWeight":Ljava/lang/String;
    .end local v1    # "temp":Ljava/lang/Object;
    :cond_1
    :goto_1
    return v2

    .line 112
    .restart local v0    # "fontWeight":Ljava/lang/String;
    .restart local v1    # "temp":Ljava/lang/Object;
    :sswitch_0
    const-string/jumbo v4, "600"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "700"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "800"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "900"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "bold"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    .line 118
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0xd0b6 -> :sswitch_0
        0xd477 -> :sswitch_1
        0xd838 -> :sswitch_2
        0xdbf9 -> :sswitch_3
        0x2e3a85 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLineHeight(Ljava/util/Map;I)I
    .locals 2
    .param p1, "viewPortW"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 195
    const/4 v0, -0x1

    .line 202
    :goto_0
    return v0

    .line 197
    :cond_0
    const-string/jumbo v1, "lineHeight"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 198
    .local v0, "lineHeight":I
    if-gtz v0, :cond_1

    .line 199
    const/4 v0, -0x1

    .line 200
    goto :goto_0

    .line 202
    :cond_1
    int-to-float v1, v0

    invoke-static {v1, p1}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method

.method public static getLines(Ljava/util/Map;)I
    .locals 1
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
    .line 190
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "lines"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getTextAlignment(Ljava/util/Map;)Landroid/text/Layout$Alignment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/text/Layout$Alignment;"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 167
    .local v0, "alignment":Landroid/text/Layout$Alignment;
    const-string/jumbo v2, "textAlign"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, "textAlign":Ljava/lang/String;
    const-string/jumbo v2, "left"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 177
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :cond_1
    const-string/jumbo v2, "center"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 174
    :cond_2
    const-string/jumbo v2, "right"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0
.end method

.method public static getTextColor(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 100
    const-string/jumbo v1, ""

    .line 103
    :goto_0
    return-object v1

    .line 102
    :cond_0
    const-string/jumbo v1, "color"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "temp":Ljava/lang/Object;
    if-nez v0, :cond_1

    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/ui/component/WXTextDecoration;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    const-string/jumbo v3, "textDecoration"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 77
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 95
    .local v1, "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    :goto_0
    return-object v1

    .line 79
    .end local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "textDecoration":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 91
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->INVALID:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .restart local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    goto :goto_0

    .line 80
    .end local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    :sswitch_0
    const-string/jumbo v4, "underline"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "line-through"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "none"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    .line 82
    :pswitch_0
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 83
    .restart local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    goto :goto_0

    .line 85
    .end local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    :pswitch_1
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 86
    .restart local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    goto :goto_0

    .line 88
    .end local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    :pswitch_2
    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 89
    .restart local v1    # "ret":Lcom/taobao/weex/ui/component/WXTextDecoration;
    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        -0x45d81614 -> :sswitch_1
        -0x3d363934 -> :sswitch_0
        0x33af38 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTextOverflow(Ljava/util/Map;)Landroid/text/TextUtils$TruncateAt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/text/TextUtils$TruncateAt;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 182
    .local v1, "truncateAt":Landroid/text/TextUtils$TruncateAt;
    const-string/jumbo v2, "textOverflow"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    .local v0, "ellipse":Ljava/lang/String;
    const-string/jumbo v2, "ellipsis"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 186
    :cond_0
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 636
    return-void
.end method

.method protected clone()Lc8/PYf;
    .locals 6

    .prologue
    .line 750
    new-instance v2, Lc8/PYf;

    invoke-direct {v2}, Lc8/PYf;-><init>()V

    .line 751
    .local v2, "style":Lc8/PYf;
    iget-object v4, v2, Lc8/PYf;->mStyles:Ljava/util/Map;

    iget-object v5, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 753
    iget-object v4, p0, Lc8/PYf;->mPesudoStyleMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 754
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 755
    .local v3, "valueClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 756
    iget-object v4, v2, Lc8/PYf;->mPesudoStyleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 759
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "valueClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v4, v2, Lc8/PYf;->mPesudoResetStyleMap:Ljava/util/Map;

    iget-object v5, p0, Lc8/PYf;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 760
    return-object v2
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lc8/PYf;->clone()Lc8/PYf;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 640
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 645
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 625
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 656
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAlignItems()Lcom/taobao/weex/dom/flex/CSSAlign;
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v1, "alignItems"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, "alignItems":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 210
    sget-object v1, Lcom/taobao/weex/dom/flex/CSSAlign;->STRETCH:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 212
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/aYf;->convert2AlignItems(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSAlign;

    move-result-object v1

    goto :goto_0
.end method

.method public getAlignSelf()Lcom/taobao/weex/dom/flex/CSSAlign;
    .locals 2

    .prologue
    .line 216
    const-string/jumbo v1, "alignSelf"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, "alignSelf":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 218
    sget-object v1, Lcom/taobao/weex/dom/flex/CSSAlign;->AUTO:Lcom/taobao/weex/dom/flex/CSSAlign;

    .line 220
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/aYf;->convert2AlignSelf(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSAlign;

    move-result-object v1

    goto :goto_0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 597
    const-string/jumbo v1, "backgroundColor"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 598
    .local v0, "temp":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBlur()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    const-string/jumbo v0, "filter"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "filter"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBorderBottomWidth(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 358
    const-string/jumbo v0, "borderBottomWidth"

    invoke-direct {p0, v0, p1}, Lc8/PYf;->getBorderWidth(Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getBorderColor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    const-string/jumbo v1, "borderColor"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 367
    .local v0, "color":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBorderLeftWidth(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 362
    const-string/jumbo v0, "borderLeftWidth"

    invoke-direct {p0, v0, p1}, Lc8/PYf;->getBorderWidth(Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getBorderRadius()F
    .locals 2

    .prologue
    .line 317
    const-string/jumbo v1, "borderRadius"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 318
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const/high16 v0, 0x7fc00000    # NaNf

    .line 321
    .end local v0    # "temp":F
    :cond_0
    return v0
.end method

.method public getBorderRightWidth(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 350
    const-string/jumbo v0, "borderRightWidth"

    invoke-direct {p0, v0, p1}, Lc8/PYf;->getBorderWidth(Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getBorderStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    const-string/jumbo v1, "borderStyle"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 372
    .local v0, "borderStyle":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBorderTopWidth(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 354
    const-string/jumbo v0, "borderTopWidth"

    invoke-direct {p0, v0, p1}, Lc8/PYf;->getBorderWidth(Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getBorderWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    const-string/jumbo v0, "borderWidth"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getBorderWidth(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 346
    const-string/jumbo v0, "borderWidth"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getBottom()F
    .locals 1

    .prologue
    .line 574
    const-string/jumbo v0, "bottom"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getBottom(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 590
    const-string/jumbo v0, "bottom"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getCSSWrap()Lcom/taobao/weex/dom/flex/CSSWrap;
    .locals 2

    .prologue
    .line 244
    const-string/jumbo v1, "flexWrap"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "cssWrap":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 246
    sget-object v1, Lcom/taobao/weex/dom/flex/CSSWrap;->NOWRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

    .line 248
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/eYf;->convert(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSWrap;

    move-result-object v1

    goto :goto_0
.end method

.method public getDefaultHeight()F
    .locals 1

    .prologue
    .line 278
    const-string/jumbo v0, "defaultHeight"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getDefaultWidth()F
    .locals 1

    .prologue
    .line 261
    const-string/jumbo v0, "defaultWidth"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getFlex()F
    .locals 1

    .prologue
    .line 224
    const-string/jumbo v0, "flex"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getFlexDirection()Lcom/taobao/weex/dom/flex/CSSFlexDirection;
    .locals 2

    .prologue
    .line 228
    const-string/jumbo v1, "flexDirection"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, "flexDirection":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 230
    sget-object v1, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->COLUMN:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    .line 232
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/bYf;->convert(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getHeight(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 303
    const-string/jumbo v0, "height"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getJustifyContent()Lcom/taobao/weex/dom/flex/CSSJustify;
    .locals 2

    .prologue
    .line 236
    const-string/jumbo v1, "justifyContent"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "justifyContent":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 238
    sget-object v1, Lcom/taobao/weex/dom/flex/CSSJustify;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSJustify;

    .line 240
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/cYf;->convert(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSJustify;

    move-result-object v1

    goto :goto_0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 562
    const-string/jumbo v0, "left"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getLeft(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 578
    const-string/jumbo v0, "left"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getMargin()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    const-string/jumbo v0, "margin"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getMargin(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 386
    const-string/jumbo v0, "margin"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getMarginBottom()F
    .locals 2

    .prologue
    .line 421
    const-string/jumbo v1, "marginBottom"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 422
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    const-string/jumbo v1, "margin"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 425
    :cond_0
    return v0
.end method

.method public getMarginBottom(I)F
    .locals 2
    .param p1, "viewport"    # I

    .prologue
    .line 456
    const-string/jumbo v1, "marginBottom"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 457
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string/jumbo v1, "margin"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 460
    :cond_0
    return v0
.end method

.method public getMarginLeft()F
    .locals 2

    .prologue
    .line 405
    const-string/jumbo v1, "marginLeft"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 406
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const-string/jumbo v1, "margin"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 409
    :cond_0
    return v0
.end method

.method public getMarginLeft(I)F
    .locals 2
    .param p1, "viewport"    # I

    .prologue
    .line 440
    const-string/jumbo v1, "marginLeft"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 441
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const-string/jumbo v1, "margin"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 444
    :cond_0
    return v0
.end method

.method public getMarginRight()F
    .locals 2

    .prologue
    .line 413
    const-string/jumbo v1, "marginRight"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 414
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const-string/jumbo v1, "margin"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 417
    :cond_0
    return v0
.end method

.method public getMarginRight(I)F
    .locals 2
    .param p1, "viewport"    # I

    .prologue
    .line 448
    const-string/jumbo v1, "marginRight"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 449
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const-string/jumbo v1, "margin"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 452
    :cond_0
    return v0
.end method

.method public getMarginTop()F
    .locals 2

    .prologue
    .line 397
    const-string/jumbo v1, "marginTop"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 398
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const-string/jumbo v1, "margin"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 401
    :cond_0
    return v0
.end method

.method public getMarginTop(I)F
    .locals 2
    .param p1, "viewport"    # I

    .prologue
    .line 432
    const-string/jumbo v1, "marginTop"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 433
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const-string/jumbo v1, "margin"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 436
    :cond_0
    return v0
.end method

.method public getMaxHeight()F
    .locals 1

    .prologue
    .line 286
    const-string/jumbo v0, "maxHeight"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getMaxHeight(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 311
    const-string/jumbo v0, "maxHeight"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 269
    const-string/jumbo v0, "maxWidth"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getMaxWidth(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 299
    const-string/jumbo v0, "maxWidth"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 282
    const-string/jumbo v0, "minHeight"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getMinHeight(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 307
    const-string/jumbo v0, "minHeight"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 265
    const-string/jumbo v0, "minWidth"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getMinWidth(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 295
    const-string/jumbo v0, "minWidth"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getOpacity()F
    .locals 3

    .prologue
    .line 610
    const-string/jumbo v2, "opacity"

    invoke-virtual {p0, v2}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 611
    .local v0, "object":Ljava/lang/Object;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 612
    .local v1, "opacity":F
    if-nez v0, :cond_0

    .line 615
    .end local v1    # "opacity":F
    :goto_0
    return v1

    .restart local v1    # "opacity":F
    :cond_0
    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v1

    goto :goto_0
.end method

.method public getOverflow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    const-string/jumbo v1, "overflow"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 620
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string/jumbo v1, "visible"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPadding()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 382
    const-string/jumbo v0, "padding"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getPadding(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 390
    const-string/jumbo v0, "padding"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getPaddingBottom()F
    .locals 2

    .prologue
    .line 491
    const-string/jumbo v1, "paddingBottom"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 492
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const-string/jumbo v1, "padding"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 495
    :cond_0
    return v0
.end method

.method public getPaddingBottom(I)F
    .locals 2
    .param p1, "viewport"    # I

    .prologue
    .line 527
    const-string/jumbo v1, "paddingBottom"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 528
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const-string/jumbo v1, "padding"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 531
    :cond_0
    return v0
.end method

.method public getPaddingLeft()F
    .locals 2

    .prologue
    .line 475
    const-string/jumbo v1, "paddingLeft"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 476
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const-string/jumbo v1, "padding"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 479
    :cond_0
    return v0
.end method

.method public getPaddingLeft(I)F
    .locals 2
    .param p1, "viewport"    # I

    .prologue
    .line 511
    const-string/jumbo v1, "paddingLeft"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 512
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    const-string/jumbo v1, "padding"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 515
    :cond_0
    return v0
.end method

.method public getPaddingRight()F
    .locals 2

    .prologue
    .line 483
    const-string/jumbo v1, "paddingRight"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 484
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    const-string/jumbo v1, "padding"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 487
    :cond_0
    return v0
.end method

.method public getPaddingRight(I)F
    .locals 2
    .param p1, "viewport"    # I

    .prologue
    .line 519
    const-string/jumbo v1, "paddingRight"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 520
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const-string/jumbo v1, "padding"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 523
    :cond_0
    return v0
.end method

.method public getPaddingTop()F
    .locals 2

    .prologue
    .line 467
    const-string/jumbo v1, "paddingTop"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 468
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    const-string/jumbo v1, "padding"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 471
    :cond_0
    return v0
.end method

.method public getPaddingTop(I)F
    .locals 2
    .param p1, "viewport"    # I

    .prologue
    .line 503
    const-string/jumbo v1, "paddingTop"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 504
    .local v0, "temp":F
    invoke-static {v0}, Lc8/Dgg;->isUndefined(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    const-string/jumbo v1, "padding"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    .line 507
    :cond_0
    return v0
.end method

.method public getPesudoResetStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Lc8/PYf;->mPesudoResetStyleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPesudoStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lc8/PYf;->mPesudoStyleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPosition()Lcom/taobao/weex/dom/flex/CSSPositionType;
    .locals 2

    .prologue
    .line 538
    const-string/jumbo v1, "position"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 539
    .local v0, "position":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 540
    sget-object v1, Lcom/taobao/weex/dom/flex/CSSPositionType;->RELATIVE:Lcom/taobao/weex/dom/flex/CSSPositionType;

    .line 542
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/dYf;->convert(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSPositionType;

    move-result-object v1

    goto :goto_0
.end method

.method public getRight()F
    .locals 1

    .prologue
    .line 570
    const-string/jumbo v0, "right"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getRight(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 586
    const-string/jumbo v0, "right"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getTimeFontSize()I
    .locals 2

    .prologue
    .line 602
    const-string/jumbo v1, "timeFontSize"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 603
    .local v0, "fontSize":I
    if-gtz v0, :cond_0

    .line 604
    const/16 v0, 0x20

    .line 606
    :cond_0
    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 566
    const-string/jumbo v0, "top"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getTop(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 582
    const-string/jumbo v0, "top"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/Dgg;->getFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public getWidth(I)F
    .locals 1
    .param p1, "viewport"    # I

    .prologue
    .line 291
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/Dgg;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isFixed()Z
    .locals 3

    .prologue
    .line 554
    const-string/jumbo v1, "position"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, "position":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 556
    const/4 v1, 0x0

    .line 558
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fixed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSticky()Z
    .locals 3

    .prologue
    .line 546
    const-string/jumbo v1, "position"

    invoke-virtual {p0, v1}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 547
    .local v0, "position":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 548
    const/4 v1, 0x0

    .line 550
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sticky"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method processPesudoClasses(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/String;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TT;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<TT;TV;>;"
    const/4 v10, 0x0

    .line 703
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 704
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;TV;>;>;"
    iget-object v5, p0, Lc8/PYf;->mPesudoStyleMap:Ljava/util/Map;

    .line 705
    .local v5, "pesudoStyleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 706
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 708
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 710
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "i":I
    if-lez v2, :cond_0

    .line 711
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "clzName":Ljava/lang/String;
    const-string/jumbo v8, ":enabled"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 714
    invoke-virtual {v4, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 715
    .local v6, "styleKey":Ljava/lang/String;
    iget-object v8, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v8, p0, Lc8/PYf;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 719
    .end local v6    # "styleKey":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, ":enabled"

    const-string/jumbo v9, ""

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 723
    .local v7, "stylesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_2

    .line 724
    new-instance v7, Landroid/support/v4/util/ArrayMap;

    .end local v7    # "stylesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 725
    .restart local v7    # "stylesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    :cond_2
    invoke-virtual {v4, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 730
    .end local v0    # "clzName":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;TV;>;"
    .end local v2    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "stylesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    return-void
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/PYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 672
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 678
    return-void
.end method

.method public putAll(Ljava/util/Map;Z)V
    .locals 1
    .param p2, "byPesudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;Z)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 687
    if-nez p2, :cond_0

    .line 688
    iget-object v0, p0, Lc8/PYf;->mPesudoResetStyleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 689
    invoke-virtual {p0, p1}, Lc8/PYf;->processPesudoClasses(Ljava/util/Map;)V

    .line 691
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 734
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lc8/PYf;->mStyles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
