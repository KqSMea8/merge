.class public Lc8/aeb;
.super Ljava/lang/Object;
.source "AnimatablePathValue.java"

# interfaces
.implements Lc8/ueb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/beb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/ueb",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lc8/ueb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/ueb",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lc8/aeb;

    invoke-direct {v0}, Lc8/aeb;-><init>()V

    sput-object v0, Lc8/aeb;->INSTANCE:Lc8/ueb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000()Lc8/ueb;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lc8/aeb;->INSTANCE:Lc8/ueb;

    return-object v0
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Landroid/graphics/PointF;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 92
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1, p2}, Lc8/Ffb;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lc8/aeb;->valueFromObject(Ljava/lang/Object;F)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
