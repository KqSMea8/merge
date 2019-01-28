.class public Lc8/guf;
.super Ljava/lang/Object;
.source "StringUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "ret":I
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 40
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 36
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 40
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0

    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method
