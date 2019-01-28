.class public Lc8/rI;
.super Ljava/lang/Object;
.source "WVSchemeInterceptService.java"


# static fields
.field private static mIntercepter:Lc8/sI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lc8/rI;->mIntercepter:Lc8/sI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWVSchemeIntercepter()Lc8/sI;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lc8/rI;->mIntercepter:Lc8/sI;

    return-object v0
.end method

.method public static registerWVURLintercepter(Lc8/sI;)V
    .locals 0
    .param p0, "intercepter"    # Lc8/sI;

    .prologue
    .line 20
    sput-object p0, Lc8/rI;->mIntercepter:Lc8/sI;

    .line 21
    return-void
.end method
