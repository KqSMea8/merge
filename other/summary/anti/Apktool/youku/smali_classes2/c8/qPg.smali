.class public Lc8/qPg;
.super Ljava/lang/Object;
.source "AntiTheftChainFactory.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static antiTheftChain:Lc8/pPg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "AntiTheftChainFactory"

    sput-object v0, Lc8/qPg;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lc8/pPg;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lc8/qPg;->antiTheftChain:Lc8/pPg;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lc8/kPg;

    invoke-direct {v0}, Lc8/kPg;-><init>()V

    sput-object v0, Lc8/qPg;->antiTheftChain:Lc8/pPg;

    .line 18
    :cond_0
    sget-object v0, Lc8/qPg;->antiTheftChain:Lc8/pPg;

    return-object v0
.end method
