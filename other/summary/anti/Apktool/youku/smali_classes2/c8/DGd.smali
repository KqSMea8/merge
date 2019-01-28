.class public Lc8/DGd;
.super Ljava/lang/Object;
.source "BuildExt.java"


# static fields
.field private static CLASS_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "android.os.BuildExt"

    sput-object v0, Lc8/DGd;->CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInternational()Lc8/bHd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/bHd",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 15
    sget-object v0, Lc8/DGd;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Lc8/XGd;->forName(Ljava/lang/String;)Lc8/XGd;

    move-result-object v0

    const-string/jumbo v1, "isProductInternational"

    new-array v2, v3, [Ljava/lang/Class;

    .line 16
    invoke-virtual {v0, v1, v2}, Lc8/XGd;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/aHd;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, v1}, Lc8/aHd;->invokeStatic([Ljava/lang/Object;)Lc8/bHd;

    move-result-object v0

    .line 15
    return-object v0
.end method
