.class public Lc8/bYf;
.super Ljava/lang/Object;
.source "CSSFlexDirectionConvert.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSFlexDirection;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ROW:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    .line 29
    .local v0, "cssFlexDirection":Lcom/taobao/weex/dom/flex/CSSFlexDirection;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ROW:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    const-string/jumbo v1, "column"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->COLUMN:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    goto :goto_0

    .line 33
    :cond_2
    const-string/jumbo v1, "column-reverse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->COLUMN_REVERSE:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    goto :goto_0

    .line 35
    :cond_3
    const-string/jumbo v1, "row"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ROW:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    goto :goto_0

    .line 37
    :cond_4
    const-string/jumbo v1, "row-reverse"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSFlexDirection;->ROW_REVERSE:Lcom/taobao/weex/dom/flex/CSSFlexDirection;

    goto :goto_0
.end method
