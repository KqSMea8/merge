.class public Lc8/eYf;
.super Ljava/lang/Object;
.source "CSSWrapConvert.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSWrap;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSWrap;->NOWRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

    .line 29
    .local v0, "cssWrap":Lcom/taobao/weex/dom/flex/CSSWrap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    .end local v0    # "cssWrap":Lcom/taobao/weex/dom/flex/CSSWrap;
    :cond_0
    :goto_0
    return-object v0

    .line 31
    .restart local v0    # "cssWrap":Lcom/taobao/weex/dom/flex/CSSWrap;
    :cond_1
    const-string/jumbo v1, "wrap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSWrap;->WRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

    goto :goto_0
.end method
