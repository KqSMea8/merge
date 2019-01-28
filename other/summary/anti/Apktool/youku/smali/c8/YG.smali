.class public Lc8/YG;
.super Ljava/lang/Object;
.source "AppResInfo.java"


# instance fields
.field public mHash:Ljava/lang/String;

.field public mHeaders:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "headers"    # Lorg/json/JSONObject;

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    .line 11
    iput-object v0, p0, Lc8/YG;->mHash:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lc8/YG;->mHash:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lc8/YG;->mHeaders:Lorg/json/JSONObject;

    .line 16
    return-void
.end method
