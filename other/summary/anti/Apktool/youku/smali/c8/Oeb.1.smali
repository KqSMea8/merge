.class public Lc8/Oeb;
.super Ljava/lang/Object;
.source "MergePaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Peb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;)Lc8/Peb;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 76
    new-instance v0, Lc8/Peb;

    const-string/jumbo v1, "nm"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mm"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->access$000(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lc8/Peb;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Lc8/Neb;)V

    return-object v0
.end method
