.class public Lc8/Jdb;
.super Ljava/lang/Object;
.source "ScaleXY.java"

# interfaces
.implements Lc8/ueb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/ueb",
        "<",
        "Lc8/Kdb;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lc8/Jdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lc8/Jdb;

    invoke-direct {v0}, Lc8/Jdb;-><init>()V

    sput-object v0, Lc8/Jdb;->INSTANCE:Lc8/Jdb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lc8/Kdb;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 39
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    .line 40
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Lc8/Kdb;

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v2, v6

    mul-float/2addr v2, p2

    const/4 v3, 0x1

    .line 42
    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v4

    double-to-float v3, v4

    div-float/2addr v3, v6

    mul-float/2addr v3, p2

    invoke-direct {v1, v2, v3}, Lc8/Kdb;-><init>(FF)V

    .line 40
    return-object v1
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lc8/Jdb;->valueFromObject(Ljava/lang/Object;F)Lc8/Kdb;

    move-result-object v0

    return-object v0
.end method
