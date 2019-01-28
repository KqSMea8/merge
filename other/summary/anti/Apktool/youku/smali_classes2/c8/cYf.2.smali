.class public Lc8/cYf;
.super Ljava/lang/Object;
.source "CSSJustifyConvert.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSJustify;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSJustify;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSJustify;

    .line 29
    .local v0, "cssJustify":Lcom/taobao/weex/dom/flex/CSSJustify;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "flex-start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    :cond_0
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSJustify;->FLEX_START:Lcom/taobao/weex/dom/flex/CSSJustify;

    .line 40
    :cond_1
    :goto_0
    return-object v0

    .line 31
    :cond_2
    const-string/jumbo v1, "flex-end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSJustify;->FLEX_END:Lcom/taobao/weex/dom/flex/CSSJustify;

    goto :goto_0

    .line 33
    :cond_3
    const-string/jumbo v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSJustify;->CENTER:Lcom/taobao/weex/dom/flex/CSSJustify;

    goto :goto_0

    .line 35
    :cond_4
    const-string/jumbo v1, "space-between"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 36
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSJustify;->SPACE_BETWEEN:Lcom/taobao/weex/dom/flex/CSSJustify;

    goto :goto_0

    .line 37
    :cond_5
    const-string/jumbo v1, "space-around"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSJustify;->SPACE_AROUND:Lcom/taobao/weex/dom/flex/CSSJustify;

    goto :goto_0
.end method
