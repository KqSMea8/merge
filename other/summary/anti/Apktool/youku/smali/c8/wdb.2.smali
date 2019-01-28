.class public Lc8/wdb;
.super Ljava/lang/Object;
.source "ColorFactory.java"

# interfaces
.implements Lc8/ueb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/ueb",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lc8/wdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lc8/wdb;

    invoke-direct {v0}, Lc8/wdb;-><init>()V

    sput-object v0, Lc8/wdb;->INSTANCE:Lc8/wdb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;
    .locals 14
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 13
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    .line 14
    .local v0, "colorArray":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 15
    const/4 v5, 0x1

    .line 16
    .local v5, "shouldUse255":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v2

    .line 18
    .local v2, "colorChannel":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v6

    if-lez v6, :cond_0

    .line 19
    const/4 v5, 0x0

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v2    # "colorChannel":D
    :cond_1
    if-eqz v5, :cond_2

    const/high16 v4, 0x437f0000    # 255.0f

    .line 24
    .local v4, "multiplier":F
    :goto_1
    const/4 v6, 0x3

    .line 25
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    float-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-int v6, v6

    const/4 v7, 0x0

    .line 26
    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    float-to-double v10, v4

    mul-double/2addr v8, v10

    double-to-int v7, v8

    const/4 v8, 0x1

    .line 27
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    float-to-double v10, v4

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x2

    .line 28
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    float-to-double v12, v4

    mul-double/2addr v10, v12

    double-to-int v9, v10

    .line 24
    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 30
    .end local v1    # "i":I
    .end local v4    # "multiplier":F
    .end local v5    # "shouldUse255":Z
    :goto_2
    return-object v6

    .line 23
    .restart local v1    # "i":I
    .restart local v5    # "shouldUse255":Z
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    .line 30
    .end local v1    # "i":I
    .end local v5    # "shouldUse255":Z
    :cond_3
    const/high16 v6, -0x1000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lc8/wdb;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
