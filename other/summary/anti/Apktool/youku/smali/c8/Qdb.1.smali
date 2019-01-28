.class public Lc8/Qdb;
.super Ljava/lang/Object;
.source "AnimatableFloatValue.java"

# interfaces
.implements Lc8/ueb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rdb;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lc8/Qdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lc8/Qdb;

    invoke-direct {v0}, Lc8/Qdb;-><init>()V

    sput-object v0, Lc8/Qdb;->INSTANCE:Lc8/Qdb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 43
    invoke-static {p1}, Lc8/Ffb;->valueFromObject(Ljava/lang/Object;)F

    move-result v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2}, Lc8/Qdb;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
