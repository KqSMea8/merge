.class public Lc8/uSb;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBusinessType(Lc8/qSb;)Ljava/lang/String;
    .locals 1
    .param p0, "adapterBaseModule"    # Lc8/qSb;

    .prologue
    .line 11
    iget-object v0, p0, Lc8/qSb;->customizeBusinessType:Ljava/lang/String;

    invoke-static {v0}, Lc8/OTb;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lc8/qSb;->customizeBusinessType:Ljava/lang/String;

    .line 16
    :goto_0
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lc8/qSb;->businessType:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lc8/qSb;->businessType:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
