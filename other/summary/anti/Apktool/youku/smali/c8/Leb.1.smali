.class public Lc8/Leb;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Meb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static newMask(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Meb;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 33
    const-string/jumbo v4, "mode"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 44
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeUnknown:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 47
    .local v0, "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    :goto_1
    const-string/jumbo v4, "pt"

    .line 48
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 47
    invoke-static {v4, p1}, Lc8/jeb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/keb;

    move-result-object v1

    .line 49
    .local v1, "maskPath":Lc8/keb;
    const-string/jumbo v4, "o"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 51
    .local v3, "opacityJson":Lorg/json/JSONObject;
    invoke-static {v3, p1}, Lc8/Xdb;->newInstance(Lorg/json/JSONObject;Lc8/kcb;)Lc8/Zdb;

    move-result-object v2

    .line 52
    .local v2, "opacity":Lc8/Zdb;
    new-instance v4, Lc8/Meb;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v2, v5}, Lc8/Meb;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lc8/keb;Lc8/Zdb;Lc8/Keb;)V

    return-object v4

    .line 33
    .end local v0    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .end local v1    # "maskPath":Lc8/keb;
    .end local v2    # "opacity":Lc8/Zdb;
    .end local v3    # "opacityJson":Lorg/json/JSONObject;
    :sswitch_0
    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 35
    :pswitch_0
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 36
    .restart local v0    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    goto :goto_1

    .line 38
    .end local v0    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    :pswitch_1
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 39
    .restart local v0    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    goto :goto_1

    .line 41
    .end local v0    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    :pswitch_2
    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 42
    .restart local v0    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    goto :goto_1

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x69 -> :sswitch_2
        0x73 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
