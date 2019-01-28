.class public Lc8/Cdb;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ddb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;)Lc8/Ddb;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    const-string/jumbo v4, "fFamily"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "family":Ljava/lang/String;
    const-string/jumbo v4, "fName"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "fStyle"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "style":Ljava/lang/String;
    const-string/jumbo v4, "ascent"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v0, v4

    .line 42
    .local v0, "ascent":F
    new-instance v4, Lc8/Ddb;

    invoke-direct {v4, v1, v2, v3, v0}, Lc8/Ddb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    return-object v4
.end method
