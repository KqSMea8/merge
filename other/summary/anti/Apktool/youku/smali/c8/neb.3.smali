.class public Lc8/neb;
.super Ljava/lang/Object;
.source "AnimatableTextFrame.java"

# interfaces
.implements Lc8/ueb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oeb;
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
        "Lc8/Adb;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lc8/neb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lc8/neb;

    invoke-direct {v0}, Lc8/neb;-><init>()V

    sput-object v0, Lc8/neb;->INSTANCE:Lc8/neb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000()Lc8/neb;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lc8/neb;->INSTANCE:Lc8/neb;

    return-object v0
.end method


# virtual methods
.method public valueFromObject(Ljava/lang/Object;F)Lc8/Adb;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "scale"    # F

    .prologue
    .line 45
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p1}, Lc8/zdb;->newInstance(Lorg/json/JSONObject;)Lc8/Adb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lc8/neb;->valueFromObject(Ljava/lang/Object;F)Lc8/Adb;

    move-result-object v0

    return-object v0
.end method
